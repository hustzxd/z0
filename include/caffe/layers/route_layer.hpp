//
// Created by zxd on 1/13/17.
//

#ifndef CAFFE_ROUTE_LAYER_H
#define CAFFE_ROUTE_LAYER_H

#include <vector>
#include "caffe/blob.hpp"
#include "caffe/layer.hpp"
#include "caffe/proto/caffe.pb.h"

namespace caffe {
    template<typename Dtype>
    class RouteLayer : public Layer<Dtype> {
    public:
        explicit RouteLayer(const LayerParameter &param)
                : Layer<Dtype>(param) {}

        virtual void LayerSetUp(const vector<Blob<Dtype> *> &bottom,
                                const vector<Blob<Dtype> *> &top);

        virtual void Reshape(const vector<Blob<Dtype> *> &bottom,
                             const vector<Blob<Dtype> *> &top);

        virtual inline const char *type() const { return "Route"; }

    protected:
        virtual void Forward_cpu(const vector<Blob<Dtype> *> &bottom,
                                 const vector<Blob<Dtype> *> &top);

        virtual void Forward_gpu(const vector<Blob<Dtype> *> &bottom,
                                 const vector<Blob<Dtype> *> &top);
    };

    vector<int> offsets;
} // namespace caffe


#endif //CAFFE_ROUTE_LAYER_H
