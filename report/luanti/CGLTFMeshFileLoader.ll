Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 104
begin_hunk_0
@.str.67 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"generator\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"minVersion\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"invalid glTF\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"bufferView\00", align 1
@_ZZN10tiniergltf8AccessorC1ERKN4Json5ValueEE3map = linkonce_odr global %"class.std::unordered_map" zeroinitializer, comdat, align 8
@_ZGVZN10tiniergltf8AccessorC1ERKN4Json5ValueEE3map = linkonce_odr global i64 0, comdat, align 8
@constinit = private unnamed_addr constant [6 x { i64, i32 }] [{ i64, i32 } { i64 5120, i32 0 }, { i64, i32 } { i64 5121, i32 1 }, { i64, i32 } { i64 5122, i32 2 }, { i64, i32 } { i64 5123, i32 3 }, { i64, i32 } { i64 5125, i32 4 }, { i64, i32 } { i64 5126, i32 5 }], align 8
@__dso_handle = external hidden global i8
@.str.76 = private unnamed_addr constant [14 x i8] c"componentType\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"byteOffset\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"normalized\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"sparse\00", align 1
@_ZZN10tiniergltf8AccessorC1ERKN4Json5ValueEE3mapB5cxx11_0 = linkonce_odr global %"class.std::unordered_map.1203" zeroinitializer, comdat, align 8
@_ZGVZN10tiniergltf8AccessorC1ERKN4Json5ValueEE3mapB5cxx11_0 = linkonce_odr global i64 0, comdat, align 8
@.str.81 = private unnamed_addr constant [5 x i8] c"MAT2\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"MAT3\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"MAT4\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"SCALAR\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"VEC2\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"VEC3\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"VEC4\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"unordered_map::at\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"indices\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@_ZZN10tiniergltf21AccessorSparseIndicesC1ERKN4Json5ValueEE3map = linkonce_odr global %"class.std::unordered_map.1238" zeroinitializer, comdat, align 8
@_ZGVZN10tiniergltf21AccessorSparseIndicesC1ERKN4Json5ValueEE3map = linkonce_odr global i64 0, comdat, align 8
@constinit.94 = private unnamed_addr constant [3 x { i64, i32 }] [{ i64, i32 } { i64 5121, i32 0 }, { i64, i32 } { i64 5123, i32 1 }, { i64, i32 } { i64 5125, i32 2 }], align 8
@.str.95 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"sampler\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@_ZZN10tiniergltf22AnimationChannelTargetC1ERKN4Json5ValueEE3mapB5cxx11 = linkonce_odr global %"class.std::unordered_map.1286" zeroinitializer, comdat, align 8
@_ZGVZN10tiniergltf22AnimationChannelTargetC1ERKN4Json5ValueEE3mapB5cxx11 = linkonce_odr global i64 0, comdat, align 8
@.str.99 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"translation\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"weights\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@_ZZN10tiniergltf16AnimationSamplerC1ERKN4Json5ValueEE3mapB5cxx11 = linkonce_odr global %"class.std::unordered_map.1319" zeroinitializer, comdat, align 8
@_ZGVZN10tiniergltf16AnimationSamplerC1ERKN4Json5ValueEE3mapB5cxx11 = linkonce_odr global i64 0, comdat, align 8
@.str.107 = private unnamed_addr constant [12 x i8] c"CUBICSPLINE\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"STEP\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"byteLength\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"byteStride\00", align 1
@_ZZN10tiniergltf10BufferViewC1ERKN4Json5ValueEE3map = linkonce_odr global %"class.std::unordered_map.1352" zeroinitializer, comdat, align 8
@_ZGVZN10tiniergltf10BufferViewC1ERKN4Json5ValueEE3map = linkonce_odr global i64 0, comdat, align 8
@constinit.113 = private unnamed_addr constant [2 x { i64, i32 }] [{ i64, i32 } { i64 34962, i32 0 }, { i64, i32 } { i64 34963, i32 1 }], align 8
@.str.114 = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c"data:application/octet-stream;base64,\00", align 1
@.str.116 = private unnamed_addr constant [37 x i8] c"data:application/gltf-buffer;base64,\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"orthographic\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"perspective\00", align 1
@_ZZN10tiniergltf6CameraC1ERKN4Json5ValueEE3mapB5cxx11 = linkonce_odr global %"class.std::unordered_map.1387" zeroinitializer, comdat, align 8
@_ZGVZN10tiniergltf6CameraC1ERKN4Json5ValueEE3mapB5cxx11 = linkonce_odr global i64 0, comdat, align 8
@.str.121 = private unnamed_addr constant [5 x i8] c"xmag\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"ymag\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"zfar\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"znear\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"yfov\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"aspectRatio\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"mimeType\00", align 1
@_ZZN10tiniergltf5ImageC1ERKN4Json5ValueEE3mapB5cxx11 = linkonce_odr global %"class.std::unordered_map.1422" zeroinitializer, comdat, align 8
@_ZGVZN10tiniergltf5ImageC1ERKN4Json5ValueEE3mapB5cxx11 = linkonce_odr global i64 0, comdat, align 8
@.str.128 = private unnamed_addr constant [11 x i8] c"image/jpeg\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"alphaCutoff\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"alphaMode\00", align 1
@_ZZN10tiniergltf8MaterialC1ERKN4Json5ValueEE3mapB5cxx11 = linkonce_odr global %"class.std::unordered_map.1455" zeroinitializer, comdat, align 8
@_ZGVZN10tiniergltf8MaterialC1ERKN4Json5ValueEE3mapB5cxx11 = linkonce_odr global i64 0, comdat, align 8
@.str.133 = private unnamed_addr constant [6 x i8] c"BLEND\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"OPAQUE\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"doubleSided\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"emissiveFactor\00", align 1
@.str.138 = private unnamed_addr constant [16 x i8] c"emissiveTexture\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"normalTexture\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"occlusionTexture\00", align 1
@.str.141 = private unnamed_addr constant [21 x i8] c"pbrMetallicRoughness\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"texCoord\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@constinit.145 = private unnamed_addr constant [4 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], align 8
@.str.146 = private unnamed_addr constant [16 x i8] c"baseColorFactor\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"baseColorTexture\00", align 1
@.str.148 = private unnamed_addr constant [15 x i8] c"metallicFactor\00", align 1
@.str.149 = private unnamed_addr constant [25 x i8] c"metallicRoughnessTexture\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"roughnessFactor\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"primitives\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@_ZZN10tiniergltf13MeshPrimitiveC1ERKN4Json5ValueEE3map = linkonce_odr global %"class.std::unordered_map.1489" zeroinitializer, comdat, align 8
@_ZGVZN10tiniergltf13MeshPrimitiveC1ERKN4Json5ValueEE3map = linkonce_odr global i64 0, comdat, align 8
@constinit.155 = private unnamed_addr constant [7 x { i64, i32 }] [{ i64, i32 } zeroinitializer, { i64, i32 } { i64 1, i32 1 }, { i64, i32 } { i64 2, i32 2 }, { i64, i32 } { i64 3, i32 3 }, { i64, i32 } { i64 4, i32 4 }, { i64, i32 } { i64 5, i32 5 }, { i64, i32 } { i64 6, i32 6 }], align 8
@.str.156 = private unnamed_addr constant [8 x i8] c"targets\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"POSITION\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"TANGENT\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"JOINTS\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"WEIGHTS\00", align 1
@.str.164 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@constinit.168 = private unnamed_addr constant [4 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00], align 8
@.str.170 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"children\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"skin\00", align 1
@constinit.177 = private unnamed_addr constant [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], align 8
@.str.178 = private unnamed_addr constant [80 x i8] c"vector<bool>::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"magFilter\00", align 1
@_ZZN10tiniergltf7SamplerC1ERKN4Json5ValueEE3map = linkonce_odr global %"class.std::unordered_map.1551" zeroinitializer, comdat, align 8
@_ZGVZN10tiniergltf7SamplerC1ERKN4Json5ValueEE3map = linkonce_odr global i64 0, comdat, align 8
@constinit.180 = private unnamed_addr constant [2 x { i64, i32 }] [{ i64, i32 } { i64 9728, i32 0 }, { i64, i32 } { i64 9729, i32 1 }], align 8
@.str.181 = private unnamed_addr constant [10 x i8] c"minFilter\00", align 1
@_ZZN10tiniergltf7SamplerC1ERKN4Json5ValueEE3map_0 = linkonce_odr global %"class.std::unordered_map.1572" zeroinitializer, comdat, align 8
@_ZGVZN10tiniergltf7SamplerC1ERKN4Json5ValueEE3map_0 = linkonce_odr global i64 0, comdat, align 8
@constinit.182 = private unnamed_addr constant [6 x { i64, i32 }] [{ i64, i32 } { i64 9728, i32 0 }, { i64, i32 } { i64 9729, i32 1 }, { i64, i32 } { i64 9984, i32 2 }, { i64, i32 } { i64 9985, i32 3 }, { i64, i32 } { i64 9986, i32 4 }, { i64, i32 } { i64 9987, i32 5 }], align 8
@_ZZN10tiniergltf7SamplerC1ERKN4Json5ValueEE3map_1 = linkonce_odr global %"class.std::unordered_map.1593" zeroinitializer, comdat, align 8
@_ZGVZN10tiniergltf7SamplerC1ERKN4Json5ValueEE3map_1 = linkonce_odr global i64 0, comdat, align 8
@constinit.183 = private unnamed_addr constant [3 x { i64, i32 }] [{ i64, i32 } { i64 10497, i32 0 }, { i64, i32 } { i64 33071, i32 1 }, { i64, i32 } { i64 33648, i32 2 }], align 8
@.str.184 = private unnamed_addr constant [6 x i8] c"wrapS\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"wrapT\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"joints\00", align 1
@.str.187 = private unnamed_addr constant [20 x i8] c"inverseBindMatrices\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"skeleton\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.190 = private unnamed_addr constant [18 x i8] c"unsupported URI: \00", align 1
@"_ZTIZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS_11SkinnedMesh6SJointEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS_11SkinnedMesh6SJointEE3$_0" }, align 8
@"_ZTSZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS_11SkinnedMesh6SJointEE3$_0" = internal constant [105 x i8] c"ZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS_11SkinnedMesh6SJointEE3$_0\00", align 1
@.str.191 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.192 = private unnamed_addr constant [25 x i8] c"invalid normalized value\00", align 1
@_ZTIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_E = linkonce_odr constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_E, i32 0, ptr @_ZTIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_E }, comdat, align 8
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global [0 x ptr]
@_ZTSPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_E = linkonce_odr constant [61 x i8] c"PFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_E\00", comdat, align 1
@_ZTIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_E = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__function_type_infoE, i64 2), ptr @_ZTSFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_E }, comdat, align 8
@_ZTVN10__cxxabiv120__function_type_infoE = external global [0 x ptr]
@_ZTSFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_E = linkonce_odr constant [60 x i8] c"FNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_E\00", comdat, align 1
@switch.table._ZNK10tiniergltf8Accessor11elementSizeEv = private unnamed_addr constant [6 x i8] c"\01\01\02\02\04\04", align 8
@switch.table._ZN10tiniergltf8AccessorC2ERKN4Json5ValueE.70 = private unnamed_addr constant [7 x i8] c"\04\09\10\01\02\03\04", align 8
@switch.table._ZZN10tiniergltf4GlTFC1ERKN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_EEOSt8optionalISB_EENKUlRKT_mmmE_clINS_8AccessorEEEDaSN_mmm = private unnamed_addr constant [6 x i8] c"\00\00\01\01\03\03", align 8
@switch.table._ZZN10tiniergltf4GlTFC1ERKN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_EEOSt8optionalISB_EENKUlRKT_mmmE_clINS_21AccessorSparseIndicesEEEDaSN_mmm = private unnamed_addr constant [3 x i8] c"\00\01\03", align 8
@switch.table._ZZN10tiniergltf4GlTFC1ERKN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_EEOSt8optionalISB_EENKUlRKT_mmmE_clINS_21AccessorSparseIndicesEEEDaSN_mmm.72 = private unnamed_addr constant [3 x i8] c"\01\02\04", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define <2 x float> @_ZN5scene19CGLTFMeshFileLoader6rawgetISt5arrayIfLm2EEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload = load <2 x float>, ptr %0, align 1
  ret <2 x float> %.sroa.0.0.copyload
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, float } @_ZN5scene19CGLTFMeshFileLoader6rawgetISt5arrayIfLm3EEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.copyload6 = load <2 x float>, ptr %0, align 1
  %.sroa.2.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload8 = load float, ptr %.sroa.2.0..sroa_idx7, align 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.0.copyload6, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.2.0.copyload8, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @_ZN5scene19CGLTFMeshFileLoader6rawgetISt5arrayIfLm4EEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.copyload = load <2 x float>, ptr %0, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i16 @_ZN5scene19CGLTFMeshFileLoader6rawgetISt5arrayIhLm2EEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.0.copyload.i = load i8, ptr %0, align 1
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.0.copyload.i.1 = load i8, ptr %1, align 1
  %.sroa.2.0.insert.ext = zext i8 %.0.copyload.i.1 to i16
  %.sroa.2.0.insert.shift = shl nuw i16 %.sroa.2.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext i8 %.0.copyload.i to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i16 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i24 @_ZN5scene19CGLTFMeshFileLoader6rawgetISt5arrayIhLm3EEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i24, ptr %0, align 1
  ret i24 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @_ZN5scene19CGLTFMeshFileLoader6rawgetISt5arrayIhLm4EEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 1
  ret i32 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @_ZN5scene19CGLTFMeshFileLoader6rawgetISt5arrayItLm2EEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.0.copyload.i = load i16, ptr %0, align 1
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.0.copyload.i.1 = load i16, ptr %1, align 1
  %.sroa.2.0.insert.ext = zext i16 %.0.copyload.i.1 to i32
  %.sroa.2.0.insert.shift = shl nuw i32 %.sroa.2.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext i16 %.0.copyload.i to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i48 @_ZN5scene19CGLTFMeshFileLoader6rawgetISt5arrayItLm3EEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i48, ptr %0, align 1
  ret i48 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @_ZN5scene19CGLTFMeshFileLoader6rawgetISt5arrayItLm4EEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 1
  ret i64 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @_ZN5scene19CGLTFMeshFileLoader6rawgetISt5arrayIjLm2EEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.0.copyload.i = load i32, ptr %0, align 1
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.0.copyload.i.1 = load i32, ptr %1, align 1
  %.sroa.2.0.insert.ext = zext i32 %.0.copyload.i.1 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.0.copyload.i to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i32 } @_ZN5scene19CGLTFMeshFileLoader6rawgetISt5arrayIjLm3EEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.copyload6 = load i64, ptr %0, align 1
  %.sroa.2.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload8 = load i32, ptr %.sroa.2.0..sroa_idx7, align 1
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.copyload6, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload8, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5scene19CGLTFMeshFileLoader6rawgetISt5arrayIjLm4EEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 1
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5scene19CGLTFMeshFileLoader6rawgetIN4core8CMatrix4IfEEEET_PKc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.core::CMatrix4") align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(64) %1, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, float } @_ZN5scene19CGLTFMeshFileLoader6rawgetIN4core8vector3dIfEEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i4 = load float, ptr %i.b, align 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.a, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.0.copyload.i4, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @_ZN5scene19CGLTFMeshFileLoader6rawgetIN4core10quaternionEEET_PKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %0, align 1        ; 2 uses
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.c = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.b, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.c, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5scene19CGLTFMeshFileLoader24isALoadableFileExtensionERKN4core6stringIcEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::string", align 8      ; 16 uses
  %3 = alloca %"class.core::string", align 8      ; 9 uses
  %4 = alloca %"class.core::string", align 8      ; 9 uses
  %5 = alloca %"class.core::string", align 8      ; 15 uses
  %6 = alloca %"class.core::string", align 8      ; 9 uses
  %7 = alloca %"class.core::string", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i8 0, ptr %i.a, align 8, !tbaa !60
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 4, i8 noundef signext 0)
          to label %.lr.ph.i.preheader unwind label %bb.c

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !61
  store i8 103, ptr %i.c, align 1, !tbaa !60
  %i.d = load ptr, ptr %2, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 108, ptr %i.e, align 1, !tbaa !60
  %i.f = load ptr, ptr %2, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 116, ptr %i.g, align 1, !tbaa !60
  %i.h = load ptr, ptr %2, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  store i8 102, ptr %i.i, align 1, !tbaa !60
  %i.j = load i64, ptr %i.b, align 8, !tbaa !59
  %i.k = icmp ugt i64 %i.j, 4
  br i1 %i.k, label %bb.b, label %_ZN4core6stringIcEC2IcEEPKT_.exit47

