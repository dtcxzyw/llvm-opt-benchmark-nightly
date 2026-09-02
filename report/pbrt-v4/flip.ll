Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/flip?download=true
inline.NumInlined: 376
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.flip_detail::color3" = type { float, float, float }
%"class.flip_detail::image" = type { i32, i32, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<flip_detail::color3, std::allocator<flip_detail::color3>>::_Vector_impl" }
%"struct.std::_Vector_base<flip_detail::color3, std::allocator<flip_detail::color3>>::_Vector_impl" = type { %"struct.std::_Vector_base<flip_detail::color3, std::allocator<flip_detail::color3>>::_Vector_impl_data" }
%"struct.std::_Vector_base<flip_detail::color3, std::allocator<flip_detail::color3>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_ = comdat any

@_ZN11flip_detail4gPPDE = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@_ZN11flip_detail16gMonitorDistanceE = dso_local local_unnamed_addr global float f0x3F333333, align 4
@_ZN11flip_detail13gMonitorWidthE = dso_local local_unnamed_addr global float f0x3F333333, align 4
@_ZN11flip_detail19gMonitorResolutionXE = dso_local local_unnamed_addr global float 3.840000e+03, align 4
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [33 x i8] c"Preprocessing reference image...\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ok.\0APreprocessing test image...\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ok.\0AComputing error map...\00", align 1
@_ZN11flip_detailL8magmaMapE = internal unnamed_addr constant [256 x %"class.flip_detail::color3"] [%"class.flip_detail::color3" { float 1.462000e-03, float 4.660000e-04, float 1.386600e-02 }, %"class.flip_detail::color3" { float 2.258000e-03, float 1.295000e-03, float 1.833100e-02 }, %"class.flip_detail::color3" { float 3.279000e-03, float 2.305000e-03, float 2.370800e-02 }, %"class.flip_detail::color3" { float 4.512000e-03, float 3.490000e-03, float 2.996500e-02 }, %"class.flip_detail::color3" { float 5.950000e-03, float 4.843000e-03, float 3.713000e-02 }, %"class.flip_detail::color3" { float 7.588000e-03, float 6.356000e-03, float 4.497300e-02 }, %"class.flip_detail::color3" { float f0x3C1A6F82, float 8.022000e-03, float 5.284400e-02 }, %"class.flip_detail::color3" { float 1.146500e-02, float 9.828000e-03, float 6.075000e-02 }, %"class.flip_detail::color3" { float 1.370800e-02, float 1.177100e-02, float 6.866700e-02 }, %"class.flip_detail::color3" { float 1.615600e-02, float 1.384000e-02, float 7.660300e-02 }, %"class.flip_detail::color3" { float 1.881500e-02, float 1.602600e-02, float f0x3DAD3A60 }, %"class.flip_detail::color3" { float 2.169200e-02, float 1.832000e-02, float 9.261000e-02 }, %"class.flip_detail::color3" { float 2.479200e-02, float 2.071500e-02, float 1.006760e-01 }, %"class.flip_detail::color3" { float 2.812300e-02, float 2.320100e-02, float 1.087870e-01 }, %"class.flip_detail::color3" { float 3.169600e-02, float 2.576500e-02, float 1.169650e-01 }, %"class.flip_detail::color3" { float 3.552000e-02, float 2.839700e-02, float 1.252090e-01 }, %"class.flip_detail::color3" { float 3.960800e-02, float 3.109000e-02, float 1.335150e-01 }, %"class.flip_detail::color3" { float 4.383000e-02, float 3.383000e-02, float 1.418860e-01 }, %"class.flip_detail::color3" { float 4.806200e-02, float 3.660700e-02, float 1.503270e-01 }, %"class.flip_detail::color3" { float 5.232000e-02, float 3.940700e-02, float 1.588410e-01 }, %"class.flip_detail::color3" { float 5.661500e-02, float 4.216000e-02, float 1.674460e-01 }, %"class.flip_detail::color3" { float 6.094900e-02, float 4.479400e-02, float 1.761290e-01 }, %"class.flip_detail::color3" { float f0x3D85CBBC, float 4.731800e-02, float 1.848920e-01 }, %"class.flip_detail::color3" { float 6.976400e-02, float 4.972600e-02, float 1.937350e-01 }, %"class.flip_detail::color3" { float 7.425700e-02, float 5.201700e-02, float 2.026600e-01 }, %"class.flip_detail::color3" { float 7.881500e-02, float 5.418400e-02, float 2.116670e-01 }, %"class.flip_detail::color3" { float 8.344600e-02, float 5.622500e-02, float 2.207550e-01 }, %"class.flip_detail::color3" { float 8.815500e-02, float 5.813300e-02, float 2.299220e-01 }, %"class.flip_detail::color3" { float 9.294900e-02, float 5.990400e-02, float 2.391640e-01 }, %"class.flip_detail::color3" { float 9.783300e-02, float 6.153100e-02, float 2.484770e-01 }, %"class.flip_detail::color3" { float 1.028150e-01, float 6.301000e-02, float 2.578540e-01 }, %"class.flip_detail::color3" { float 1.078990e-01, float 6.433500e-02, float 2.672890e-01 }, %"class.flip_detail::color3" { float 1.130940e-01, float 6.549200e-02, float 2.767840e-01 }, %"class.flip_detail::color3" { float 1.184050e-01, float f0x3D882624, float 2.863210e-01 }, %"class.flip_detail::color3" { float 1.238330e-01, float 6.729500e-02, float 2.958790e-01 }, %"class.flip_detail::color3" { float 1.293800e-01, float 6.793500e-02, float 3.054430e-01 }, %"class.flip_detail::color3" { float 1.350530e-01, float 6.839100e-02, float 3.150000e-01 }, %"class.flip_detail::color3" { float 1.408580e-01, float 6.865400e-02, float 3.245380e-01 }, %"class.flip_detail::color3" { float 1.467850e-01, float 6.873800e-02, float 3.340110e-01 }, %"class.flip_detail::color3" { float 1.528390e-01, float 6.863700e-02, float 3.434040e-01 }, %"class.flip_detail::color3" { float 1.590180e-01, float 6.835400e-02, float 3.526880e-01 }, %"class.flip_detail::color3" { float 1.653080e-01, float f0x3D8B14EC, float 3.618160e-01 }, %"class.flip_detail::color3" { float 1.717130e-01, float f0x3D89D734, float 3.707710e-01 }, %"class.flip_detail::color3" { float 1.782120e-01, float 6.657600e-02, float 3.794970e-01 }, %"class.flip_detail::color3" { float 1.848010e-01, float 6.573200e-02, float 3.879730e-01 }, %"class.flip_detail::color3" { float 1.914600e-01, float 6.481800e-02, float 3.961520e-01 }, %"class.flip_detail::color3" { float 1.981770e-01, float 6.386200e-02, float 4.040090e-01 }, %"class.flip_detail::color3" { float 2.049350e-01, float 6.290700e-02, float 4.115140e-01 }, %"class.flip_detail::color3" { float 2.117180e-01, float 6.199200e-02, float 4.186470e-01 }, %"class.flip_detail::color3" { float 2.185120e-01, float 6.115800e-02, float 4.253920e-01 }, %"class.flip_detail::color3" { float 2.253020e-01, float 6.044500e-02, float 4.317420e-01 }, %"class.flip_detail::color3" { float 2.320770e-01, float 5.988900e-02, float 4.376950e-01 }, %"class.flip_detail::color3" { float 2.388260e-01, float 5.951700e-02, float 4.432560e-01 }, %"class.flip_detail::color3" { float 2.455430e-01, float 5.935200e-02, float 4.484360e-01 }, %"class.flip_detail::color3" { float 2.522200e-01, float 5.941500e-02, float 4.532480e-01 }, %"class.flip_detail::color3" { float 2.588570e-01, float 5.970600e-02, float 4.577100e-01 }, %"class.flip_detail::color3" { float 2.654470e-01, float 6.023700e-02, float 4.618400e-01 }, %"class.flip_detail::color3" { float 2.719940e-01, float f0x3D79D4D8, float 4.656600e-01 }, %"class.flip_detail::color3" { float 2.784930e-01, float 6.197800e-02, float 4.691900e-01 }, %"class.flip_detail::color3" { float 2.849510e-01, float 6.316800e-02, float 4.724510e-01 }, %"class.flip_detail::color3" { float 2.913660e-01, float 6.455300e-02, float 4.754620e-01 }, %"class.flip_detail::color3" { float 2.977400e-01, float 6.611700e-02, float 4.782430e-01 }, %"class.flip_detail::color3" { float 3.040810e-01, float 6.783500e-02, float 4.808120e-01 }, %"class.flip_detail::color3" { float 3.103820e-01, float f0x3D8EBFEC, float 4.831860e-01 }, %"class.flip_detail::color3" { float 3.166540e-01, float 7.169000e-02, float 4.853800e-01 }, %"class.flip_detail::color3" { float 3.228990e-01, float f0x3D971B04, float 4.874080e-01 }, %"class.flip_detail::color3" { float 3.291140e-01, float 7.597200e-02, float 4.892870e-01 }, %"class.flip_detail::color3" { float 3.353080e-01, float 7.823600e-02, float 4.910240e-01 }, %"class.flip_detail::color3" { float 3.414820e-01, float f0x3DA4FEBD, float 4.926310e-01 }, %"class.flip_detail::color3" { float 3.476360e-01, float 8.294600e-02, float 4.941210e-01 }, %"class.flip_detail::color3" { float 3.537730e-01, float 8.537300e-02, float 4.955010e-01 }, %"class.flip_detail::color3" { float 3.598980e-01, float f0x3DB3E0BD, float 4.967780e-01 }, %"class.flip_detail::color3" { float 3.660120e-01, float 9.031400e-02, float 4.979600e-01 }, %"class.flip_detail::color3" { float 3.721160e-01, float 9.281600e-02, float 4.990530e-01 }, %"class.flip_detail::color3" { float 3.782110e-01, float f0x3DC33D6C, float 5.000670e-01 }, %"class.flip_detail::color3" { float 3.842990e-01, float 9.785500e-02, float 5.010020e-01 }, %"class.flip_detail::color3" { float 3.903840e-01, float 1.003790e-01, float 5.018640e-01 }, %"class.flip_detail::color3" { float 3.964670e-01, float 1.029020e-01, float 5.026580e-01 }, %"class.flip_detail::color3" { float 4.025480e-01, float 1.054200e-01, float 5.033860e-01 }, %"class.flip_detail::color3" { float 4.086290e-01, float 1.079300e-01, float 5.040520e-01 }, %"class.flip_detail::color3" { float 4.147090e-01, float 1.104310e-01, float 5.046620e-01 }, %"class.flip_detail::color3" { float 4.207910e-01, float 1.129200e-01, float 5.052150e-01 }, %"class.flip_detail::color3" { float 4.268770e-01, float 1.153950e-01, float 5.057140e-01 }, %"class.flip_detail::color3" { float 4.329670e-01, float 1.178550e-01, float 5.061600e-01 }, %"class.flip_detail::color3" { float 4.390620e-01, float 1.202980e-01, float 5.065550e-01 }, %"class.flip_detail::color3" { float 4.451630e-01, float 1.227240e-01, float 5.069010e-01 }, %"class.flip_detail::color3" { float 4.512710e-01, float 1.251320e-01, float 5.071980e-01 }, %"class.flip_detail::color3" { float 4.573860e-01, float 1.275220e-01, float 5.074480e-01 }, %"class.flip_detail::color3" { float 4.635080e-01, float 1.298930e-01, float 5.076520e-01 }, %"class.flip_detail::color3" { float 4.696400e-01, float 1.322450e-01, float 5.078090e-01 }, %"class.flip_detail::color3" { float 4.757800e-01, float 1.345770e-01, float 5.079210e-01 }, %"class.flip_detail::color3" { float 4.819290e-01, float 1.368910e-01, float 5.079890e-01 }, %"class.flip_detail::color3" { float 4.880880e-01, float 1.391860e-01, float 5.080110e-01 }, %"class.flip_detail::color3" { float 4.942580e-01, float 1.414620e-01, float 5.079880e-01 }, %"class.flip_detail::color3" { float 5.004380e-01, float 1.437190e-01, float 5.079200e-01 }, %"class.flip_detail::color3" { float 5.066290e-01, float 1.459580e-01, float 5.078060e-01 }, %"class.flip_detail::color3" { float 5.128310e-01, float 1.481790e-01, float 5.076480e-01 }, %"class.flip_detail::color3" { float 5.190450e-01, float 1.503830e-01, float 5.074430e-01 }, %"class.flip_detail::color3" { float 5.252700e-01, float 1.525690e-01, float 5.071920e-01 }, %"class.flip_detail::color3" { float 5.315070e-01, float 1.547390e-01, float 5.068950e-01 }, %"class.flip_detail::color3" { float 5.377550e-01, float 1.568940e-01, float 5.065510e-01 }, %"class.flip_detail::color3" { float 5.440150e-01, float 1.590330e-01, float 5.061590e-01 }, %"class.flip_detail::color3" { float 5.502870e-01, float 1.611580e-01, float 5.057190e-01 }, %"class.flip_detail::color3" { float 5.565710e-01, float 1.632690e-01, float 5.052300e-01 }, %"class.flip_detail::color3" { float 5.628660e-01, float 1.653680e-01, float 5.046920e-01 }, %"class.flip_detail::color3" { float 5.691720e-01, float 1.674540e-01, float 5.041050e-01 }, %"class.flip_detail::color3" { float 5.754900e-01, float 1.695300e-01, float 5.034660e-01 }, %"class.flip_detail::color3" { float 5.818190e-01, float 1.715960e-01, float 5.027770e-01 }, %"class.flip_detail::color3" { float 5.881580e-01, float 1.736520e-01, float 5.020350e-01 }, %"class.flip_detail::color3" { float 5.945080e-01, float 1.757010e-01, float 5.012410e-01 }, %"class.flip_detail::color3" { float 6.008680e-01, float 1.777430e-01, float 5.003940e-01 }, %"class.flip_detail::color3" { float f0x3F1B73F3, float 1.797790e-01, float 4.994920e-01 }, %"class.flip_detail::color3" { float 6.136170e-01, float 1.818110e-01, float 4.985360e-01 }, %"class.flip_detail::color3" { float 6.200050e-01, float 1.838400e-01, float 4.975240e-01 }, %"class.flip_detail::color3" { float 6.264010e-01, float 1.858670e-01, float 4.964560e-01 }, %"class.flip_detail::color3" { float 6.328050e-01, float 1.878930e-01, float 4.953320e-01 }, %"class.flip_detail::color3" { float 6.392160e-01, float 1.899210e-01, float 4.941500e-01 }, %"class.flip_detail::color3" { float 6.456330e-01, float 1.919520e-01, float 4.929100e-01 }, %"class.flip_detail::color3" { float 6.520560e-01, float 1.939860e-01, float 4.916110e-01 }, %"class.flip_detail::color3" { float 6.584830e-01, float 1.960270e-01, float 4.902530e-01 }, %"class.flip_detail::color3" { float 6.649150e-01, float 1.980750e-01, float 4.888360e-01 }, %"class.flip_detail::color3" { float f0x3F2BDD87, float 2.001330e-01, float 4.873580e-01 }, %"class.flip_detail::color3" { float 6.777860e-01, float 2.022030e-01, float 4.858190e-01 }, %"class.flip_detail::color3" { float 6.842240e-01, float 2.042860e-01, float 4.842190e-01 }, %"class.flip_detail::color3" { float 6.906610e-01, float 2.063840e-01, float 4.825580e-01 }, %"class.flip_detail::color3" { float 6.970980e-01, float 2.085010e-01, float 4.808350e-01 }, %"class.flip_detail::color3" { float 7.035320e-01, float 2.106380e-01, float 4.790490e-01 }, %"class.flip_detail::color3" { float 7.099620e-01, float 2.127970e-01, float 4.772010e-01 }, %"class.flip_detail::color3" { float f0x3F376523, float 2.149820e-01, float 4.752900e-01 }, %"class.flip_detail::color3" { float 7.228050e-01, float 2.171940e-01, float 4.733160e-01 }, %"class.flip_detail::color3" { float 7.292160e-01, float 2.194370e-01, float 4.712790e-01 }, %"class.flip_detail::color3" { float 7.356160e-01, float 2.217130e-01, float 4.691800e-01 }, %"class.flip_detail::color3" { float f0x3F3DF3F9, float 2.240250e-01, float 4.670180e-01 }, %"class.flip_detail::color3" { float f0x3F3F95B3, float 2.263770e-01, float 4.647940e-01 }, %"class.flip_detail::color3" { float 7.547370e-01, float 2.287720e-01, float 4.625090e-01 }, %"class.flip_detail::color3" { float f0x3F42D5F1, float 2.312140e-01, float 4.601620e-01 }, %"class.flip_detail::color3" { float f0x3F447432, float 2.337050e-01, float 4.577550e-01 }, %"class.flip_detail::color3" { float 7.736950e-01, float 2.362490e-01, float 4.552890e-01 }, %"class.flip_detail::color3" { float 7.799680e-01, float 2.388510e-01, float 4.527650e-01 }, %"class.flip_detail::color3" { float 7.862120e-01, float 2.415140e-01, float 4.501840e-01 }, %"class.flip_detail::color3" { float 7.924270e-01, float 2.442420e-01, float 4.475430e-01 }, %"class.flip_detail::color3" { float 7.986080e-01, float 2.470400e-01, float 4.448480e-01 }, %"class.flip_detail::color3" { float f0x3F4E043A, float 2.499110e-01, float 4.421020e-01 }, %"class.flip_detail::color3" { float f0x3F4F9431, float 2.528610e-01, float 4.393050e-01 }, %"class.flip_detail::color3" { float 8.169140e-01, float 2.558950e-01, float 4.364610e-01 }, %"class.flip_detail::color3" { float f0x3F52AB47, float 2.590160e-01, float 4.335730e-01 }, %"class.flip_detail::color3" { float f0x3F5431DF, float 2.622290e-01, float 4.306440e-01 }, %"class.flip_detail::color3" { float 8.347910e-01, float 2.655400e-01, float 4.276710e-01 }, %"class.flip_detail::color3" { float 8.406360e-01, float 2.689530e-01, float 4.246660e-01 }, %"class.flip_detail::color3" { float f0x3F58AEB8, float 2.724730e-01, float 4.216310e-01 }, %"class.flip_detail::color3" { float 8.521260e-01, float 2.761060e-01, float 4.185730e-01 }, %"class.flip_detail::color3" { float f0x3F5B965B, float 2.798570e-01, float 4.154960e-01 }, %"class.flip_detail::color3" { float f0x3F5D028A, float 2.837290e-01, float 4.124030e-01 }, %"class.flip_detail::color3" { float 8.687930e-01, float 2.877280e-01, float 4.093030e-01 }, %"class.flip_detail::color3" { float 8.741760e-01, float 2.918590e-01, float 4.062050e-01 }, %"class.flip_detail::color3" { float f0x3F61248D, float 2.961250e-01, float 4.031180e-01 }, %"class.flip_detail::color3" { float 8.846510e-01, float 3.005300e-01, float 4.000470e-01 }, %"class.flip_detail::color3" { float f0x3F63C569, float 3.050790e-01, float 3.970020e-01 }, %"class.flip_detail::color3" { float f0x3F650B0F, float 3.097730e-01, float 3.939950e-01 }, %"class.flip_detail::color3" { float f0x3F66490A, float 3.146160e-01, float 3.910370e-01 }, %"class.flip_detail::color3" { float 9.042810e-01, float 3.196100e-01, float 3.881370e-01 }, %"class.flip_detail::color3" { float f0x3F68AC9F, float 3.247550e-01, float 3.853080e-01 }, %"class.flip_detail::color3" { float f0x3F69D191, float 3.300520e-01, float 3.825630e-01 }, %"class.flip_detail::color3" { float 9.176890e-01, float 3.355000e-01, float 3.799150e-01 }, %"class.flip_detail::color3" { float 9.218840e-01, float 3.410980e-01, float 3.773760e-01 }, %"class.flip_detail::color3" { float f0x3F6D0A35, float 3.468440e-01, float 3.749590e-01 }, %"class.flip_detail::color3" { float f0x3F6E0A52, float 3.527340e-01, float 3.726770e-01 }, %"class.flip_detail::color3" { float 9.336060e-01, float 3.587640e-01, float 3.705410e-01 }, %"class.flip_detail::color3" { float f0x3F6FEDB7, float 3.649290e-01, float 3.685670e-01 }, %"class.flip_detail::color3" { float 9.406870e-01, float 3.712240e-01, float 3.667620e-01 }, %"class.flip_detail::color3" { float 9.440060e-01, float 3.776430e-01, float 3.651360e-01 }, %"class.flip_detail::color3" { float f0x3F727A63, float 3.841780e-01, float 3.637010e-01 }, %"class.flip_detail::color3" { float f0x3F7340F6, float 3.908200e-01, float 3.624680e-01 }, %"class.flip_detail::color3" { float 9.530990e-01, float 3.975630e-01, float 3.614380e-01 }, %"class.flip_detail::color3" { float f0x3F74B285, float 4.044000e-01, float 3.606190e-01 }, %"class.flip_detail::color3" { float 9.584640e-01, float 4.113240e-01, float 3.600140e-01 }, %"class.flip_detail::color3" { float 9.609490e-01, float 4.183230e-01, float 3.596300e-01 }, %"class.flip_detail::color3" { float 9.633100e-01, float 4.253900e-01, float 3.594690e-01 }, %"class.flip_detail::color3" { float f0x3F772E38, float 4.325190e-01, float 3.595290e-01 }, %"class.flip_detail::color3" { float f0x3F77B949, float 4.397030e-01, float 3.598100e-01 }, %"class.flip_detail::color3" { float 9.696800e-01, float 4.469360e-01, float 3.603110e-01 }, %"class.flip_detail::color3" { float f0x3F78B999, float 4.542100e-01, float 3.610300e-01 }, %"class.flip_detail::color3" { float f0x3F792F7F, float 4.615200e-01, float 3.619650e-01 }, %"class.flip_detail::color3" { float f0x3F799EF9, float 4.688610e-01, float 3.631110e-01 }, %"class.flip_detail::color3" { float f0x3F7A085B, float 4.762260e-01, float 3.644660e-01 }, %"class.flip_detail::color3" { float f0x3F7A6BF8, float 4.836120e-01, float 3.660250e-01 }, %"class.flip_detail::color3" { float 9.796450e-01, float 4.910140e-01, float 3.677830e-01 }, %"class.flip_detail::color3" { float 9.810000e-01, float 4.984280e-01, float 3.697340e-01 }, %"class.flip_detail::color3" { float 9.822790e-01, float 5.058510e-01, float 3.718740e-01 }, %"class.flip_detail::color3" { float f0x3F7BC5AC, float 5.132800e-01, float 3.741980e-01 }, %"class.flip_detail::color3" { float 9.846220e-01, float 5.207130e-01, float 3.766980e-01 }, %"class.flip_detail::color3" { float f0x3F7C5660, float 5.281480e-01, float 3.793710e-01 }, %"class.flip_detail::color3" { float f0x3F7C985F, float 5.355820e-01, float 3.822100e-01 }, %"class.flip_detail::color3" { float f0x3F7CD65E, float 5.430150e-01, float 3.852100e-01 }, %"class.flip_detail::color3" { float 9.885330e-01, float 5.504460e-01, float 3.883650e-01 }, %"class.flip_detail::color3" { float 9.893630e-01, float 5.578730e-01, float 3.916710e-01 }, %"class.flip_detail::color3" { float f0x3F7D79AF, float 5.652960e-01, float 3.951220e-01 }, %"class.flip_detail::color3" { float 9.908710e-01, float 5.727060e-01, float 3.987140e-01 }, %"class.flip_detail::color3" { float 9.915580e-01, float 5.801070e-01, float 4.024410e-01 }, %"class.flip_detail::color3" { float 9.921960e-01, float 5.875020e-01, float 4.062990e-01 }, %"class.flip_detail::color3" { float f0x3F7E2728, float 5.948910e-01, float 4.102830e-01 }, %"class.flip_detail::color3" { float 9.933260e-01, float 6.022750e-01, float 4.143900e-01 }, %"class.flip_detail::color3" { float 9.938340e-01, float f0x3F1C11A1, float 4.186130e-01 }, %"class.flip_detail::color3" { float 9.943090e-01, float f0x3F1DF3A5, float 4.229500e-01 }, %"class.flip_detail::color3" { float f0x3F7EA726, float 6.243500e-01, float 4.273970e-01 }, %"class.flip_detail::color3" { float 9.951220e-01, float 6.316960e-01, float 4.319510e-01 }, %"class.flip_detail::color3" { float 9.954800e-01, float 6.390270e-01, float 4.366070e-01 }, %"class.flip_detail::color3" { float f0x3F7EED67, float 6.463440e-01, float 4.413610e-01 }, %"class.flip_detail::color3" { float 9.960960e-01, float 6.536590e-01, float 4.462130e-01 }, %"class.flip_detail::color3" { float f0x3F7F1034, float 6.609690e-01, float 4.511600e-01 }, %"class.flip_detail::color3" { float 9.965800e-01, float f0x3F2B12D3, float 4.561920e-01 }, %"class.flip_detail::color3" { float f0x3F7F2CA5, float f0x3F2CF041, float 4.613140e-01 }, %"class.flip_detail::color3" { float f0x3F7F367A, float 6.828280e-01, float 4.665260e-01 }, %"class.flip_detail::color3" { float f0x3F7F4070, float f0x3F30A99B, float 4.718110e-01 }, %"class.flip_detail::color3" { float 9.971860e-01, float 6.973490e-01, float 4.771820e-01 }, %"class.flip_detail::color3" { float 9.972540e-01, float 7.046110e-01, float 4.826350e-01 }, %"class.flip_detail::color3" { float 9.973250e-01, float 7.118480e-01, float 4.881540e-01 }, %"class.flip_detail::color3" { float f0x3F7F5265, float f0x3F381637, float 4.937550e-01 }, %"class.flip_detail::color3" { float f0x3F7F5265, float 7.263240e-01, float 4.994280e-01 }, %"class.flip_detail::color3" { float f0x3F7F51BD, float 7.335450e-01, float 5.051670e-01 }, %"class.flip_detail::color3" { float 9.972850e-01, float 7.407720e-01, float 5.109830e-01 }, %"class.flip_detail::color3" { float 9.972280e-01, float 7.479810e-01, float 5.168590e-01 }, %"class.flip_detail::color3" { float 9.971380e-01, float 7.551900e-01, float 5.228060e-01 }, %"class.flip_detail::color3" { float f0x3F7F3CA3, float 7.623980e-01, float 5.288210e-01 }, %"class.flip_detail::color3" { float f0x3F7F34B5, float f0x3F4503EA, float 5.348920e-01 }, %"class.flip_detail::color3" { float f0x3F7F2980, float 7.767950e-01, float 5.410390e-01 }, %"class.flip_detail::color3" { float 9.965710e-01, float f0x3F48B2B7, float 5.472330e-01 }, %"class.flip_detail::color3" { float 9.963690e-01, float 7.911670e-01, float 5.534990e-01 }, %"class.flip_detail::color3" { float f0x3F7F0479, float 7.983480e-01, float 5.598200e-01 }, %"class.flip_detail::color3" { float f0x3F7EF566, float 8.055270e-01, float 5.662020e-01 }, %"class.flip_detail::color3" { float f0x3F7EE4E2, float f0x3F500D80, float 5.726450e-01 }, %"class.flip_detail::color3" { float f0x3F7ED41B, float 8.198750e-01, float 5.791400e-01 }, %"class.flip_detail::color3" { float 9.951310e-01, float f0x3F53B9AE, float 5.857010e-01 }, %"class.flip_detail::color3" { float f0x3F7EAE8E, float 8.342130e-01, float 5.923070e-01 }, %"class.flip_detail::color3" { float 9.945240e-01, float f0x3F576523, float 5.989830e-01 }, %"class.flip_detail::color3" { float f0x3F7E8555, float 8.485400e-01, float 6.056960e-01 }, %"class.flip_detail::color3" { float 9.938660e-01, float 8.557110e-01, float 6.124820e-01 }, %"class.flip_detail::color3" { float f0x3F7E58F7, float 8.628590e-01, float f0x3F1E8A61 }, %"class.flip_detail::color3" { float 9.931700e-01, float 8.700240e-01, float 6.261890e-01 }, %"class.flip_detail::color3" { float f0x3F7E2A2C, float f0x3F608E15, float 6.331090e-01 }, %"class.flip_detail::color3" { float f0x3F7E108C, float f0x3F626373, float f0x3F23DD87 }, %"class.flip_detail::color3" { float f0x3F7DF98B, float 8.914700e-01, float 6.471160e-01 }, %"class.flip_detail::color3" { float 9.916880e-01, float f0x3F660C6B, float f0x3F2779C8 }, %"class.flip_detail::color3" { float f0x3F7DC7EF, float f0x3F67E015, float 6.613090e-01 }, %"class.flip_detail::color3" { float 9.909300e-01, float 9.129150e-01, float 6.684810e-01 }, %"class.flip_detail::color3" { float 9.905700e-01, float 9.200490e-01, float f0x3F2CF909 }, %"class.flip_detail::color3" { float 9.901750e-01, float 9.271960e-01, float f0x3F2ED43D }, %"class.flip_detail::color3" { float f0x3F7D6484, float f0x3F6F302F, float 6.901980e-01 }, %"class.flip_detail::color3" { float 9.894340e-01, float 9.414700e-01, float 6.975190e-01 }, %"class.flip_detail::color3" { float f0x3F7D3426, float f0x3F72D7B6, float 7.048630e-01 }, %"class.flip_detail::color3" { float 9.887170e-01, float 9.557420e-01, float 7.122420e-01 }, %"class.flip_detail::color3" { float 9.883670e-01, float f0x3F767F2C, float 7.196490e-01 }, %"class.flip_detail::color3" { float f0x3F7CEFBB, float 9.700120e-01, float 7.270770e-01 }, %"class.flip_detail::color3" { float f0x3F7CD951, float 9.771540e-01, float f0x3F3C0A8D }, %"class.flip_detail::color3" { float 9.873870e-01, float f0x3F7BFA4C, float 7.420020e-01 }, %"class.flip_detail::color3" { float f0x3F7CAF81, float f0x3F7DCEE1, float 7.495040e-01 }], align 16
@.str.3 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN11flip_detail6color314sRGB2LinearRGBEv(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !12   ; 3 uses
  %i.b = fcmp ugt float %i.a, 4.045000e-02
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fdiv float %i.a, 1.292000e+01
  br label %_ZN11flip_detailL11sRGB2LinearEf.exit

bb.c:                                             ; preds = %bb.a
  %i.d = fadd float %i.a, 5.500000e-02
  %i.e = fdiv float %i.d, 1.055000e+00
  %i.f = tail call float @powf(float noundef %i.e, float noundef 2.400000e+00) #17
  br label %_ZN11flip_detailL11sRGB2LinearEf.exit

_ZN11flip_detailL11sRGB2LinearEf.exit:            ; preds = %bb.b, %bb.c
  %.0.i = phi float [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  store float %.0.i, ptr %0, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !13 ; 3 uses
  %i.i = fcmp ugt float %i.h, 4.045000e-02
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN11flip_detailL11sRGB2LinearEf.exit
  %i.j = fdiv float %i.h, 1.292000e+01
  br label %_ZN11flip_detailL11sRGB2LinearEf.exit2

bb.e:                                             ; preds = %_ZN11flip_detailL11sRGB2LinearEf.exit
  %i.k = fadd float %i.h, 5.500000e-02
  %i.l = fdiv float %i.k, 1.055000e+00
  %i.m = tail call float @powf(float noundef %i.l, float noundef 2.400000e+00) #17
  br label %_ZN11flip_detailL11sRGB2LinearEf.exit2

_ZN11flip_detailL11sRGB2LinearEf.exit2:           ; preds = %bb.d, %bb.e
  %.0.i1 = phi float [ %i.j, %bb.d ], [ %i.m, %bb.e ]
  store float %.0.i1, ptr %i.g, align 4, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.p = fcmp ugt float %i.o, 4.045000e-02
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN11flip_detailL11sRGB2LinearEf.exit2
  %i.q = fdiv float %i.o, 1.292000e+01
  br label %_ZN11flip_detailL11sRGB2LinearEf.exit4

bb.g:                                             ; preds = %_ZN11flip_detailL11sRGB2LinearEf.exit2
  %i.r = fadd float %i.o, 5.500000e-02
  %i.s = fdiv float %i.r, 1.055000e+00
  %i.t = tail call float @powf(float noundef %i.s, float noundef 2.400000e+00) #17
  br label %_ZN11flip_detailL11sRGB2LinearEf.exit4

_ZN11flip_detailL11sRGB2LinearEf.exit4:           ; preds = %bb.f, %bb.g
  %.0.i3 = phi float [ %i.q, %bb.f ], [ %i.t, %bb.g ]
  store float %.0.i3, ptr %i.n, align 4, !tbaa !14
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN11flip_detail6color314LinearRGB2sRGBEv(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !12   ; 3 uses
  %i.b = fcmp ugt float %i.a, 3.130800e-03
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fmul nnan float %i.a, 1.292000e+01
  br label %_ZN11flip_detailL11Linear2sRGBEf.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call float @powf(float noundef %i.a, float noundef f0x3ED55555) #17
  %i.e = tail call float @llvm.fmuladd.f32(float %i.d, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN11flip_detailL11Linear2sRGBEf.exit

_ZN11flip_detailL11Linear2sRGBEf.exit:            ; preds = %bb.b, %bb.c
  %.0.i = phi float [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  store float %.0.i, ptr %0, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !13 ; 3 uses
  %i.h = fcmp ugt float %i.g, 3.130800e-03
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN11flip_detailL11Linear2sRGBEf.exit
  %i.i = fmul nnan float %i.g, 1.292000e+01
  br label %_ZN11flip_detailL11Linear2sRGBEf.exit2

bb.e:                                             ; preds = %_ZN11flip_detailL11Linear2sRGBEf.exit
  %i.j = tail call float @powf(float noundef %i.g, float noundef f0x3ED55555) #17
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN11flip_detailL11Linear2sRGBEf.exit2

_ZN11flip_detailL11Linear2sRGBEf.exit2:           ; preds = %bb.d, %bb.e
  %.0.i1 = phi float [ %i.i, %bb.d ], [ %i.k, %bb.e ]
  store float %.0.i1, ptr %i.f, align 4, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !14 ; 3 uses
  %i.n = fcmp ugt float %i.m, 3.130800e-03
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN11flip_detailL11Linear2sRGBEf.exit2
  %i.o = fmul nnan float %i.m, 1.292000e+01
  br label %_ZN11flip_detailL11Linear2sRGBEf.exit4

bb.g:                                             ; preds = %_ZN11flip_detailL11Linear2sRGBEf.exit2
  %i.p = tail call float @powf(float noundef %i.m, float noundef f0x3ED55555) #17
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN11flip_detailL11Linear2sRGBEf.exit4

_ZN11flip_detailL11Linear2sRGBEf.exit4:           ; preds = %bb.f, %bb.g
  %.0.i3 = phi float [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  store float %.0.i3, ptr %i.l, align 4, !tbaa !14
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN11flip_detail6color313LinearRGB2XYZEv(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1 = load <3 x float>, ptr %0, align 4, !tbaa !15 ; 5 uses
  %.sroa.0.0.copyload = load float, ptr %0, align 4, !tbaa !15
  %2 = shufflevector <3 x float> %1, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.a = fmul <2 x float> %2, <float f0x3EB7163B, float f0x3F37163B>
  %i.b = shufflevector <3 x float> %1, <3 x float> poison, <2 x i32> zeroinitializer
  %i.c = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.b, <2 x float> <float f0x3ED32455, float f0x3E59BD78>, <2 x float> %i.a)
  %3 = shufflevector <3 x float> %1, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %4 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> <float f0x3E38C803, float 7.218020e-02>, <2 x float> %i.c)
  store <2 x float> %4, ptr %0, align 4, !tbaa !15
  %5 = extractelement <3 x float> %1, i64 1
  %i.d = fmul float %5, f0x3DF41DA4
  %i.e = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload, float f0x3C9E5B3F, float %i.d)
  %6 = extractelement <3 x float> %1, i64 2
  %i.f = tail call float @llvm.fmuladd.f32(float %6, float f0x3F734B9E, float %i.e)
  store float %i.f, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !14
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN11flip_detail6color313XYZ2LinearRGBEv(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1 = load <3 x float>, ptr %0, align 4, !tbaa !15 ; 5 uses
  %.sroa.0.0.copyload = load float, ptr %0, align 4, !tbaa !15
  %2 = shufflevector <3 x float> %1, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.a = fmul <2 x float> %2, <float f0xBFC4C97D, float 1.875930e+00>
  %i.b = shufflevector <3 x float> %1, <3 x float> poison, <2 x i32> zeroinitializer
  %i.c = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.b, <2 x float> <float f0x404F6C99, float f0xBF781F15>, <2 x float> %i.a)
  %3 = shufflevector <3 x float> %1, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %4 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> <float f0xBEFF4A95, float f0x3D2A34C4>, <2 x float> %i.c)
  store <2 x float> %4, ptr %0, align 4, !tbaa !15
  %5 = extractelement <3 x float> %1, i64 1
  %i.d = fmul float %5, f0xBE50E850
  %i.e = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload, float f0x3D63E629, float %i.d)
  %6 = extractelement <3 x float> %1, i64 2
  %i.f = tail call float @llvm.fmuladd.f32(float %6, float f0x3F8750A8, float %i.e)
  store float %i.f, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !14
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN11flip_detail6color39XYZ2YCxCzES0_(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0, <2 x float> %1, float %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !15
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !15
  %i.b = fdiv <2 x float> %i.a, %1                ; 3 uses
  %i.c = fdiv float %.sroa.11.0.copyload, %2
  %i.d = extractelement <2 x float> %i.b, i64 1
  %i.e = tail call float @llvm.fmuladd.f32(float %i.d, float 1.160000e+02, float -1.600000e+01)
  %i.f = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.g = insertelement <2 x float> %i.f, float %i.c, i64 1
  %i.h = fsub <2 x float> %i.b, %i.g
  %i.i = fmul <2 x float> %i.h, <float 5.000000e+02, float 2.000000e+02>
  store float %i.e, ptr %0, align 4, !tbaa !12
  store <2 x float> %i.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !15
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN11flip_detail6color39YCxCz2XYZES0_(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0, <2 x float> %1, float %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !15
  %i.b = fadd <2 x float> %i.a, <float 1.600000e+01, float -0.000000e+00>
  %i.c = fdiv <2 x float> %i.b, <float 1.160000e+02, float 5.000000e+02> ; 4 uses
  %i.d = fdiv float %.sroa.5.0.copyload, 2.000000e+02
  %i.e = extractelement <2 x float> %i.c, i64 0
  %shift = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.c, %shift
  %i.f = fsub float %i.e, %i.d
  %i.g = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.c, <2 x i32> <i32 0, i32 2>
  %i.h = fmul <2 x float> %1, %i.g
  store <2 x float> %i.h, ptr %0, align 4, !tbaa !15
  %i.i = fmul float %2, %i.f
  store float %i.i, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !14
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN11flip_detail6color310XYZ2CIELabES0_(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0, <2 x float> %1, float %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.sroa.0.0.copyload = load float, ptr %0, align 4, !tbaa !15
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.a = tail call float @llvm.fabs.f32(float %.sroa.0.0.copyload)
  %i.b = load <2 x float>, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !15
  %i.c = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.b)
  %.sroa.01.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.d = fdiv float %i.a, %.sroa.01.0.vec.extract ; 3 uses
  %i.e = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.f = insertelement <2 x float> %i.e, float %2, i64 1
  %i.g = fdiv <2 x float> %i.c, %i.f              ; 2 uses
  %i.h = fpext float %i.d to double
  %i.i = fcmp ogt double %i.h, 8.856000e-03
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call float @powf(float noundef %i.d, float noundef f0x3EAAAAAB) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call float @llvm.fmuladd.f32(float %i.d, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi float [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  %i.m = extractelement <2 x float> %i.g, i64 0   ; 3 uses
  %i.n = fpext float %i.m to double
  %i.o = fcmp ogt double %i.n, 8.856000e-03
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call float @powf(float noundef %i.m, float noundef f0x3EAAAAAB) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = tail call float @llvm.fmuladd.f32(float %i.m, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = phi float [ %i.p, %bb.e ], [ %i.q, %bb.f ] ; 3 uses
  %i.s = extractelement <2 x float> %i.g, i64 1   ; 3 uses
  %i.t = fpext float %i.s to double
  %i.u = fcmp ogt double %i.t, 8.856000e-03
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call float @powf(float noundef %i.s, float noundef f0x3EAAAAAB) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = tail call float @llvm.fmuladd.f32(float %i.s, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = phi float [ %i.v, %bb.h ], [ %i.w, %bb.i ]
  %i.y = tail call float @llvm.fmuladd.f32(float %i.r, float 1.160000e+02, float -1.600000e+01)
  store float %i.y, ptr %0, align 4, !tbaa !12
  %i.z = fsub float %i.l, %i.r
  %i.aa = fsub float %i.r, %i.x
  %i.ab = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.aa, i64 1
  %i.ad = fmul <2 x float> %i.ac, <float 5.000000e+02, float 2.000000e+02>
  store <2 x float> %i.ad, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !15
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN11flip_detail6color310CIELab2XYZES0_(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0, <2 x float> %1, float %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15
  %i.a = fdiv float %.sroa.5.0.copyload, 2.000000e+02
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !15
  %i.c = fadd <2 x float> %i.b, <float 1.600000e+01, float -0.000000e+00>
  %i.d = fdiv <2 x float> %i.c, <float 1.160000e+02, float 5.000000e+02> ; 5 uses
  %i.e = extractelement <2 x float> %i.d, i64 0
  %i.f = fsub float %i.e, %i.a                    ; 5 uses
  %i.g = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.h = fadd <2 x float> %i.g, %i.d              ; 2 uses
  %i.i = fmul <2 x float> %i.g, %i.d
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.i, <2 x i32> <i32 1, i32 2> ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.j, %i.j
  %i.k = shufflevector <2 x float> %i.h, <2 x float> %i.d, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.l = fpext <2 x float> %i.k to <2 x double>
  %i.m = fcmp ogt <2 x double> %i.l, splat (double 2.068970e-01)
  %i.n = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.k, <2 x i32> <i32 0, i32 3>
  %i.o = fmul <2 x float> %i.j, %i.n
  %i.p = fadd <2 x float> %i.k, splat (float f0xBE0D3DCB)
  %i.q = fdiv <2 x float> %i.p, splat (float 7.787000e+00)
  %i.r = select <2 x i1> %i.m, <2 x float> %i.o, <2 x float> %i.q
  %i.s = fpext float %i.f to double
  %i.t = fcmp ogt double %i.s, 2.068970e-01
  %i.u = fmul float %i.f, %i.f
  %i.v = fmul float %i.f, %i.u
  %i.w = fadd float %i.f, f0xBE0D3DCB
  %i.x = fdiv float %i.w, 7.787000e+00
  %i.y = select i1 %i.t, float %i.v, float %i.x
  %i.z = fmul <2 x float> %1, %i.r
  store <2 x float> %i.z, ptr %0, align 4, !tbaa !15
  %i.aa = fmul float %2, %i.y
  store float %i.aa, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !14
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flip_detail5image21generateSpatialFilterEf(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0, float noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.flip_detail::color3", align 8 ; 5 uses
  %i.a = fdiv float 1.000000e+00, %1              ; 2 uses
  %i.b = fmul float %1, f0x3E0A49E1
  %i.c = tail call noundef float @llvm.ceil.f32(float %i.b)
  %i.d = fptosi float %i.c to i32                 ; 4 uses
  %i.e = shl nsw i32 %i.d, 1                      ; 4 uses
  %i.f = or disjoint i32 %i.e, 1                  ; 4 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = mul nsw i32 %i.f, %i.f
  %i.j = zext nneg i32 %i.i to i64                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float 0.000000e+00, ptr %i.k, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 3 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 12                  ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.j
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = sub nuw nsw i64 %i.j, %i.r
  call void @_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.m, i64 noundef %i.t, ptr noundef nonnull align 4 dereferenceable(12) %2)
  br label %_ZN11flip_detail5image8allocateEii.exit

bb.c:                                             ; preds = %bb.a
  %i.u = icmp ugt i64 %i.r, %i.j
  br i1 %i.u, label %bb.d, label %_ZN11flip_detail5image8allocateEii.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %i.j ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.v
  br i1 %.not.i.i.i, label %_ZN11flip_detail5image8allocateEii.exit, label %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.v, ptr %i.l, align 8, !tbaa !25
end_hunk_0
begin_hunk_1_@_ZN11flip_detail5image8convolveERS0_S1_:bb.a
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge100, label %.preheader.us.us109, !llvm.loop !42

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge93.split.split.us105
  %indvars.iv123 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next124, %._crit_edge93.split.split.us105 ] ; 3 uses
  %i.ak = mul nuw nsw i64 %indvars.iv123, %i.ab
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.ak
  %i.am = trunc nuw nsw i64 %indvars.iv123 to i32
  br label %.lr.ph84.us101

.lr.ph84.us101:                                   ; preds = %.preheader.us, %._crit_edge85.split.us
  %indvars.iv119 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next120, %._crit_edge85.split.us ] ; 3 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph84.us101
  %.03282.us = phi i32 [ %i.k, %.lr.ph84.us101 ], [ %i.bh, %._crit_edge.us ] ; 4 uses
  %.sroa.10.081.us = phi float [ 0.000000e+00, %.lr.ph84.us101 ], [ %i.bg, %._crit_edge.us ]
  %i.an = phi <2 x float> [ zeroinitializer, %.lr.ph84.us101 ], [ %i.bf, %._crit_edge.us ]
  %i.ao = add nsw i32 %.03282.us, %i.am
  %.sroa.speculated60.us = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %.sroa.speculated56.us = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %.sroa.speculated60.us)
  %i.ap = add nsw i32 %.03282.us, %i.e
  %i.aq = mul nsw i32 %i.ap, %i.a
  %i.ar = add i32 %i.aq, %i.b
  %i.as = mul nsw i32 %i.t, %.sroa.speculated56.us
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.z, %.lr.ph.us ] ; 3 uses
  %.sroa.10.174.us = phi float [ %i.bg, %bb.b ], [ %.sroa.10.081.us, %.lr.ph.us ]
  %i.at = phi <2 x float> [ %i.bf, %bb.b ], [ %i.an, %.lr.ph.us ]
  %i.au = add i64 %indvars.iv, %indvars.iv119
  %i.av = trunc i64 %i.au to i32
  %.sroa.speculated49.us = tail call i32 @llvm.smax.i32(i32 %i.av, i32 0)
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.sroa.speculated49.us)
  %i.aw = trunc i64 %indvars.iv to i32
  %i.ax = add i32 %i.ar, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %i.ay ; 2 uses
  %.sroa.53.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.53.0.copyload.us = load float, ptr %.sroa.53.0..sroa_idx.us, align 4, !tbaa !15
  %i.ba = add nsw i32 %i.as, %.sroa.speculated.us
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.bb ; 2 uses
  %i.bd = load <2 x float>, ptr %i.az, align 4, !tbaa !15
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.5.0.copyload.us = load float, ptr %.sroa.5.0..sroa_idx.us, align 4, !tbaa !15
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> %i.at) ; 3 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %.sroa.53.0.copyload.us, float %.sroa.5.0.copyload.us, float %.sroa.10.174.us) ; 3 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !43

._crit_edge.us:                                   ; preds = %bb.b
  %i.bh = add i32 %.03282.us, 1
  %exitcond118.not = icmp eq i32 %.03282.us, %smax117
  br i1 %exitcond118.not, label %._crit_edge85.split.us, label %.lr.ph.us, !llvm.loop !44

._crit_edge85.split.us:                           ; preds = %._crit_edge.us
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %indvars.iv119 ; 2 uses
  store <2 x float> %i.bf, ptr %i.bi, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx43.us104 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float %i.bg, ptr %.sroa.5.0..sroa_idx43.us104, align 4, !tbaa !15
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count
  br i1 %exitcond122.not, label %._crit_edge93.split.split.us105, label %.lr.ph84.us101, !llvm.loop !45

._crit_edge93.split.split.us105:                  ; preds = %._crit_edge85.split.us
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge100, label %.preheader.us, !llvm.loop !42

._crit_edge100:                                   ; preds = %._crit_edge93.split.split.us105, %._crit_edge93.split.split.us.us.us, %.preheader.lr.ph, %.preheader.us.us.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11flip_detail5image14huntAdjustmentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %.not12 = icmp eq ptr %i.b, %i.d
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.09.013 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load float, ptr %.sroa.09.013, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 4 ; 2 uses
  %i.g = fmul float %i.e, f0x3C23D70A
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !15
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.j, %i.h
  store <2 x float> %i.k, ptr %i.f, align 4, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flip_detail5image10preprocessERS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.flip_detail::image", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = load i64, ptr %0, align 8
  store i64 %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.i, 12
  %i.k = icmp ugt i64 %i.j, 768614336404564650
  br i1 %i.k, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i, !prof !31

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #19
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !30
  %.pre32 = load ptr, ptr %i.d, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ %i.e, %bb.a ], [ %.pre32, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.o = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i.i, label %_ZN11flip_detail5imageC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !33
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZN11flip_detail5imageC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN11flip_detail5imageC2ERKS0_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.t, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.p, align 8, !tbaa !25
  call void @_ZN11flip_detail5image8convolveERS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !30   ; 3 uses
  %.not30 = icmp eq ptr %i.u, %i.v
  br i1 %.not30, label %_ZN11flip_detail5image14huntAdjustmentEv.exit, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.u, %bb.l ] ; 3 uses
  %i.w = load float, ptr %.sroa.09.013.i, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 4 ; 2 uses
  %i.y = fmul float %i.w, f0x3C23D70A
  %i.z = load <2 x float>, ptr %i.x, align 4, !tbaa !15
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.ab, %i.z
  store <2 x float> %i.ac, ptr %i.x, align 4, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.v
  br i1 %.not.i, label %_ZN11flip_detail5image14huntAdjustmentEv.exit, label %.lr.ph.i

.lr.ph:                                           ; preds = %_ZN11flip_detail5imageC2ERKS0_.exit, %bb.l
  %.sroa.027.031 = phi ptr [ %i.ct, %bb.l ], [ %i.u, %_ZN11flip_detail5imageC2ERKS0_.exit ] ; 6 uses
  %.sroa.0.0.copyload.i = load float, ptr %.sroa.027.031, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.027.031, i64 4 ; 3 uses
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.027.031, i64 8
  %i.ae = fdiv float %.sroa.4.0.copyload.i, 5.000000e+02
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !15
  %i.af = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %.sroa.5.0.copyload.i, i64 1
  %i.ah = fadd <2 x float> %i.ag, <float 1.600000e+01, float -0.000000e+00>
  %i.ai = fdiv <2 x float> %i.ah, <float 1.160000e+02, float 2.000000e+02> ; 4 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.ak = fmul float %i.aj, f0xBE50E850
  %i.al = fadd float %i.aj, %i.ae
  %i.am = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.an = fsub <2 x float> %i.ai, %i.am
  %3 = insertelement <2 x float> %i.an, float %i.al, i64 1
  %4 = fmul <2 x float> %3, <float f0x3F8B6116, float f0x3F734F49> ; 4 uses
  %i.ao = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ao, <float 1.875930e+00, float f0xBFC4C97D>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> <float f0xBF781F15, float f0x404F6C99>, <2 x float> %i.ap)
  %i.ar = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> <float f0x3D2A34C4, float f0xBEFF4A95>, <2 x float> %i.aq) ; 3 uses
  %i.at = extractelement <2 x float> %i.as, i64 0
  store float %i.at, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !13
  %6 = extractelement <2 x float> %4, i64 1
  %i.au = tail call float @llvm.fmuladd.f32(float %6, float f0x3D63E629, float %i.ak)
  %7 = extractelement <2 x float> %4, i64 0
  %i.av = tail call float @llvm.fmuladd.f32(float %7, float f0x3F8750A8, float %i.au) ; 2 uses
  %i.aw = fcmp ogt <2 x float> %i.as, splat (float 1.000000e+00)
  %i.ax = select <2 x i1> %i.aw, <2 x float> splat (float 1.000000e+00), <2 x float> %i.as ; 3 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 1
  store float %i.ay, ptr %.sroa.027.031, align 4, !tbaa !12
  %i.az = fcmp ogt float %i.av, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.az, float 1.000000e+00, float %i.av ; 2 uses
  %i.ba = fcmp olt <2 x float> %i.ax, zeroinitializer
  %i.bb = fcmp olt float %.sroa.speculated.i, 0.000000e+00
  %i.bc = shufflevector <2 x i1> %i.ba, <2 x i1> poison, <3 x i32> <i32 poison, i32 1, i32 0>
  %i.bd = insertelement <3 x i1> %i.bc, i1 %i.bb, i64 0
  %i.be = shufflevector <2 x float> %i.ax, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 0>
  %i.bf = insertelement <3 x float> %i.be, float %.sroa.speculated.i, i64 0
  %i.bg = select <3 x i1> %i.bd, <3 x float> zeroinitializer, <3 x float> %i.bf ; 6 uses
  %i.bh = extractelement <3 x float> %i.bg, i64 2
  %i.bi = fmul float %i.bh, f0x3F37163B
  %i.bj = extractelement <3 x float> %i.bg, i64 1
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float f0x3E59BD78, float %i.bi)
  %i.bl = extractelement <3 x float> %i.bg, i64 0
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float 7.218020e-02, float %i.bk)
  %i.bn = shufflevector <3 x float> %i.bg, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bo = fmul <2 x float> %i.bn, <float f0x3EB7163B, float f0x3DF41DA4>
  %i.bp = shufflevector <3 x float> %i.bg, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> <float f0x3ED32455, float f0x3C9E5B3F>, <2 x float> %i.bo)
  %i.br = shufflevector <3 x float> %i.bg, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> <float f0x3E38C803, float f0x3F734B9E>, <2 x float> %i.bq)
  %i.bt = tail call float @llvm.fabs.f32(float %i.bm) ; 3 uses
  %i.bu = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bs)
  %i.bv = fdiv <2 x float> %i.bu, <float f0x3F734F49, float f0x3F8B6116> ; 2 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 0 ; 3 uses
  %i.bx = fpext float %i.bw to double
  %i.by = fcmp ogt double %i.bx, 8.856000e-03
  br i1 %i.by, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bz = tail call float @powf(float noundef %i.bw, float noundef f0x3EAAAAAB) #17
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bw, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cb = phi float [ %i.bz, %bb.d ], [ %i.ca, %bb.e ]
  %i.cc = fpext float %i.bt to double
  %i.cd = fcmp ogt double %i.cc, 8.856000e-03
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ce = tail call float @powf(float noundef %i.bt, float noundef f0x3EAAAAAB) #17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bt, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cg = phi float [ %i.ce, %bb.g ], [ %i.cf, %bb.h ] ; 3 uses
  %i.ch = extractelement <2 x float> %i.bv, i64 1 ; 3 uses
  %i.ci = fpext float %i.ch to double
  %i.cj = fcmp ogt double %i.ci, 8.856000e-03
  br i1 %i.cj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ck = tail call float @powf(float noundef %i.ch, float noundef f0x3EAAAAAB) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ch, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cm = phi float [ %i.ck, %bb.j ], [ %i.cl, %bb.k ]
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cg, float 1.160000e+02, float -1.600000e+01)
  store float %i.cn, ptr %.sroa.027.031, align 4, !tbaa !12
  %i.co = fsub float %i.cb, %i.cg
  %i.cp = fsub float %i.cg, %i.cm
  %i.cq = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cp, i64 1
  %i.cs = fmul <2 x float> %i.cr, <float 5.000000e+02, float 2.000000e+02>
  store <2 x float> %i.cs, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.027.031, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ct, %i.v
  br i1 %.not, label %.lr.ph.i, label %.lr.ph

