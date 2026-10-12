Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tf_importer?download=true
inline.NumInlined: 8193
inline.NumDeleted: 1946
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 45
begin_hunk_0
@__func__._ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.125 = private unnamed_addr constant [74 x i8] c"/opt-bench/work/opencv/opencv/modules/dnn/include/opencv2/dnn/dnn.inl.hpp\00", align 1
@.str.126 = private unnamed_addr constant [57 x i8] c"(idx == -1 && size() == 1) || (idx >= 0 && idx < size())\00", align 1
@__func__._ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"fracpart == 0.0\00", align 1
@.str.128 = private unnamed_addr constant [34 x i8] c"isInt() || isReal() || isString()\00", align 1
@.str.129 = private unnamed_addr constant [23 x i8] c"dstBlob.isContinuous()\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_111parseTensorIiEEvRKN17opencv_tensorflow11TensorProtoERNS_3MatE = private unnamed_addr constant [12 x i8] c"parseTensor\00", align 1
@.str.130 = private unnamed_addr constant [29 x i8] c"tensorContent.isContinuous()\00", align 1
@.str.131 = private unnamed_addr constant [29 x i8] c"size == (int)dstBlob.total()\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"dst_i < total\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"src_i < total\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8addLayerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RNS1_11LayerParamsESt6vectorIS9_SaIS9_EEiiE15__cv_check__641 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.134, ptr @.str.2, i32 641, i32 1, ptr @.str.79, ptr @.str.135, ptr @.str.136 }, align 8
@.str.134 = private unnamed_addr constant [167 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::addLayer(const std::string &, const std::string &, LayerParams &, std::vector<std::string>, int, int)\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"inputs.size()\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"1u\00", align 1
@.str.137 = private unnamed_addr constant [20 x i8] c"Can't create layer \00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c" with type \00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8addLayerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RNS1_11LayerParamsESt6vectorIS9_SaIS9_EEii = private unnamed_addr constant [9 x i8] c"addLayer\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.140 = private unnamed_addr constant [5 x i8] c"] = \00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.142 = private unnamed_addr constant [24 x i8] c"Input layer not found: \00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.143 = private unnamed_addr constant [38 x i8] c"outputsShape.size() == outputs.size()\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter21calcLayerOutputShapesERKNS1_5LayerERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EESH_ = private unnamed_addr constant [22 x i8] c"calcLayerOutputShapes\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter7connectERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISA_ESaISt4pairIKSA_iEEERNS1_3NetERKNS2_3PinEii = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.144 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZN6google8protobuf8internal17kGlobalEmptyTableE = external constant [1 x ptr], align 8
@_ZTIh = external constant ptr
@_ZTISt3mapISt17reference_wrapperIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPvN6google8protobuf8internal18TransparentSupportIS6_E4lessENSC_12MapAllocatorISt4pairIKS8_S9_EEEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt3mapISt17reference_wrapperIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPvN6google8protobuf8internal18TransparentSupportIS6_E4lessENSC_12MapAllocatorISt4pairIKS8_S9_EEEE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt3mapISt17reference_wrapperIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPvN6google8protobuf8internal18TransparentSupportIS6_E4lessENSC_12MapAllocatorISt4pairIKS8_S9_EEEE = linkonce_odr hidden constant [181 x i8] c"St3mapISt17reference_wrapperIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPvN6google8protobuf8internal18TransparentSupportIS6_E4lessENSC_12MapAllocatorISt4pairIKS8_S9_EEEE\00", comdat, align 1
@.str.162 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.163 = private unnamed_addr constant [36 x i8] c"Tensor's data type is not supported\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_114blobFromTensorERKN17opencv_tensorflow11TensorProtoERNS_3MatE = private unnamed_addr constant [15 x i8] c"blobFromTensor\00", align 1
@.str.167 = private unnamed_addr constant [80 x i8] c"tensor.dtype() == tensorflow::DT_FLOAT || tensor.dtype() == tensorflow::DT_HALF\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16kernelFromTensorERKN17opencv_tensorflow11TensorProtoERNS_3MatE = private unnamed_addr constant [17 x i8] c"kernelFromTensor\00", align 1
@.str.168 = private unnamed_addr constant [23 x i8] c"dims == 4 || dims == 5\00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"!m->empty()\00", align 1
@__func__._ZN2cv16MatConstIteratorC2EPKNS_3MatE = private unnamed_addr constant [17 x i8] c"MatConstIterator\00", align 1
@.str.170 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.171 = private unnamed_addr constant [36 x i8] c"idx < (size_t)(dims > 0 ? dims : 1)\00", align 1
@__func__._ZN2cv8MatShapeixEm = private unnamed_addr constant [11 x i8] c"operator[]\00", align 1
@.str.172 = private unnamed_addr constant [8 x i8] c"strides\00", align 1
@.str.173 = private unnamed_addr constant [20 x i8] c"Unsupported strides\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110setStridesERNS1_11LayerParamsERKN17opencv_tensorflow7NodeDefE = private unnamed_addr constant [11 x i8] c"setStrides\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"stride\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"data_format\00", align 1
@.str.179 = private unnamed_addr constant [14 x i8] c"channels_last\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"NCHW\00", align 1
@.str.181 = private unnamed_addr constant [15 x i8] c"channels_first\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"NDHWC\00", align 1
@.str.183 = private unnamed_addr constant [28 x i8] c"Unknown data_format value: \00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_113getDataLayoutERKN17opencv_tensorflow7NodeDefE = private unnamed_addr constant [14 x i8] c"getDataLayout\00", align 1
@_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E = external global %"class.google::protobuf::internal::ExplicitlyConstructed", align 8
@_ZN17opencv_tensorflow38_AttrValue_ListValue_default_instance_E = external global %"struct.opencv_tensorflow::AttrValue_ListValueDefaultTypeInternal", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"/pad\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"VALID\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"padding\00", align 1
@.str.191 = private unnamed_addr constant [18 x i8] c"explicit_paddings\00", align 1
@.str.192 = private unnamed_addr constant [41 x i8] c"hasLayerAttr(layer, \22explicit_paddings\22)\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_118getExplicitPaddingERNS1_11LayerParamsERKN17opencv_tensorflow7NodeDefERA8_l = private unnamed_addr constant [19 x i8] c"getExplicitPadding\00", align 1
@.str.193 = private unnamed_addr constant [46 x i8] c"Unsupported asymmetric padding configuration.\00", align 1
@.str.194 = private unnamed_addr constant [20 x i8] c"Required argument \22\00", align 1
@.str.195 = private unnamed_addr constant [28 x i8] c"\22 not found into dictionary\00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"isString()\00", align 1
@.str.197 = private unnamed_addr constant [70 x i8] c"(idx == -1 && ps->size() == 1) || (idx >= 0 && idx < (int)ps->size())\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter9parseBiasERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1009 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.198, ptr @.str.2, i32 1009, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.198 = private unnamed_addr constant [143 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseBias(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.199 = private unnamed_addr constant [30 x i8] c"!haveConst || num_inputs == 2\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter9parseBiasERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [10 x i8] c"parseBias\00", align 1
@.str.200 = private unnamed_addr constant [26 x i8] c"values.type() == CV_32FC1\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"Power\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"Shift\00", align 1
@.str.204 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"coeff\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"Eltwise\00", align 1
@.str.208 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter11parseMatMulERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1066 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.209, ptr @.str.2, i32 1066, i32 1, ptr @.str.79, ptr @.str.80, ptr @.str.210 }, align 8
@.str.209 = private unnamed_addr constant [145 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseMatMul(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.211 = private unnamed_addr constant [13 x i8] c"InnerProduct\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter11parseMatMulERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [12 x i8] c"parseMatMul\00", align 1
@.str.212 = private unnamed_addr constant [31 x i8] c"layerParams.blobs[0].dims == 2\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter12parseReshapeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1162 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.213, ptr @.str.2, i32 1162, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.213 = private unnamed_addr constant [146 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseReshape(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"/nhwc\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c"dim\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"/realReshape\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"Reshape2\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"/nchw\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110hasAllOnesERKNS_3MatEiiE15__cv_check__308 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.221, ptr @.str.2, i32 308, i32 3, ptr @.str.79, ptr @.str.222, ptr @.str.210 }, align 8
@.str.221 = private unnamed_addr constant [87 x i8] c"bool cv::dnn::dnn5_v20260605::(anonymous namespace)::hasAllOnes(const Mat &, int, int)\00", align 1
@.str.222 = private unnamed_addr constant [12 x i8] c"inputs.dims\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110hasAllOnesERKNS_3MatEiiE15__cv_check__311 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.221, ptr @.str.2, i32 311, i32 4, ptr @.str.79, ptr @.str.225, ptr @.str.226 }, align 8
@.str.225 = private unnamed_addr constant [15 x i8] c"(size_t)endPos\00", align 1
@.str.226 = private unnamed_addr constant [15 x i8] c"inputs.total()\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.228 = private unnamed_addr constant [42 x i8] c"layer_id.find(permName) == layer_id.end()\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter15addPermuteLayerEPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_i = private unnamed_addr constant [16 x i8] c"addPermuteLayer\00", align 1
@.str.229 = private unnamed_addr constant [8 x i8] c"Permute\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter12parseFlattenERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1373 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.230, ptr @.str.2, i32 1373, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.230 = private unnamed_addr constant [146 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseFlatten(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.231 = private unnamed_addr constant [13 x i8] c"squeeze_dims\00", align 1
@.str.232 = private unnamed_addr constant [36 x i8] c"hasLayerAttr(layer, \22squeeze_dims\22)\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter12parseFlattenERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [13 x i8] c"parseFlatten\00", align 1
@.str.233 = private unnamed_addr constant [34 x i8] c"Unsupported squeeze configuration\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter14parseTransposeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1420 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.236, ptr @.str.2, i32 1420, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.236 = private unnamed_addr constant [148 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseTranspose(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.237 = private unnamed_addr constant [24 x i8] c"perm.type() == CV_32SC1\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter14parseTransposeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [15 x i8] c"parseTranspose\00", align 1
@__const._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter14parseTransposeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE.permData = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 3, i32 2], align 16
@.str.238 = private unnamed_addr constant [45 x i8] c"Only NHWC <-> NCHW permutations are allowed.\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8parseLrnERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1493 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.239, ptr @.str.2, i32 1493, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.239 = private unnamed_addr constant [142 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseLrn(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.240 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"depth_radius\00", align 1
@.str.243 = private unnamed_addr constant [11 x i8] c"local_size\00", align 1
@.str.245 = private unnamed_addr constant [13 x i8] c"norm_by_size\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter11parseConcatERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1519 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.246, ptr @.str.2, i32 1519, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.246 = private unnamed_addr constant [145 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseConcat(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.247 = private unnamed_addr constant [21 x i8] c"!lp.blobs[0].empty()\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter11parseConcatERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [12 x i8] c"parseConcat\00", align 1
@.str.248 = private unnamed_addr constant [24 x i8] c"lp.blobs[0].type() == 5\00", align 1
@.str.249 = private unnamed_addr constant [21 x i8] c"-4 <= idx && idx < 4\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_16toNCHWEi = private unnamed_addr constant [7 x i8] c"toNCHW\00", align 1
@.str.250 = private unnamed_addr constant [21 x i8] c"-5 <= idx && idx < 5\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_17toNCDHWEi = private unnamed_addr constant [8 x i8] c"toNCDHW\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter12parseMaxPoolERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1564 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.251, ptr @.str.2, i32 1564, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.251 = private unnamed_addr constant [146 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseMaxPool(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.253 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.254 = private unnamed_addr constant [10 x i8] c"ceil_mode\00", align 1
@.str.255 = private unnamed_addr constant [8 x i8] c"Pooling\00", align 1
@.str.256 = private unnamed_addr constant [6 x i8] c"ksize\00", align 1
@.str.257 = private unnamed_addr constant [18 x i8] c"Unsupported ksize\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_18setKSizeERNS1_11LayerParamsERKN17opencv_tensorflow7NodeDefE = private unnamed_addr constant [9 x i8] c"setKSize\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter12parseAvgPoolERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1582 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.260, ptr @.str.2, i32 1582, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.260 = private unnamed_addr constant [146 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseAvgPool(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.261 = private unnamed_addr constant [4 x i8] c"ave\00", align 1
@.str.262 = private unnamed_addr constant [21 x i8] c"ave_pool_padded_area\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16parseMaxPoolGradERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1597 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.263, ptr @.str.2, i32 1597, i32 1, ptr @.str.79, ptr @.str.80, ptr @.str.82 }, align 8
@.str.263 = private unnamed_addr constant [150 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseMaxPoolGrad(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.266 = private unnamed_addr constant [14 x i8] c"pool_stride_h\00", align 1
@.str.267 = private unnamed_addr constant [14 x i8] c"pool_stride_w\00", align 1
@.str.268 = private unnamed_addr constant [11 x i8] c"pool_pad_h\00", align 1
@.str.269 = private unnamed_addr constant [11 x i8] c"pool_pad_w\00", align 1
@.str.270 = private unnamed_addr constant [10 x i8] c"MaxUnpool\00", align 1
@.str.271 = private unnamed_addr constant [3 x i8] c":1\00", align 1
@.str.272 = private unnamed_addr constant [6 x i8] c"dtype\00", align 1
@.str.273 = private unnamed_addr constant [15 x i8] c"_output_shapes\00", align 1
@.str.274 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter10parseSplitERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1680 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.275, ptr @.str.2, i32 1680, i32 1, ptr @.str.79, ptr @.str.80, ptr @.str.210 }, align 8
@.str.275 = private unnamed_addr constant [144 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseSplit(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.276 = private unnamed_addr constant [10 x i8] c"num_split\00", align 1
@.str.277 = private unnamed_addr constant [55 x i8] c"Can't parse split layer. num_split attribut is missing\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter10parseSplitERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [11 x i8] c"parseSplit\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter10parseSliceERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1705 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.278, ptr @.str.2, i32 1705, i32 1, ptr @.str.79, ptr @.str.80, ptr @.str.82 }, align 8
@.str.278 = private unnamed_addr constant [144 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseSlice(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.279 = private unnamed_addr constant [16 x i8] c"!begins.empty()\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter10parseSliceERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [11 x i8] c"parseSlice\00", align 1
@.str.280 = private unnamed_addr constant [15 x i8] c"!sizes.empty()\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter10parseSliceERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1709 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.278, ptr @.str.2, i32 1709, i32 1, ptr @.str.79, ptr @.str.281, ptr @.str.282 }, align 8
@.str.281 = private unnamed_addr constant [14 x i8] c"begins.type()\00", align 1
@.str.282 = private unnamed_addr constant [9 x i8] c"CV_32SC1\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter10parseSliceERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1710 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.278, ptr @.str.2, i32 1710, i32 1, ptr @.str.79, ptr @.str.283, ptr @.str.282 }, align 8
@.str.283 = private unnamed_addr constant [13 x i8] c"sizes.type()\00", align 1
@.str.284 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter17parseStridedSliceERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1731 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.285, ptr @.str.2, i32 1731, i32 1, ptr @.str.79, ptr @.str.80, ptr @.str.286 }, align 8
@.str.285 = private unnamed_addr constant [151 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseStridedSlice(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.286 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter17parseStridedSliceERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1735 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.285, ptr @.str.2, i32 1735, i32 1, ptr @.str.79, ptr @.str.281, ptr @.str.282 }, align 8
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter17parseStridedSliceERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1736 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.285, ptr @.str.2, i32 1736, i32 1, ptr @.str.79, ptr @.str.287, ptr @.str.282 }, align 8
@.str.287 = private unnamed_addr constant [12 x i8] c"ends.type()\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter17parseStridedSliceERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1737 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.285, ptr @.str.2, i32 1737, i32 1, ptr @.str.79, ptr @.str.288, ptr @.str.282 }, align 8
@.str.288 = private unnamed_addr constant [15 x i8] c"strides.type()\00", align 1
@.str.289 = private unnamed_addr constant [20 x i8] c"num == ends.total()\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter17parseStridedSliceERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [18 x i8] c"parseStridedSlice\00", align 1
@.str.290 = private unnamed_addr constant [23 x i8] c"num == strides.total()\00", align 1
@.str.292 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.293 = private unnamed_addr constant [6 x i8] c"steps\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8parseMulERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1783 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.294, ptr @.str.2, i32 1783, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.294 = private unnamed_addr constant [142 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseMul(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.295 = private unnamed_addr constant [37 x i8] c"(constId != -1) || (num_inputs == 2)\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8parseMulERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [9 x i8] c"parseMul\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8parseMulERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1799 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.294, ptr @.str.2, i32 1799, i32 1, ptr @.str.79, ptr @.str.80, ptr @.str.210 }, align 8
@.str.296 = private unnamed_addr constant [28 x i8] c"scaleMat.type() == CV_32FC1\00", align 1
@.str.297 = private unnamed_addr constant [35 x i8] c"Division of constant over variable\00", align 1
@.str.298 = private unnamed_addr constant [8 x i8] c"Maximum\00", align 1
@.str.299 = private unnamed_addr constant [44 x i8] c"net.node(maximumLayerIdx).input_size() == 2\00", align 1
@.str.300 = private unnamed_addr constant [15 x i8] c"negative_slope\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"ReLU\00", align 1
@.str.302 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.303 = private unnamed_addr constant [6 x i8] c"Scale\00", align 1
@.str.304 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.305 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.306 = private unnamed_addr constant [12 x i8] c"NaryEltwise\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter19parseFusedBatchNormERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1898 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.307, ptr @.str.2, i32 1898, i32 1, ptr @.str.308, ptr @.str.80, ptr @.str.309 }, align 8
@.str.307 = private unnamed_addr constant [153 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseFusedBatchNorm(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.308 = private unnamed_addr constant [35 x i8] c"Expected gamma, beta, mean and std\00", align 1
@.str.309 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.310 = private unnamed_addr constant [12 x i8] c"is_training\00", align 1
@.str.311 = private unnamed_addr constant [11 x i8] c"has_weight\00", align 1
@.str.313 = private unnamed_addr constant [69 x i8] c"Cannot determine number of parameters for batch normalization layer.\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter19parseFusedBatchNormERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [20 x i8] c"parseFusedBatchNorm\00", align 1
@.str.314 = private unnamed_addr constant [5 x i8] c"/MVN\00", align 1
@.str.315 = private unnamed_addr constant [41 x i8] c"layer_id.find(mvnName) == layer_id.end()\00", align 1
@.str.316 = private unnamed_addr constant [4 x i8] c"MVN\00", align 1
@.str.317 = private unnamed_addr constant [8 x i8] c"epsilon\00", align 1
@.str.318 = private unnamed_addr constant [4 x i8] c"eps\00", align 1
@.str.319 = private unnamed_addr constant [10 x i8] c"BatchNorm\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter24parseConv2DBackpropInputERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1965 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.320, ptr @.str.2, i32 1965, i32 1, ptr @.str.321, ptr @.str.80, ptr @.str.82 }, align 8
@.str.320 = private unnamed_addr constant [158 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseConv2DBackpropInput(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.321 = private unnamed_addr constant [47 x i8] c"Expected output shape, weights and input nodes\00", align 1
@.str.322 = private unnamed_addr constant [8 x i8] c"/deconv\00", align 1
@.str.324 = private unnamed_addr constant [6 x i8] c"adj_w\00", align 1
@.str.325 = private unnamed_addr constant [6 x i8] c"adj_h\00", align 1
@.str.326 = private unnamed_addr constant [14 x i8] c"Deconvolution\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter14parseBlockLSTMERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2064 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.327, ptr @.str.2, i32 2064, i32 1, ptr @.str.328, ptr @.str.80, ptr @.str.329 }, align 8
@.str.327 = private unnamed_addr constant [148 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseBlockLSTM(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.328 = private unnamed_addr constant [33 x i8] c"Unexpected number of input nodes\00", align 1
@.str.329 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.330 = private unnamed_addr constant [12 x i8] c"forget_bias\00", align 1
@.str.331 = private unnamed_addr constant [10 x i8] c"cell_clip\00", align 1
@.str.332 = private unnamed_addr constant [14 x i8] c"use_cell_clip\00", align 1
@.str.333 = private unnamed_addr constant [13 x i8] c"use_peephole\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter11parseResizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2137 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.335, ptr @.str.2, i32 2137, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.335 = private unnamed_addr constant [145 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseResize(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter11parseResizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2145 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.335, ptr @.str.2, i32 2145, i32 1, ptr @.str.336, ptr @.str.80, ptr @.str.286 }, align 8
@.str.336 = private unnamed_addr constant [44 x i8] c"Number of input for FusedResizeAndPadConv2D\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter11parseResizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2148 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.335, ptr @.str.2, i32 2148, i32 1, ptr @.str.337, ptr @.str.338, ptr @.str.81 }, align 8
@.str.337 = private unnamed_addr constant [17 x i8] c"Unsupported mode\00", align 1
@.str.338 = private unnamed_addr constant [23 x i8] c"countNonZero(paddings)\00", align 1
@.str.339 = private unnamed_addr constant [8 x i8] c"/resize\00", align 1
@.str.340 = private unnamed_addr constant [21 x i8] c"resize_align_corners\00", align 1
@.str.341 = private unnamed_addr constant [14 x i8] c"align_corners\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter11parseResizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2166 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.335, ptr @.str.2, i32 2166, i32 1, ptr @.str.79, ptr @.str.342, ptr @.str.282 }, align 8
@.str.342 = private unnamed_addr constant [15 x i8] c"outSize.type()\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter11parseResizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2166_0 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.335, ptr @.str.2, i32 2166, i32 1, ptr @.str.79, ptr @.str.343, ptr @.str.344 }, align 8
@.str.343 = private unnamed_addr constant [16 x i8] c"outSize.total()\00", align 1
@.str.344 = private unnamed_addr constant [10 x i8] c"(size_t)2\00", align 1
@.str.345 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.346 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.347 = private unnamed_addr constant [14 x i8] c"zoom_factor_x\00", align 1
@.str.348 = private unnamed_addr constant [14 x i8] c"zoom_factor_y\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter11parseResizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2180 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.335, ptr @.str.2, i32 2180, i32 0, ptr @.str.79, ptr @.str.80, ptr @.str.349 }, align 8
@.str.349 = private unnamed_addr constant [35 x i8] c"num_inputs == 2 || num_inputs == 3\00", align 1
@.str.350 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.351 = private unnamed_addr constant [8 x i8] c"nearest\00", align 1
@.str.352 = private unnamed_addr constant [9 x i8] c"bilinear\00", align 1
@.str.353 = private unnamed_addr constant [19 x i8] c"half_pixel_centers\00", align 1
@.str.354 = private unnamed_addr constant [7 x i8] c"Resize\00", align 1
@_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE }, comdat, align 8
@_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = linkonce_odr constant [53 x i8] c"NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\00", comdat, align 1
@.str.356 = private unnamed_addr constant [37 x i8] c"DNN/TF: Can't parse layer for node='\00", align 1
@.str.357 = private unnamed_addr constant [12 x i8] c"' of type='\00", align 1
@.str.358 = private unnamed_addr constant [15 x i8] c"'. Exception: \00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter9parseNodeERKN17opencv_tensorflow7NodeDefE = private unnamed_addr constant [10 x i8] c"parseNode\00", align 1
@.str.359 = private unnamed_addr constant [25 x i8] c"it != data_layouts.end()\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter23predictOutputDataLayoutERKN17opencv_tensorflow7NodeDefE = private unnamed_addr constant [24 x i8] c"predictOutputDataLayout\00", align 1
@.str.360 = private unnamed_addr constant [20 x i8] c"NotImplementedInput\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16parseL2NormalizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2216 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.361, ptr @.str.2, i32 2216, i32 1, ptr @.str.79, ptr @.str.80, ptr @.str.210 }, align 8
@.str.361 = private unnamed_addr constant [150 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseL2Normalize(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.362 = private unnamed_addr constant [36 x i8] c"reductionIndices.type() == CV_32SC1\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16parseL2NormalizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [17 x i8] c"parseL2Normalize\00", align 1
@.str.363 = private unnamed_addr constant [67 x i8] c"reductionIndices.at<int>(i) == reductionIndices.at<int>(i - 1) + 1\00", align 1
@.str.364 = private unnamed_addr constant [67 x i8] c"reductionIndices.at<int>(i) * reductionIndices.at<int>(i - 1) >= 0\00", align 1
@.str.365 = private unnamed_addr constant [11 x i8] c"start_axis\00", align 1
@.str.366 = private unnamed_addr constant [10 x i8] c"Normalize\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter13parsePriorBoxERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2243 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.367, ptr @.str.2, i32 2243, i32 1, ptr @.str.79, ptr @.str.80, ptr @.str.210 }, align 8
@.str.367 = private unnamed_addr constant [147 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parsePriorBox(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.372 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.375 = private unnamed_addr constant [13 x i8] c"aspect_ratio\00", align 1
@.str.376 = private unnamed_addr constant [7 x i8] c"scales\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter12parseSoftmaxERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2277 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.377, ptr @.str.2, i32 2277, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.377 = private unnamed_addr constant [146 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseSoftmax(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@_ZN17opencv_tensorflow27_GraphDef_default_instance_E = external global %"struct.opencv_tensorflow::GraphDefDefaultTypeInternal", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter18parseCropAndResizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2299 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.378, ptr @.str.2, i32 2299, i32 1, ptr @.str.79, ptr @.str.80, ptr @.str.82 }, align 8
@.str.378 = private unnamed_addr constant [152 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseCropAndResize(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter18parseCropAndResizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2302 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.378, ptr @.str.2, i32 2302, i32 1, ptr @.str.79, ptr @.str.379, ptr @.str.282 }, align 8
@.str.379 = private unnamed_addr constant [16 x i8] c"cropSize.type()\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter18parseCropAndResizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2302_0 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.378, ptr @.str.2, i32 2302, i32 1, ptr @.str.79, ptr @.str.380, ptr @.str.344 }, align 8
@.str.380 = private unnamed_addr constant [17 x i8] c"cropSize.total()\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter9parseMeanERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2336 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.382, ptr @.str.2, i32 2336, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.382 = private unnamed_addr constant [143 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseMean(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.383 = private unnamed_addr constant [27 x i8] c"indices.type() == CV_32SC1\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter9parseMeanERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [10 x i8] c"parseMean\00", align 1
@.str.385 = private unnamed_addr constant [10 x i8] c"keep_dims\00", align 1
@.str.386 = private unnamed_addr constant [9 x i8] c"/flatten\00", align 1
@.str.387 = private unnamed_addr constant [45 x i8] c"layer_id.find(flattenName) == layer_id.end()\00", align 1
@.str.388 = private unnamed_addr constant [9 x i8] c"/reshape\00", align 1
@.str.389 = private unnamed_addr constant [45 x i8] c"layer_id.find(reshapeName) == layer_id.end()\00", align 1
@.str.391 = private unnamed_addr constant [5 x i8] c"/avg\00", align 1
@.str.392 = private unnamed_addr constant [41 x i8] c"layer_id.find(avgName) == layer_id.end()\00", align 1
@.str.393 = private unnamed_addr constant [17 x i8] c"global_pooling_h\00", align 1
@.str.394 = private unnamed_addr constant [7 x i8] c"/slice\00", align 1
@.str.395 = private unnamed_addr constant [48 x i8] c"layer_id.find(layerShapeName) == layer_id.end()\00", align 1
@.str.396 = private unnamed_addr constant [9 x i8] c"/squeeze\00", align 1
@.str.397 = private unnamed_addr constant [45 x i8] c"layer_id.find(squeezeName) == layer_id.end()\00", align 1
@.str.398 = private unnamed_addr constant [17 x i8] c"global_pooling_w\00", align 1
@.str.399 = private unnamed_addr constant [9 x i8] c"/Pooling\00", align 1
@.str.400 = private unnamed_addr constant [45 x i8] c"layer_id.find(poolingName) == layer_id.end()\00", align 1
@__const._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter9parseMeanERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE.order.403 = private unnamed_addr constant [4 x i32] [i32 0, i32 3, i32 1, i32 2], align 16
@.str.404 = private unnamed_addr constant [57 x i8] c"Unsupported mode of reduce_mean or reduce_sum operation.\00", align 1
@.str.405 = private unnamed_addr constant [15 x i8] c"global_pooling\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter9parsePackERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2500 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.406, ptr @.str.2, i32 2500, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.406 = private unnamed_addr constant [143 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parsePack(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.407 = private unnamed_addr constant [28 x i8] c"hasLayerAttr(layer, \22axis\22)\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter9parsePackERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [10 x i8] c"parsePack\00", align 1
@.str.408 = private unnamed_addr constant [36 x i8] c"Unsupported mode of pack operation.\00", align 1
@.str.410 = private unnamed_addr constant [25 x i8] c"hasLayerAttr(layer, \22N\22)\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter9parsePackERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2510 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.406, ptr @.str.2, i32 2510, i32 1, ptr @.str.79, ptr @.str.80, ptr @.str.411 }, align 8
@.str.411 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.412 = private unnamed_addr constant [10 x i8] c"/reshape_\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16parseClipByValueERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2540 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.413, ptr @.str.2, i32 2540, i32 1, ptr @.str.79, ptr @.str.80, ptr @.str.82 }, align 8
@.str.413 = private unnamed_addr constant [150 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseClipByValue(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16parseClipByValueERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2544 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.413, ptr @.str.2, i32 2544, i32 1, ptr @.str.79, ptr @.str.414, ptr @.str.415 }, align 8
@.str.414 = private unnamed_addr constant [17 x i8] c"minValue.total()\00", align 1
@.str.415 = private unnamed_addr constant [10 x i8] c"(size_t)1\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16parseClipByValueERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2544_0 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.413, ptr @.str.2, i32 2544, i32 1, ptr @.str.79, ptr @.str.416, ptr @.str.417 }, align 8
@.str.416 = private unnamed_addr constant [16 x i8] c"minValue.type()\00", align 1
@.str.417 = private unnamed_addr constant [9 x i8] c"CV_32FC1\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16parseClipByValueERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2545 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.413, ptr @.str.2, i32 2545, i32 1, ptr @.str.79, ptr @.str.418, ptr @.str.415 }, align 8
@.str.418 = private unnamed_addr constant [17 x i8] c"maxValue.total()\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16parseClipByValueERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2545_0 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.413, ptr @.str.2, i32 2545, i32 1, ptr @.str.79, ptr @.str.419, ptr @.str.417 }, align 8
@.str.419 = private unnamed_addr constant [16 x i8] c"maxValue.type()\00", align 1
@.str.420 = private unnamed_addr constant [10 x i8] c"min_value\00", align 1
@.str.421 = private unnamed_addr constant [10 x i8] c"max_value\00", align 1
@.str.422 = private unnamed_addr constant [6 x i8] c"ReLU6\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter14parseLeakyReluERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2558 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.423, ptr @.str.2, i32 2558, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.423 = private unnamed_addr constant [148 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseLeakyRelu(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.424 = private unnamed_addr constant [29 x i8] c"hasLayerAttr(layer, \22alpha\22)\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter14parseLeakyReluERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [15 x i8] c"parseLeakyRelu\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter15parseActivationERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2591 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.425, ptr @.str.2, i32 2591, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.425 = private unnamed_addr constant [149 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseActivation(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.426 = private unnamed_addr constant [7 x i8] c"AbsVal\00", align 1
@.str.427 = private unnamed_addr constant [5 x i8] c"TanH\00", align 1
@.str.428 = private unnamed_addr constant [4 x i8] c"ELU\00", align 1
@.str.429 = private unnamed_addr constant [24 x i8] c"!netInputShapes.empty()\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter15parseExpandDimsERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [16 x i8] c"parseExpandDims\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter15parseExpandDimsERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1234 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.430, ptr @.str.2, i32 1234, i32 6, ptr @.str.79, ptr @.str.80, ptr @.str.81 }, align 8
@.str.430 = private unnamed_addr constant [149 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseExpandDims(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.431 = private unnamed_addr constant [25 x i8] c"it != tensorsShape.end()\00", align 1
@.str.432 = private unnamed_addr constant [21 x i8] c"inpShape.size() >= 1\00", align 1
@.str.433 = private unnamed_addr constant [42 x i8] c"0 <= axis && axis <= (int)inpShape.size()\00", align 1
@__const._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter15parseExpandDimsERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE.order = private unnamed_addr constant [3 x i32] [i32 0, i32 2, i32 1], align 4
@.str.434 = private unnamed_addr constant [5 x i8] c"/nch\00", align 1
@__const._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter15parseExpandDimsERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE.order.435 = private unnamed_addr constant [4 x i32] [i32 0, i32 2, i32 3, i32 1], align 16
@__const._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter15parseExpandDimsERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE.order.436 = private unnamed_addr constant [5 x i32] [i32 0, i32 2, i32 3, i32 4, i32 1], align 16
@.str.437 = private unnamed_addr constant [7 x i8] c"/ndhwc\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter11parseSquareERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1360 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.438, ptr @.str.2, i32 1360, i32 1, ptr @.str.79, ptr @.str.80, ptr @.str.439 }, align 8
@.str.438 = private unnamed_addr constant [145 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::TFImporter::parseSquare(tensorflow::GraphDef &, const tensorflow::NodeDef &, LayerParams &)\00", align 1
@.str.439 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.440 = private unnamed_addr constant [5 x i8] c"prod\00", align 1
@.str.441 = private unnamed_addr constant [55 x i8] c"dimension.total() == 1 && dimension.type() == CV_32SC1\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8parseArgERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE = private unnamed_addr constant [9 x i8] c"parseArg\00", align 1
@.str.443 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.444 = private unnamed_addr constant [4 x i8] c"Arg\00", align 1
@.str.445 = private unnamed_addr constant [25 x i8] c"netBinSize || netTxtSize\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter11populateNetEv = private unnamed_addr constant [12 x i8] c"populateNet\00", align 1
@.str.446 = private unnamed_addr constant [22 x i8] c"DNN/TF: parsing model\00", align 1
@.str.447 = private unnamed_addr constant [38 x i8] c" produced by TF v%d (min_consumer=%d)\00", align 1
@.str.448 = private unnamed_addr constant [20 x i8] c" (N/A version info)\00", align 1
@.str.449 = private unnamed_addr constant [21 x i8] c". Number of nodes = \00", align 1
@.str.450 = private unnamed_addr constant [23 x i8] c"DNN/TF: parsing config\00", align 1
@.str.451 = private unnamed_addr constant [42 x i8] c"DNN/TF: Can't propagate layout for node='\00", align 1
@.str.452 = private unnamed_addr constant [30 x i8] c"DNN/TF: start diagnostic run!\00", align 1
@.str.453 = private unnamed_addr constant [27 x i8] c"!netInputsNames[i].empty()\00", align 1
@.str.454 = private unnamed_addr constant [33 x i8] c"DNN/TF: the model extra output '\00", align 1
@.str.455 = private unnamed_addr constant [15 x i8] c"' is not found\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_113addConstNodesERN17opencv_tensorflow8GraphDefERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISC_ESaISt4pairIKSC_iEEERSt3setISC_SE_SaISC_EEE16__cv_check__2849 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.457, ptr @.str.2, i32 2849, i32 1, ptr @.str.458, ptr @.str.115, ptr @.str.82 }, align 8
@.str.457 = private unnamed_addr constant [136 x i8] c"void cv::dnn::dnn5_v20260605::(anonymous namespace)::addConstNodes(tensorflow::GraphDef &, std::map<String, int> &, std::set<String> &)\00", align 1
@.str.458 = private unnamed_addr constant [39 x i8] c"Dequantize: 3 inputs is supported only\00", align 1
@.str.459 = private unnamed_addr constant [56 x i8] c"const_layers.find(layer.input(i)) != const_layers.end()\00", align 1
@__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_113addConstNodesERN17opencv_tensorflow8GraphDefERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISC_ESaISt4pairIKSC_iEEERSt3setISC_SE_SaISC_EE = private unnamed_addr constant [14 x i8] c"addConstNodes\00", align 1
@.str.462 = private unnamed_addr constant [78 x i8] c"hasLayerAttr(layer, \22mode\22) && getLayerAttr(layer, \22mode\22).s() == \22MIN_FIRST\22\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_113addConstNodesERN17opencv_tensorflow8GraphDefERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISC_ESaISt4pairIKSC_iEEERSt3setISC_SE_SaISC_EEE16__cv_check__2862 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.457, ptr @.str.2, i32 2862, i32 1, ptr @.str.79, ptr @.str.463, ptr @.str.464 }, align 8
@.str.463 = private unnamed_addr constant [21 x i8] c"(int)tensor->dtype()\00", align 1
@.str.464 = private unnamed_addr constant [27 x i8] c"(int)tensorflow::DT_QUINT8\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_113addConstNodesERN17opencv_tensorflow8GraphDefERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISC_ESaISt4pairIKSC_iEEERSt3setISC_SE_SaISC_EEE16__cv_check__2866 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.457, ptr @.str.2, i32 2866, i32 1, ptr @.str.79, ptr @.str.465, ptr @.str.415 }, align 8
@.str.465 = private unnamed_addr constant [13 x i8] c"qMin.total()\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_113addConstNodesERN17opencv_tensorflow8GraphDefERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISC_ESaISt4pairIKSC_iEEERSt3setISC_SE_SaISC_EEE16__cv_check__2867 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.457, ptr @.str.2, i32 2867, i32 1, ptr @.str.79, ptr @.str.466, ptr @.str.417 }, align 8
@.str.466 = private unnamed_addr constant [12 x i8] c"qMin.type()\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_113addConstNodesERN17opencv_tensorflow8GraphDefERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISC_ESaISt4pairIKSC_iEEERSt3setISC_SE_SaISC_EEE16__cv_check__2868 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.457, ptr @.str.2, i32 2868, i32 1, ptr @.str.79, ptr @.str.467, ptr @.str.415 }, align 8
@.str.467 = private unnamed_addr constant [13 x i8] c"qMax.total()\00", align 1
@_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_113addConstNodesERN17opencv_tensorflow8GraphDefERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISC_ESaISt4pairIKSC_iEEERSt3setISC_SE_SaISC_EEE16__cv_check__2869 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.457, ptr @.str.2, i32 2869, i32 1, ptr @.str.79, ptr @.str.468, ptr @.str.417 }, align 8
@.str.468 = private unnamed_addr constant [12 x i8] c"qMax.type()\00", align 1
@.str.469 = private unnamed_addr constant [16 x i8] c"rangeScale >= 0\00", align 1
@.str.470 = private unnamed_addr constant [59 x i8] c"const_layers.insert(std::make_pair(name, tensorId)).second\00", align 1
@.str.471 = private unnamed_addr constant [53 x i8] c"const_layers.insert(std::make_pair(name, li)).second\00", align 1
@.str.472 = private unnamed_addr constant [28 x i8] c"DNN/TF: Can't handle node='\00", align 1

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter17parseStridedSliceERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE:bb.a
  %i.acx = load i64, ptr %i.acv, align 8, !tbaa !56
  %i.acy = add i64 %i.acx, 1
  call void @_ZdlPvm(ptr noundef %i.acu, i64 noundef %i.acy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.acz = load ptr, ptr %30, align 8, !tbaa !46  ; 2 uses
  %i.ada = icmp eq ptr %i.acz, %i.abb
  br i1 %i.ada, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %i.adb = load i64, ptr %i.abb, align 8, !tbaa !56
  %i.adc = add i64 %i.adb, 1
  call void @_ZdlPvm(ptr noundef %i.acz, i64 noundef %i.adc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  %i.add = load ptr, ptr %25, align 8, !tbaa !46  ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.adf = icmp eq ptr %i.add, %i.ade
  br i1 %i.adf, label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256
  %i.adg = load i64, ptr %i.ade, align 8, !tbaa !56
  %i.adh = add i64 %i.adg, 1
  call void @_ZdlPvm(ptr noundef %i.add, i64 noundef %i.adh) #27
  br label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit

_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void

bb.fk:                                            ; preds = %.noexc.i234
  %i.adi = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.fl:                                            ; preds = %bb.fh
  %i.adj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #26
  br label %.body236

.body236:                                         ; preds = %bb.fg, %bb.ff, %bb.fl
  %.pn73 = phi { ptr, i32 } [ %i.adj, %bb.fl ], [ %i.abz, %bb.ff ], [ %i.abz, %bb.fg ] ; 2 uses
  %i.adk = load ptr, ptr %32, align 8, !tbaa !46  ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.adm = icmp eq ptr %i.adk, %i.adl
  br i1 %i.adm, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %.body236
  %i.adn = load i64, ptr %i.adl, align 8, !tbaa !56
  %i.ado = add i64 %i.adn, 1
  call void @_ZdlPvm(ptr noundef %i.adk, i64 noundef %i.ado) #27
  br label %.loopexit

.loopexit:                                        ; preds = %.body236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260, %bb.fk
  %.pn73.pn = phi { ptr, i32 } [ %i.adi, %bb.fk ], [ %.pn73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ %.pn73, %.body236 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.adp = load ptr, ptr %30, align 8, !tbaa !46  ; 2 uses
  %i.adq = icmp eq ptr %i.adp, %i.abb
  br i1 %i.adq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %.loopexit
  %i.adr = load i64, ptr %i.abb, align 8, !tbaa !56
  %i.ads = add i64 %i.adr, 1
  call void @_ZdlPvm(ptr noundef %i.adp, i64 noundef %i.ads) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %bb.fm

bb.fm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %bb.fb
  %.pn73.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %.pn71, %bb.fb ] ; 2 uses
  %i.adt = load ptr, ptr %25, align 8, !tbaa !46  ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.adv = icmp eq ptr %i.adt, %i.adu
  br i1 %i.adv, label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266: ; preds = %bb.fm
  %i.adw = load i64, ptr %i.adu, align 8, !tbaa !56
  %i.adx = add i64 %i.adw, 1
  call void @_ZdlPvm(ptr noundef %i.adt, i64 noundef %i.adx) #27
  br label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit269

_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit269: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266, %bb.et
  %.pn73.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aav, %bb.et ], [ %.pn73.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266 ], [ %.pn73.pn.pn.pn, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %bb.fn

bb.fn:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %bb.aa
  %.pn73.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.br, %bb.aa ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.cf, %bb.ag ], [ %.pn73.pn.pn.pn.pn, %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit269 ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ], [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %i.sc, %bb.dk ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #26
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.z, %bb.y
  %.pn73.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn.pn.pn.pn.pn.pn, %bb.fn ], [ %i.bq, %bb.z ], [ %i.bp, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #26
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.x, %bb.w
  %.pn73.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fo ], [ %i.bo, %bb.x ], [ %i.bn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #26
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.v
  %.pn73.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fp ], [ %i.bm, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  resume { ptr, i32 } %.pn73.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8parseMulERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(136) %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %6 = alloca %"struct.cv::dnn::dnn5_v20260605::(anonymous namespace)::Pin", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 13 uses
  %10 = alloca %"class.std::map.38", align 8      ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %16 = alloca %"struct.cv::dnn::dnn5_v20260605::(anonymous namespace)::Pin", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::vector.89", align 8   ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::vector", align 8      ; 10 uses
  %25 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 15 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::vector", align 8      ; 10 uses
  %29 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 15 uses
  %30 = alloca %"class.std::vector.89", align 8   ; 12 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %33 = alloca %"class.std::map.38", align 8      ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::vector", align 8      ; 10 uses
  %39 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 15 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %42 = alloca %"class.std::vector", align 8      ; 10 uses
  %43 = alloca [2 x %"class.std::__cxx11::basic_string"], align 8 ; 24 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, -2
  %i.l = inttoptr i64 %i.k to ptr                 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, -2
  %i.q = inttoptr i64 %i.p to ptr                 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !69   ; 6 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.s, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8parseMulERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1783) #29
  unreachable

bb.c:                                             ; preds = %.preheader, %.split.loop.exit702
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.split.loop.exit702 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !62
  call fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_18parsePinERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !139 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ad, null
  %.pre = load ptr, ptr %6, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !65  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !65 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ag) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46
  %i.ak = call i32 @memcmp(ptr noundef %i.aj, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.d
  %i.al = sub i64 %i.ag, %i.ae
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.am = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.am, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.am, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.d, !llvm.loop !15

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.an = icmp eq ptr %.19.i.i.i, %i.w
  br i1 %i.an, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !65 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.ae) ; 2 uses
  %i.aq = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46
  %i.at = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.as, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.e
  %i.au = sub i64 %i.ae, %i.ap
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.au, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.at, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.av = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.c
  %.sroa.0.0.i.i = phi i1 [ true, %bb.c ], [ true, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %i.av, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ]
  %i.aw = icmp eq ptr %.pre, %i.y
  br i1 %i.aw, label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit
  %i.ax = load i64, ptr %i.y, align 8, !tbaa !56
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ay) #27
  br label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit

_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.sroa.0.0.i.i, label %.split.loop.exit702, label %bb.f

bb.f:                                             ; preds = %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit
  %exitcond.not.a = icmp eq i32 %i.s, 2
  br i1 %exitcond.not.a, label %bb.m, label %bb.l

.split.loop.exit702:                              ; preds = %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.loop.exit, label %bb.c, !llvm.loop !743

.split.loop.exit:                                 ; preds = %.split.loop.exit702
  %i.az = icmp eq i32 %i.s, 2
  br i1 %i.az, label %._crit_edge.i.i458, label %bb.g

bb.g:                                             ; preds = %.split.loop.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.295, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8parseMulERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE, ptr noundef nonnull @.str.2, i32 noundef 1794) #29
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !56
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.en

bb.l:                                             ; preds = %bb.f
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.s, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8parseMulERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1799) #29
  unreachable

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !138
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !139
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !140
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !141
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store i64 0, ptr %i.bl, align 8, !tbaa !142
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !139 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %10, ptr %5, align 8, !tbaa !275
  %i.bn = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.n
  %.0.i.i.i.i.i.i182 = phi ptr [ %i.bp, %.noexc.i.i ], [ %i.bn, %bb.n ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i182, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !221 ; 2 uses
  %.not.i.i.i.i.i.i183 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i183, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !5

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i182, ptr %i.bj, align 8, !tbaa !109
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.bn, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.br, %bb.o ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !222 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.p, label %bb.o, !llvm.loop !6

bb.p:                                             ; preds = %bb.o
  store ptr %.0.i.i7.i.i.i.i, ptr %i.bk, align 8, !tbaa !109
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !142
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !109
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit: ; preds = %bb.m, %bb.p
  %i.bu = invoke fastcc noundef nonnull align 8 dereferenceable(224) ptr @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter12getConstBlobERKN17opencv_tensorflow7NodeDefESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISE_ESaISt4pairIKSE_iEEEiPi(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef align 8 %10, i32 noundef -1, ptr noundef null)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit
  invoke void @_ZN2cv3dnn14dnn5_v2026060516getTensorContentERKN17opencv_tensorflow11TensorProtoEb(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(224) %i.bu, i1 noundef zeroext true)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bv = load ptr, ptr %i.bi, align 8, !tbaa !139
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.bv)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit: ; preds = %bb.r
  %i.by = load i32, ptr %9, align 8, !tbaa !290
  %i.bz = and i32 %i.by, 4095
  %i.ca = icmp eq i32 %i.bz, 5
  br i1 %i.ca, label %bb.z, label %bb.u

bb.t:                                             ; preds = %bb.q, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #26
  br label %bb.dw

bb.u:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.296, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8parseMulERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE, ptr noundef nonnull @.str.2, i32 noundef 1801) #29
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

bb.y:                                             ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %11, align 8, !tbaa !46   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.y
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !56
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.x
  %.pn131 = phi { ptr, i32 } [ %i.cc, %bb.x ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %i.cd, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.dv

bb.z:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !65
  %i.cl = icmp eq i64 %i.ck, 7
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread536

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.z
  %i.cm = load ptr, ptr %i.q, align 8, !tbaa !46  ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 1
  %i.co = xor i32 %i.cn, 1818322258
  %i.cp = getelementptr i8, ptr %i.cm, i64 3
  %i.cq = load i32, ptr %i.cp, align 1
  %i.cr = xor i32 %i.cq, 1986610284
  %i.cs = or i32 %i.co, %i.cr
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread536

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cw = icmp eq i64 %indvars.iv, 0
  br i1 %i.cw, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.297, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8parseMulERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE, ptr noundef nonnull @.str.2, i32 noundef 1805) #29
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.ae:                                            ; preds = %bb.ab
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %13, align 8, !tbaa !46   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.ae
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !56
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %bb.ad
  %.pn174 = phi { ptr, i32 } [ %i.cx, %bb.ad ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %i.cy, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.dv

bb.af:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN2cvdvEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %15, align 8, !tbaa !327  ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !54
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 8 dereferenceable(688) %15, ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.ai, !inline_history !16

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.ag
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.di) #26
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dj) #26
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dk) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread536

bb.ah:                                            ; preds = %bb.af
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn133 = phi { ptr, i32 } [ %i.dm, %bb.ai ], [ %i.dl, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.dv

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread536: ; preds = %bb.z, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN2cv3MataSERKNS_7MatExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.dn = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !62
  invoke fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_18parsePinERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %i.dp)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread536
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.dq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.dq, ptr %17, align 8, !tbaa !64
  %i.dr = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 0, ptr %i.dr, align 8, !tbaa !65
  store i8 0, ptr %i.dq, align 8, !tbaa !56
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !139 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %.not10.i.i.i190 = icmp eq ptr %i.dt, null
  br i1 %.not10.i.i.i190, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220.thread, label %.lr.ph.i.i.i191

.lr.ph.i.i.i191:                                  ; preds = %bb.ak
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !65 ; 4 uses
  %i.dx = load ptr, ptr %16, align 8              ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i197, %.lr.ph.i.i.i191
  %.012.i.i.i192 = phi ptr [ %i.dt, %.lr.ph.i.i.i191 ], [ %.1.i.i.i202, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i197 ] ; 4 uses
  %.0811.i.i.i193 = phi ptr [ %i.du, %.lr.ph.i.i.i191 ], [ %.19.i.i.i199, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i197 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i192, i64 40
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !65 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i194 = call i64 @llvm.umin.i64(i64 %i.dw, i64 %i.dz) ; 2 uses
  %i.ea = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i194, 0
  br i1 %i.ea, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i216, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i195

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i195: ; preds = %bb.al
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i192, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !46
  %i.ed = call i32 @memcmp(ptr noundef %i.ec, ptr noundef %i.dx, i64 noundef %.sroa.speculated.i.i.i.i.i.i194) #26 ; 2 uses
  %.not.i.i.i.i.i.i196 = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i.i.i.i.i196, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i216, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i197

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i216: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i195, %bb.al
  %i.ee = sub i64 %i.dz, %i.dw
  %spec.select7.i.i.i.i.i.i.i217 = call i64 @llvm.smax.i64(i64 %i.ee, i64 -2147483648)
  %.08.i.i.i.i.i.i.i218 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i217, i64 2147483647)
  %.0.i6.i.i.i.i.i.i219 = trunc nsw i64 %.08.i.i.i.i.i.i.i218 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i197

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i197: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i216, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i195
  %.0.i.i.i.i.i.i198 = phi i32 [ %i.ed, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i195 ], [ %.0.i6.i.i.i.i.i.i219, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i216 ]
  %i.ef = icmp slt i32 %.0.i.i.i.i.i.i198, 0      ; 2 uses
  %.19.i.i.i199 = select i1 %i.ef, ptr %.0811.i.i.i193, ptr %.012.i.i.i192 ; 4 uses
  %.1.in.v.i.i.i200 = select i1 %i.ef, i64 24, i64 16
  %.1.in.i.i.i201 = getelementptr inbounds nuw i8, ptr %.012.i.i.i192, i64 %.1.in.v.i.i.i200
  %.1.i.i.i202 = load ptr, ptr %.1.in.i.i.i201, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i203 = icmp eq ptr %.1.i.i.i202, null
  br i1 %.not.i.i.i203, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i204, label %bb.al, !llvm.loop !15

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i204: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i197
  %i.eg = icmp eq ptr %.19.i.i.i199, %i.du
  br i1 %i.eg, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220.thread, label %bb.am

bb.am:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i204
  %i.eh = getelementptr inbounds nuw i8, ptr %.19.i.i.i199, i64 40
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !65 ; 2 uses
  %.sroa.speculated.i.i.i.i.i205 = call i64 @llvm.umin.i64(i64 %i.ei, i64 %i.dw) ; 2 uses
  %i.ej = icmp eq i64 %.sroa.speculated.i.i.i.i.i205, 0
  br i1 %i.ej, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i212, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i206

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i206: ; preds = %bb.am
  %i.ek = getelementptr inbounds nuw i8, ptr %.19.i.i.i199, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !46
  %i.em = call i32 @memcmp(ptr noundef %i.dx, ptr noundef %i.el, i64 noundef %.sroa.speculated.i.i.i.i.i205) #26 ; 2 uses
  %.not.i.i.i.i.i207 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i.i.i.i207, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i212, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i212: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i206, %bb.am
  %i.en = sub i64 %i.dw, %i.ei
  %spec.select7.i.i.i.i.i.i213 = call i64 @llvm.smax.i64(i64 %i.en, i64 -2147483648)
  %.08.i.i.i.i.i.i214 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i213, i64 2147483647)
  %.0.i6.i.i.i.i.i215 = trunc nsw i64 %.08.i.i.i.i.i.i214 to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i206, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i212
  %.0.i.i.i.i.i209 = phi i32 [ %i.em, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i206 ], [ %.0.i6.i.i.i.i.i215, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i212 ]
  %i.eo = icmp slt i32 %.0.i.i.i.i.i209, 0
  br i1 %i.eo, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220.thread, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220.thread.invoke

bb.an:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread536
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit457

bb.ao:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220.thread.invoke, %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i204, %bb.ak, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220.thread.invoke

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220.thread.invoke: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220.thread
  %.sink705 = phi i64 [ 16, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220.thread ], [ 8, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220 ]
  %i.er = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sink705
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !62
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.et)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit220.thread.invoke
  %i.eu = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.ap unwind label %bb.ao

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %._crit_edge.i.i, label %bb.cf

._crit_edge.i.i:                                  ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8parseMulERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE:bb.a
bb.dn:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i417
  %i.ts = load ptr, ptr %i.sz, align 8, !tbaa !212
  %i.tt = ptrtoint ptr %i.ts to i64
  %i.tu = ptrtoint ptr %i.tr to i64
  %i.tv = sub i64 %i.tt, %i.tu
  call void @_ZdlPvm(ptr noundef nonnull %i.tr, i64 noundef %i.tv) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit421

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit421: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i417, %bb.dn
  %i.tw = load ptr, ptr %39, align 8, !tbaa !46   ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.ty = icmp eq ptr %i.tw, %i.tx
  br i1 %i.ty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit421
  %i.tz = load i64, ptr %i.tx, align 8, !tbaa !56
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.ua) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit421, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  %i.ub = load ptr, ptr %37, align 8, !tbaa !46   ; 2 uses
  %i.uc = icmp eq ptr %i.ub, %i.sh
  br i1 %i.uc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424
  %i.ud = load i64, ptr %i.sh, align 8, !tbaa !56
  %i.ue = add i64 %i.ud, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.ue) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  %i.uf = load ptr, ptr %30, align 8, !tbaa !270  ; 3 uses
  %i.ug = load ptr, ptr %i.ob, align 8, !tbaa !271 ; 2 uses
  %.not4.i.i.i428 = icmp eq ptr %i.uf, %i.ug
  br i1 %.not4.i.i.i428, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit.i436, label %.lr.ph.i.i.i429

.lr.ph.i.i.i429:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i432
  %.05.i.i.i430 = phi ptr [ %i.um, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i432 ], [ %i.uf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427 ] ; 3 uses
  %i.uh = load ptr, ptr %.05.i.i.i430, align 8, !tbaa !46 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.05.i.i.i430, i64 16 ; 2 uses
  %i.uj = icmp eq ptr %i.uh, %i.ui
  br i1 %i.uj, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i431

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i431: ; preds = %.lr.ph.i.i.i429
  %i.uk = load i64, ptr %i.ui, align 8, !tbaa !56
  %i.ul = add i64 %i.uk, 1
  call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.ul) #27
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i432

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i432: ; preds = %.lr.ph.i.i.i429, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i431
  %i.um = getelementptr inbounds nuw i8, ptr %.05.i.i.i430, i64 40 ; 2 uses
  %.not.i.i.i433 = icmp eq ptr %i.um, %i.ug
  br i1 %.not.i.i.i433, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i434, label %.lr.ph.i.i.i429, !llvm.loop !10

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i434: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i432
  %.pr.i435 = load ptr, ptr %30, align 8, !tbaa !270
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit.i436

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit.i436: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i434, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427
  %i.un = phi ptr [ %.pr.i435, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i434 ], [ %i.uf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427 ] ; 3 uses
  %.not.i.i1.i437 = icmp eq ptr %i.un, null
  br i1 %.not.i.i1.i437, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev.exit439, label %bb.do

bb.do:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit.i436
  %i.uo = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !272
  %i.uq = ptrtoint ptr %i.up to i64
  %i.ur = ptrtoint ptr %i.un to i64
  %i.us = sub i64 %i.uq, %i.ur
  call void @_ZdlPvm(ptr noundef nonnull %i.un, i64 noundef %i.us) #27
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev.exit439

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev.exit439: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit.i436, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %bb.dt

bb.dp:                                            ; preds = %.noexc.i400
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit543

bb.dq:                                            ; preds = %bb.dl
  %i.uu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #26
  br label %.body406

.body406:                                         ; preds = %bb.dk, %bb.dj, %bb.dq
  %.pn146 = phi { ptr, i32 } [ %i.uu, %bb.dq ], [ %i.tb, %bb.dj ], [ %i.tb, %bb.dk ] ; 2 uses
  %i.uv = load ptr, ptr %39, align 8, !tbaa !46   ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.ux = icmp eq ptr %i.uv, %i.uw
  br i1 %i.ux, label %.loopexit543, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440: ; preds = %.body406
  %i.uy = load i64, ptr %i.uw, align 8, !tbaa !56
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uv, i64 noundef %i.uz) #27
  br label %.loopexit543

.loopexit543:                                     ; preds = %.body406, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440, %bb.dp
  %.pn146.pn = phi { ptr, i32 } [ %i.ut, %bb.dp ], [ %.pn146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440 ], [ %.pn146, %.body406 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  %i.va = load ptr, ptr %37, align 8, !tbaa !46   ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.sh
  br i1 %i.vb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443: ; preds = %.loopexit543
  %i.vc = load i64, ptr %i.sh, align 8, !tbaa !56
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.vd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445: ; preds = %.loopexit543, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  br label %bb.dr

bb.dr:                                            ; preds = %bb.cz, %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, %bb.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362
  %.pn146.pn.pn.pn = phi { ptr, i32 } [ %.pn146.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445 ], [ %i.ry, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394 ], [ %i.rt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388 ], [ %i.qg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362 ], [ %i.ql, %bb.cy ], [ %i.qm, %bb.cz ], [ %i.qn, %bb.da ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #26
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359
  %.pn146.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn146.pn.pn.pn, %bb.dr ], [ %i.qb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %bb.du

bb.dt:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev.exit439, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev.exit
  %i.ve = load ptr, ptr %17, align 8, !tbaa !46   ; 2 uses
  %i.vf = icmp eq ptr %i.ve, %i.dq
  br i1 %i.vf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446: ; preds = %bb.dt
  %i.vg = load i64, ptr %i.dq, align 8, !tbaa !56
  %i.vh = add i64 %i.vg, 1
  call void @_ZdlPvm(ptr noundef %i.ve, i64 noundef %i.vh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.vi = load ptr, ptr %16, align 8, !tbaa !46   ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.vk = icmp eq ptr %i.vi, %i.vj
  br i1 %i.vk, label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit451, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i449: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448
  %i.vl = load i64, ptr %i.vj, align 8, !tbaa !56
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vi, i64 noundef %i.vm) #27
  br label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit451

_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit451: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i449
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.em

bb.du:                                            ; preds = %bb.ds, %bb.ce, %bb.ao
  %.pn166.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn, %bb.ce ], [ %.pn146.pn.pn.pn.pn, %bb.ds ], [ %i.eq, %bb.ao ] ; 2 uses
  %i.vn = load ptr, ptr %17, align 8, !tbaa !46   ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.dq
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452: ; preds = %bb.du
  %i.vp = load i64, ptr %i.dq, align 8, !tbaa !56
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.vr = load ptr, ptr %16, align 8, !tbaa !46   ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.vt = icmp eq ptr %i.vr, %i.vs
  br i1 %i.vt, label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit457, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i455: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454
  %i.vu = load i64, ptr %i.vs, align 8, !tbaa !56
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vv) #27
  br label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit457

_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit457: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i455, %bb.an
  %.pn166.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ep, %bb.an ], [ %.pn166.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i455 ], [ %.pn166.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.dv

bb.dv:                                            ; preds = %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit457, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %.pn174.pn = phi { ptr, i32 } [ %.pn174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %.pn166.pn.pn.pn.pn.pn.pn, %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_13PinD2Ev.exit457 ], [ %.pn133, %bb.aj ], [ %.pn131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #26
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.t
  %.pn174.pn.pn = phi { ptr, i32 } [ %.pn174.pn, %bb.dv ], [ %i.cb, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.en

._crit_edge.i.i458:                               ; preds = %.split.loop.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  %i.vw = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 6 uses
  store ptr %i.vw, ptr %40, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.vw, ptr noundef nonnull align 1 dereferenceable(9) @.str.204, i64 9, i1 false)
  %i.vx = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 9, ptr %i.vx, align 8, !tbaa !65
  %i.vy = getelementptr inbounds nuw i8, ptr %40, i64 25
  store i8 0, ptr %i.vy, align 1, !tbaa !56
  %i.vz = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !65
  %i.wb = icmp eq i64 %i.wa, 7
  br i1 %i.wb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread539

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463: ; preds = %._crit_edge.i.i458
  %i.wc = load ptr, ptr %i.q, align 8, !tbaa !46  ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 1
  %i.we = xor i32 %i.wd, 1818322258
  %i.wf = getelementptr i8, ptr %i.wc, i64 3
  %i.wg = load i32, ptr %i.wf, align 1
  %i.wh = xor i32 %i.wg, 1986610284
  %i.wi = or i32 %i.we, %i.wh
  %i.wj = icmp ne i32 %i.wi, 0
  %i.wk = zext i1 %i.wj to i32
  %bcmp.i462.fr = freeze i32 %i.wk
  %i.wl = icmp eq i32 %bcmp.i462.fr, 0
  %spec.select = select i1 %i.wl, ptr @.str.304, ptr @.str.305
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread539

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread539: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463, %._crit_edge.i.i458
  %i.wm = phi ptr [ @.str.305, %._crit_edge.i.i458 ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463 ]
  %i.wn = invoke noundef nonnull align 1 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIA4_cEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 1 dereferenceable(4) %i.wm)
          to label %bb.dx unwind label %bb.ej     ; 0 uses

bb.dx:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit463.thread539
  %i.wo = load ptr, ptr %40, align 8, !tbaa !46   ; 2 uses
  %i.wp = icmp eq ptr %i.wo, %i.vw
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464: ; preds = %bb.dx
  %i.wq = load i64, ptr %i.vw, align 8, !tbaa !56
  %i.wr = add i64 %i.wq, 1
  call void @_ZdlPvm(ptr noundef %i.wo, i64 noundef %i.wr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26
  %i.ws = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  store ptr %i.ws, ptr %41, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ws, ptr noundef nonnull align 1 dereferenceable(11) @.str.306, i64 11, i1 false)
  %i.wt = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 11, ptr %i.wt, align 8, !tbaa !65
  %i.wu = getelementptr inbounds nuw i8, ptr %41, i64 27
  store i8 0, ptr %i.wu, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26
  %i.wv = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !62 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 3 uses
  store ptr %i.wy, ptr %43, align 8, !tbaa !64
  %i.wz = load ptr, ptr %i.wx, align 8, !tbaa !46 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !65 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.xb, ptr %i.b, align 8, !tbaa !63
  %i.xc = icmp ugt i64 %i.xb, 15
  br i1 %i.xc, label %.noexc.i472, label %._crit_edge.i.i471

.noexc.i472:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466
  %i.xd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc473 unwind label %.thread ; 2 uses

.thread:                                          ; preds = %.noexc.i472
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit544

.noexc473:                                        ; preds = %.noexc.i472
  store ptr %i.xd, ptr %43, align 8, !tbaa !46
  %i.xf = load i64, ptr %i.b, align 8, !tbaa !63
  store i64 %i.xf, ptr %i.wy, align 8, !tbaa !56
  br label %._crit_edge.i.i471

._crit_edge.i.i471:                               ; preds = %.noexc473, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466
  %i.xg = phi ptr [ %i.xd, %.noexc473 ], [ %i.wy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466 ] ; 2 uses
  switch i64 %i.xb, label %bb.dz [
    i64 1, label %bb.dy
    i64 0, label %bb.ea
  ]

bb.dy:                                            ; preds = %._crit_edge.i.i471
  %i.xh = load i8, ptr %i.wz, align 1, !tbaa !56
  store i8 %i.xh, ptr %i.xg, align 1, !tbaa !56
  br label %bb.ea

bb.dz:                                            ; preds = %._crit_edge.i.i471
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xg, ptr align 1 %i.wz, i64 %i.xb, i1 false)
  br label %bb.ea

bb.ea:                                            ; preds = %._crit_edge.i.i471, %bb.dy, %bb.dz
  %i.xi = load i64, ptr %i.b, align 8, !tbaa !63  ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 %i.xi, ptr %i.xj, align 8, !tbaa !65
  %i.xk = load ptr, ptr %43, align 8, !tbaa !46
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xi
  store i8 0, ptr %i.xl, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.xm = getelementptr inbounds nuw i8, ptr %43, i64 32 ; 4 uses
  %i.xn = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !62 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 3 uses
  store ptr %i.xq, ptr %i.xm, align 8, !tbaa !64
  %i.xr = load ptr, ptr %i.xp, align 8, !tbaa !46 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !65 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.xt, ptr %i.a, align 8, !tbaa !63
  %i.xu = icmp ugt i64 %i.xt, 15
  br i1 %i.xu, label %.noexc.i476, label %._crit_edge.i.i475

.noexc.i476:                                      ; preds = %bb.ea
  %i.xv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.xm, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc477 unwind label %bb.ek ; 2 uses

.noexc477:                                        ; preds = %.noexc.i476
  store ptr %i.xv, ptr %i.xm, align 8, !tbaa !46
  %i.xw = load i64, ptr %i.a, align 8, !tbaa !63
  store i64 %i.xw, ptr %i.xq, align 8, !tbaa !56
  br label %._crit_edge.i.i475

._crit_edge.i.i475:                               ; preds = %.noexc477, %bb.ea
  %i.xx = phi ptr [ %i.xv, %.noexc477 ], [ %i.xq, %bb.ea ] ; 2 uses
  switch i64 %i.xt, label %bb.ec [
    i64 1, label %bb.eb
    i64 0, label %bb.ed
  ]

bb.eb:                                            ; preds = %._crit_edge.i.i475
  %i.xy = load i8, ptr %i.xr, align 1, !tbaa !56
  store i8 %i.xy, ptr %i.xx, align 1, !tbaa !56
  br label %bb.ed

bb.ec:                                            ; preds = %._crit_edge.i.i475
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xx, ptr align 1 %i.xr, i64 %i.xt, i1 false)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %._crit_edge.i.i475
  %i.xz = load i64, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %43, i64 40
  store i64 %i.xz, ptr %i.ya, align 8, !tbaa !65
  %i.yb = load ptr, ptr %i.xm, align 8, !tbaa !46
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 %i.xz
  store i8 0, ptr %i.yc, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %i.yd = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i481 unwind label %bb.ee ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i481: ; preds = %bb.ed
  %i.ye = getelementptr inbounds nuw i8, ptr %43, i64 64
  store ptr %i.yd, ptr %42, align 8, !tbaa !210
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 64
  %i.yg = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  store ptr %i.yf, ptr %i.yg, align 8, !tbaa !212
  %i.yh = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %43, ptr noundef nonnull %i.ye, ptr noundef nonnull %i.yd)
          to label %bb.eg unwind label %bb.ee

bb.ee:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i481, %bb.ed
  %i.yi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yj = load ptr, ptr %42, align 8, !tbaa !210  ; 3 uses
  %.not.i.i5.i479 = icmp eq ptr %i.yj, null
  br i1 %.not.i.i5.i479, label %.body482, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.yk = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !212
  %i.ym = ptrtoint ptr %i.yl to i64
  %i.yn = ptrtoint ptr %i.yj to i64
  %i.yo = sub i64 %i.ym, %i.yn
  call void @_ZdlPvm(ptr noundef nonnull %i.yj, i64 noundef %i.yo) #27
  br label %.body482

bb.eg:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i481
  %i.yp = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  store ptr %i.yh, ptr %i.yp, align 8, !tbaa !211
  invoke fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8addLayerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RNS1_11LayerParamsESt6vectorIS9_SaIS9_EEii(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef align 8 %42, i32 noundef 1, i32 noundef 0)
          to label %bb.eh unwind label %bb.el

bb.eh:                                            ; preds = %bb.eg
  %i.yq = load ptr, ptr %42, align 8, !tbaa !210  ; 3 uses
  %i.yr = load ptr, ptr %i.yp, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i485 = icmp eq ptr %i.yq, %i.yr
  br i1 %.not4.i.i.i485, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i493, label %.lr.ph.i.i.i486

.lr.ph.i.i.i486:                                  ; preds = %bb.eh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i489
  %.05.i.i.i487 = phi ptr [ %i.yx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i489 ], [ %i.yq, %bb.eh ] ; 3 uses
  %i.ys = load ptr, ptr %.05.i.i.i487, align 8, !tbaa !46 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.05.i.i.i487, i64 16 ; 2 uses
end_hunk_2