bb.b:                                             ; preds = %.lr.ph.i.preheader
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 4, i8 noundef signext 0)
          to label %_ZN4core6stringIcEC2IcEEPKT_.exit47 unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.a, align 8, !tbaa !60
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #32
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZN4core6stringIcED2Ev.exit113
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZN4core6stringIcED2Ev.exit113 ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.l, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN4core6stringIcEC2IcEEPKT_.exit47:              ; preds = %bb.b, %.lr.ph.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !59
  store i8 0, ptr %i.q, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !59
  store i8 0, ptr %i.s, align 8, !tbaa !60
  %i.u = invoke noundef i32 @_ZN4core15isFileExtensionERKNS_6stringIcEES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN4core6stringIcEC2IcEEPKT_.exit47
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.critedge37, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !59
  store i8 0, ptr %i.w, align 8, !tbaa !60
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 3, i8 noundef signext 0)
          to label %.lr.ph.i140.preheader unwind label %bb.g

.lr.ph.i140.preheader:                            ; preds = %bb.e
  %i.y = load ptr, ptr %5, align 8, !tbaa !61
  store i8 103, ptr %i.y, align 1, !tbaa !60
  %i.z = load ptr, ptr %5, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i8 108, ptr %i.aa, align 1, !tbaa !60
  %i.ab = load ptr, ptr %5, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i8 98, ptr %i.ac, align 1, !tbaa !60
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !59
  %i.ae = icmp ugt i64 %i.ad, 3
  br i1 %i.ae, label %bb.f, label %_ZN4core6stringIcEC2IcEEPKT_.exit65