_ZN11flip_detail5image14huntAdjustmentEv.exit:    ; preds = %.lr.ph.i, %_ZN11flip_detail5imageC2ERKS0_.exit
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN11flip_detail5imageD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11flip_detail5image14huntAdjustmentEv.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.i) #20
  br label %_ZN11flip_detail5imageD2Ev.exit

_ZN11flip_detail5imageD2Ev.exit:                  ; preds = %_ZN11flip_detail5image14huntAdjustmentEv.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flip_detail5image22computeColorDifferenceERS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.flip_detail::color3", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !24   ; 5 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = mul nsw i32 %i.c, %i.a
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 12                  ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.g
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = sub nuw nsw i64 %i.g, %i.o
  call void @_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.j, i64 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %.pre = load i32, ptr %i.d, align 4, !tbaa !24
  br label %_ZN11flip_detail5image8allocateEii.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp ugt i64 %i.o, %i.g
  br i1 %i.r, label %bb.d, label %_ZN11flip_detail5image8allocateEii.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.g ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.s
  br i1 %.not.i.i.i, label %_ZN11flip_detail5image8allocateEii.exit, label %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.s, ptr %i.i, align 8, !tbaa !25
  br label %_ZN11flip_detail5image8allocateEii.exit

_ZN11flip_detail5image8allocateEii.exit:          ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.t = phi i32 [ %.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader.lr.ph, label %._crit_edge38.split

.preheader.lr.ph:                                 ; preds = %_ZN11flip_detail5image8allocateEii.exit
  %i.v = load i32, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader.lr.ph.split, label %._crit_edge38.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %1, align 8, !tbaa !23
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.ab = load i32, ptr %2, align 8, !tbaa !23
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.ae = zext nneg i32 %i.v to i64
  %i.af = sext i32 %i.ab to i64
  %i.ag = sext i32 %i.z to i64
  %wide.trip.count43 = zext nneg i32 %i.t to i64
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next41, %._crit_edge ] ; 4 uses
  %i.ah = mul nsw i64 %indvars.iv40, %i.ag
  %i.ai = mul nsw i64 %indvars.iv40, %i.af
  %i.aj = mul nuw nsw i64 %indvars.iv40, %i.ae
  %i.ak = getelementptr [12 x i8], ptr %i.aa, i64 %i.ah
  %i.al = getelementptr [12 x i8], ptr %i.ac, i64 %i.ai
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.ad, i64 %i.aj
  br label %bb.e

._crit_edge38.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN11flip_detail5image8allocateEii.exit
  ret void

._crit_edge:                                      ; preds = %bb.h
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge38.split, label %.preheader, !llvm.loop !46

bb.e:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.an = getelementptr [12 x i8], ptr %i.ak, i64 %indvars.iv ; 3 uses
  %.sroa.033.0.copyload = load float, ptr %i.an, align 4, !tbaa !15
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.sroa.434.0.copyload = load float, ptr %.sroa.434.0..sroa_idx, align 4, !tbaa !15
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.535.0.copyload = load float, ptr %.sroa.535.0..sroa_idx, align 4, !tbaa !15
  %i.ao = getelementptr [12 x i8], ptr %i.al, i64 %indvars.iv ; 3 uses
  %.sroa.030.0.copyload = load float, ptr %i.ao, align 4, !tbaa !15
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
end_hunk_1
