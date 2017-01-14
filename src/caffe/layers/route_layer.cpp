//
// Created by zxd on 1/13/17.
//
#include <algorithm>
#include <cfloat>
#include <vector>

#include "caffe/layers/route_layer.hpp"
#include "caffe/util/math_functions.hpp"

namespace caffe {
    using std::min;
    using std::max;

    template<typename Dtype>
    void RouteLayer<Dtype>::LayerSetUp(const vector<Blob<Dtype> *> &bottom,
                                       const vector<Blob<Dtype> *> &top) {
        RouteParameter route_param = this->layer_param_.route_param();
        for(int i=0; i<route_param.offset_size();i++){
            offsets[i] = route_param.offset(i);
            printf("%d ", offsets[i]);
        }
    }

    template<typename Dtype>
    void RouteLayer<Dtype>::Reshape(const vector<Blob<Dtype> *> &bottom,
                                    const vector<Blob<Dtype> *> &top) {

    }

    template<typename Dtype>
    void RouteLayer<Dtype>::Forward_cpu(const vector<Blob<Dtype> *> &bottom,
                                        const vector<Blob<Dtype> *> &top) {

    }

    template<typename Dtype>
    void RouteLayer<Dtype>::Forward_gpu(const vector<Blob<Dtype> *> &bottom,
                                        const vector<Blob<Dtype> *> &top) {

    }
#ifdef CPU_ONLY
    STUB_GPU(RouteLayer);
#endif

    INSTANTIATE_CLASS(RouteLayer);
} // namespace caffe