bb.f:                                             ; preds = %.lr.ph.i140.preheader
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 3, i8 noundef signext 0)
          to label %_ZN4core6stringIcEC2IcEEPKT_.exit65 unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.w
  br i1 %i.ah, label %.body51, label %.body51.sink.split

_ZN4core6stringIcEC2IcEEPKT_.exit65:              ; preds = %.lr.ph.i140.preheader, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ai, ptr %6, align 8, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !59
  store i8 0, ptr %i.ai, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ak, ptr %7, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !59
  store i8 0, ptr %i.ak, align 8, !tbaa !60
  %i.am = invoke noundef i32 @_ZN4core15isFileExtensionERKNS_6stringIcEES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.critedge unwind label %bb.i

.critedge:                                        ; preds = %_ZN4core6stringIcEC2IcEEPKT_.exit65
  %i.an = icmp sgt i32 %i.am, 0
  %i.ao = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ak
  br i1 %i.ap, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67: ; preds = %.critedge
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !60
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #32
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.as = load ptr, ptr %6, align 8, !tbaa !61    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ai
  br i1 %i.at, label %_ZN4core6stringIcED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %_ZN4core6stringIcED2Ev.exit
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !60
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #32
end_hunk_0
begin_hunk_1_@_ZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyNormalsEmRSt6vectorIN5video9S3DVertexESaIS4_EE:bb.a
  %lcmp.mod37 = trunc i64 %i.b to i1
  call void @llvm.assume(i1 %lcmp.mod37)
  %i.av = mul i64 %.sroa.4.0.copyload.i, %.017.us.epil.init
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.av ; 2 uses
  %i.ax = load <2 x float>, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.0.copyload.i4.i.i.us.epil = load float, ptr %i.ay, align 1
  %i.az = fneg float %.0.copyload.i4.i.i.us.epil
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.017.us.epil.init ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store <2 x float> %i.ax, ptr %i.bb, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.us.epil = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  store float %i.az, ptr %.sroa.5.0..sroa_idx.us.epil, align 4, !tbaa !412
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit.loopexit33.unr-lcssa, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit.loopexit.unr-lcssa, %.lr.ph.split.split.epil, %._crit_edge, %._crit_edge.thread30, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split, %.lr.ph.split.split.preheader.new
  %.017 = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %i.bk, %.lr.ph.split.split ] ; 5 uses
  %niter44 = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %niter44.next.3, %.lr.ph.split.split ]
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.017 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store <2 x float> zeroinitializer, ptr %i.bd, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  store float -0.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !412
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.017 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 52
  store <2 x float> zeroinitializer, ptr %i.bf, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.be, i64 60
  store float -0.000000e+00, ptr %.sroa.5.0..sroa_idx.1, align 4, !tbaa !412
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.017 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 92
  store <2 x float> zeroinitializer, ptr %i.bh, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bg, i64 100
  store float -0.000000e+00, ptr %.sroa.5.0..sroa_idx.2, align 4, !tbaa !412
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.017 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 132
  store <2 x float> zeroinitializer, ptr %i.bj, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bi, i64 140
  store float -0.000000e+00, ptr %.sroa.5.0..sroa_idx.3, align 4, !tbaa !412
  %i.bk = add nuw i64 %.017, 4                    ; 2 uses
  %niter44.next.3 = add nuw i64 %niter44, 4       ; 2 uses
  %niter44.ncmp.3 = icmp eq i64 %niter44.next.3, %unroll_iter43
  br i1 %niter44.ncmp.3, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit.loopexit.unr-lcssa, label %.lr.ph.split.split, !llvm.loop !1040

