#include "caffe/layers/reorg_layer.hpp"

namespace caffe {

    template<typename Dtype>
    void ReorgLayer<Dtype>::LayerSetUp(const vector<Blob<Dtype> *> &bottom,
                                       const vector<Blob<Dtype> *> &top) {
        CHECK_NE(top[0], bottom[0]) << this->type() << " Layer does not "
                    "allow in-place computation.";
        ReorganizeParamter reorg_param = this->layer_param_.reorganize_param();
        CHECK_EQ(reorg_param.has_stride(), true) << this->type() << " Layer need stride param.";
        reverse_ = reorg_param.reverse();
        stride_ = reorg_param.stride();
    }

    template<typename Dtype>
    void ReorgLayer<Dtype>::Reshape(const vector<Blob<Dtype> *> &bottom,
                                    const vector<Blob<Dtype> *> &top) {
        if (!reverse_) {
            top[0]->Reshape(bottom[0]->num(), bottom[0]->channels() * stride_ * stride_,
                            bottom[0]->height() / stride_, bottom[0]->width() / stride_);
        } else {
            top[0]->Reshape(bottom[0]->num(), bottom[0]->channels() / stride_ / stride_,
                            bottom[0]->height() * stride_, bottom[0]->width() * stride_);
        }
    }

    template<typename Dtype>
    void ReorgLayer<Dtype>::Forward_cpu(const vector<Blob<Dtype> *> &bottom,
                                        const vector<Blob<Dtype> *> &top) {
        const Dtype *bottom_data = bottom[0]->cpu_data();
        Dtype *top_data = top[0]->mutable_cpu_data();
        reorg_cpu(bottom_data, bottom[0]->width(), bottom[0]->height(),
                  bottom[0]->channels(), bottom[0]->num(), stride_, reverse_, top_data);
    }

    template<typename Dtype>
    void reorg_cpu(const Dtype *bottom_data, const int b_w, const int b_h, const int b_c, const int b_n,
                   const int stride, const bool forward, Dtype *top_data) {
        int t_c = b_c / (stride * stride);
        int t_w = b_w * stride;
        int t_h = b_h * stride;
        for (int n = 0; n < b_n; n++) {
            for (int c = 0; c < b_c; c++) {
                for (int h = 0; h < b_h; h++) {
                    for (int w = 0; w < b_w; w++) {
                        int bottom_index = w + b_w * (h + b_h * (c + b_c * n));
                        int c2 = c % t_c;
                        int offset = c / t_c;
                        int w2 = w * stride + offset % stride;
                        int h2 = h * stride + offset / stride;
                        int top_index = w2 + w * stride * (h2 + h * stride * (c2 + t_c * n));
                        if (forward) top_data[top_index] = bottom_data[bottom_index];
                        else
                            top_data[bottom_index] = bottom_data[top_index];
                    }
                }
            }
        }
    }

    INSTANTIATE_CLASS(ReorgLayer);

    REGISTER_LAYER_CLASS(Reorg);

}  // namespace caffe
