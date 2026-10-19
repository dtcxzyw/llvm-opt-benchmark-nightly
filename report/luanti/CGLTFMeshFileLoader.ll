Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 100
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
  %.sroa.0.0.copyload = load i16, ptr %0, align 1
  ret i16 %.sroa.0.0.copyload
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
  %.sroa.0.0.copyload = load i32, ptr %0, align 1
  ret i32 %.sroa.0.0.copyload
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
  %.sroa.0.0.copyload = load i64, ptr %0, align 1
  ret i64 %.sroa.0.0.copyload
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