bb.c:                                             ; preds = %.lr.ph
  %i.bl = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bl, align 8, !tbaa !63
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr @.str.36, ptr %i.bm, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load i8, ptr %.phi.trans.insert, align 8, !tbaa !476
  %i.bp = icmp eq i8 %i.bo, 1
  br i1 %i.bp, label %bb.e, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit16

bb.e:                                             ; preds = %bb.d
  %i.bq = load ptr, ptr %3, align 8, !tbaa !479   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i15, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit16, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !480
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit16

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit16: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.bn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(784) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.762", align 8 ; 12 uses
  %4 = alloca %"class.std::variant.785", align 8  ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293
  %i.c = load ptr, ptr %0, align 8, !tbaa !294    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 216                 ; 2 uses
  %.not.i.i = icmp ult i64 %1, %i.g
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %1, i64 noundef %i.g) #35
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw [216 x i8], ptr %i.c, i64 %1
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !310
  %i.k = icmp eq i32 %i.j, 5
  br i1 %i.k, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.762") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %1)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !521  ; 10 uses
  %.not55 = icmp eq i64 %i.m, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.pre62 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !522 ; 3 uses
  br i1 %.not55, label %._crit_edge, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.c
  %i.n = load ptr, ptr %3, align 8                ; 10 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 5 uses
  %switch = icmp ult i8 %.pre62, 3
  br i1 %switch, label %.lr.ph49.split, label %bb.e

.lr.ph49.split:                                   ; preds = %.lr.ph49
  %i.o = load ptr, ptr %2, align 8, !tbaa !233    ; 15 uses
  switch i8 %.pre62, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.preheader [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
    i8 1, label %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  ]

_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph49.split
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.m, 4
  br i1 %i.p, label %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, label %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new

_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new: ; preds = %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %unroll_iter = and i64 %i.m, -4
  br label %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph49.split
  %xtraiter78 = and i64 %i.m, 3                   ; 3 uses
  %i.q = icmp ult i64 %i.m, 4
  br i1 %i.q, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %unroll_iter82 = and i64 %i.m, -4
  br label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.preheader: ; preds = %.lr.ph49.split
  %xtraiter84 = and i64 %i.m, 3                   ; 3 uses
  %i.r = icmp ult i64 %i.m, 4
  br i1 %i.r, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.epil.preheader, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.preheader.new

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.preheader.new: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.preheader
  %unroll_iter88 = and i64 %i.m, -4
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new
  %.02048.us = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %i.ap, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 6 uses
  %niter83 = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %niter83.next.3, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ]
  %i.s = mul i64 %.sroa.4.0.copyload.i, %.02048.us
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.02048.us
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.w = load <2 x i32>, ptr %i.t, align 1
  store <2 x i32> %i.w, ptr %i.v, align 4, !tbaa !412
  %i.x = or disjoint i64 %.02048.us, 1            ; 2 uses
  %i.y = mul i64 %.sroa.4.0.copyload.i, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.y
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ac = load <2 x i32>, ptr %i.z, align 1
  store <2 x i32> %i.ac, ptr %i.ab, align 4, !tbaa !412
  %i.ad = or disjoint i64 %.02048.us, 2           ; 2 uses
  %i.ae = mul i64 %.sroa.4.0.copyload.i, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.ai = load <2 x i32>, ptr %i.af, align 1
  store <2 x i32> %i.ai, ptr %i.ah, align 4, !tbaa !412
  %i.aj = or disjoint i64 %.02048.us, 3           ; 2 uses
  %i.ak = mul i64 %.sroa.4.0.copyload.i, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ak
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  %i.ao = load <2 x i32>, ptr %i.al, align 1
  store <2 x i32> %i.ao, ptr %i.an, align 4, !tbaa !412
  %i.ap = add nuw i64 %.02048.us, 4               ; 2 uses
  %niter83.next.3 = add nuw i64 %niter83, 4       ; 2 uses
  %niter83.ncmp.3 = icmp eq i64 %niter83.next.3, %unroll_iter82
  br i1 %niter83.ncmp.3, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit.loopexit75.unr-lcssa, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1042

_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new
  %.02048.us51 = phi i64 [ 0, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %i.ax, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 6 uses
  %niter = phi i64 [ 0, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %niter.next.3, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.02048.us51
  %.sroa.02.0.copyload.i.us73 = load <2 x i32>, ptr %i.aq, align 4, !tbaa !60
  %5 = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.02048.us51
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store <2 x i32> %.sroa.02.0.copyload.i.us73, ptr %6, align 4, !tbaa !412
  %i.ar = or disjoint i64 %.02048.us51, 1         ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ar
  %.sroa.02.0.copyload.i.us73.1 = load <2 x i32>, ptr %i.as, align 4, !tbaa !60
  %7 = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.ar
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store <2 x i32> %.sroa.02.0.copyload.i.us73.1, ptr %8, align 4, !tbaa !412
  %i.at = or disjoint i64 %.02048.us51, 2         ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.at
  %.sroa.02.0.copyload.i.us73.2 = load <2 x i32>, ptr %i.au, align 4, !tbaa !60
  %9 = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.at
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 28
  store <2 x i32> %.sroa.02.0.copyload.i.us73.2, ptr %10, align 4, !tbaa !412
  %i.av = or disjoint i64 %.02048.us51, 3         ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.av
  %.sroa.02.0.copyload.i.us73.3 = load <2 x i32>, ptr %i.aw, align 4, !tbaa !60
  %11 = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.av
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 28
  store <2 x i32> %.sroa.02.0.copyload.i.us73.3, ptr %12, align 4, !tbaa !412
  %i.ax = add nuw i64 %.02048.us51, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread71.loopexit.unr-lcssa, label %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1042

._crit_edge:                                      ; preds = %bb.c
  %i.ay = icmp eq i8 %.pre62, 1
  br i1 %i.ay, label %._crit_edge.thread71, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit

._crit_edge.thread71.loopexit.unr-lcssa:          ; preds = %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread71, label %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader

_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader: ; preds = %._crit_edge.thread71.loopexit.unr-lcssa, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %.02048.us51.epil.init = phi i64 [ 0, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %i.ax, %._crit_edge.thread71.loopexit.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod77)
  br label %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil

_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil: ; preds = %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader
  %.02048.us51.epil = phi i64 [ %i.ba, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil ], [ %.02048.us51.epil.init, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil ], [ 0, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.02048.us51.epil
  %.sroa.02.0.copyload.i.us73.epil = load <2 x i32>, ptr %i.az, align 4, !tbaa !60
  %13 = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.02048.us51.epil
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 28
  store <2 x i32> %.sroa.02.0.copyload.i.us73.epil, ptr %14, align 4, !tbaa !412
  %i.ba = add nuw i64 %.02048.us51.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread71, label %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil, !llvm.loop !1043

._crit_edge.thread71:                             ; preds = %._crit_edge.thread71.loopexit.unr-lcssa, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil, %._crit_edge
  %i.bb = load ptr, ptr %3, align 8, !tbaa !525   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread71
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !526
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit.loopexit.unr-lcssa: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit
  %lcmp.mod86.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod86.not, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.epil.preheader

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.epil.preheader: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit.loopexit.unr-lcssa, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.preheader
  %.02048.epil.init = phi i64 [ 0, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.preheader ], [ %i.by, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter84, 0
  call void @llvm.assume(i1 %lcmp.mod87)
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.epil

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.epil: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.epil, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.epil.preheader
  %.02048.epil = phi i64 [ %i.bj, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.epil ], [ %.02048.epil.init, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.epil.preheader ] ; 2 uses
  %epil.iter85 = phi i64 [ %epil.iter85.next, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.epil ], [ 0, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.epil.preheader ]
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.02048.epil ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 28
  store i32 0, ptr %i.bi, align 4, !tbaa !412
  %.sroa_idx39.epil = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store i32 0, ptr %.sroa_idx39.epil, align 4, !tbaa !412
  %i.bj = add nuw i64 %.02048.epil, 1
  %epil.iter85.next = add i64 %epil.iter85, 1     ; 2 uses
  %epil.iter85.cmp.not = icmp eq i64 %epil.iter85.next, %xtraiter84
  br i1 %epil.iter85.cmp.not, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.epil, !llvm.loop !1044

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit.loopexit75.unr-lcssa: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %lcmp.mod80.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod80.not, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit.loopexit75.unr-lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %.02048.us.epil.init = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %i.ap, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit.loopexit75.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter78, 0
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader
  %.02048.us.epil = phi i64 [ %i.bp, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil ], [ %.02048.us.epil.init, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 3 uses
  %epil.iter79 = phi i64 [ %epil.iter79.next, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil ], [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ]
  %i.bk = mul i64 %.sroa.4.0.copyload.i, %.02048.us.epil
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.02048.us.epil
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %i.bo = load <2 x i32>, ptr %i.bl, align 1
  store <2 x i32> %i.bo, ptr %i.bn, align 4, !tbaa !412
  %i.bp = add nuw i64 %.02048.us.epil, 1
  %epil.iter79.next = add i64 %epil.iter79, 1     ; 2 uses
  %epil.iter79.cmp.not = icmp eq i64 %epil.iter79.next, %xtraiter78
  br i1 %epil.iter79.cmp.not, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil, !llvm.loop !1045

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit.loopexit75.unr-lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit.loopexit.unr-lcssa, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.epil, %._crit_edge, %._crit_edge.thread71, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.l

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.preheader.new
  %.02048 = phi i64 [ 0, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.preheader.new ], [ %i.by, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit ] ; 5 uses
  %niter89 = phi i64 [ 0, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit.preheader.new ], [ %niter89.next.3, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit ]
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.02048 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  store i32 0, ptr %i.br, align 4, !tbaa !412
  %.sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store i32 0, ptr %.sroa_idx39, align 4, !tbaa !412
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.02048 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 68
  store i32 0, ptr %i.bt, align 4, !tbaa !412
  %.sroa_idx39.1 = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  store i32 0, ptr %.sroa_idx39.1, align 4, !tbaa !412
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.02048 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 108
  store i32 0, ptr %i.bv, align 4, !tbaa !412
  %.sroa_idx39.2 = getelementptr inbounds nuw i8, ptr %i.bu, i64 112
  store i32 0, ptr %.sroa_idx39.2, align 4, !tbaa !412
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.02048 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 148
  store i32 0, ptr %i.bx, align 4, !tbaa !412
  %.sroa_idx39.3 = getelementptr inbounds nuw i8, ptr %i.bw, i64 152
  store i32 0, ptr %.sroa_idx39.3, align 4, !tbaa !412
  %i.by = add nuw i64 %.02048, 4                  ; 2 uses
  %niter89.next.3 = add nuw i64 %niter89, 4       ; 2 uses
  %niter89.ncmp.3 = icmp eq i64 %niter89.next.3, %unroll_iter88
  br i1 %niter89.ncmp.3, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit.loopexit.unr-lcssa, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit, !llvm.loop !1042

bb.e:                                             ; preds = %.lr.ph49
  %i.bz = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bz, align 8, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr @.str.36, ptr %i.ca, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.bz, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i8, ptr %.phi.trans.insert, align 8, !tbaa !522
  %i.cd = icmp eq i8 %i.cc, 1
  br i1 %i.cd, label %bb.g, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit26

bb.g:                                             ; preds = %bb.f
  %i.ce = load ptr, ptr %3, align 8, !tbaa !525   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i25 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i25, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit26, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !526
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit26

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit26: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.m

bb.i:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN5scene19CGLTFMeshFileLoader30createNormalizedValuesAccessorILm2EEESt7variantIJNS0_8AccessorISt5arrayIhXT_EEEENS3_IS4_ItXT_EEEENS3_IS4_IfXT_EEEEEERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.std::variant.785") align 8 %4, ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %1)
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %.val24 = load i8, ptr %i.cl, align 8, !tbaa !528
  %.not.i.i27 = icmp eq i8 %.val24, -1
  br i1 %.not.i.i27, label %bb.j, label %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit.preheader"

"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit.preheader": ; preds = %bb.i
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit._crit_edge.thread", label %.lr.ph

bb.j:                                             ; preds = %bb.i
  %i.cm = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cm, align 8, !tbaa !63
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr @.str.34, ptr %i.cn, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.cm, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %bb.j
  unreachable

"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit._crit_edge": ; preds = %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit"
  %.pre = load i8, ptr %i.cl, align 8, !tbaa !528
  %i.co = icmp eq i8 %.pre, -1
  br i1 %i.co, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEENS4_IS5_ItLm2EEEENS4_IS5_IfLm2EEEEEED2Ev.exit, label %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit._crit_edge.thread", !prof !1047

"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit._crit_edge.thread": ; preds = %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit.preheader", %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit._crit_edge"
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !60
  %i.cr = icmp ne i8 %i.cq, 1
  %i.cs = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cs, null
  %or.cond.i.i.i = select i1 %i.cr, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEENS4_IS5_ItLm2EEEENS4_IS5_IfLm2EEEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEENS6_IS7_ItLm2EEEENS6_IS7_IfLm2EEEEEE8_M_resetEvEUlOT_E_RSt7variantIJS9_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEENS6_IS7_ItLm2EEEENS6_IS7_IfLm2EEEEEE8_M_resetEvEUlOT_E_RSt7variantIJS9_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.sink.split.i.i.i: ; preds = %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit._crit_edge.thread"
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !176
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cx) #32
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEENS4_IS5_ItLm2EEEENS4_IS5_IfLm2EEEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEENS4_IS5_ItLm2EEEENS4_IS5_IfLm2EEEEEED2Ev.exit: ; preds = %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit._crit_edge", %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit._crit_edge.thread", %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEENS6_IS7_ItLm2EEEENS6_IS7_IfLm2EEEEEE8_M_resetEvEUlOT_E_RSt7variantIJS9_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.l

.lr.ph:                                           ; preds = %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit.preheader", %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit"
  %.047 = phi i64 [ %i.dc, %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit" ], [ 0, %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit.preheader" ] ; 3 uses
  %i.cy = invoke <2 x float> @_ZN5scene19CGLTFMeshFileLoader19getNormalizedValuesILm2ELb1EEESt5arrayIfXT_EERKSt7variantIJNS0_8AccessorIS2_IhXT_EEEENS5_IS2_ItXT_EEEENS5_IS3_EEEEm(ptr noundef nonnull align 8 dereferenceable(41) %4, i64 noundef %.047)
          to label %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit": ; preds = %.lr.ph
  %i.cz = load ptr, ptr %2, align 8, !tbaa !233
  %i.da = getelementptr inbounds nuw [40 x i8], ptr %i.cz, i64 %.047
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28
  store <2 x float> %i.cy, ptr %i.db, align 4, !tbaa !412
  %i.dc = add nuw i64 %.047, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dc, %.val
  br i1 %exitcond.not, label %"_ZSt5visitIZNK5scene19CGLTFMeshFileLoader13MeshExtractor11copyTCoordsEmRSt6vectorIN5video9S3DVertexESaIS5_EEE3$_0JRKSt7variantIJNS1_8AccessorISt5arrayIhLm2EEEENSB_ISC_ItLm2EEEENSB_ISC_IfLm2EEEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISP_EEEEE4typeEE4typeEOSY_EEEE4typeEOSN_DpOSP_.exit._crit_edge", label %.lr.ph, !llvm.loop !1046

end_hunk_1
begin_hunk_2_@_ZN5scene19CGLTFMeshFileLoader30createNormalizedValuesAccessorILm2EEESt7variantIJNS0_8AccessorISt5arrayIhXT_EEEENS3_IS4_ItXT_EEEENS3_IS4_IfXT_EEEEEERKN10tiniergltf4GlTFEm:bb.a
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ei) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit23

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit23: ; preds = %.body19, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.aq

bb.am:                                            ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.ej = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull @.str.30)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @__cxa_throw(ptr nonnull %i.ej, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ek = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ej) #31
  br label %bb.aq

bb.ap:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit
  ret void

bb.aq:                                            ; preds = %bb.ao, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit23, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit18, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit13
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.ao ], [ %i.ae, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit13 ], [ %i.bv, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit18 ], [ %i.dm, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit23 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr <2 x float> @_ZN5scene19CGLTFMeshFileLoader19getNormalizedValuesILm2ELb1EEESt5arrayIfXT_EERKSt7variantIJNS0_8AccessorIS2_IhXT_EEEENS5_IS2_ItXT_EEEENS5_IS3_EEEEm(ptr noundef nonnull align 8 dereferenceable(41) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !528
  switch i8 %i.b, label %bb.d [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEEJS5_NS2_IS3_ItLm2EEEENS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit
    i8 1, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEEEJNS2_IS3_IhLm2EEEES5_NS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit
    i8 2, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEEEJNS2_IS3_IhLm2EEEENS2_IS3_ItLm2EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i30
  ], !prof !335

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEEJS5_NS2_IS3_ItLm2EEEENS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !536
  switch i8 %i.d, label %bb.b [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 2, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE3getEm.exit
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEEJS5_NS2_IS3_ItLm2EEEENS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !181
  %i.e = mul i64 %.sroa.4.0.copyload.i, %1
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.e
  %.sroa.0.0.copyload.i.i52 = load <2 x i8>, ptr %i.f, align 1
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE3getEm.exit

_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEEJS5_NS2_IS3_ItLm2EEEENS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !540
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %1
  %.sroa.02.0.copyload.i53 = load <2 x i8>, ptr %i.h, align 1, !tbaa !60
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE3getEm.exit

bb.b:                                             ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEEJS5_NS2_IS3_ItLm2EEEENS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.36, ptr %i.j, align 8, !tbaa !332
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
  unreachable

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE3getEm.exit: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEEJS5_NS2_IS3_ItLm2EEEENS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %i.k = phi <2 x i8> [ %.sroa.0.0.copyload.i.i52, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.02.0.copyload.i53, %_ZSt3getISt6vectorISt5arrayIhLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ zeroinitializer, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEEJS5_NS2_IS3_ItLm2EEEENS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit ]
  %i.l = uitofp <2 x i8> %i.k to <2 x float>
  %i.m = fdiv <2 x float> %i.l, splat (float 2.550000e+02)
  br label %.loopexit

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEEEJNS2_IS3_IhLm2EEEES5_NS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !552
  switch i8 %i.o, label %bb.c [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 2, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEEEJNS2_IS3_IhLm2EEEES5_NS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit
  %.sroa.0.0.copyload.i26 = load ptr, ptr %0, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i28 = load i64, ptr %.sroa.4.0..sroa_idx.i27, align 8, !tbaa !181
  %i.p = mul i64 %.sroa.4.0.copyload.i28, %1
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i26, i64 %i.p
  %.sroa.0.0.copyload.i.i2950 = load <2 x i16>, ptr %i.q, align 1
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit

_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEEEJNS2_IS3_IhLm2EEEES5_NS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !556
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %1
  %.sroa.02.0.copyload.i2551 = load <2 x i16>, ptr %i.s, align 2, !tbaa !60
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit

bb.c:                                             ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEEEJNS2_IS3_IhLm2EEEES5_NS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.t = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.t, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @.str.36, ptr %i.u, align 8, !tbaa !332
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
  unreachable

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEEEJNS2_IS3_IhLm2EEEES5_NS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %i.v = phi <2 x i16> [ %.sroa.0.0.copyload.i.i2950, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.02.0.copyload.i2551, %_ZSt3getISt6vectorISt5arrayItLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ zeroinitializer, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEEEJNS2_IS3_IhLm2EEEES5_NS2_IS3_IfLm2EEEEEERKT_RKSt7variantIJDpT0_EE.exit ]
  %i.w = uitofp <2 x i16> %i.v to <2 x float>
  %i.x = fdiv <2 x float> %i.w, splat (float 6.553500e+04)
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.y, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @.str.36, ptr %i.z, align 8, !tbaa !332
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i30:     ; preds = %bb.a
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.aa, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @.str.35, ptr %i.ab, align 8, !tbaa !332
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
  unreachable

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEEEJNS2_IS3_IhLm2EEEENS2_IS3_ItLm2EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !522
  switch i8 %i.ad, label %bb.e [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 2, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEEEJNS2_IS3_IhLm2EEEENS2_IS3_ItLm2EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit
  %.sroa.0.0.copyload.i33 = load ptr, ptr %0, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i35 = load i64, ptr %.sroa.4.0..sroa_idx.i34, align 8, !tbaa !181
  %i.ae = mul i64 %.sroa.4.0.copyload.i35, %1
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i33, i64 %i.ae
  %.sroa.0.0.copyload.i.i36 = load <2 x float>, ptr %i.af, align 1
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit

_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEEEJNS2_IS3_IhLm2EEEENS2_IS3_ItLm2EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !525
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %1
  %.sroa.02.0.copyload.i32 = load <2 x float>, ptr %i.ah, align 4, !tbaa !60
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit

bb.e:                                             ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEEEJNS2_IS3_IhLm2EEEENS2_IS3_ItLm2EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ai, align 8, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @.str.36, ptr %i.aj, align 8, !tbaa !332
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
  unreachable

_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEEEJNS2_IS3_IhLm2EEEENS2_IS3_ItLm2EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %.sroa.02.0.i31 = phi <2 x float> [ %.sroa.0.0.copyload.i.i36, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.02.0.copyload.i32, %_ZSt3getISt6vectorISt5arrayIfLm2EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ zeroinitializer, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEEEJNS2_IS3_IhLm2EEEENS2_IS3_ItLm2EEEES5_EERKT_RKSt7variantIJDpT0_EE.exit ] ; 3 uses
  %.sroa.042.0.vec.extract = extractelement <2 x float> %.sroa.02.0.i31, i64 0 ; 2 uses
  %i.ak = fcmp olt float %.sroa.042.0.vec.extract, 0.000000e+00
  %i.al = fcmp ogt float %.sroa.042.0.vec.extract, 1.000000e+00
  %or.cond = or i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit
  %.sroa.042.4.vec.extract = extractelement <2 x float> %.sroa.02.0.i31, i64 1 ; 2 uses
  %i.am = fcmp olt float %.sroa.042.4.vec.extract, 0.000000e+00
  %i.an = fcmp ogt float %.sroa.042.4.vec.extract, 1.000000e+00
  %or.cond.1 = or i1 %i.am, %i.an
  br i1 %or.cond.1, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE3getEm.exit
  %i.ao = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull @.str.192)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ao) #31
  resume { ptr, i32 } %i.ap

.loopexit:                                        ; preds = %bb.f, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE3getEm.exit
  %.sroa.042.0 = phi <2 x float> [ %i.x, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE3getEm.exit ], [ %i.m, %_ZNK5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE3getEm.exit ], [ %.sroa.02.0.i31, %bb.f ]
  ret <2 x float> %.sroa.042.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EE(ptr dead_on_unwind noalias writable sret(%"struct.tiniergltf::GlTF") align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.Stream, align 8             ; 11 uses
  %5 = alloca %struct.Chunk, align 8              ; 7 uses
  %6 = alloca %"class.std::optional.31", align 8  ; 21 uses
  %7 = alloca %struct.Chunk, align 8              ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %9 = alloca %struct.Chunk, align 8              ; 5 uses
  %10 = alloca %"class.Json::Value", align 8      ; 7 uses
  %i.b = icmp ugt i64 %2, 4294967295
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.39)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #31
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %1, ptr %4, align 8, !tbaa !568
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.f = trunc nuw i64 %2 to i32                  ; 4 uses
  store i32 %i.f, ptr %i.e, align 8, !tbaa !569
  %i.g = icmp samesign ult i64 %2, 4
  br i1 %i.g, label %bb.f, label %_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.45)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.bq, %bb.v, %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.q, %bb.o ], [ %i.y, %bb.v ], [ %i.d, %bb.d ], [ %.pn37, %bb.bq ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #31
  br label %common.resume

_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit: ; preds = %bb.e
  %i.j = load i32, ptr %1, align 1
  %i.k = add i32 %i.f, -4                         ; 2 uses
  store i32 %i.k, ptr %i.e, align 8, !tbaa !571
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !572
  %.not = icmp eq i32 %i.j, 1179937895
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull @.str.40)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #31
  br label %bb.bq

bb.l:                                             ; preds = %_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit
  %i.o = icmp ult i32 %i.k, 4
  br i1 %i.o, label %bb.m, label %_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit41

bb.m:                                             ; preds = %bb.l
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.45)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #31
  br label %common.resume

_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit41: ; preds = %bb.l
  %i.r = load i32, ptr %i.l, align 1
  %i.s = add i32 %i.f, -8                         ; 2 uses
  store i32 %i.s, ptr %i.e, align 8, !tbaa !571
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !572
  %.not23 = icmp eq i32 %i.r, 2
  br i1 %.not23, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit41
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.41)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.u) #31
  br label %bb.bq

bb.s:                                             ; preds = %_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit41
  %i.w = icmp ult i32 %i.s, 4
  br i1 %i.w, label %bb.t, label %_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit42

bb.t:                                             ; preds = %bb.s
  %i.x = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull @.str.45)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.x) #31
  br label %common.resume

_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit42: ; preds = %bb.s
  %i.z = load i32, ptr %i.t, align 1
  %i.aa = zext i32 %i.z to i64
  %i.ab = add i32 %i.f, -12
  store i32 %i.ab, ptr %i.e, align 8, !tbaa !571
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  store ptr %i.ac, ptr %4, align 8, !tbaa !572
  %.not24 = icmp eq i64 %2, %i.aa
  br i1 %.not24, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit42
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull @.str.42)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ad) #31
  br label %bb.bq

bb.z:                                             ; preds = %_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream9readChunkEv(ptr dead_on_unwind nonnull writable sret(%struct.Chunk) align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.af = load i32, ptr %5, align 8, !tbaa !574
  %.not25 = icmp eq i32 %i.af, 1313821514
  br i1 %.not25, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.43)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #31
  br label %bb.bp

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 7 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !93
end_hunk_2
