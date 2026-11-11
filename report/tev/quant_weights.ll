Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/quant_weights?download=true
inline.NumInlined: 1046
inline.NumDeleted: 338
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 106
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::__1::array.7" = type { [17 x i32] }
%"struct.std::__1::array.34" = type { [17 x %"struct.jxl::QuantEncodingInternal"] }
%"struct.jxl::QuantEncodingInternal" = type <{ i32, [4 x i8], %"struct.jxl::DctQuantWeightParams", %union.anon, %"struct.jxl::DctQuantWeightParams", i8, [7 x i8] }>
%union.anon = type { %"struct.std::__1::array.11", [4 x i8] }
%"struct.std::__1::array.11" = type { [3 x %"struct.std::__1::array.12"] }
%"struct.std::__1::array.12" = type { [9 x float] }
%"struct.jxl::DctQuantWeightParams" = type <{ i64, %"struct.std::__1::array.5", [4 x i8] }>
%"struct.std::__1::array.5" = type { [3 x %"struct.std::__1::array.6"] }
%"struct.std::__1::array.6" = type { [17 x float] }
%"struct.std::__1::array.1" = type { [3 x %"struct.std::__1::array.2"] }
%"struct.std::__1::array.2" = type { [3 x float] }
%"struct.std::__1::array" = type { [3 x %"struct.std::__1::array.0"] }
%"struct.std::__1::array.0" = type { [6 x float] }
%"struct.std::__1::array.9" = type { [3 x %"struct.std::__1::array.10"] }
%"struct.std::__1::array.10" = type { [2 x float] }
%"class.jxl::StatusOr" = type { %"union.jxl::StatusOr<float>::Storage", i32 }
%"union.jxl::StatusOr<float>::Storage" = type { float }
%"class.std::__1::vector" = type { ptr, ptr, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }
%"class.jxl::QuantEncoding" = type { %"struct.jxl::QuantEncodingInternal.base", [7 x i8] }
%"struct.jxl::QuantEncodingInternal.base" = type <{ i32, [4 x i8], %"struct.jxl::DctQuantWeightParams", %union.anon, %"struct.jxl::DctQuantWeightParams", i8 }>
%"class.jxl::StatusOr.36" = type <{ %"union.jxl::StatusOr<jxl::AlignedMemory>::Storage", i32, [4 x i8] }>
%"union.jxl::StatusOr<jxl::AlignedMemory>::Storage" = type { %"class.jxl::AlignedMemory" }
%"class.jxl::AlignedMemory" = type { ptr, ptr, ptr }

$_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8nn180100EPKc = comdat any

$_ZSt28__throw_bad_array_new_lengthB8nn180100v = comdat any

$_ZNSt3__16vectorIN3jxl13QuantEncodingENS_9allocatorIS2_EEE8__appendEmRKS2_ = comdat any

$_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNKSt3__16vectorIN3jxl13QuantEncodingENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZN3jxl15DequantMatrices15required_size_xE = comdat any

$_ZN3jxl15DequantMatrices15required_size_yE = comdat any

@_ZN3jxl15DequantMatrices15required_size_xE = linkonce_odr hidden local_unnamed_addr constant %"struct.std::__1::array.7" { [17 x i32] [i32 1, i32 1, i32 1, i32 1, i32 2, i32 4, i32 1, i32 1, i32 2, i32 1, i32 1, i32 8, i32 4, i32 16, i32 8, i32 32, i32 16] }, comdat, align 4
@_ZN3jxl15DequantMatrices15required_size_yE = linkonce_odr hidden local_unnamed_addr constant %"struct.std::__1::array.7" { [17 x i32] [i32 1, i32 1, i32 1, i32 1, i32 2, i32 4, i32 2, i32 4, i32 4, i32 1, i32 1, i32 8, i32 8, i32 16, i32 16, i32 32, i32 32] }, comdat, align 4
@_ZZN3jxl6N_SSE217ComputeQuantTableERKNS_13QuantEncodingEPfS4_mNS_10QuantTableEPmE6kFreqs = internal unnamed_addr constant [16 x float] [float 2.989000e+03, float 2.989000e+03, float f0x3F5A0E1E, float f0x40AC16CF, float 2.989000e+03, float 2.989000e+03, float f0x4097830E, float f0x40AE6038, float f0x3FD47536, float 4.000000e+00, float f0x40E8D2F0, float f0x4126C58A, float f0x402A6D7C, float f0x40F42E59, float f0x410F65F2, float f0x414F8BED], align 16
@_ZZN3jxl15DequantMatrices7LibraryEvE15kDequantLibrary = internal global %"struct.std::__1::array.34" zeroinitializer, align 8
@_ZGVZN3jxl15DequantMatrices7LibraryEvE15kDequantLibrary = internal global i64 0, align 8
@_ZN3jxl12_GLOBAL__N_137ComputeQuantTableHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIN3jxl6StatusEJRKNS1_13QuantEncodingEPfS6_mNS1_10QuantTableEPmEE13ChooseAndCallIXadsoKPFS2_S5_S6_S6_mS7_S8_EL_ZNS1_12_GLOBAL__N_137ComputeQuantTableHighwayDispatchTableEEEEEES2_S5_S6_S6_mS7_S8_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX217ComputeQuantTableERKNS_13QuantEncodingEPfS4_mNS_10QuantTableEPm, ptr null, ptr @_ZN3jxl6N_SSE417ComputeQuantTableERKNS_13QuantEncodingEPfS4_mNS_10QuantTableEPm, ptr null, ptr null, ptr @_ZN3jxl6N_SSE217ComputeQuantTableERKNS_13QuantEncodingEPfS4_mNS_10QuantTableEPm, ptr @_ZN3jxl6N_SSE217ComputeQuantTableERKNS_13QuantEncodingEPfS4_mNS_10QuantTableEPm], align 16
@.ref.tmp = private unnamed_addr constant { [3 x { <{ float, float, float, float, float, float, [11 x float] }> }] } { [3 x { <{ float, float, float, float, float, float, [11 x float] }> }] [{ <{ float, float, float, float, float, float, [11 x float] }> } { <{ float, float, float, float, float, float, [11 x float] }> <{ float 3.150000e+03, float 0.000000e+00, float -4.000000e-01, float -4.000000e-01, float -4.000000e-01, float -2.000000e+00, [11 x float] zeroinitializer }> }, { <{ float, float, float, float, float, float, [11 x float] }> } { <{ float, float, float, float, float, float, [11 x float] }> <{ float 5.600000e+02, float 0.000000e+00, float -3.000000e-01, float -3.000000e-01, float -3.000000e-01, float -3.000000e-01, [11 x float] zeroinitializer }> }, { <{ float, float, float, float, float, float, [11 x float] }> } { <{ float, float, float, float, float, float, [11 x float] }> <{ float 5.120000e+02, float -2.000000e+00, float -1.000000e+00, float 0.000000e+00, float -1.000000e+00, float -2.000000e+00, [11 x float] zeroinitializer }> }] }, align 8
@.ref.tmp.43 = private unnamed_addr constant %"struct.std::__1::array.1" { [3 x %"struct.std::__1::array.2"] [%"struct.std::__1::array.2" { [3 x float] [float 2.800000e+02, float 3.160000e+03, float 3.160000e+03] }, %"struct.std::__1::array.2" { [3 x float] [float 6.000000e+01, float 8.640000e+02, float 8.640000e+02] }, %"struct.std::__1::array.2" { [3 x float] [float 1.800000e+01, float 2.000000e+02, float 2.000000e+02] }] }, align 4
@.ref.tmp.44 = private unnamed_addr constant %"struct.std::__1::array" { [3 x %"struct.std::__1::array.0"] [%"struct.std::__1::array.0" { [6 x float] [float 3.840000e+03, float 2.560000e+03, float 1.280000e+03, float 6.400000e+02, float 4.800000e+02, float 3.000000e+02] }, %"struct.std::__1::array.0" { [6 x float] [float 9.600000e+02, float 6.400000e+02, float 3.200000e+02, float 1.800000e+02, float 1.400000e+02, float 1.200000e+02] }, %"struct.std::__1::array.0" { [6 x float] [float 6.400000e+02, float 3.200000e+02, float 1.280000e+02, float 6.400000e+01, float 3.200000e+01, float 1.600000e+01] }] }, align 4
@.ref.tmp.45 = private unnamed_addr constant { <{ { <{ float, [16 x float] }> }, { <{ float, [16 x float] }> }, { <{ float, float, float, float, [13 x float] }> } }> } { <{ { <{ float, [16 x float] }> }, { <{ float, [16 x float] }> }, { <{ float, float, float, float, [13 x float] }> } }> <{ { <{ float, [16 x float] }> } { <{ float, [16 x float] }> <{ float 2.200000e+03, [16 x float] zeroinitializer }> }, { <{ float, [16 x float] }> } { <{ float, [16 x float] }> <{ float 3.920000e+02, [16 x float] zeroinitializer }> }, { <{ float, float, float, float, [13 x float] }> } { <{ float, float, float, float, [13 x float] }> <{ float 1.120000e+02, float -2.500000e-01, float -2.500000e-01, float -5.000000e-01, [13 x float] zeroinitializer }> } }> }, align 8
@.ref.tmp.46 = private unnamed_addr constant %"struct.std::__1::array.9" { [3 x %"struct.std::__1::array.10"] [%"struct.std::__1::array.10" { [2 x float] [float 1.000000e+00, float 1.000000e+00] }, %"struct.std::__1::array.10" { [2 x float] [float 1.000000e+00, float 1.000000e+00] }, %"struct.std::__1::array.10" { [2 x float] [float 1.000000e+00, float 1.000000e+00] }] }, align 4
@.ref.tmp.47 = private unnamed_addr constant { [3 x { <{ float, float, float, float, float, float, float, [10 x float] }> }] } { [3 x { <{ float, float, float, float, float, float, float, [10 x float] }> }] [{ <{ float, float, float, float, float, float, float, [10 x float] }> } { <{ float, float, float, float, float, float, float, [10 x float] }> <{ float f0x460C937E, float f0xBFA668F3, float f0xBEFD0DB8, float f0xBEE0D0E6, float f0xBF229007, float f0xBF66DA92, float f0xBFCEDFF7, [10 x float] zeroinitializer }> }, { <{ float, float, float, float, float, float, float, [10 x float] }> } { <{ float, float, float, float, float, float, float, [10 x float] }> <{ float f0x454777BD, float f0xBF2C9B60, float f0xBF4EB594, float f0xBEE60532, float f0xBEB7A18D, float f0xBEA05EE2, float f0xBEC096C4, [10 x float] zeroinitializer }> }, { <{ float, float, float, float, float, float, float, [10 x float] }> } { <{ float, float, float, float, float, float, float, [10 x float] }> <{ float f0x4490B021, float f0xC00366AF, float -1.400000e+00, float f0xBF01C251, float f0xBEDAAB30, float f0xBFBE2AE0, float f0xC09D7821, [10 x float] zeroinitializer }> }] }, align 8
@.ref.tmp.48 = private unnamed_addr constant { [3 x { <{ [8 x float], [9 x float] }> }] } { [3 x { <{ [8 x float], [9 x float] }> }] [{ <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x467599A2, float -1.025000e+00, float -9.800000e-01, float f0xBF66B50B, float -4.000000e-01, float f0xBEF9F48F, float -4.210640e-01, float -2.700000e-01], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x45E44E1C, float f0xBF4DDFC7, float f0xBF4367DE, float f0xBF0E7D96, float f0xBEFEE698, float f0xBEDFBDEE, float f0xBECDB9DE, float f0xBE8BE314], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x456DB882, float f0xC043E30F, float f0xC002A51A, float f0xC0018217, float f0xBF0CAE96, float -4.000000e-01, float -4.000000e-01, float -3.000000e-01], [9 x float] zeroinitializer }> }] }, align 8
@.ref.tmp.49 = private unnamed_addr constant { [3 x { <{ float, float, float, float, float, float, float, [10 x float] }> }] } { [3 x { <{ float, float, float, float, float, float, float, [10 x float] }> }] [{ <{ float, float, float, float, float, float, float, [10 x float] }> } { <{ float, float, float, float, float, float, float, [10 x float] }> <{ float f0x45E24630, float f0xBF333333, float f0xBF333333, float -2.000000e-01, float -2.000000e-01, float -2.000000e-01, float -5.000000e-01, [10 x float] zeroinitializer }> }, { <{ float, float, float, float, float, float, float, [10 x float] }> } { <{ float, float, float, float, float, float, float, [10 x float] }> <{ float f0x44B504F3, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -2.000000e-01, float -2.000000e-01, float -2.000000e-01, [10 x float] zeroinitializer }> }, { <{ float, float, float, float, float, float, float, [10 x float] }> } { <{ float, float, float, float, float, float, float, [10 x float] }> <{ float f0x43FD6D54, float -1.400000e+00, float -2.000000e-01, float -5.000000e-01, float -5.000000e-01, float -1.500000e+00, float -3.600000e+00, [10 x float] zeroinitializer }> }] }, align 8
@.ref.tmp.50 = private unnamed_addr constant { [3 x { <{ [8 x float], [9 x float] }> }] } { [3 x { <{ [8 x float], [9 x float] }> }] [{ <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x467E6CFF, float f0xBFE40122, float f0xBFD0C186, float f0xBF84E453, float -8.500000e-01, float f0xBF333333, float f0xBF666666, float f0xBF9E3757], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x459F0943, float f0xBEA3DD84, float f0xBEB50ECB, float -3.034000e-01, float -6.100000e-01, float -5.000000e-01, float -5.000000e-01, float -6.000000e-01], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x45545C6B, float f0xBEA48505, float f0xBEB0ADD4, float -7.034000e-01, float f0xBF666666, float -1.000000e+00, float -1.000000e+00, float f0xBF96757E], [9 x float] zeroinitializer }> }] }, align 8
@.ref.tmp.51 = private unnamed_addr constant { [3 x { <{ [8 x float], [9 x float] }> }] } { [3 x { <{ [8 x float], [9 x float] }> }] [{ <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x465853E2, float -9.711380e-01, float -6.580000e-01, float -4.202600e-01, float -2.271200e-01, float -2.206000e-01, float -2.260000e-01, float -6.000000e-01], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x4595F7B6, float f0xBF1C7B15, float f0xBF567406, float f0xBF4A472E, float f0xBE89DE1E, float f0xBEC3F4E2, float f0xBE6ABE79, float f0xBE5429E0], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x44E1E795, float -1.200000e+00, float -1.200000e+00, float f0xBF333333, float f0xBF333333, float f0xBF333333, float -4.000000e-01, float -5.000000e-01], [9 x float] zeroinitializer }> }] }, align 8
@.ref.tmp.52 = private unnamed_addr constant { [3 x { <{ float, float, float, float, [13 x float] }> }] } { [3 x { <{ float, float, float, float, [13 x float] }> }] [{ <{ float, float, float, float, [13 x float] }> } { <{ float, float, float, float, [13 x float] }> <{ float f0x450960CF, float f0xBF767343, float f0xBF430EAA, float f0xBF27B58E, [13 x float] zeroinitializer }> }, { <{ float, float, float, float, [13 x float] }> } { <{ float, float, float, float, [13 x float] }> <{ float f0x443F1765, float -9.263020e-01, float f0xBF77AF96, float f0xBE8E9161, [13 x float] zeroinitializer }> }, { <{ float, float, float, float, [13 x float] }> } { <{ float, float, float, float, [13 x float] }> <{ float f0x4403C6E2, float f0xBFBACEE2, float f0xBFB99C4A, float f0xBFCACCB6, [13 x float] zeroinitializer }> }] }, align 8
@.ref.tmp.53 = private unnamed_addr constant %"struct.std::__1::array.2" { [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00] }, align 4
@.ref.tmp.54 = private unnamed_addr constant %"struct.std::__1::array.11" { [3 x %"struct.std::__1::array.12"] [%"struct.std::__1::array.12" { [9 x float] [float 3.072000e+03, float 3.072000e+03, float 2.560000e+02, float 2.560000e+02, float 2.560000e+02, float 4.140000e+02, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00] }, %"struct.std::__1::array.12" { [9 x float] [float 1.024000e+03, float 1.024000e+03, float 5.000000e+01, float 5.000000e+01, float 5.000000e+01, float 5.800000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00] }, %"struct.std::__1::array.12" { [9 x float] [float 3.840000e+02, float 3.840000e+02, float 1.200000e+01, float 1.200000e+01, float 1.200000e+01, float 2.200000e+01, float -2.500000e-01, float -2.500000e-01, float -2.500000e-01] }] }, align 4
@.ref.tmp.55 = private unnamed_addr constant { [3 x { <{ [8 x float], [9 x float] }> }] } { [3 x { <{ [8 x float], [9 x float] }> }] [{ <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x46BB3C55, float -1.025000e+00, float -7.800000e-01, float -6.501200e-01, float f0xBE42FC58, float f0xBE5530CC, float -4.210640e-01, float f0xBEA798E8], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x4602F0C4, float f0xBE9BBF8E, float f0xBEBA02EF, float f0xBEB694C6, float f0xBEB04911, float f0xBEAC8ABB, float f0xBE9A86AA, float f0xBE8BE314], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x458C6831, float -1.200000e+00, float -1.200000e+00, float -8.000000e-01, float f0xBF333333, float f0xBF333333, float -4.000000e-01, float -5.000000e-01], [9 x float] zeroinitializer }> }] }, align 8
@.ref.tmp.56 = private unnamed_addr constant { [3 x { <{ [8 x float], [9 x float] }> }] } { [3 x { <{ [8 x float], [9 x float] }> }] [{ <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x466FFB98, float -1.025000e+00, float -7.800000e-01, float -6.501200e-01, float f0xBE42FC58, float f0xBE5530CC, float -4.210640e-01, float f0xBEA798E8], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x45AEEAE2, float f0xBE9BBF8E, float f0xBEBA02EF, float f0xBEB694C6, float f0xBEB04911, float f0xBEAC8ABB, float f0xBE9A86AA, float f0xBE8BE314], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x45367F63, float -1.200000e+00, float -1.200000e+00, float -8.000000e-01, float f0xBF333333, float f0xBF333333, float -4.000000e-01, float -5.000000e-01], [9 x float] zeroinitializer }> }] }, align 8
@.ref.tmp.57 = private unnamed_addr constant { [3 x { <{ [8 x float], [9 x float] }> }] } { [3 x { <{ [8 x float], [9 x float] }> }] [{ <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x473B3C55, float -1.025000e+00, float -7.800000e-01, float -6.501200e-01, float f0xBE42FC58, float f0xBE5530CC, float -4.210640e-01, float f0xBEA798E8], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x4682F0C4, float f0xBE9BBF8E, float f0xBEBA02EF, float f0xBEB694C6, float f0xBEB04911, float f0xBEAC8ABB, float f0xBE9A86AA, float f0xBE8BE314], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x460C6831, float -1.200000e+00, float -1.200000e+00, float -8.000000e-01, float f0xBF333333, float f0xBF333333, float -4.000000e-01, float -5.000000e-01], [9 x float] zeroinitializer }> }] }, align 8
@.ref.tmp.58 = private unnamed_addr constant { [3 x { <{ [8 x float], [9 x float] }> }] } { [3 x { <{ [8 x float], [9 x float] }> }] [{ <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x46EFFB98, float -1.025000e+00, float -7.800000e-01, float -6.501200e-01, float f0xBE42FC58, float f0xBE5530CC, float -4.210640e-01, float f0xBEA798E8], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x462EEAE2, float f0xBE9BBF8E, float f0xBEBA02EF, float f0xBEB694C6, float f0xBEB04911, float f0xBEAC8ABB, float f0xBE9A86AA, float f0xBE8BE314], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x45B67F63, float -1.200000e+00, float -1.200000e+00, float -8.000000e-01, float f0xBF333333, float f0xBF333333, float -4.000000e-01, float -5.000000e-01], [9 x float] zeroinitializer }> }] }, align 8
@.ref.tmp.59 = private unnamed_addr constant { [3 x { <{ [8 x float], [9 x float] }> }] } { [3 x { <{ [8 x float], [9 x float] }> }] [{ <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x47BB3C55, float -1.025000e+00, float -7.800000e-01, float -6.501200e-01, float f0xBE42FC58, float f0xBE5530CC, float -4.210640e-01, float f0xBEA798E8], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x4702F0C4, float f0xBE9BBF8E, float f0xBEBA02EF, float f0xBEB694C6, float f0xBEB04911, float f0xBEAC8ABB, float f0xBE9A86AA, float f0xBE8BE314], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x468C6831, float -1.200000e+00, float -1.200000e+00, float -8.000000e-01, float f0xBF333333, float f0xBF333333, float -4.000000e-01, float -5.000000e-01], [9 x float] zeroinitializer }> }] }, align 8
@.ref.tmp.60 = private unnamed_addr constant { [3 x { <{ [8 x float], [9 x float] }> }] } { [3 x { <{ [8 x float], [9 x float] }> }] [{ <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x476FFB98, float -1.025000e+00, float -7.800000e-01, float -6.501200e-01, float f0xBE42FC58, float f0xBE5530CC, float -4.210640e-01, float f0xBEA798E8], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x46AEEAE2, float f0xBE9BBF8E, float f0xBEBA02EF, float f0xBEB694C6, float f0xBEB04911, float f0xBEAC8ABB, float f0xBE9A86AA, float f0xBE8BE314], [9 x float] zeroinitializer }> }, { <{ [8 x float], [9 x float] }> } { <{ [8 x float], [9 x float] }> <{ [8 x float] [float f0x46367F63, float -1.200000e+00, float -1.200000e+00, float -8.000000e-01, float f0xBF333333, float f0xBF333333, float -4.000000e-01, float -5.000000e-01], [9 x float] zeroinitializer }> }] }, align 8
@.str.61 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.62 = private unnamed_addr constant [66 x i8] c"length_error was thrown in -fno-exceptions mode with message \22%s\22\00", align 1
@.str.63 = private unnamed_addr constant [56 x i8] c"bad_array_new_length was thrown in -fno-exceptions mode\00", align 1

@_ZN3jxl15DequantMatricesC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN3jxl15DequantMatricesC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN3jxl6N_SSE419GetQuantWeightsDCT2ERKNSt3__15arrayINS2_IfLm6EEELm3EEEPf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(72) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
.preheader82:
  store float 2.989000e+03, ptr %1, align 4, !tbaa !10
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float %i.a, ptr %i.b, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.a, ptr %i.c, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.e, ptr %i.f, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.h, ptr %i.i, align 4, !tbaa !10
  store float %i.h, ptr %2, align 4, !tbaa !10
  %i.j = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.j, ptr %i.k, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.j, ptr %i.l, align 4, !tbaa !10
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.m, ptr %i.n, align 4, !tbaa !10
  store float %i.m, ptr %3, align 4, !tbaa !10
  %i.o = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.o, ptr %i.p, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 100
  store float %i.o, ptr %i.q, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float %i.s, ptr %i.t, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.s, ptr %i.u, align 4, !tbaa !10
  %i.v = load float, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  store float %i.v, ptr %i.w, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float %i.v, ptr %i.x, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.z = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.z, ptr %i.aa, align 4, !tbaa !10
  store float %i.z, ptr %4, align 4, !tbaa !10
  %i.ab = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.ab, ptr %i.ac, align 4, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 132
  store float %i.ab, ptr %i.ad, align 4, !tbaa !10
  %i.ae = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.ae, ptr %i.af, align 4, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 136
  store float %i.ae, ptr %i.ag, align 4, !tbaa !10
  %i.ah = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.ah, ptr %i.ai, align 4, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 140
  store float %i.ah, ptr %i.aj, align 4, !tbaa !10
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ak = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.ak, ptr %i.al, align 4, !tbaa !10
  store float %i.ak, ptr %5, align 4, !tbaa !10
  %i.am = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.am, ptr %i.an, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 164
  store float %i.am, ptr %i.ao, align 4, !tbaa !10
  %i.ap = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.ap, ptr %i.aq, align 4, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 168
  store float %i.ap, ptr %i.ar, align 4, !tbaa !10
  %i.as = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %i.as, ptr %i.at, align 4, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 172
  store float %i.as, ptr %i.au, align 4, !tbaa !10
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.av = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.av, ptr %i.aw, align 4, !tbaa !10
  store float %i.av, ptr %6, align 4, !tbaa !10
  %i.ax = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.ax, ptr %i.ay, align 4, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 196
  store float %i.ax, ptr %i.az, align 4, !tbaa !10
  %i.ba = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.ba, ptr %i.bb, align 4, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 200
  store float %i.ba, ptr %i.bc, align 4, !tbaa !10
  %i.bd = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.bd, ptr %i.be, align 4, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 204
  store float %i.bd, ptr %i.bf, align 4, !tbaa !10
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bg = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float %i.bg, ptr %i.bh, align 4, !tbaa !10
  store float %i.bg, ptr %7, align 4, !tbaa !10
  %i.bi = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.bi, ptr %i.bj, align 4, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 228
  store float %i.bi, ptr %i.bk, align 4, !tbaa !10
  %i.bl = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %i.bl, ptr %i.bm, align 4, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 232
  store float %i.bl, ptr %i.bn, align 4, !tbaa !10
  %i.bo = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float %i.bo, ptr %i.bp, align 4, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 236
  store float %i.bo, ptr %i.bq, align 4, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144
  store float %i.bs, ptr %i.bt, align 4, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 148
  store float %i.bs, ptr %i.bu, align 4, !tbaa !10
  %i.bv = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 152
  store float %i.bv, ptr %i.bw, align 4, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 156
  store float %i.bv, ptr %i.bx, align 4, !tbaa !10
  %i.by = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 176
  store float %i.by, ptr %i.bz, align 4, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 180
  store float %i.by, ptr %i.ca, align 4, !tbaa !10
  %i.cb = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 184
  store float %i.cb, ptr %i.cc, align 4, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 188
  store float %i.cb, ptr %i.cd, align 4, !tbaa !10
  %i.ce = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 208
  store float %i.ce, ptr %i.cf, align 4, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 212
  store float %i.ce, ptr %i.cg, align 4, !tbaa !10
  %i.ch = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 216
  store float %i.ch, ptr %i.ci, align 4, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 220
  store float %i.ch, ptr %i.cj, align 4, !tbaa !10
  %i.ck = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 240
  store float %i.ck, ptr %i.cl, align 4, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 244
  store float %i.ck, ptr %i.cm, align 4, !tbaa !10
  %i.cn = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 248
  store float %i.cn, ptr %i.co, align 4, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 252
  store float %i.cn, ptr %i.cp, align 4, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 256
  store float 2.989000e+03, ptr %i.cq, align 4, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !10 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 288
  store float %i.cs, ptr %i.ct, align 4, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 260
  store float %i.cs, ptr %i.cu, align 4, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !10
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 292
  store float %i.cw, ptr %i.cx, align 4, !tbaa !10
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !10 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 264
  store float %i.cz, ptr %i.da, align 4, !tbaa !10
  store float %i.cz, ptr %8, align 4, !tbaa !10
  %i.db = load float, ptr %i.cy, align 4, !tbaa !10 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 268
  store float %i.db, ptr %i.dc, align 4, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 324
  store float %i.db, ptr %i.dd, align 4, !tbaa !10
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.de = load float, ptr %i.cy, align 4, !tbaa !10 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 296
  store float %i.de, ptr %i.df, align 4, !tbaa !10
  store float %i.de, ptr %9, align 4, !tbaa !10
  %i.dg = load float, ptr %i.cy, align 4, !tbaa !10 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 300
  store float %i.dg, ptr %i.dh, align 4, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 356
  store float %i.dg, ptr %i.di, align 4, !tbaa !10
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !10 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 328
  store float %i.dk, ptr %i.dl, align 4, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 332
  store float %i.dk, ptr %i.dm, align 4, !tbaa !10
  %i.dn = load float, ptr %i.dj, align 4, !tbaa !10 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 360
  store float %i.dn, ptr %i.do, align 4, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 364
  store float %i.dn, ptr %i.dp, align 4, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 272
  store float %i.dr, ptr %i.ds, align 4, !tbaa !10
  store float %i.dr, ptr %10, align 4, !tbaa !10
  %i.dt = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 276
  store float %i.dt, ptr %i.du, align 4, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 388
  store float %i.dt, ptr %i.dv, align 4, !tbaa !10
  %i.dw = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 280
  store float %i.dw, ptr %i.dx, align 4, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 392
  store float %i.dw, ptr %i.dy, align 4, !tbaa !10
  %i.dz = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 284
  store float %i.dz, ptr %i.ea, align 4, !tbaa !10
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 396
  store float %i.dz, ptr %i.eb, align 4, !tbaa !10
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ec = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 304
  store float %i.ec, ptr %i.ed, align 4, !tbaa !10
  store float %i.ec, ptr %11, align 4, !tbaa !10
  %i.ee = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 308
  store float %i.ee, ptr %i.ef, align 4, !tbaa !10
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 420
  store float %i.ee, ptr %i.eg, align 4, !tbaa !10
  %i.eh = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 312
  store float %i.eh, ptr %i.ei, align 4, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 424
  store float %i.eh, ptr %i.ej, align 4, !tbaa !10
  %i.ek = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 316
  store float %i.ek, ptr %i.el, align 4, !tbaa !10
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 428
  store float %i.ek, ptr %i.em, align 4, !tbaa !10
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.en = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 336
  store float %i.en, ptr %i.eo, align 4, !tbaa !10
  store float %i.en, ptr %12, align 4, !tbaa !10
  %i.ep = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 340
  store float %i.ep, ptr %i.eq, align 4, !tbaa !10
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 452
  store float %i.ep, ptr %i.er, align 4, !tbaa !10
  %i.es = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 344
  store float %i.es, ptr %i.et, align 4, !tbaa !10
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 456
  store float %i.es, ptr %i.eu, align 4, !tbaa !10
  %i.ev = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 348
  store float %i.ev, ptr %i.ew, align 4, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 460
  store float %i.ev, ptr %i.ex, align 4, !tbaa !10
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ey = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 368
  store float %i.ey, ptr %i.ez, align 4, !tbaa !10
  store float %i.ey, ptr %13, align 4, !tbaa !10
  %i.fa = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 372
  store float %i.fa, ptr %i.fb, align 4, !tbaa !10
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 484
  store float %i.fa, ptr %i.fc, align 4, !tbaa !10
  %i.fd = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 376
  store float %i.fd, ptr %i.fe, align 4, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 488
  store float %i.fd, ptr %i.ff, align 4, !tbaa !10
  %i.fg = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 380
  store float %i.fg, ptr %i.fh, align 4, !tbaa !10
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 492
  store float %i.fg, ptr %i.fi, align 4, !tbaa !10
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 400
  store float %i.fk, ptr %i.fl, align 4, !tbaa !10
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 404
  store float %i.fk, ptr %i.fm, align 4, !tbaa !10
  %i.fn = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 408
  store float %i.fn, ptr %i.fo, align 4, !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 412
  store float %i.fn, ptr %i.fp, align 4, !tbaa !10
  %i.fq = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 432
  store float %i.fq, ptr %i.fr, align 4, !tbaa !10
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 436
  store float %i.fq, ptr %i.fs, align 4, !tbaa !10
  %i.ft = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 440
  store float %i.ft, ptr %i.fu, align 4, !tbaa !10
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 444
  store float %i.ft, ptr %i.fv, align 4, !tbaa !10
  %i.fw = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 464
  store float %i.fw, ptr %i.fx, align 4, !tbaa !10
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 468
  store float %i.fw, ptr %i.fy, align 4, !tbaa !10
  %i.fz = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 472
  store float %i.fz, ptr %i.ga, align 4, !tbaa !10
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 476
  store float %i.fz, ptr %i.gb, align 4, !tbaa !10
  %i.gc = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 496
  store float %i.gc, ptr %i.gd, align 4, !tbaa !10
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 500
  store float %i.gc, ptr %i.ge, align 4, !tbaa !10
  %i.gf = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 504
  store float %i.gf, ptr %i.gg, align 4, !tbaa !10
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 508
  store float %i.gf, ptr %i.gh, align 4, !tbaa !10
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 512
  store float 2.989000e+03, ptr %i.gi, align 4, !tbaa !10
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !10 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 544
  store float %i.gk, ptr %i.gl, align 4, !tbaa !10
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 516
  store float %i.gk, ptr %i.gm, align 4, !tbaa !10
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.go = load float, ptr %i.gn, align 4, !tbaa !10
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 548
  store float %i.go, ptr %i.gp, align 4, !tbaa !10
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !10 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 520
  store float %i.gr, ptr %i.gs, align 4, !tbaa !10
  store float %i.gr, ptr %14, align 4, !tbaa !10
  %i.gt = load float, ptr %i.gq, align 4, !tbaa !10 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 524
  store float %i.gt, ptr %i.gu, align 4, !tbaa !10
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 580
  store float %i.gt, ptr %i.gv, align 4, !tbaa !10
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.gw = load float, ptr %i.gq, align 4, !tbaa !10 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 552
  store float %i.gw, ptr %i.gx, align 4, !tbaa !10
  store float %i.gw, ptr %15, align 4, !tbaa !10
  %i.gy = load float, ptr %i.gq, align 4, !tbaa !10 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 556
  store float %i.gy, ptr %i.gz, align 4, !tbaa !10
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 612
  store float %i.gy, ptr %i.ha, align 4, !tbaa !10
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !10 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 584
  store float %i.hc, ptr %i.hd, align 4, !tbaa !10
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 588
  store float %i.hc, ptr %i.he, align 4, !tbaa !10
  %i.hf = load float, ptr %i.hb, align 4, !tbaa !10 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 616
  store float %i.hf, ptr %i.hg, align 4, !tbaa !10
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 620
  store float %i.hf, ptr %i.hh, align 4, !tbaa !10
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 16 uses
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 528
  store float %i.hj, ptr %i.hk, align 4, !tbaa !10
  store float %i.hj, ptr %16, align 4, !tbaa !10
  %i.hl = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 532
  store float %i.hl, ptr %i.hm, align 4, !tbaa !10
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 644
  store float %i.hl, ptr %i.hn, align 4, !tbaa !10
  %i.ho = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 536
  store float %i.ho, ptr %i.hp, align 4, !tbaa !10
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 648
  store float %i.ho, ptr %i.hq, align 4, !tbaa !10
  %i.hr = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 540
  store float %i.hr, ptr %i.hs, align 4, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 652
  store float %i.hr, ptr %i.ht, align 4, !tbaa !10
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.hu = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 560
  store float %i.hu, ptr %i.hv, align 4, !tbaa !10
  store float %i.hu, ptr %17, align 4, !tbaa !10
  %i.hw = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 564
  store float %i.hw, ptr %i.hx, align 4, !tbaa !10
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 676
  store float %i.hw, ptr %i.hy, align 4, !tbaa !10
  %i.hz = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 568
  store float %i.hz, ptr %i.ia, align 4, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 680
  store float %i.hz, ptr %i.ib, align 4, !tbaa !10
  %i.ic = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 572
  store float %i.ic, ptr %i.id, align 4, !tbaa !10
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 684
  store float %i.ic, ptr %i.ie, align 4, !tbaa !10
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.if = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 592
  store float %i.if, ptr %i.ig, align 4, !tbaa !10
  store float %i.if, ptr %18, align 4, !tbaa !10
  %i.ih = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 596
  store float %i.ih, ptr %i.ii, align 4, !tbaa !10
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 708
  store float %i.ih, ptr %i.ij, align 4, !tbaa !10
  %i.ik = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 600
  store float %i.ik, ptr %i.il, align 4, !tbaa !10
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 712
  store float %i.ik, ptr %i.im, align 4, !tbaa !10
  %i.in = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 604
  store float %i.in, ptr %i.io, align 4, !tbaa !10
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 716
  store float %i.in, ptr %i.ip, align 4, !tbaa !10
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.iq = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 624
  store float %i.iq, ptr %i.ir, align 4, !tbaa !10
  store float %i.iq, ptr %19, align 4, !tbaa !10
  %i.is = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 628
  store float %i.is, ptr %i.it, align 4, !tbaa !10
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 740
  store float %i.is, ptr %i.iu, align 4, !tbaa !10
  %i.iv = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 632
  store float %i.iv, ptr %i.iw, align 4, !tbaa !10
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 744
  store float %i.iv, ptr %i.ix, align 4, !tbaa !10
  %i.iy = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 636
  store float %i.iy, ptr %i.iz, align 4, !tbaa !10
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 748
  store float %i.iy, ptr %i.ja, align 4, !tbaa !10
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 8 uses
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 656
  store float %i.jc, ptr %i.jd, align 4, !tbaa !10
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 660
  store float %i.jc, ptr %i.je, align 4, !tbaa !10
  %i.jf = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 664
  store float %i.jf, ptr %i.jg, align 4, !tbaa !10
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 668
  store float %i.jf, ptr %i.jh, align 4, !tbaa !10
  %i.ji = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 688
  store float %i.ji, ptr %i.jj, align 4, !tbaa !10
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 692
  store float %i.ji, ptr %i.jk, align 4, !tbaa !10
  %i.jl = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 696
  store float %i.jl, ptr %i.jm, align 4, !tbaa !10
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 700
  store float %i.jl, ptr %i.jn, align 4, !tbaa !10
  %i.jo = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 720
  store float %i.jo, ptr %i.jp, align 4, !tbaa !10
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 724
  store float %i.jo, ptr %i.jq, align 4, !tbaa !10
  %i.jr = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 728
  store float %i.jr, ptr %i.js, align 4, !tbaa !10
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 732
  store float %i.jr, ptr %i.jt, align 4, !tbaa !10
  %i.ju = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 752
  store float %i.ju, ptr %i.jv, align 4, !tbaa !10
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 756
  store float %i.ju, ptr %i.jw, align 4, !tbaa !10
  %i.jx = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 760
  store float %i.jx, ptr %i.jy, align 4, !tbaa !10
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 764
  store float %i.jx, ptr %i.jz, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN3jxl6N_SSE423GetQuantWeightsIdentityERKNSt3__15arrayINS2_IfLm3EEELm3EEEPf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
.preheader:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  store float %i.a, ptr %1, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store float %i.a, ptr %i.b, align 4, !tbaa !10
  %i.c = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.c, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.c, ptr %i.e, align 4, !tbaa !10
  %i.f = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.f, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.f, ptr %i.h, align 4, !tbaa !10
  %i.i = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.i, ptr %i.j, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.i, ptr %i.k, align 4, !tbaa !10
  %i.l = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store float %i.l, ptr %i.m, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  store float %i.l, ptr %i.n, align 4, !tbaa !10
  %i.o = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.o, ptr %i.p, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.o, ptr %i.q, align 4, !tbaa !10
  %i.r = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.r, ptr %i.s, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.r, ptr %i.t, align 4, !tbaa !10
  %i.u = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.u, ptr %i.v, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %i.u, ptr %i.w, align 4, !tbaa !10
  %i.x = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  store float %i.x, ptr %i.y, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.x, ptr %i.z, align 4, !tbaa !10
  %i.aa = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float %i.aa, ptr %i.ab, align 4, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.aa, ptr %i.ac, align 4, !tbaa !10
  %i.ad = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.ad, ptr %i.ae, align 4, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.ad, ptr %i.af, align 4, !tbaa !10
  %i.ag = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.ag, ptr %i.ah, align 4, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.ag, ptr %i.ai, align 4, !tbaa !10
  %i.aj = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96
  store float %i.aj, ptr %i.ak, align 4, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 100
  store float %i.aj, ptr %i.al, align 4, !tbaa !10
  %i.am = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  store float %i.am, ptr %i.an, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float %i.am, ptr %i.ao, align 4, !tbaa !10
  %i.ap = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float %i.ap, ptr %i.aq, align 4, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.ap, ptr %i.ar, align 4, !tbaa !10
  %i.as = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %i.as, ptr %i.at, align 4, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float %i.as, ptr %i.au, align 4, !tbaa !10
  %i.av = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 128
  store float %i.av, ptr %i.aw, align 4, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 132
  store float %i.av, ptr %i.ax, align 4, !tbaa !10
  %i.ay = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 136
  store float %i.ay, ptr %i.az, align 4, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 140
  store float %i.ay, ptr %i.ba, align 4, !tbaa !10
  %i.bb = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 144
  store float %i.bb, ptr %i.bc, align 4, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 148
  store float %i.bb, ptr %i.bd, align 4, !tbaa !10
  %i.be = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 152
  store float %i.be, ptr %i.bf, align 4, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 156
  store float %i.be, ptr %i.bg, align 4, !tbaa !10
  %i.bh = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 160
  store float %i.bh, ptr %i.bi, align 4, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 164
  store float %i.bh, ptr %i.bj, align 4, !tbaa !10
  %i.bk = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 168
  store float %i.bk, ptr %i.bl, align 4, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 172
  store float %i.bk, ptr %i.bm, align 4, !tbaa !10
  %i.bn = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 176
  store float %i.bn, ptr %i.bo, align 4, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 180
  store float %i.bn, ptr %i.bp, align 4, !tbaa !10
  %i.bq = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 184
  store float %i.bq, ptr %i.br, align 4, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 188
  store float %i.bq, ptr %i.bs, align 4, !tbaa !10
  %i.bt = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 192
  store float %i.bt, ptr %i.bu, align 4, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 196
  store float %i.bt, ptr %i.bv, align 4, !tbaa !10
  %i.bw = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 200
  store float %i.bw, ptr %i.bx, align 4, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 204
  store float %i.bw, ptr %i.by, align 4, !tbaa !10
  %i.bz = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 208
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_SSE417ComputeQuantTableERKNS_13QuantEncodingEPfS4_mNS_10QuantTableEPm:bb.a
  %i.ps = shufflevector <2 x float> %i.pr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pt = fmul <2 x float> %i.ps, <float f0x3F3E11C7, float f0x3E32458C>
  %i.pu = fadd <2 x float> %i.pt, <float f0x3FB6E02B, float f0x3F813CED>
  %i.pv = fmul <2 x float> %i.ps, %i.pu
  %i.pw = fadd <2 x float> %i.pv, <float f0xB5F85AB0, float f0x3F7D8625> ; 2 uses
  %shift481 = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop482 = fdiv <2 x float> %i.pw, %shift481
  %i.px = shufflevector <2 x float> %foldExtExtBinop482, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.py = shufflevector <4 x float> %i.px, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.pz = fadd <4 x float> %i.py, %i.po           ; 2 uses
  %i.qa = extractelement <4 x float> %i.pz, i64 0
  %i.qb = fmul float %i.pf, %i.qa                 ; 2 uses
  %i.qc = insertelement <4 x float> %i.pz, float %i.qb, i64 0
  %i.qd = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.qc) ; 3 uses
  %i.qe = fcmp oge <4 x float> %i.qd, splat (float f0x4F000000)
  %i.qf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.qd)
  %i.qg = shl <4 x i32> %i.qf, splat (i32 23)
  %i.qh = add <4 x i32> %i.qg, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.qi = bitcast <4 x i32> %i.qh to <4 x float>
  %i.qj = select <4 x i1> %i.qe, <4 x float> <float 5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.qi
  %i.qk = extractelement <4 x float> %i.qd, i64 0
  %i.ql = fsub float %i.qb, %i.qk                 ; 2 uses
  %i.qm = extractelement <4 x float> %i.qj, i64 0
  %i.qn = fmul float %i.ql, f0x3E5749EE
  %i.qo = insertelement <2 x float> poison, float %i.ql, i64 0 ; 2 uses
  %i.qp = insertelement <2 x float> %i.qo, float %i.qn, i64 1
  %i.qq = fadd <2 x float> %i.qp, <float f0x4122CC6B, float f0xBCB621BE>
  %i.qr = shufflevector <2 x float> %i.qo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qs = fmul <2 x float> %i.qr, %i.qq
  %i.qt = fadd <2 x float> %i.qs, <float f0x424379A1, float -1.944150e+01>
  %i.qu = fmul <2 x float> %i.qr, %i.qt
  %i.qv = fadd <2 x float> %i.qu, <float f0x42C519F0, float f0x42C519F1> ; 2 uses
  %i.qw = extractelement <2 x float> %i.qv, i64 0
  %i.qx = fmul float %i.qm, %i.qw
  %i.qy = extractelement <2 x float> %i.qv, i64 1
  %i.qz = fdiv float %i.qx, %i.qy
  %i.ra = fmul float %i.pa, %i.qz
  %.val261.val.1 = load ptr, ptr %6, align 8, !tbaa !22
  %i.rb = getelementptr [4 x i8], ptr %.val261.val.1, i64 %i.lq
  %i.rc = getelementptr i8, ptr %i.rb, i64 %i.mf
  %i.rd = getelementptr i8, ptr %i.rc, i64 8
  store float %i.ra, ptr %i.rd, align 4, !tbaa !10
  br label %.thread474

.thread474:                                       ; preds = %.preheader366, %_ZN3jxl6N_SSE411InterpolateEffPKfm.exit.thread322.1
  %i.re = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.rf = load float, ptr %i.re, align 8, !tbaa !10
  %i.rg = fadd float %i.rf, f0xBF5A0E1E
  %i.rh = fmul float %i.rg, 3.000000e+00
  %i.ri = fdiv float %i.rh, f0x4141EB0C           ; 2 uses
  %i.rj = fptoui float %i.ri to i64               ; 3 uses
  %i.rk = add i64 %i.rj, 1                        ; 2 uses
  %i.rl = icmp ult i64 %i.rk, 4
  br i1 %i.rl, label %bb.u, label %.thread337

bb.u:                                             ; preds = %.thread474
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.rj
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !10, !noalias !93 ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.rk
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !10, !noalias !93
  %i.rq = fdiv float %i.rp, %i.rn
  %i.rr = uitofp i64 %i.rj to float
  %i.rs = fsub float %i.ri, %i.rr
  %i.rt = insertelement <4 x float> poison, float %i.rq, i64 0
  %i.ru = bitcast <4 x float> %i.rt to <4 x i32>
  %i.rv = shufflevector <4 x i32> %i.ru, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rw = add <4 x i32> %i.rv, splat (i32 -1059760811) ; 2 uses
  %i.rx = ashr <4 x i32> %i.rw, splat (i32 23)
  %i.ry = and <4 x i32> %i.rw, <i32 -8388608, i32 poison, i32 poison, i32 poison>
  %i.rz = sub <4 x i32> %i.rv, %i.ry
  %i.sa = bitcast <4 x i32> %i.rz to <4 x float>
  %i.sb = sitofp <4 x i32> %i.rx to <4 x float>
  fence acq_rel
  %i.sc = extractelement <4 x float> %i.sa, i64 0
  %i.sd = fadd float %i.sc, -1.000000e+00
  fence acq_rel
  %i.se = insertelement <2 x float> poison, float %i.sd, i64 0
  %i.sf = shufflevector <2 x float> %i.se, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sg = fmul <2 x float> %i.sf, <float f0x3F3E11C7, float f0x3E32458C>
  %i.sh = fadd <2 x float> %i.sg, <float f0x3FB6E02B, float f0x3F813CED>
  %i.si = fmul <2 x float> %i.sf, %i.sh
  %i.sj = fadd <2 x float> %i.si, <float f0xB5F85AB0, float f0x3F7D8625> ; 2 uses
  %shift484 = shufflevector <2 x float> %i.sj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop485 = fdiv <2 x float> %i.sj, %shift484
  %i.sk = shufflevector <2 x float> %foldExtExtBinop485, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.sl = shufflevector <4 x float> %i.sk, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.sm = fadd <4 x float> %i.sl, %i.sb           ; 2 uses
  %i.sn = extractelement <4 x float> %i.sm, i64 0
  %i.so = fmul float %i.rs, %i.sn                 ; 2 uses
  %i.sp = insertelement <4 x float> %i.sm, float %i.so, i64 0
  %i.sq = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.sp) ; 3 uses
  %i.sr = fcmp oge <4 x float> %i.sq, splat (float f0x4F000000)
  %i.ss = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.sq)
  %i.st = shl <4 x i32> %i.ss, splat (i32 23)
  %i.su = add <4 x i32> %i.st, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.sv = bitcast <4 x i32> %i.su to <4 x float>
  %i.sw = select <4 x i1> %i.sr, <4 x float> <float 5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.sv
  %i.sx = extractelement <4 x float> %i.sq, i64 0
  %i.sy = fsub float %i.so, %i.sx                 ; 2 uses
  %i.sz = extractelement <4 x float> %i.sw, i64 0
  %i.ta = fmul float %i.sy, f0x3E5749EE
  %i.tb = insertelement <2 x float> poison, float %i.sy, i64 0 ; 2 uses
  %i.tc = insertelement <2 x float> %i.tb, float %i.ta, i64 1
  %i.td = fadd <2 x float> %i.tc, <float f0x4122CC6B, float f0xBCB621BE>
  %i.te = shufflevector <2 x float> %i.tb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tf = fmul <2 x float> %i.te, %i.td
  %i.tg = fadd <2 x float> %i.tf, <float f0x424379A1, float -1.944150e+01>
  %i.th = fmul <2 x float> %i.te, %i.tg
  %i.ti = fadd <2 x float> %i.th, <float f0x42C519F0, float f0x42C519F1> ; 2 uses
  %i.tj = extractelement <2 x float> %i.ti, i64 0
  %i.tk = fmul float %i.sz, %i.tj
  %i.tl = extractelement <2 x float> %i.ti, i64 1
  %i.tm = fdiv float %i.tk, %i.tl
  %i.tn = fmul float %i.rn, %i.tm
  %.val261.val.2 = load ptr, ptr %6, align 8, !tbaa !22
  %i.to = getelementptr [4 x i8], ptr %.val261.val.2, i64 %i.lq
  %i.tp = getelementptr i8, ptr %i.to, i64 %i.mf
  %i.tq = getelementptr i8, ptr %i.tp, i64 16
  store float %i.tn, ptr %i.tq, align 4, !tbaa !10
  %i.tr = getelementptr inbounds nuw i8, ptr %i.me, i64 12
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !10
  %i.tt = fadd float %i.ts, f0xBF5A0E1E
  %i.tu = fmul float %i.tt, 3.000000e+00
  %i.tv = fdiv float %i.tu, f0x4141EB0C           ; 2 uses
  %i.tw = fptoui float %i.tv to i64               ; 3 uses
  %i.tx = add i64 %i.tw, 1                        ; 2 uses
  %i.ty = icmp ult i64 %i.tx, 4
  br i1 %i.ty, label %bb.v, label %.thread337

bb.v:                                             ; preds = %bb.u
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.tw
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !10, !noalias !93 ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.tx
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !10, !noalias !93
  %i.ud = fdiv float %i.uc, %i.ua
  %i.ue = uitofp i64 %i.tw to float
  %i.uf = fsub float %i.tv, %i.ue
  %i.ug = insertelement <4 x float> poison, float %i.ud, i64 0
  %i.uh = bitcast <4 x float> %i.ug to <4 x i32>
  %i.ui = shufflevector <4 x i32> %i.uh, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.uj = add <4 x i32> %i.ui, splat (i32 -1059760811) ; 2 uses
  %i.uk = ashr <4 x i32> %i.uj, splat (i32 23)
  %i.ul = and <4 x i32> %i.uj, <i32 -8388608, i32 poison, i32 poison, i32 poison>
  %i.um = sub <4 x i32> %i.ui, %i.ul
  %i.un = bitcast <4 x i32> %i.um to <4 x float>
  %i.uo = sitofp <4 x i32> %i.uk to <4 x float>
  fence acq_rel
  %i.up = extractelement <4 x float> %i.un, i64 0
  %i.uq = fadd float %i.up, -1.000000e+00
  fence acq_rel
  %i.ur = insertelement <2 x float> poison, float %i.uq, i64 0
  %i.us = shufflevector <2 x float> %i.ur, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ut = fmul <2 x float> %i.us, <float f0x3F3E11C7, float f0x3E32458C>
  %i.uu = fadd <2 x float> %i.ut, <float f0x3FB6E02B, float f0x3F813CED>
  %i.uv = fmul <2 x float> %i.us, %i.uu
  %i.uw = fadd <2 x float> %i.uv, <float f0xB5F85AB0, float f0x3F7D8625> ; 2 uses
  %shift487 = shufflevector <2 x float> %i.uw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop488 = fdiv <2 x float> %i.uw, %shift487
  %i.ux = shufflevector <2 x float> %foldExtExtBinop488, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.uy = shufflevector <4 x float> %i.ux, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.uz = fadd <4 x float> %i.uy, %i.uo           ; 2 uses
  %i.va = extractelement <4 x float> %i.uz, i64 0
  %i.vb = fmul float %i.uf, %i.va                 ; 2 uses
  %i.vc = insertelement <4 x float> %i.uz, float %i.vb, i64 0
  %i.vd = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.vc) ; 3 uses
  %i.ve = fcmp oge <4 x float> %i.vd, splat (float f0x4F000000)
  %i.vf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.vd)
  %i.vg = shl <4 x i32> %i.vf, splat (i32 23)
  %i.vh = add <4 x i32> %i.vg, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.vi = bitcast <4 x i32> %i.vh to <4 x float>
  %i.vj = select <4 x i1> %i.ve, <4 x float> <float 5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.vi
  %i.vk = extractelement <4 x float> %i.vd, i64 0
  %i.vl = fsub float %i.vb, %i.vk                 ; 2 uses
  %i.vm = extractelement <4 x float> %i.vj, i64 0
  %i.vn = fmul float %i.vl, f0x3E5749EE
  %i.vo = insertelement <2 x float> poison, float %i.vl, i64 0 ; 2 uses
  %i.vp = insertelement <2 x float> %i.vo, float %i.vn, i64 1
  %i.vq = fadd <2 x float> %i.vp, <float f0x4122CC6B, float f0xBCB621BE>
  %i.vr = shufflevector <2 x float> %i.vo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vs = fmul <2 x float> %i.vr, %i.vq
  %i.vt = fadd <2 x float> %i.vs, <float f0x424379A1, float -1.944150e+01>
  %i.vu = fmul <2 x float> %i.vr, %i.vt
  %i.vv = fadd <2 x float> %i.vu, <float f0x42C519F0, float f0x42C519F1> ; 2 uses
  %i.vw = extractelement <2 x float> %i.vv, i64 0
  %i.vx = fmul float %i.vm, %i.vw
  %i.vy = extractelement <2 x float> %i.vv, i64 1
  %i.vz = fdiv float %i.vx, %i.vy
  %i.wa = fmul float %i.ua, %i.vz
  %.val261.val.3 = load ptr, ptr %6, align 8, !tbaa !22
  %i.wb = getelementptr [4 x i8], ptr %.val261.val.3, i64 %i.lq
  %i.wc = getelementptr i8, ptr %i.wb, i64 %i.mf
  %i.wd = getelementptr i8, ptr %i.wc, i64 24
  store float %i.wa, ptr %i.wd, align 4, !tbaa !10
  %i.we = add nuw nsw i64 %.0240374, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.we, 4
  br i1 %exitcond.not, label %bb.w, label %.preheader366, !llvm.loop !86

bb.w:                                             ; preds = %bb.v
  %.idx250 = shl nuw nsw i64 %.0242379, 7
  %i.wf = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx250 ; 15 uses
  %i.wg = mul i64 %.0242379, %i.n
  %i.wh = load ptr, ptr %6, align 8               ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %i.wg ; 24 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 36
  %i.wl = load <4 x float>, ptr %i.wj, align 4, !tbaa !10
  store <4 x float> %i.wl, ptr %i.wk, align 4, !tbaa !10
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wf, i64 20
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wi, i64 52
  %i.wo = load <2 x float>, ptr %i.wm, align 4, !tbaa !10
  store <2 x float> %i.wo, ptr %i.wn, align 4, !tbaa !10
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wf, i64 28
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !10
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wi, i64 60
  store float %i.wq, ptr %i.wr, align 4, !tbaa !10
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wf, i64 32
  %i.wt = load float, ptr %i.ws, align 16, !tbaa !10
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wf, i64 36
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wf, i64 44
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wi, i64 108
  %i.wx = load <4 x float>, ptr %i.wv, align 4, !tbaa !10
  store <4 x float> %i.wx, ptr %i.ww, align 4, !tbaa !10
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wf, i64 60
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !10
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wi, i64 124
  store float %i.wz, ptr %i.xa, align 4, !tbaa !10
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wf, i64 64
  %i.xc = load float, ptr %i.xb, align 16, !tbaa !10
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wf, i64 68
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wf, i64 76
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wi, i64 172
  %i.xg = load <4 x float>, ptr %i.xe, align 4, !tbaa !10
  store <4 x float> %i.xg, ptr %i.xf, align 4, !tbaa !10
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wf, i64 92
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !10
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wi, i64 188
  store float %i.xi, ptr %i.xj, align 4, !tbaa !10
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wf, i64 96
  %i.xl = load float, ptr %i.xk, align 16, !tbaa !10
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wf, i64 100
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wf, i64 108
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wi, i64 236
  %i.xp = load <4 x float>, ptr %i.xn, align 4, !tbaa !10
  store <4 x float> %i.xp, ptr %i.xo, align 4, !tbaa !10
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wf, i64 124
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !10
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wi, i64 252
  store float %i.xr, ptr %i.xs, align 4, !tbaa !10
  %i.xt = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.lq ; 15 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 4
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !10
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wi, i64 12
  store float %i.xv, ptr %i.xw, align 4, !tbaa !10
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.xy = load float, ptr %i.xx, align 8, !tbaa !10
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wi, i64 20
  store float %i.xy, ptr %i.xz, align 4, !tbaa !10
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xt, i64 12
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !10
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wi, i64 28
  store float %i.yb, ptr %i.yc, align 4, !tbaa !10
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.ye = load float, ptr %i.yd, align 16, !tbaa !10
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wi, i64 68
  store float %i.ye, ptr %i.yf, align 4, !tbaa !10
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xt, i64 20
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !10
  %i.yi = getelementptr inbounds nuw i8, ptr %i.wi, i64 76
  store float %i.yh, ptr %i.yi, align 4, !tbaa !10
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.yk = load float, ptr %i.yj, align 8, !tbaa !10
  %i.yl = getelementptr inbounds nuw i8, ptr %i.wi, i64 84
  store float %i.yk, ptr %i.yl, align 4, !tbaa !10
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xt, i64 28
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !10
  %i.yo = getelementptr inbounds nuw i8, ptr %i.wi, i64 92
  %i.yp = load <2 x float>, ptr %i.wu, align 4, !tbaa !10
  %i.yq = insertelement <4 x float> poison, float %i.yn, i64 0
  %i.yr = insertelement <4 x float> %i.yq, float %i.wt, i64 1
  %i.ys = shufflevector <2 x float> %i.yp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.yt = shufflevector <4 x float> %i.yr, <4 x float> %i.ys, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x float> %i.yt, ptr %i.yo, align 4, !tbaa !10
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  %i.yv = load float, ptr %i.yu, align 16, !tbaa !10
  %i.yw = getelementptr inbounds nuw i8, ptr %i.wi, i64 132
  store float %i.yv, ptr %i.yw, align 4, !tbaa !10
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xt, i64 36
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !10
  %i.yz = getelementptr inbounds nuw i8, ptr %i.wi, i64 140
  store float %i.yy, ptr %i.yz, align 4, !tbaa !10
  %i.za = getelementptr inbounds nuw i8, ptr %i.xt, i64 40
  %i.zb = load float, ptr %i.za, align 8, !tbaa !10
  %i.zc = getelementptr inbounds nuw i8, ptr %i.wi, i64 148
  store float %i.zb, ptr %i.zc, align 4, !tbaa !10
  %i.zd = getelementptr inbounds nuw i8, ptr %i.xt, i64 44
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !10
  %i.zf = getelementptr inbounds nuw i8, ptr %i.wi, i64 156
  %i.zg = load <2 x float>, ptr %i.xd, align 4, !tbaa !10
  %i.zh = insertelement <4 x float> poison, float %i.ze, i64 0
  %i.zi = insertelement <4 x float> %i.zh, float %i.xc, i64 1
  %i.zj = shufflevector <2 x float> %i.zg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zk = shufflevector <4 x float> %i.zi, <4 x float> %i.zj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x float> %i.zk, ptr %i.zf, align 4, !tbaa !10
  %i.zl = getelementptr inbounds nuw i8, ptr %i.xt, i64 48
  %i.zm = load float, ptr %i.zl, align 16, !tbaa !10
  %i.zn = getelementptr inbounds nuw i8, ptr %i.wi, i64 196
  store float %i.zm, ptr %i.zn, align 4, !tbaa !10
  %i.zo = getelementptr inbounds nuw i8, ptr %i.xt, i64 52
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !10
  %i.zq = getelementptr inbounds nuw i8, ptr %i.wi, i64 204
  store float %i.zp, ptr %i.zq, align 4, !tbaa !10
  %i.zr = getelementptr inbounds nuw i8, ptr %i.xt, i64 56
  %i.zs = load float, ptr %i.zr, align 8, !tbaa !10
  %i.zt = getelementptr inbounds nuw i8, ptr %i.wi, i64 212
  store float %i.zs, ptr %i.zt, align 4, !tbaa !10
  %i.zu = getelementptr inbounds nuw i8, ptr %i.xt, i64 60
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !10
  %i.zw = getelementptr inbounds nuw i8, ptr %i.wi, i64 220
  %i.zx = load <2 x float>, ptr %i.xm, align 4, !tbaa !10
  %i.zy = insertelement <4 x float> poison, float %i.zv, i64 0
  %i.zz = insertelement <4 x float> %i.zy, float %i.xl, i64 1
  %i.aaa = shufflevector <2 x float> %i.zx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aab = shufflevector <4 x float> %i.zz, <4 x float> %i.aaa, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x float> %i.aab, ptr %i.zw, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.aac = add nuw nsw i64 %.0242379, 1           ; 2 uses
  %exitcond414.not = icmp eq i64 %i.aac, 3
  br i1 %exitcond414.not, label %bb.x, label %bb.q, !llvm.loop !87

.thread337:                                       ; preds = %bb.q, %.preheader368.preheader, %.preheader368.1, %.preheader368.2, %bb.s, %bb.t, %.thread474, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.thread340

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.loopexit

.loopexit.thread:                                 ; preds = %vector.body, %.preheader358, %.preheader362, %bb.g, %bb.e
  %i.aad = load i64, ptr %5, align 8, !tbaa !38
  br label %.lr.ph389

.loopexit:                                        ; preds = %bb.x, %bb.l, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.aae = load i64, ptr %5, align 8, !tbaa !38   ; 2 uses
  br i1 %.not.i, label %.critedge258, label %.lr.ph389

.lr.ph389:                                        ; preds = %.loopexit.thread, %.loopexit
  %i.aaf = phi i64 [ %i.aad, %.loopexit.thread ], [ %i.aae, %.loopexit ] ; 3 uses
  %i.aag = load ptr, ptr %6, align 8, !tbaa !22
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aaf
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aaf
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph389, %bb.z
  %.0233388 = phi i64 [ 0, %.lr.ph389 ], [ %i.aas, %bb.z ] ; 4 uses
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %.0233388
  %i.aak = load <4 x float>, ptr %i.aaj, align 1, !tbaa !15 ; 4 uses
  %i.aal = fcmp oge <4 x float> %i.aak, splat (float 1.000000e+08)
  %i.aam = fcmp olt <4 x float> %i.aak, splat (float f0x322BCC77)
  %i.aan = or <4 x i1> %i.aal, %i.aam
  %i.aao = bitcast <4 x i1> %i.aan to i4
  %or.cond354 = icmp eq i4 %i.aao, 0
  br i1 %or.cond354, label %bb.z, label %.thread340, !prof !42

bb.z:                                             ; preds = %bb.y
  %i.aap = fdiv <4 x float> splat (float 1.000000e+00), %i.aak
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %.0233388
  store <4 x float> %i.aap, ptr %i.aaq, align 1, !tbaa !15
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %.0233388
  store <4 x float> %i.aak, ptr %i.aar, align 1, !tbaa !15
  %i.aas = add nuw i64 %.0233388, 4               ; 2 uses
  %.not255 = icmp ult i64 %i.aas, %i.o
  br i1 %.not255, label %bb.y, label %.critedge258, !llvm.loop !88

.critedge258:                                     ; preds = %bb.z, %.loopexit.thread475, %.loopexit
  %i.aat = phi i64 [ %i.jn, %.loopexit.thread475 ], [ %i.aae, %.loopexit ], [ %i.aaf, %bb.z ] ; 2 uses
  %i.aau = add i64 %i.aat, %i.o
  store i64 %i.aau, ptr %5, align 8, !tbaa !38
  %i.aav = sext i32 %i.g to i64                   ; 3 uses
  %i.aaw = sext i32 %i.k to i64                   ; 3 uses
  %i.aax = tail call noundef i64 @llvm.umin.i64(i64 %i.aaw, i64 %i.aav) ; 8 uses
  %i.aay = tail call noundef i64 @llvm.umax.i64(i64 %i.aaw, i64 %i.aav) ; 3 uses
  %factor.op.mul396 = shl nsw i64 %i.aay, 3       ; 27 uses
  %factor.op.mul399 = shl nsw i64 %i.aav, 8
  %.not405 = icmp eq i64 %i.aax, 0
  %factor.op.mul = mul i64 %factor.op.mul399, %i.aaw ; 2 uses
  %.not406 = icmp eq i64 %i.aay, 0
  %i.aaz = getelementptr [4 x i8], ptr %2, i64 %i.aat ; 11 uses
  %brmerge = or i1 %.not405, %.not406
  br i1 %brmerge, label %.thread340, label %.preheader355.preheader

.preheader355.preheader:                          ; preds = %.critedge258
  %i.aba = shl nuw nsw i64 %i.aay, 2              ; 27 uses
  %i.abb = add nsw i64 %i.aax, -1                 ; 3 uses
  %xtraiter = and i64 %i.aax, 7                   ; 3 uses
  %i.abc = icmp ult i64 %i.abb, 7
  br i1 %i.abc, label %.preheader.epil.preheader, label %.preheader355.preheader.new

.preheader355.preheader.new:                      ; preds = %.preheader355.preheader
  %unroll_iter = and i64 %i.aax, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader355.preheader.new
  %.0224397 = phi i64 [ 0, %.preheader355.preheader.new ], [ %i.abs, %.preheader ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader355.preheader.new ], [ %niter.next.7, %.preheader ]
  %factor.op.mul.reass = mul i64 %factor.op.mul396, %.0224397
  %i.abd = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abd, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abe = or disjoint i64 %.0224397, 1
  %factor.op.mul.reass.1494 = mul i64 %factor.op.mul396, %i.abe
  %i.abf = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.1494
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abf, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abg = or disjoint i64 %.0224397, 2
  %factor.op.mul.reass.2497 = mul i64 %factor.op.mul396, %i.abg
  %i.abh = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.2497
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abh, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abi = or disjoint i64 %.0224397, 3
  %factor.op.mul.reass.3 = mul i64 %factor.op.mul396, %i.abi
  %i.abj = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abj, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abk = or disjoint i64 %.0224397, 4
  %factor.op.mul.reass.4 = mul i64 %factor.op.mul396, %i.abk
  %i.abl = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abl, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abm = or disjoint i64 %.0224397, 5
  %factor.op.mul.reass.5 = mul i64 %factor.op.mul396, %i.abm
  %i.abn = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abn, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abo = or disjoint i64 %.0224397, 6
  %factor.op.mul.reass.6 = mul i64 %factor.op.mul396, %i.abo
  %i.abp = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abp, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abq = or disjoint i64 %.0224397, 7
  %factor.op.mul.reass.7 = mul i64 %factor.op.mul396, %i.abq
  %i.abr = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abr, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abs = add nuw i64 %.0224397, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge398.unr-lcssa, label %.preheader, !llvm.loop !89

._crit_edge398.unr-lcssa:                         ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge398, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge398.unr-lcssa, %.preheader355.preheader
  %.0224397.epil.init = phi i64 [ 0, %.preheader355.preheader ], [ %i.abs, %._crit_edge398.unr-lcssa ]
  %lcmp.mod492 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod492)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.0224397.epil = phi i64 [ %.0224397.epil.init, %.preheader.epil.preheader ], [ %i.abu, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %factor.op.mul.reass.epil = mul i64 %factor.op.mul396, %.0224397.epil
  %i.abt = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abt, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abu = add nuw i64 %.0224397.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge398, label %.preheader.epil, !llvm.loop !90

._crit_edge398:                                   ; preds = %.preheader.epil, %._crit_edge398.unr-lcssa
  %i.abv = getelementptr i8, ptr %i.aaz, i64 %factor.op.mul ; 9 uses
  %xtraiter499 = and i64 %i.aax, 7                ; 3 uses
  %i.abw = icmp ult i64 %i.abb, 7
  br i1 %i.abw, label %.preheader.1.epil.preheader, label %._crit_edge398.new

._crit_edge398.new:                               ; preds = %._crit_edge398
  %unroll_iter503 = and i64 %i.aax, -8
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %._crit_edge398.new
  %.0224397.1 = phi i64 [ 0, %._crit_edge398.new ], [ %i.acm, %.preheader.1 ] ; 9 uses
  %niter504 = phi i64 [ 0, %._crit_edge398.new ], [ %niter504.next.7, %.preheader.1 ]
  %factor.op.mul.reass.1 = mul i64 %factor.op.mul396, %.0224397.1
  %i.abx = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abx, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.aby = or disjoint i64 %.0224397.1, 1
  %factor.op.mul.reass.1.1 = mul i64 %factor.op.mul396, %i.aby
  %i.abz = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abz, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.aca = or disjoint i64 %.0224397.1, 2
  %factor.op.mul.reass.1.2 = mul i64 %factor.op.mul396, %i.aca
  %i.acb = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acb, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acc = or disjoint i64 %.0224397.1, 3
  %factor.op.mul.reass.1.3 = mul i64 %factor.op.mul396, %i.acc
  %i.acd = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acd, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.ace = or disjoint i64 %.0224397.1, 4
  %factor.op.mul.reass.1.4 = mul i64 %factor.op.mul396, %i.ace
  %i.acf = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acf, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acg = or disjoint i64 %.0224397.1, 5
  %factor.op.mul.reass.1.5 = mul i64 %factor.op.mul396, %i.acg
  %i.ach = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ach, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.aci = or disjoint i64 %.0224397.1, 6
  %factor.op.mul.reass.1.6 = mul i64 %factor.op.mul396, %i.aci
  %i.acj = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acj, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.ack = or disjoint i64 %.0224397.1, 7
  %factor.op.mul.reass.1.7 = mul i64 %factor.op.mul396, %i.ack
  %i.acl = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acl, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acm = add nuw i64 %.0224397.1, 8             ; 2 uses
  %niter504.next.7 = add i64 %niter504, 8         ; 2 uses
  %niter504.ncmp.7 = icmp eq i64 %niter504.next.7, %unroll_iter503
  br i1 %niter504.ncmp.7, label %._crit_edge398.1.unr-lcssa, label %.preheader.1, !llvm.loop !89

._crit_edge398.1.unr-lcssa:                       ; preds = %.preheader.1
  %lcmp.mod501.not = icmp eq i64 %xtraiter499, 0
  br i1 %lcmp.mod501.not, label %._crit_edge398.1, label %.preheader.1.epil.preheader

.preheader.1.epil.preheader:                      ; preds = %._crit_edge398.1.unr-lcssa, %._crit_edge398
  %.0224397.1.epil.init = phi i64 [ 0, %._crit_edge398 ], [ %i.acm, %._crit_edge398.1.unr-lcssa ]
  %lcmp.mod502 = icmp ne i64 %xtraiter499, 0
  tail call void @llvm.assume(i1 %lcmp.mod502)
  br label %.preheader.1.epil

.preheader.1.epil:                                ; preds = %.preheader.1.epil, %.preheader.1.epil.preheader
  %.0224397.1.epil = phi i64 [ %.0224397.1.epil.init, %.preheader.1.epil.preheader ], [ %i.aco, %.preheader.1.epil ] ; 2 uses
  %epil.iter500 = phi i64 [ 0, %.preheader.1.epil.preheader ], [ %epil.iter500.next, %.preheader.1.epil ]
  %factor.op.mul.reass.1.epil = mul i64 %factor.op.mul396, %.0224397.1.epil
  %i.acn = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acn, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.aco = add nuw i64 %.0224397.1.epil, 1
  %epil.iter500.next = add i64 %epil.iter500, 1   ; 2 uses
  %epil.iter500.cmp.not = icmp eq i64 %epil.iter500.next, %xtraiter499
  br i1 %epil.iter500.cmp.not, label %._crit_edge398.1, label %.preheader.1.epil, !llvm.loop !91

._crit_edge398.1:                                 ; preds = %.preheader.1.epil, %._crit_edge398.1.unr-lcssa
  %factor.op.mul395.reass.reass.2 = shl i64 %factor.op.mul, 1
  %i.acp = getelementptr i8, ptr %i.aaz, i64 %factor.op.mul395.reass.reass.2 ; 9 uses
  %xtraiter505 = and i64 %i.aax, 7                ; 3 uses
  %i.acq = icmp ult i64 %i.abb, 7
  br i1 %i.acq, label %.preheader.2.epil.preheader, label %._crit_edge398.1.new

._crit_edge398.1.new:                             ; preds = %._crit_edge398.1
  %unroll_iter509 = and i64 %i.aax, -8
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %._crit_edge398.1.new
  %.0224397.2 = phi i64 [ 0, %._crit_edge398.1.new ], [ %i.adg, %.preheader.2 ] ; 9 uses
  %niter510 = phi i64 [ 0, %._crit_edge398.1.new ], [ %niter510.next.7, %.preheader.2 ]
  %factor.op.mul.reass.2 = mul i64 %factor.op.mul396, %.0224397.2
  %i.acr = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acr, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acs = or disjoint i64 %.0224397.2, 1
  %factor.op.mul.reass.2.1 = mul i64 %factor.op.mul396, %i.acs
  %i.act = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.act, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acu = or disjoint i64 %.0224397.2, 2
  %factor.op.mul.reass.2.2 = mul i64 %factor.op.mul396, %i.acu
  %i.acv = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acv, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acw = or disjoint i64 %.0224397.2, 3
  %factor.op.mul.reass.2.3 = mul i64 %factor.op.mul396, %i.acw
  %i.acx = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acx, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acy = or disjoint i64 %.0224397.2, 4
  %factor.op.mul.reass.2.4 = mul i64 %factor.op.mul396, %i.acy
  %i.acz = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acz, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.ada = or disjoint i64 %.0224397.2, 5
  %factor.op.mul.reass.2.5 = mul i64 %factor.op.mul396, %i.ada
  %i.adb = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.adb, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.adc = or disjoint i64 %.0224397.2, 6
  %factor.op.mul.reass.2.6 = mul i64 %factor.op.mul396, %i.adc
  %i.add = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.add, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.ade = or disjoint i64 %.0224397.2, 7
  %factor.op.mul.reass.2.7 = mul i64 %factor.op.mul396, %i.ade
  %i.adf = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.adf, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.adg = add nuw i64 %.0224397.2, 8             ; 2 uses
  %niter510.next.7 = add i64 %niter510, 8         ; 2 uses
  %niter510.ncmp.7 = icmp eq i64 %niter510.next.7, %unroll_iter509
  br i1 %niter510.ncmp.7, label %.thread340.loopexit.unr-lcssa, label %.preheader.2, !llvm.loop !89

.thread340.loopexit.unr-lcssa:                    ; preds = %.preheader.2
  %lcmp.mod507.not = icmp eq i64 %xtraiter505, 0
  br i1 %lcmp.mod507.not, label %.thread340, label %.preheader.2.epil.preheader

.preheader.2.epil.preheader:                      ; preds = %.thread340.loopexit.unr-lcssa, %._crit_edge398.1
  %.0224397.2.epil.init = phi i64 [ 0, %._crit_edge398.1 ], [ %i.adg, %.thread340.loopexit.unr-lcssa ]
  %lcmp.mod508 = icmp ne i64 %xtraiter505, 0
  tail call void @llvm.assume(i1 %lcmp.mod508)
  br label %.preheader.2.epil

.preheader.2.epil:                                ; preds = %.preheader.2.epil, %.preheader.2.epil.preheader
  %.0224397.2.epil = phi i64 [ %.0224397.2.epil.init, %.preheader.2.epil.preheader ], [ %i.adi, %.preheader.2.epil ] ; 2 uses
  %epil.iter506 = phi i64 [ 0, %.preheader.2.epil.preheader ], [ %epil.iter506.next, %.preheader.2.epil ]
  %factor.op.mul.reass.2.epil = mul i64 %factor.op.mul396, %.0224397.2.epil
  %i.adh = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.adh, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.adi = add nuw i64 %.0224397.2.epil, 1
  %epil.iter506.next = add i64 %epil.iter506, 1   ; 2 uses
  %epil.iter506.cmp.not = icmp eq i64 %epil.iter506.next, %xtraiter505
  br i1 %epil.iter506.cmp.not, label %.thread340, label %.preheader.2.epil, !llvm.loop !92

.thread340:                                       ; preds = %bb.y, %.thread340.loopexit.unr-lcssa, %.preheader.2.epil, %.critedge258, %.thread337, %bb.m, %bb.n, %bb.l, %.thread312, %bb.j, %.thread, %bb.h, %bb.f, %bb.d, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit, %.critedge260, %.critedge
  %.sroa.0286.12 = phi i32 [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %.critedge ], [ 1, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit ], [ 1, %bb.d ], [ 1, %bb.j ], [ 1, %bb.f ], [ 0, %.critedge258 ], [ 1, %.thread ], [ 1, %.thread312 ], [ 1, %bb.l ], [ 1, %.thread337 ], [ 1, %.critedge260 ], [ 1, %bb.h ], [ 0, %.thread340.loopexit.unr-lcssa ], [ 0, %.preheader.2.epil ], [ 1, %bb.y ]
  %i.adj = load ptr, ptr %6, align 8, !tbaa !22   ; 3 uses
  %.not.i.i = icmp eq ptr %i.adj, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.thread340
  %i.adk = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.adl = ptrtoint ptr %i.adk to i64
  %i.adm = ptrtoint ptr %i.adj to i64
  %i.adn = sub i64 %i.adl, %i.adm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.adj, i64 noundef %i.adn) #36
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit: ; preds = %.thread340, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret i32 %.sroa.0286.12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN3jxl6N_AVX219GetQuantWeightsDCT2ERKNSt3__15arrayINS2_IfLm6EEELm3EEEPf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(72) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
.preheader82:
  store float 2.989000e+03, ptr %1, align 4, !tbaa !10
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float %i.a, ptr %i.b, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.a, ptr %i.c, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.e, ptr %i.f, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.h, ptr %i.i, align 4, !tbaa !10
  store float %i.h, ptr %2, align 4, !tbaa !10
  %i.j = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.j, ptr %i.k, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.j, ptr %i.l, align 4, !tbaa !10
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.m, ptr %i.n, align 4, !tbaa !10
  store float %i.m, ptr %3, align 4, !tbaa !10
  %i.o = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.o, ptr %i.p, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 100
  store float %i.o, ptr %i.q, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = insertelement <2 x float> poison, float %i.s, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.v, ptr %i.t, align 4, !tbaa !10
  %i.w = load float, ptr %i.r, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.y = insertelement <2 x float> poison, float %i.w, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.z, ptr %i.x, align 4, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.ab, ptr %i.ac, align 4, !tbaa !10
  store float %i.ab, ptr %4, align 4, !tbaa !10
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.ad, ptr %i.ae, align 4, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 132
  store float %i.ad, ptr %i.af, align 4, !tbaa !10
  %i.ag = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.ag, ptr %i.ah, align 4, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136
  store float %i.ag, ptr %i.ai, align 4, !tbaa !10
  %i.aj = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.aj, ptr %i.ak, align 4, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 140
  store float %i.aj, ptr %i.al, align 4, !tbaa !10
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.am = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.am, ptr %i.an, align 4, !tbaa !10
  store float %i.am, ptr %5, align 4, !tbaa !10
  %i.ao = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.ao, ptr %i.ap, align 4, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 164
  store float %i.ao, ptr %i.aq, align 4, !tbaa !10
  %i.ar = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.ar, ptr %i.as, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 168
  store float %i.ar, ptr %i.at, align 4, !tbaa !10
  %i.au = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %i.au, ptr %i.av, align 4, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 172
  store float %i.au, ptr %i.aw, align 4, !tbaa !10
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ax = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.ax, ptr %i.ay, align 4, !tbaa !10
  store float %i.ax, ptr %6, align 4, !tbaa !10
  %i.az = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.az, ptr %i.ba, align 4, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 196
  store float %i.az, ptr %i.bb, align 4, !tbaa !10
  %i.bc = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.bc, ptr %i.bd, align 4, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 200
  store float %i.bc, ptr %i.be, align 4, !tbaa !10
  %i.bf = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.bf, ptr %i.bg, align 4, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 204
  store float %i.bf, ptr %i.bh, align 4, !tbaa !10
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bi = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float %i.bi, ptr %i.bj, align 4, !tbaa !10
  store float %i.bi, ptr %7, align 4, !tbaa !10
  %i.bk = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.bk, ptr %i.bl, align 4, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 228
  store float %i.bk, ptr %i.bm, align 4, !tbaa !10
  %i.bn = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %i.bn, ptr %i.bo, align 4, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 232
  store float %i.bn, ptr %i.bp, align 4, !tbaa !10
  %i.bq = load float, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float %i.bq, ptr %i.br, align 4, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 236
  store float %i.bq, ptr %i.bs, align 4, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bw = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.bx, ptr %i.bv, align 4, !tbaa !10
  %i.by = load float, ptr %i.bt, align 4, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ca = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.cb, ptr %i.bz, align 4, !tbaa !10
  %i.cc = load float, ptr %i.bt, align 4, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ce = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.cf, ptr %i.cd, align 4, !tbaa !10
  %i.cg = load float, ptr %i.bt, align 4, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ci = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.cj, ptr %i.ch, align 4, !tbaa !10
  %i.ck = load float, ptr %i.bt, align 4, !tbaa !10
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.cm = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.cn, ptr %i.cl, align 4, !tbaa !10
  %i.co = load float, ptr %i.bt, align 4, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cq = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.cr, ptr %i.cp, align 4, !tbaa !10
  %i.cs = load float, ptr %i.bt, align 4, !tbaa !10
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.cu = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.cv, ptr %i.ct, align 4, !tbaa !10
  %i.cw = load float, ptr %i.bt, align 4, !tbaa !10
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.cy = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.cz, ptr %i.cx, align 4, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 256
  store float 2.989000e+03, ptr %i.da, align 4, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load float, ptr %i.db, align 4, !tbaa !10 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 288
  store float %i.dc, ptr %i.dd, align 4, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 260
  store float %i.dc, ptr %i.de, align 4, !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dg = load float, ptr %i.df, align 4, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 292
  store float %i.dg, ptr %i.dh, align 4, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.dj = load float, ptr %i.di, align 4, !tbaa !10 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 264
  store float %i.dj, ptr %i.dk, align 4, !tbaa !10
  store float %i.dj, ptr %8, align 4, !tbaa !10
  %i.dl = load float, ptr %i.di, align 4, !tbaa !10 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 268
  store float %i.dl, ptr %i.dm, align 4, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 324
  store float %i.dl, ptr %i.dn, align 4, !tbaa !10
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.do = load float, ptr %i.di, align 4, !tbaa !10 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 296
  store float %i.do, ptr %i.dp, align 4, !tbaa !10
  store float %i.do, ptr %9, align 4, !tbaa !10
  %i.dq = load float, ptr %i.di, align 4, !tbaa !10 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 300
  store float %i.dq, ptr %i.dr, align 4, !tbaa !10
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 356
  store float %i.dq, ptr %i.ds, align 4, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.dw = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.dx, ptr %i.dv, align 4, !tbaa !10
  %i.dy = load float, ptr %i.dt, align 4, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ea = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.eb, ptr %i.dz, align 4, !tbaa !10
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 272
  store float %i.ed, ptr %i.ee, align 4, !tbaa !10
  store float %i.ed, ptr %10, align 4, !tbaa !10
  %i.ef = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 276
  store float %i.ef, ptr %i.eg, align 4, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 388
  store float %i.ef, ptr %i.eh, align 4, !tbaa !10
  %i.ei = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 280
  store float %i.ei, ptr %i.ej, align 4, !tbaa !10
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 392
  store float %i.ei, ptr %i.ek, align 4, !tbaa !10
  %i.el = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 284
  store float %i.el, ptr %i.em, align 4, !tbaa !10
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 396
  store float %i.el, ptr %i.en, align 4, !tbaa !10
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.eo = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 304
  store float %i.eo, ptr %i.ep, align 4, !tbaa !10
  store float %i.eo, ptr %11, align 4, !tbaa !10
  %i.eq = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 308
  store float %i.eq, ptr %i.er, align 4, !tbaa !10
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 420
  store float %i.eq, ptr %i.es, align 4, !tbaa !10
  %i.et = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 312
  store float %i.et, ptr %i.eu, align 4, !tbaa !10
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 424
  store float %i.et, ptr %i.ev, align 4, !tbaa !10
  %i.ew = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 316
  store float %i.ew, ptr %i.ex, align 4, !tbaa !10
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 428
  store float %i.ew, ptr %i.ey, align 4, !tbaa !10
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.ez = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 336
  store float %i.ez, ptr %i.fa, align 4, !tbaa !10
  store float %i.ez, ptr %12, align 4, !tbaa !10
  %i.fb = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 340
  store float %i.fb, ptr %i.fc, align 4, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 452
  store float %i.fb, ptr %i.fd, align 4, !tbaa !10
  %i.fe = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 344
  store float %i.fe, ptr %i.ff, align 4, !tbaa !10
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 456
  store float %i.fe, ptr %i.fg, align 4, !tbaa !10
  %i.fh = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 348
  store float %i.fh, ptr %i.fi, align 4, !tbaa !10
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 460
  store float %i.fh, ptr %i.fj, align 4, !tbaa !10
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.fk = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 368
  store float %i.fk, ptr %i.fl, align 4, !tbaa !10
  store float %i.fk, ptr %13, align 4, !tbaa !10
  %i.fm = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 372
  store float %i.fm, ptr %i.fn, align 4, !tbaa !10
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 484
  store float %i.fm, ptr %i.fo, align 4, !tbaa !10
  %i.fp = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 376
  store float %i.fp, ptr %i.fq, align 4, !tbaa !10
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 488
  store float %i.fp, ptr %i.fr, align 4, !tbaa !10
  %i.fs = load float, ptr %i.ec, align 4, !tbaa !10 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 380
  store float %i.fs, ptr %i.ft, align 4, !tbaa !10
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 492
  store float %i.fs, ptr %i.fu, align 4, !tbaa !10
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !10
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.fy = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.fz, ptr %i.fx, align 4, !tbaa !10
  %i.ga = load float, ptr %i.fv, align 4, !tbaa !10
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.gc = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.gd, ptr %i.gb, align 4, !tbaa !10
  %i.ge = load float, ptr %i.fv, align 4, !tbaa !10
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.gg = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.gh, ptr %i.gf, align 4, !tbaa !10
  %i.gi = load float, ptr %i.fv, align 4, !tbaa !10
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.gk = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.gl, ptr %i.gj, align 4, !tbaa !10
  %i.gm = load float, ptr %i.fv, align 4, !tbaa !10
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.go = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.gp, ptr %i.gn, align 4, !tbaa !10
  %i.gq = load float, ptr %i.fv, align 4, !tbaa !10
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.gs = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.gt, ptr %i.gr, align 4, !tbaa !10
  %i.gu = load float, ptr %i.fv, align 4, !tbaa !10
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.gw = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.gx, ptr %i.gv, align 4, !tbaa !10
  %i.gy = load float, ptr %i.fv, align 4, !tbaa !10
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.ha = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.hb, ptr %i.gz, align 4, !tbaa !10
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 512
  store float 2.989000e+03, ptr %i.hc, align 4, !tbaa !10
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.he = load float, ptr %i.hd, align 4, !tbaa !10 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 544
  store float %i.he, ptr %i.hf, align 4, !tbaa !10
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 516
  store float %i.he, ptr %i.hg, align 4, !tbaa !10
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !10
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 548
  store float %i.hi, ptr %i.hj, align 4, !tbaa !10
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !10 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 520
  store float %i.hl, ptr %i.hm, align 4, !tbaa !10
  store float %i.hl, ptr %14, align 4, !tbaa !10
  %i.hn = load float, ptr %i.hk, align 4, !tbaa !10 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 524
  store float %i.hn, ptr %i.ho, align 4, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 580
  store float %i.hn, ptr %i.hp, align 4, !tbaa !10
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.hq = load float, ptr %i.hk, align 4, !tbaa !10 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 552
  store float %i.hq, ptr %i.hr, align 4, !tbaa !10
  store float %i.hq, ptr %15, align 4, !tbaa !10
  %i.hs = load float, ptr %i.hk, align 4, !tbaa !10 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 556
  store float %i.hs, ptr %i.ht, align 4, !tbaa !10
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 612
  store float %i.hs, ptr %i.hu, align 4, !tbaa !10
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !10
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.hy = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.hz, ptr %i.hx, align 4, !tbaa !10
  %i.ia = load float, ptr %i.hv, align 4, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.ic = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.id, ptr %i.ib, align 4, !tbaa !10
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 16 uses
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.if = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 528
  store float %i.if, ptr %i.ig, align 4, !tbaa !10
  store float %i.if, ptr %16, align 4, !tbaa !10
  %i.ih = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 532
  store float %i.ih, ptr %i.ii, align 4, !tbaa !10
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 644
  store float %i.ih, ptr %i.ij, align 4, !tbaa !10
  %i.ik = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 536
  store float %i.ik, ptr %i.il, align 4, !tbaa !10
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 648
  store float %i.ik, ptr %i.im, align 4, !tbaa !10
  %i.in = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 540
  store float %i.in, ptr %i.io, align 4, !tbaa !10
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 652
  store float %i.in, ptr %i.ip, align 4, !tbaa !10
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.iq = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 560
  store float %i.iq, ptr %i.ir, align 4, !tbaa !10
  store float %i.iq, ptr %17, align 4, !tbaa !10
  %i.is = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 564
  store float %i.is, ptr %i.it, align 4, !tbaa !10
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 676
  store float %i.is, ptr %i.iu, align 4, !tbaa !10
  %i.iv = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 568
  store float %i.iv, ptr %i.iw, align 4, !tbaa !10
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 680
  store float %i.iv, ptr %i.ix, align 4, !tbaa !10
  %i.iy = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 572
  store float %i.iy, ptr %i.iz, align 4, !tbaa !10
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 684
  store float %i.iy, ptr %i.ja, align 4, !tbaa !10
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.jb = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 592
  store float %i.jb, ptr %i.jc, align 4, !tbaa !10
  store float %i.jb, ptr %18, align 4, !tbaa !10
  %i.jd = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 596
  store float %i.jd, ptr %i.je, align 4, !tbaa !10
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 708
  store float %i.jd, ptr %i.jf, align 4, !tbaa !10
  %i.jg = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 600
  store float %i.jg, ptr %i.jh, align 4, !tbaa !10
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 712
  store float %i.jg, ptr %i.ji, align 4, !tbaa !10
  %i.jj = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 604
  store float %i.jj, ptr %i.jk, align 4, !tbaa !10
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 716
  store float %i.jj, ptr %i.jl, align 4, !tbaa !10
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.jm = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 624
  store float %i.jm, ptr %i.jn, align 4, !tbaa !10
  store float %i.jm, ptr %19, align 4, !tbaa !10
  %i.jo = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 628
  store float %i.jo, ptr %i.jp, align 4, !tbaa !10
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 740
  store float %i.jo, ptr %i.jq, align 4, !tbaa !10
  %i.jr = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 632
  store float %i.jr, ptr %i.js, align 4, !tbaa !10
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 744
  store float %i.jr, ptr %i.jt, align 4, !tbaa !10
  %i.ju = load float, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 636
  store float %i.ju, ptr %i.jv, align 4, !tbaa !10
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 748
  store float %i.ju, ptr %i.jw, align 4, !tbaa !10
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 8 uses
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !10
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.ka = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.kb, ptr %i.jz, align 4, !tbaa !10
  %i.kc = load float, ptr %i.jx, align 4, !tbaa !10
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.ke = insertelement <2 x float> poison, float %i.kc, i64 0
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.kf, ptr %i.kd, align 4, !tbaa !10
  %i.kg = load float, ptr %i.jx, align 4, !tbaa !10
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ki = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.kj, ptr %i.kh, align 4, !tbaa !10
  %i.kk = load float, ptr %i.jx, align 4, !tbaa !10
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.km = insertelement <2 x float> poison, float %i.kk, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.kn, ptr %i.kl, align 4, !tbaa !10
  %i.ko = load float, ptr %i.jx, align 4, !tbaa !10
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.kq = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.kr, ptr %i.kp, align 4, !tbaa !10
  %i.ks = load float, ptr %i.jx, align 4, !tbaa !10
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.ku = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.kv, ptr %i.kt, align 4, !tbaa !10
  %i.kw = load float, ptr %i.jx, align 4, !tbaa !10
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.ky = insertelement <2 x float> poison, float %i.kw, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.kz, ptr %i.kx, align 4, !tbaa !10
  %i.la = load float, ptr %i.jx, align 4, !tbaa !10
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.lc = insertelement <2 x float> poison, float %i.la, i64 0
  %i.ld = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.ld, ptr %i.lb, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN3jxl6N_AVX223GetQuantWeightsIdentityERKNSt3__15arrayINS2_IfLm3EEELm3EEEPf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
.preheader:
  %i.a = load float, ptr %0, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = insertelement <2 x float> poison, float %i.a, i64 0
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.d, ptr %1, align 4, !tbaa !10
  %i.e = load float, ptr %0, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = insertelement <2 x float> poison, float %i.e, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.h, ptr %i.f, align 4, !tbaa !10
  %i.i = load float, ptr %0, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = insertelement <2 x float> poison, float %i.i, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.l, ptr %i.j, align 4, !tbaa !10
  %i.m = load float, ptr %0, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = insertelement <2 x float> poison, float %i.m, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.p, ptr %i.n, align 4, !tbaa !10
  %i.q = load float, ptr %0, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = insertelement <2 x float> poison, float %i.q, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.u, ptr %i.r, align 4, !tbaa !10
  %i.v = load float, ptr %0, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = insertelement <2 x float> poison, float %i.v, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.y, ptr %i.w, align 4, !tbaa !10
  %i.z = load float, ptr %0, align 4, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.ac, ptr %i.aa, align 4, !tbaa !10
  %i.ad = load float, ptr %0, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.ag, ptr %i.ae, align 4, !tbaa !10
  %i.ah = load float, ptr %0, align 4, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aj = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.ak, ptr %i.ai, align 4, !tbaa !10
  %i.al = load float, ptr %0, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.an = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.ao, ptr %i.am, align 4, !tbaa !10
  %i.ap = load float, ptr %0, align 4, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ar = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.as, ptr %i.aq, align 4, !tbaa !10
  %i.at = load float, ptr %0, align 4, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.av = insertelement <2 x float> poison, float %i.at, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.aw, ptr %i.au, align 4, !tbaa !10
  %i.ax = load float, ptr %0, align 4, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.az = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.ba, ptr %i.ay, align 4, !tbaa !10
  %i.bb = load float, ptr %0, align 4, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bd = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.be, ptr %i.bc, align 4, !tbaa !10
  %i.bf = load float, ptr %0, align 4, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.bi, ptr %i.bg, align 4, !tbaa !10
  %i.bj = load float, ptr %0, align 4, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bl = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.bm, ptr %i.bk, align 4, !tbaa !10
  %i.bn = load float, ptr %0, align 4, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bp = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.bq, ptr %i.bo, align 4, !tbaa !10
  %i.br = load float, ptr %0, align 4, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bt = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.bu, ptr %i.bs, align 4, !tbaa !10
  %i.bv = load float, ptr %0, align 4, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bx = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.by, ptr %i.bw, align 4, !tbaa !10
  %i.bz = load float, ptr %0, align 4, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cb = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.cc, ptr %i.ca, align 4, !tbaa !10
  %i.cd = load float, ptr %0, align 4, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cf = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.cg, ptr %i.ce, align 4, !tbaa !10
  %i.ch = load float, ptr %0, align 4, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cj = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.ck, ptr %i.ci, align 4, !tbaa !10
  %i.cl = load float, ptr %0, align 4, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cn = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.co, ptr %i.cm, align 4, !tbaa !10
  %i.cp = load float, ptr %0, align 4, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cr = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.cs, ptr %i.cq, align 4, !tbaa !10
  %i.ct = load float, ptr %0, align 4, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cv = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.cw, ptr %i.cu, align 4, !tbaa !10
  %i.cx = load float, ptr %0, align 4, !tbaa !10
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cz = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.da, ptr %i.cy, align 4, !tbaa !10
  %i.db = load float, ptr %0, align 4, !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dd = insertelement <2 x float> poison, float %i.db, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.de, ptr %i.dc, align 4, !tbaa !10
  %i.df = load float, ptr %0, align 4, !tbaa !10
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_AVX217ComputeQuantTableERKNS_13QuantEncodingEPfS4_mNS_10QuantTableEPm:bb.a
  %i.mx = fadd float %i.mw, f0xBF5A0E1E
  %i.my = fmul float %i.mx, 3.000000e+00
  %i.mz = fdiv float %i.my, f0x4141EB0C           ; 2 uses
  %i.na = fptoui float %i.mz to i64               ; 3 uses
  %i.nb = add i64 %i.na, 1                        ; 2 uses
  %i.nc = icmp ult i64 %i.nb, 4
  br i1 %i.nc, label %_ZN3jxl6N_AVX211InterpolateEffPKfm.exit.thread322.1, label %.thread337

_ZN3jxl6N_AVX211InterpolateEffPKfm.exit.thread322.1: ; preds = %bb.t
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.na
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !10, !noalias !108 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.nb
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !10, !noalias !108
  %i.nh = fdiv float %i.ng, %i.ne
  %i.ni = uitofp i64 %i.na to float
  %i.nj = fsub float %i.mz, %i.ni
  %i.nk = insertelement <4 x float> poison, float %i.nh, i64 0
  %i.nl = bitcast <4 x float> %i.nk to <4 x i32>
  %i.nm = shufflevector <4 x i32> %i.nl, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nn = add <4 x i32> %i.nm, splat (i32 -1059760811) ; 2 uses
  %i.no = ashr <4 x i32> %i.nn, splat (i32 23)
  %i.np = and <4 x i32> %i.nn, splat (i32 -8388608)
  %i.nq = sub <4 x i32> %i.nm, %i.np
  %i.nr = bitcast <4 x i32> %i.nq to <4 x float>
  %i.ns = sitofp <4 x i32> %i.no to <4 x float>
  %i.nt = fadd <4 x float> %i.nr, splat (float -1.000000e+00) ; 4 uses
  fence acq_rel
  %i.nu = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.nt, <4 x float> <float f0x3F3E11C7, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> <float f0x3FB6E02B, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>)
  %i.nv = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.nt, <4 x float> <float f0x3E32458C, float poison, float poison, float poison>, <4 x float> <float f0x3F813CED, float poison, float poison, float poison>)
  fence acq_rel
  %i.nw = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.nu, <4 x float> %i.nt, <4 x float> <float f0xB5F85AB0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>) ; 2 uses
  %i.nx = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.nv, <4 x float> %i.nt, <4 x float> <float f0x3F7D8625, float poison, float poison, float poison>)
  fence acq_rel
  %foldExtExtBinop485 = fdiv <4 x float> %i.nw, %i.nx
  %i.ny = shufflevector <4 x float> %foldExtExtBinop485, <4 x float> %i.nw, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.nz = fadd <4 x float> %i.ny, %i.ns           ; 2 uses
  %i.oa = extractelement <4 x float> %i.nz, i64 0
  %i.ob = fmul float %i.nj, %i.oa
  %i.oc = insertelement <4 x float> %i.nz, float %i.ob, i64 0 ; 2 uses
  %i.od = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.oc) ; 3 uses
  %i.oe = fcmp oge <4 x float> %i.od, splat (float f0x4F000000)
  %i.of = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.od)
  %i.og = shl <4 x i32> %i.of, splat (i32 23)
  %i.oh = add <4 x i32> %i.og, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.oi = bitcast <4 x i32> %i.oh to <4 x float>
  %i.oj = select <4 x i1> %i.oe, <4 x float> <float 5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.oi
  %i.ok = fsub <4 x float> %i.oc, %i.od           ; 6 uses
  %i.ol = fadd <4 x float> %i.ok, <float f0x4122CC6B, float poison, float poison, float poison>
  %i.om = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ol, <4 x float> %i.ok, <4 x float> <float f0x424379A1, float poison, float poison, float poison>)
  %i.on = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.om, <4 x float> %i.ok, <4 x float> <float f0x42C519F0, float poison, float poison, float poison>)
  %foldExtExtBinop487 = fmul <4 x float> %i.oj, %i.on
  %i.oo = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ok, <4 x float> <float f0x3E5749EE, float poison, float poison, float poison>, <4 x float> <float f0xBCB621BE, float poison, float poison, float poison>)
  %i.op = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.oo, <4 x float> %i.ok, <4 x float> <float -1.944150e+01, float poison, float poison, float poison>)
  %i.oq = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.op, <4 x float> %i.ok, <4 x float> <float f0x42C519F1, float poison, float poison, float poison>)
  %foldExtExtBinop489 = fdiv <4 x float> %foldExtExtBinop487, %i.oq
  %i.or = extractelement <4 x float> %foldExtExtBinop489, i64 0
  %i.os = fmul float %i.ne, %i.or
  %.val261.val.1 = load ptr, ptr %6, align 8, !tbaa !22
  %i.ot = getelementptr [4 x i8], ptr %.val261.val.1, i64 %i.kg
  %i.ou = getelementptr i8, ptr %i.ot, i64 %i.kv
  %i.ov = getelementptr i8, ptr %i.ou, i64 8
  store float %i.os, ptr %i.ov, align 4, !tbaa !10
  br label %.thread474

.thread474:                                       ; preds = %.preheader366, %_ZN3jxl6N_AVX211InterpolateEffPKfm.exit.thread322.1
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.ox = load float, ptr %i.ow, align 8, !tbaa !10
  %i.oy = fadd float %i.ox, f0xBF5A0E1E
  %i.oz = fmul float %i.oy, 3.000000e+00
  %i.pa = fdiv float %i.oz, f0x4141EB0C           ; 2 uses
  %i.pb = fptoui float %i.pa to i64               ; 3 uses
  %i.pc = add i64 %i.pb, 1                        ; 2 uses
  %i.pd = icmp ult i64 %i.pc, 4
  br i1 %i.pd, label %bb.u, label %.thread337

bb.u:                                             ; preds = %.thread474
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.pb
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !10, !noalias !108 ; 2 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.pc
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !10, !noalias !108
  %i.pi = fdiv float %i.ph, %i.pf
  %i.pj = uitofp i64 %i.pb to float
  %i.pk = fsub float %i.pa, %i.pj
  %i.pl = insertelement <4 x float> poison, float %i.pi, i64 0
  %i.pm = bitcast <4 x float> %i.pl to <4 x i32>
  %i.pn = shufflevector <4 x i32> %i.pm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.po = add <4 x i32> %i.pn, splat (i32 -1059760811) ; 2 uses
  %i.pp = ashr <4 x i32> %i.po, splat (i32 23)
  %i.pq = and <4 x i32> %i.po, splat (i32 -8388608)
  %i.pr = sub <4 x i32> %i.pn, %i.pq
  %i.ps = bitcast <4 x i32> %i.pr to <4 x float>
  %i.pt = sitofp <4 x i32> %i.pp to <4 x float>
  %i.pu = fadd <4 x float> %i.ps, splat (float -1.000000e+00) ; 4 uses
  fence acq_rel
  %i.pv = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.pu, <4 x float> <float f0x3F3E11C7, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> <float f0x3FB6E02B, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>)
  %i.pw = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.pu, <4 x float> <float f0x3E32458C, float poison, float poison, float poison>, <4 x float> <float f0x3F813CED, float poison, float poison, float poison>)
  fence acq_rel
  %i.px = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.pv, <4 x float> %i.pu, <4 x float> <float f0xB5F85AB0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>) ; 2 uses
  %i.py = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.pw, <4 x float> %i.pu, <4 x float> <float f0x3F7D8625, float poison, float poison, float poison>)
  fence acq_rel
  %foldExtExtBinop491 = fdiv <4 x float> %i.px, %i.py
  %i.pz = shufflevector <4 x float> %foldExtExtBinop491, <4 x float> %i.px, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.qa = fadd <4 x float> %i.pz, %i.pt           ; 2 uses
  %i.qb = extractelement <4 x float> %i.qa, i64 0
  %i.qc = fmul float %i.pk, %i.qb
  %i.qd = insertelement <4 x float> %i.qa, float %i.qc, i64 0 ; 2 uses
  %i.qe = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.qd) ; 3 uses
  %i.qf = fcmp oge <4 x float> %i.qe, splat (float f0x4F000000)
  %i.qg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.qe)
  %i.qh = shl <4 x i32> %i.qg, splat (i32 23)
  %i.qi = add <4 x i32> %i.qh, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.qj = bitcast <4 x i32> %i.qi to <4 x float>
  %i.qk = select <4 x i1> %i.qf, <4 x float> <float 5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.qj
  %i.ql = fsub <4 x float> %i.qd, %i.qe           ; 6 uses
  %i.qm = fadd <4 x float> %i.ql, <float f0x4122CC6B, float poison, float poison, float poison>
  %i.qn = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.qm, <4 x float> %i.ql, <4 x float> <float f0x424379A1, float poison, float poison, float poison>)
  %i.qo = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.qn, <4 x float> %i.ql, <4 x float> <float f0x42C519F0, float poison, float poison, float poison>)
  %foldExtExtBinop493 = fmul <4 x float> %i.qk, %i.qo
  %i.qp = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ql, <4 x float> <float f0x3E5749EE, float poison, float poison, float poison>, <4 x float> <float f0xBCB621BE, float poison, float poison, float poison>)
  %i.qq = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.qp, <4 x float> %i.ql, <4 x float> <float -1.944150e+01, float poison, float poison, float poison>)
  %i.qr = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.qq, <4 x float> %i.ql, <4 x float> <float f0x42C519F1, float poison, float poison, float poison>)
  %foldExtExtBinop495 = fdiv <4 x float> %foldExtExtBinop493, %i.qr
  %i.qs = extractelement <4 x float> %foldExtExtBinop495, i64 0
  %i.qt = fmul float %i.pf, %i.qs
  %.val261.val.2 = load ptr, ptr %6, align 8, !tbaa !22
  %i.qu = getelementptr [4 x i8], ptr %.val261.val.2, i64 %i.kg
  %i.qv = getelementptr i8, ptr %i.qu, i64 %i.kv
  %i.qw = getelementptr i8, ptr %i.qv, i64 16
  store float %i.qt, ptr %i.qw, align 4, !tbaa !10
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !10
  %i.qz = fadd float %i.qy, f0xBF5A0E1E
  %i.ra = fmul float %i.qz, 3.000000e+00
  %i.rb = fdiv float %i.ra, f0x4141EB0C           ; 2 uses
  %i.rc = fptoui float %i.rb to i64               ; 3 uses
  %i.rd = add i64 %i.rc, 1                        ; 2 uses
  %i.re = icmp ult i64 %i.rd, 4
  br i1 %i.re, label %bb.v, label %.thread337

bb.v:                                             ; preds = %bb.u
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.rc
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !10, !noalias !108 ; 2 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.rd
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !10, !noalias !108
  %i.rj = fdiv float %i.ri, %i.rg
  %i.rk = uitofp i64 %i.rc to float
  %i.rl = fsub float %i.rb, %i.rk
  %i.rm = insertelement <4 x float> poison, float %i.rj, i64 0
  %i.rn = bitcast <4 x float> %i.rm to <4 x i32>
  %i.ro = shufflevector <4 x i32> %i.rn, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rp = add <4 x i32> %i.ro, splat (i32 -1059760811) ; 2 uses
  %i.rq = ashr <4 x i32> %i.rp, splat (i32 23)
  %i.rr = and <4 x i32> %i.rp, splat (i32 -8388608)
  %i.rs = sub <4 x i32> %i.ro, %i.rr
  %i.rt = bitcast <4 x i32> %i.rs to <4 x float>
  %i.ru = sitofp <4 x i32> %i.rq to <4 x float>
  %i.rv = fadd <4 x float> %i.rt, splat (float -1.000000e+00) ; 4 uses
  fence acq_rel
  %i.rw = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.rv, <4 x float> <float f0x3F3E11C7, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> <float f0x3FB6E02B, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>)
  %i.rx = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.rv, <4 x float> <float f0x3E32458C, float poison, float poison, float poison>, <4 x float> <float f0x3F813CED, float poison, float poison, float poison>)
  fence acq_rel
  %i.ry = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.rw, <4 x float> %i.rv, <4 x float> <float f0xB5F85AB0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>) ; 2 uses
  %i.rz = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.rx, <4 x float> %i.rv, <4 x float> <float f0x3F7D8625, float poison, float poison, float poison>)
  fence acq_rel
  %foldExtExtBinop497 = fdiv <4 x float> %i.ry, %i.rz
  %i.sa = shufflevector <4 x float> %foldExtExtBinop497, <4 x float> %i.ry, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.sb = fadd <4 x float> %i.sa, %i.ru           ; 2 uses
  %i.sc = extractelement <4 x float> %i.sb, i64 0
  %i.sd = fmul float %i.rl, %i.sc
  %i.se = insertelement <4 x float> %i.sb, float %i.sd, i64 0 ; 2 uses
  %i.sf = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.se) ; 3 uses
  %i.sg = fcmp oge <4 x float> %i.sf, splat (float f0x4F000000)
  %i.sh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.sf)
  %i.si = shl <4 x i32> %i.sh, splat (i32 23)
  %i.sj = add <4 x i32> %i.si, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.sk = bitcast <4 x i32> %i.sj to <4 x float>
  %i.sl = select <4 x i1> %i.sg, <4 x float> <float 5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.sk
  %i.sm = fsub <4 x float> %i.se, %i.sf           ; 6 uses
  %i.sn = fadd <4 x float> %i.sm, <float f0x4122CC6B, float poison, float poison, float poison>
  %i.so = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sn, <4 x float> %i.sm, <4 x float> <float f0x424379A1, float poison, float poison, float poison>)
  %i.sp = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.so, <4 x float> %i.sm, <4 x float> <float f0x42C519F0, float poison, float poison, float poison>)
  %foldExtExtBinop499 = fmul <4 x float> %i.sl, %i.sp
  %i.sq = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sm, <4 x float> <float f0x3E5749EE, float poison, float poison, float poison>, <4 x float> <float f0xBCB621BE, float poison, float poison, float poison>)
  %i.sr = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sq, <4 x float> %i.sm, <4 x float> <float -1.944150e+01, float poison, float poison, float poison>)
  %i.ss = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sr, <4 x float> %i.sm, <4 x float> <float f0x42C519F1, float poison, float poison, float poison>)
  %foldExtExtBinop501 = fdiv <4 x float> %foldExtExtBinop499, %i.ss
  %i.st = extractelement <4 x float> %foldExtExtBinop501, i64 0
  %i.su = fmul float %i.rg, %i.st
  %.val261.val.3 = load ptr, ptr %6, align 8, !tbaa !22
  %i.sv = getelementptr [4 x i8], ptr %.val261.val.3, i64 %i.kg
  %i.sw = getelementptr i8, ptr %i.sv, i64 %i.kv
  %i.sx = getelementptr i8, ptr %i.sw, i64 24
  store float %i.su, ptr %i.sx, align 4, !tbaa !10
  %i.sy = add nuw nsw i64 %.0240374, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.sy, 4
  br i1 %exitcond.not, label %bb.w, label %.preheader366, !llvm.loop !101

bb.w:                                             ; preds = %bb.v
  %.idx250 = shl nuw nsw i64 %.0242379, 7
  %i.sz = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx250 ; 15 uses
  %i.ta = mul i64 %.0242379, %i.n
  %i.tb = load ptr, ptr %6, align 8               ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.ta ; 21 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 36
  %i.tf = load <4 x float>, ptr %i.td, align 4, !tbaa !10
  store <4 x float> %i.tf, ptr %i.te, align 4, !tbaa !10
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sz, i64 20
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 52
  %i.ti = load <2 x float>, ptr %i.tg, align 4, !tbaa !10
  store <2 x float> %i.ti, ptr %i.th, align 4, !tbaa !10
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sz, i64 28
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !10
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tc, i64 60
  store float %i.tk, ptr %i.tl, align 4, !tbaa !10
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  %i.tn = load float, ptr %i.tm, align 16, !tbaa !10
  %i.to = getelementptr inbounds nuw i8, ptr %i.sz, i64 36
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sz, i64 44
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sz, i64 60
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !10
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tc, i64 124
  store float %i.tr, ptr %i.ts, align 4, !tbaa !10
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sz, i64 64
  %i.tu = load float, ptr %i.tt, align 16, !tbaa !10
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sz, i64 68
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sz, i64 76
  %i.tx = getelementptr inbounds nuw i8, ptr %i.sz, i64 92
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !10
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tc, i64 188
  store float %i.ty, ptr %i.tz, align 4, !tbaa !10
  %i.ua = getelementptr inbounds nuw i8, ptr %i.sz, i64 96
  %i.ub = load float, ptr %i.ua, align 16, !tbaa !10
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sz, i64 100
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sz, i64 108
  %i.ue = getelementptr inbounds nuw i8, ptr %i.sz, i64 124
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !10
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tc, i64 252
  store float %i.uf, ptr %i.ug, align 4, !tbaa !10
  %i.uh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.kg ; 15 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !10
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tc, i64 12
  store float %i.uj, ptr %i.uk, align 4, !tbaa !10
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.um = load float, ptr %i.ul, align 8, !tbaa !10
  %i.un = getelementptr inbounds nuw i8, ptr %i.tc, i64 20
  store float %i.um, ptr %i.un, align 4, !tbaa !10
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uh, i64 12
  %i.up = load float, ptr %i.uo, align 4, !tbaa !10
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tc, i64 28
  store float %i.up, ptr %i.uq, align 4, !tbaa !10
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.us = load float, ptr %i.ur, align 16, !tbaa !10
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tc, i64 68
  store float %i.us, ptr %i.ut, align 4, !tbaa !10
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uh, i64 20
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !10
  %i.uw = getelementptr inbounds nuw i8, ptr %i.tc, i64 76
  store float %i.uv, ptr %i.uw, align 4, !tbaa !10
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uh, i64 24
  %i.uy = load float, ptr %i.ux, align 8, !tbaa !10
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tc, i64 84
  store float %i.uy, ptr %i.uz, align 4, !tbaa !10
  %i.va = getelementptr inbounds nuw i8, ptr %i.uh, i64 28
  %i.vb = load float, ptr %i.va, align 4, !tbaa !10
  %i.vc = getelementptr inbounds nuw i8, ptr %i.tc, i64 92
  %i.vd = load <2 x float>, ptr %i.to, align 4, !tbaa !10
  %i.ve = load <4 x float>, ptr %i.tp, align 4, !tbaa !10
  %i.vf = insertelement <8 x float> poison, float %i.vb, i64 0
  %i.vg = insertelement <8 x float> %i.vf, float %i.tn, i64 1
  %i.vh = shufflevector <4 x float> %i.ve, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vi = shufflevector <8 x float> %i.vg, <8 x float> %i.vh, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.vj = shufflevector <2 x float> %i.vd, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vk = shufflevector <8 x float> %i.vi, <8 x float> %i.vj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.vk, ptr %i.vc, align 4, !tbaa !10
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uh, i64 32
  %i.vm = load float, ptr %i.vl, align 16, !tbaa !10
  %i.vn = getelementptr inbounds nuw i8, ptr %i.tc, i64 132
  store float %i.vm, ptr %i.vn, align 4, !tbaa !10
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uh, i64 36
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !10
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tc, i64 140
  store float %i.vp, ptr %i.vq, align 4, !tbaa !10
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uh, i64 40
  %i.vs = load float, ptr %i.vr, align 8, !tbaa !10
  %i.vt = getelementptr inbounds nuw i8, ptr %i.tc, i64 148
  store float %i.vs, ptr %i.vt, align 4, !tbaa !10
  %i.vu = getelementptr inbounds nuw i8, ptr %i.uh, i64 44
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !10
  %i.vw = getelementptr inbounds nuw i8, ptr %i.tc, i64 156
  %i.vx = load <2 x float>, ptr %i.tv, align 4, !tbaa !10
  %i.vy = load <4 x float>, ptr %i.tw, align 4, !tbaa !10
  %i.vz = insertelement <8 x float> poison, float %i.vv, i64 0
  %i.wa = insertelement <8 x float> %i.vz, float %i.tu, i64 1
  %i.wb = shufflevector <4 x float> %i.vy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wc = shufflevector <8 x float> %i.wa, <8 x float> %i.wb, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.wd = shufflevector <2 x float> %i.vx, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.we = shufflevector <8 x float> %i.wc, <8 x float> %i.wd, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.we, ptr %i.vw, align 4, !tbaa !10
  %i.wf = getelementptr inbounds nuw i8, ptr %i.uh, i64 48
  %i.wg = load float, ptr %i.wf, align 16, !tbaa !10
  %i.wh = getelementptr inbounds nuw i8, ptr %i.tc, i64 196
  store float %i.wg, ptr %i.wh, align 4, !tbaa !10
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uh, i64 52
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !10
  %i.wk = getelementptr inbounds nuw i8, ptr %i.tc, i64 204
  store float %i.wj, ptr %i.wk, align 4, !tbaa !10
  %i.wl = getelementptr inbounds nuw i8, ptr %i.uh, i64 56
  %i.wm = load float, ptr %i.wl, align 8, !tbaa !10
  %i.wn = getelementptr inbounds nuw i8, ptr %i.tc, i64 212
  store float %i.wm, ptr %i.wn, align 4, !tbaa !10
  %i.wo = getelementptr inbounds nuw i8, ptr %i.uh, i64 60
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !10
  %i.wq = getelementptr inbounds nuw i8, ptr %i.tc, i64 220
  %i.wr = load <2 x float>, ptr %i.uc, align 4, !tbaa !10
  %i.ws = load <4 x float>, ptr %i.ud, align 4, !tbaa !10
  %i.wt = insertelement <8 x float> poison, float %i.wp, i64 0
  %i.wu = insertelement <8 x float> %i.wt, float %i.ub, i64 1
  %i.wv = shufflevector <4 x float> %i.ws, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ww = shufflevector <8 x float> %i.wu, <8 x float> %i.wv, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.wx = shufflevector <2 x float> %i.wr, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wy = shufflevector <8 x float> %i.ww, <8 x float> %i.wx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.wy, ptr %i.wq, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.wz = add nuw nsw i64 %.0242379, 1            ; 2 uses
  %exitcond414.not = icmp eq i64 %i.wz, 3
  br i1 %exitcond414.not, label %bb.x, label %bb.q, !llvm.loop !102

.thread337:                                       ; preds = %bb.q, %.preheader368.preheader, %.preheader368.1, %.preheader368.2, %bb.s, %bb.t, %.thread474, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.thread340

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.loopexit

.loopexit.thread:                                 ; preds = %vector.body, %.preheader358, %.preheader362, %bb.g, %bb.e
  %i.xa = load i64, ptr %5, align 8, !tbaa !38
  br label %.lr.ph389

.loopexit:                                        ; preds = %bb.x, %bb.l, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.xb = load i64, ptr %5, align 8, !tbaa !38    ; 2 uses
  br i1 %.not.i, label %.critedge258, label %.lr.ph389

.lr.ph389:                                        ; preds = %.loopexit.thread, %.loopexit
  %i.xc = phi i64 [ %i.xa, %.loopexit.thread ], [ %i.xb, %.loopexit ] ; 3 uses
  %i.xd = load ptr, ptr %6, align 8, !tbaa !22
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xc
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.xc
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph389, %bb.z
  %.0233388 = phi i64 [ 0, %.lr.ph389 ], [ %i.xp, %bb.z ] ; 4 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %.0233388
  %i.xh = load <8 x float>, ptr %i.xg, align 1, !tbaa !15 ; 4 uses
  %i.xi = fcmp oge <8 x float> %i.xh, splat (float 1.000000e+08)
  %i.xj = fcmp olt <8 x float> %i.xh, splat (float f0x322BCC77)
  %i.xk = or <8 x i1> %i.xi, %i.xj
  %i.xl = bitcast <8 x i1> %i.xk to i8
  %or.cond354 = icmp eq i8 %i.xl, 0
  br i1 %or.cond354, label %bb.z, label %.thread340, !prof !42

bb.z:                                             ; preds = %bb.y
  %i.xm = fdiv <8 x float> splat (float 1.000000e+00), %i.xh
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %.0233388
  store <8 x float> %i.xm, ptr %i.xn, align 1, !tbaa !15
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %.0233388
  store <8 x float> %i.xh, ptr %i.xo, align 1, !tbaa !15
  %i.xp = add nuw i64 %.0233388, 8                ; 2 uses
  %.not255 = icmp ult i64 %i.xp, %i.o
  br i1 %.not255, label %bb.y, label %.critedge258, !llvm.loop !103

.critedge258:                                     ; preds = %bb.z, %.loopexit.thread475, %.loopexit
  %i.xq = phi i64 [ %i.id, %.loopexit.thread475 ], [ %i.xb, %.loopexit ], [ %i.xc, %bb.z ] ; 2 uses
  %i.xr = add i64 %i.xq, %i.o
  store i64 %i.xr, ptr %5, align 8, !tbaa !38
  %i.xs = sext i32 %i.g to i64                    ; 3 uses
  %i.xt = sext i32 %i.k to i64                    ; 3 uses
  %i.xu = tail call noundef i64 @llvm.umin.i64(i64 %i.xt, i64 %i.xs) ; 8 uses
  %i.xv = tail call noundef i64 @llvm.umax.i64(i64 %i.xt, i64 %i.xs) ; 3 uses
  %factor.op.mul396 = shl nsw i64 %i.xv, 3        ; 27 uses
  %factor.op.mul399 = shl nsw i64 %i.xs, 8
  %.not405 = icmp eq i64 %i.xu, 0
  %factor.op.mul = mul i64 %factor.op.mul399, %i.xt ; 2 uses
  %.not406 = icmp eq i64 %i.xv, 0
  %i.xw = getelementptr [4 x i8], ptr %2, i64 %i.xq ; 11 uses
  %brmerge = or i1 %.not405, %.not406
  br i1 %brmerge, label %.thread340, label %.preheader355.preheader

.preheader355.preheader:                          ; preds = %.critedge258
  %i.xx = shl nuw nsw i64 %i.xv, 2                ; 27 uses
  %i.xy = add nsw i64 %i.xu, -1                   ; 3 uses
  %xtraiter = and i64 %i.xu, 7                    ; 3 uses
  %i.xz = icmp ult i64 %i.xy, 7
  br i1 %i.xz, label %.preheader.epil.preheader, label %.preheader355.preheader.new

.preheader355.preheader.new:                      ; preds = %.preheader355.preheader
  %unroll_iter = and i64 %i.xu, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader355.preheader.new
  %.0224397 = phi i64 [ 0, %.preheader355.preheader.new ], [ %i.yp, %.preheader ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader355.preheader.new ], [ %niter.next.7, %.preheader ]
  %factor.op.mul.reass = mul i64 %factor.op.mul396, %.0224397
  %i.ya = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ya, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yb = or disjoint i64 %.0224397, 1
  %factor.op.mul.reass.1507 = mul i64 %factor.op.mul396, %i.yb
  %i.yc = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.1507
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yc, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yd = or disjoint i64 %.0224397, 2
  %factor.op.mul.reass.2510 = mul i64 %factor.op.mul396, %i.yd
  %i.ye = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.2510
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ye, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yf = or disjoint i64 %.0224397, 3
  %factor.op.mul.reass.3 = mul i64 %factor.op.mul396, %i.yf
  %i.yg = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yg, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yh = or disjoint i64 %.0224397, 4
  %factor.op.mul.reass.4 = mul i64 %factor.op.mul396, %i.yh
  %i.yi = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yi, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yj = or disjoint i64 %.0224397, 5
  %factor.op.mul.reass.5 = mul i64 %factor.op.mul396, %i.yj
  %i.yk = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yk, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yl = or disjoint i64 %.0224397, 6
  %factor.op.mul.reass.6 = mul i64 %factor.op.mul396, %i.yl
  %i.ym = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ym, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yn = or disjoint i64 %.0224397, 7
  %factor.op.mul.reass.7 = mul i64 %factor.op.mul396, %i.yn
  %i.yo = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yo, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yp = add nuw i64 %.0224397, 8                ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge398.unr-lcssa, label %.preheader, !llvm.loop !104

._crit_edge398.unr-lcssa:                         ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge398, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge398.unr-lcssa, %.preheader355.preheader
  %.0224397.epil.init = phi i64 [ 0, %.preheader355.preheader ], [ %i.yp, %._crit_edge398.unr-lcssa ]
  %lcmp.mod505 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod505)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.0224397.epil = phi i64 [ %.0224397.epil.init, %.preheader.epil.preheader ], [ %i.yr, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %factor.op.mul.reass.epil = mul i64 %factor.op.mul396, %.0224397.epil
  %i.yq = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yq, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yr = add nuw i64 %.0224397.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge398, label %.preheader.epil, !llvm.loop !105

._crit_edge398:                                   ; preds = %.preheader.epil, %._crit_edge398.unr-lcssa
  %i.ys = getelementptr i8, ptr %i.xw, i64 %factor.op.mul ; 9 uses
  %xtraiter512 = and i64 %i.xu, 7                 ; 3 uses
  %i.yt = icmp ult i64 %i.xy, 7
  br i1 %i.yt, label %.preheader.1.epil.preheader, label %._crit_edge398.new

._crit_edge398.new:                               ; preds = %._crit_edge398
  %unroll_iter516 = and i64 %i.xu, -8
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %._crit_edge398.new
  %.0224397.1 = phi i64 [ 0, %._crit_edge398.new ], [ %i.zj, %.preheader.1 ] ; 9 uses
  %niter517 = phi i64 [ 0, %._crit_edge398.new ], [ %niter517.next.7, %.preheader.1 ]
  %factor.op.mul.reass.1 = mul i64 %factor.op.mul396, %.0224397.1
  %i.yu = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yu, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yv = or disjoint i64 %.0224397.1, 1
  %factor.op.mul.reass.1.1 = mul i64 %factor.op.mul396, %i.yv
  %i.yw = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yw, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yx = or disjoint i64 %.0224397.1, 2
  %factor.op.mul.reass.1.2 = mul i64 %factor.op.mul396, %i.yx
  %i.yy = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yy, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yz = or disjoint i64 %.0224397.1, 3
  %factor.op.mul.reass.1.3 = mul i64 %factor.op.mul396, %i.yz
  %i.za = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.za, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zb = or disjoint i64 %.0224397.1, 4
  %factor.op.mul.reass.1.4 = mul i64 %factor.op.mul396, %i.zb
  %i.zc = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zc, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zd = or disjoint i64 %.0224397.1, 5
  %factor.op.mul.reass.1.5 = mul i64 %factor.op.mul396, %i.zd
  %i.ze = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ze, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zf = or disjoint i64 %.0224397.1, 6
  %factor.op.mul.reass.1.6 = mul i64 %factor.op.mul396, %i.zf
  %i.zg = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zg, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zh = or disjoint i64 %.0224397.1, 7
  %factor.op.mul.reass.1.7 = mul i64 %factor.op.mul396, %i.zh
  %i.zi = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zi, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zj = add nuw i64 %.0224397.1, 8              ; 2 uses
  %niter517.next.7 = add i64 %niter517, 8         ; 2 uses
  %niter517.ncmp.7 = icmp eq i64 %niter517.next.7, %unroll_iter516
  br i1 %niter517.ncmp.7, label %._crit_edge398.1.unr-lcssa, label %.preheader.1, !llvm.loop !104

._crit_edge398.1.unr-lcssa:                       ; preds = %.preheader.1
  %lcmp.mod514.not = icmp eq i64 %xtraiter512, 0
  br i1 %lcmp.mod514.not, label %._crit_edge398.1, label %.preheader.1.epil.preheader

.preheader.1.epil.preheader:                      ; preds = %._crit_edge398.1.unr-lcssa, %._crit_edge398
  %.0224397.1.epil.init = phi i64 [ 0, %._crit_edge398 ], [ %i.zj, %._crit_edge398.1.unr-lcssa ]
  %lcmp.mod515 = icmp ne i64 %xtraiter512, 0
  tail call void @llvm.assume(i1 %lcmp.mod515)
  br label %.preheader.1.epil

.preheader.1.epil:                                ; preds = %.preheader.1.epil, %.preheader.1.epil.preheader
  %.0224397.1.epil = phi i64 [ %.0224397.1.epil.init, %.preheader.1.epil.preheader ], [ %i.zl, %.preheader.1.epil ] ; 2 uses
  %epil.iter513 = phi i64 [ 0, %.preheader.1.epil.preheader ], [ %epil.iter513.next, %.preheader.1.epil ]
  %factor.op.mul.reass.1.epil = mul i64 %factor.op.mul396, %.0224397.1.epil
  %i.zk = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zk, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zl = add nuw i64 %.0224397.1.epil, 1
  %epil.iter513.next = add i64 %epil.iter513, 1   ; 2 uses
  %epil.iter513.cmp.not = icmp eq i64 %epil.iter513.next, %xtraiter512
  br i1 %epil.iter513.cmp.not, label %._crit_edge398.1, label %.preheader.1.epil, !llvm.loop !106

._crit_edge398.1:                                 ; preds = %.preheader.1.epil, %._crit_edge398.1.unr-lcssa
  %factor.op.mul395.reass.reass.2 = shl i64 %factor.op.mul, 1
  %i.zm = getelementptr i8, ptr %i.xw, i64 %factor.op.mul395.reass.reass.2 ; 9 uses
  %xtraiter518 = and i64 %i.xu, 7                 ; 3 uses
  %i.zn = icmp ult i64 %i.xy, 7
  br i1 %i.zn, label %.preheader.2.epil.preheader, label %._crit_edge398.1.new

._crit_edge398.1.new:                             ; preds = %._crit_edge398.1
  %unroll_iter522 = and i64 %i.xu, -8
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %._crit_edge398.1.new
  %.0224397.2 = phi i64 [ 0, %._crit_edge398.1.new ], [ %i.aad, %.preheader.2 ] ; 9 uses
  %niter523 = phi i64 [ 0, %._crit_edge398.1.new ], [ %niter523.next.7, %.preheader.2 ]
  %factor.op.mul.reass.2 = mul i64 %factor.op.mul396, %.0224397.2
  %i.zo = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zo, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zp = or disjoint i64 %.0224397.2, 1
  %factor.op.mul.reass.2.1 = mul i64 %factor.op.mul396, %i.zp
  %i.zq = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zq, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zr = or disjoint i64 %.0224397.2, 2
  %factor.op.mul.reass.2.2 = mul i64 %factor.op.mul396, %i.zr
  %i.zs = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zs, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zt = or disjoint i64 %.0224397.2, 3
  %factor.op.mul.reass.2.3 = mul i64 %factor.op.mul396, %i.zt
  %i.zu = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zu, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zv = or disjoint i64 %.0224397.2, 4
  %factor.op.mul.reass.2.4 = mul i64 %factor.op.mul396, %i.zv
  %i.zw = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zw, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zx = or disjoint i64 %.0224397.2, 5
  %factor.op.mul.reass.2.5 = mul i64 %factor.op.mul396, %i.zx
  %i.zy = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zy, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zz = or disjoint i64 %.0224397.2, 6
  %factor.op.mul.reass.2.6 = mul i64 %factor.op.mul396, %i.zz
  %i.aaa = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aaa, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.aab = or disjoint i64 %.0224397.2, 7
  %factor.op.mul.reass.2.7 = mul i64 %factor.op.mul396, %i.aab
  %i.aac = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aac, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.aad = add nuw i64 %.0224397.2, 8             ; 2 uses
  %niter523.next.7 = add i64 %niter523, 8         ; 2 uses
  %niter523.ncmp.7 = icmp eq i64 %niter523.next.7, %unroll_iter522
  br i1 %niter523.ncmp.7, label %.thread340.loopexit.unr-lcssa, label %.preheader.2, !llvm.loop !104

.thread340.loopexit.unr-lcssa:                    ; preds = %.preheader.2
  %lcmp.mod520.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod520.not, label %.thread340, label %.preheader.2.epil.preheader

.preheader.2.epil.preheader:                      ; preds = %.thread340.loopexit.unr-lcssa, %._crit_edge398.1
  %.0224397.2.epil.init = phi i64 [ 0, %._crit_edge398.1 ], [ %i.aad, %.thread340.loopexit.unr-lcssa ]
  %lcmp.mod521 = icmp ne i64 %xtraiter518, 0
  tail call void @llvm.assume(i1 %lcmp.mod521)
  br label %.preheader.2.epil

.preheader.2.epil:                                ; preds = %.preheader.2.epil, %.preheader.2.epil.preheader
  %.0224397.2.epil = phi i64 [ %.0224397.2.epil.init, %.preheader.2.epil.preheader ], [ %i.aaf, %.preheader.2.epil ] ; 2 uses
  %epil.iter519 = phi i64 [ 0, %.preheader.2.epil.preheader ], [ %epil.iter519.next, %.preheader.2.epil ]
  %factor.op.mul.reass.2.epil = mul i64 %factor.op.mul396, %.0224397.2.epil
  %i.aae = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aae, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.aaf = add nuw i64 %.0224397.2.epil, 1
  %epil.iter519.next = add i64 %epil.iter519, 1   ; 2 uses
  %epil.iter519.cmp.not = icmp eq i64 %epil.iter519.next, %xtraiter518
  br i1 %epil.iter519.cmp.not, label %.thread340, label %.preheader.2.epil, !llvm.loop !107

.thread340:                                       ; preds = %bb.y, %.thread340.loopexit.unr-lcssa, %.preheader.2.epil, %.critedge258, %.thread337, %bb.m, %bb.n, %bb.l, %.thread312, %bb.j, %.thread, %bb.h, %bb.f, %bb.d, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit, %.critedge260, %.critedge
  %.sroa.0286.12 = phi i32 [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %.critedge ], [ 1, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit ], [ 1, %bb.d ], [ 1, %bb.j ], [ 1, %bb.f ], [ 0, %.critedge258 ], [ 1, %.thread ], [ 1, %.thread312 ], [ 1, %bb.l ], [ 1, %.thread337 ], [ 1, %.critedge260 ], [ 1, %bb.h ], [ 0, %.thread340.loopexit.unr-lcssa ], [ 0, %.preheader.2.epil ], [ 1, %bb.y ]
  %i.aag = load ptr, ptr %6, align 8, !tbaa !22   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aag, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.thread340
  %i.aah = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.aai = ptrtoint ptr %i.aah to i64
  %i.aaj = ptrtoint ptr %i.aag to i64
  %i.aak = sub i64 %i.aai, %i.aaj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aag, i64 noundef %i.aak) #36
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit: ; preds = %.thread340, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret i32 %.sroa.0286.12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN3jxl6N_SSE219GetQuantWeightsDCT2ERKNSt3__15arrayINS2_IfLm6EEELm3EEEPf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(72) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #12 {
.preheader82:
  store float 2.989000e+03, ptr %1, align 4, !tbaa !10
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float %i.a, ptr %i.b, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.a, ptr %i.c, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.e, ptr %i.f, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.h, ptr %i.i, align 4, !tbaa !10
  store float %i.h, ptr %2, align 4, !tbaa !10
  %i.j = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.j, ptr %i.k, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.j, ptr %i.l, align 4, !tbaa !10
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.m, ptr %i.n, align 4, !tbaa !10
  store float %i.m, ptr %3, align 4, !tbaa !10
  %i.o = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.o, ptr %i.p, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 100
  store float %i.o, ptr %i.q, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float %i.s, ptr %i.t, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.s, ptr %i.u, align 4, !tbaa !10
  %i.v = load float, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  store float %i.v, ptr %i.w, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float %i.v, ptr %i.x, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.z = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.z, ptr %i.aa, align 4, !tbaa !10
  store float %i.z, ptr %4, align 4, !tbaa !10
  %i.ab = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.ab, ptr %i.ac, align 4, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 132
  store float %i.ab, ptr %i.ad, align 4, !tbaa !10
  %i.ae = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.ae, ptr %i.af, align 4, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 136
  store float %i.ae, ptr %i.ag, align 4, !tbaa !10
  %i.ah = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.ah, ptr %i.ai, align 4, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 140
  store float %i.ah, ptr %i.aj, align 4, !tbaa !10
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ak = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.ak, ptr %i.al, align 4, !tbaa !10
  store float %i.ak, ptr %5, align 4, !tbaa !10
  %i.am = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.am, ptr %i.an, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 164
  store float %i.am, ptr %i.ao, align 4, !tbaa !10
  %i.ap = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.ap, ptr %i.aq, align 4, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 168
  store float %i.ap, ptr %i.ar, align 4, !tbaa !10
  %i.as = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %i.as, ptr %i.at, align 4, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 172
  store float %i.as, ptr %i.au, align 4, !tbaa !10
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.av = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.av, ptr %i.aw, align 4, !tbaa !10
  store float %i.av, ptr %6, align 4, !tbaa !10
  %i.ax = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.ax, ptr %i.ay, align 4, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 196
  store float %i.ax, ptr %i.az, align 4, !tbaa !10
  %i.ba = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.ba, ptr %i.bb, align 4, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 200
  store float %i.ba, ptr %i.bc, align 4, !tbaa !10
  %i.bd = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.bd, ptr %i.be, align 4, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 204
  store float %i.bd, ptr %i.bf, align 4, !tbaa !10
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bg = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float %i.bg, ptr %i.bh, align 4, !tbaa !10
  store float %i.bg, ptr %7, align 4, !tbaa !10
  %i.bi = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.bi, ptr %i.bj, align 4, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 228
  store float %i.bi, ptr %i.bk, align 4, !tbaa !10
  %i.bl = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %i.bl, ptr %i.bm, align 4, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 232
  store float %i.bl, ptr %i.bn, align 4, !tbaa !10
  %i.bo = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float %i.bo, ptr %i.bp, align 4, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 236
  store float %i.bo, ptr %i.bq, align 4, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144
  store float %i.bs, ptr %i.bt, align 4, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 148
  store float %i.bs, ptr %i.bu, align 4, !tbaa !10
  %i.bv = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 152
  store float %i.bv, ptr %i.bw, align 4, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 156
  store float %i.bv, ptr %i.bx, align 4, !tbaa !10
  %i.by = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 176
  store float %i.by, ptr %i.bz, align 4, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 180
  store float %i.by, ptr %i.ca, align 4, !tbaa !10
  %i.cb = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 184
  store float %i.cb, ptr %i.cc, align 4, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 188
  store float %i.cb, ptr %i.cd, align 4, !tbaa !10
  %i.ce = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 208
  store float %i.ce, ptr %i.cf, align 4, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 212
  store float %i.ce, ptr %i.cg, align 4, !tbaa !10
  %i.ch = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 216
  store float %i.ch, ptr %i.ci, align 4, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 220
  store float %i.ch, ptr %i.cj, align 4, !tbaa !10
  %i.ck = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 240
  store float %i.ck, ptr %i.cl, align 4, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 244
  store float %i.ck, ptr %i.cm, align 4, !tbaa !10
  %i.cn = load float, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 248
  store float %i.cn, ptr %i.co, align 4, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 252
  store float %i.cn, ptr %i.cp, align 4, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 256
  store float 2.989000e+03, ptr %i.cq, align 4, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !10 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 288
  store float %i.cs, ptr %i.ct, align 4, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 260
  store float %i.cs, ptr %i.cu, align 4, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !10
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 292
  store float %i.cw, ptr %i.cx, align 4, !tbaa !10
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !10 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 264
  store float %i.cz, ptr %i.da, align 4, !tbaa !10
  store float %i.cz, ptr %8, align 4, !tbaa !10
  %i.db = load float, ptr %i.cy, align 4, !tbaa !10 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 268
  store float %i.db, ptr %i.dc, align 4, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 324
  store float %i.db, ptr %i.dd, align 4, !tbaa !10
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.de = load float, ptr %i.cy, align 4, !tbaa !10 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 296
  store float %i.de, ptr %i.df, align 4, !tbaa !10
  store float %i.de, ptr %9, align 4, !tbaa !10
  %i.dg = load float, ptr %i.cy, align 4, !tbaa !10 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 300
  store float %i.dg, ptr %i.dh, align 4, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 356
  store float %i.dg, ptr %i.di, align 4, !tbaa !10
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !10 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 328
  store float %i.dk, ptr %i.dl, align 4, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 332
  store float %i.dk, ptr %i.dm, align 4, !tbaa !10
  %i.dn = load float, ptr %i.dj, align 4, !tbaa !10 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 360
  store float %i.dn, ptr %i.do, align 4, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 364
  store float %i.dn, ptr %i.dp, align 4, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 272
  store float %i.dr, ptr %i.ds, align 4, !tbaa !10
  store float %i.dr, ptr %10, align 4, !tbaa !10
  %i.dt = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 276
  store float %i.dt, ptr %i.du, align 4, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 388
  store float %i.dt, ptr %i.dv, align 4, !tbaa !10
  %i.dw = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 280
  store float %i.dw, ptr %i.dx, align 4, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 392
  store float %i.dw, ptr %i.dy, align 4, !tbaa !10
  %i.dz = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 284
  store float %i.dz, ptr %i.ea, align 4, !tbaa !10
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 396
  store float %i.dz, ptr %i.eb, align 4, !tbaa !10
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ec = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 304
  store float %i.ec, ptr %i.ed, align 4, !tbaa !10
  store float %i.ec, ptr %11, align 4, !tbaa !10
  %i.ee = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 308
  store float %i.ee, ptr %i.ef, align 4, !tbaa !10
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 420
  store float %i.ee, ptr %i.eg, align 4, !tbaa !10
  %i.eh = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 312
  store float %i.eh, ptr %i.ei, align 4, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 424
  store float %i.eh, ptr %i.ej, align 4, !tbaa !10
  %i.ek = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 316
  store float %i.ek, ptr %i.el, align 4, !tbaa !10
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 428
  store float %i.ek, ptr %i.em, align 4, !tbaa !10
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.en = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 336
  store float %i.en, ptr %i.eo, align 4, !tbaa !10
  store float %i.en, ptr %12, align 4, !tbaa !10
  %i.ep = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 340
  store float %i.ep, ptr %i.eq, align 4, !tbaa !10
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 452
  store float %i.ep, ptr %i.er, align 4, !tbaa !10
  %i.es = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 344
  store float %i.es, ptr %i.et, align 4, !tbaa !10
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 456
  store float %i.es, ptr %i.eu, align 4, !tbaa !10
  %i.ev = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 348
  store float %i.ev, ptr %i.ew, align 4, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 460
  store float %i.ev, ptr %i.ex, align 4, !tbaa !10
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ey = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 368
  store float %i.ey, ptr %i.ez, align 4, !tbaa !10
  store float %i.ey, ptr %13, align 4, !tbaa !10
  %i.fa = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 372
  store float %i.fa, ptr %i.fb, align 4, !tbaa !10
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 484
  store float %i.fa, ptr %i.fc, align 4, !tbaa !10
  %i.fd = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 376
  store float %i.fd, ptr %i.fe, align 4, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 488
  store float %i.fd, ptr %i.ff, align 4, !tbaa !10
  %i.fg = load float, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 380
  store float %i.fg, ptr %i.fh, align 4, !tbaa !10
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 492
  store float %i.fg, ptr %i.fi, align 4, !tbaa !10
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 400
  store float %i.fk, ptr %i.fl, align 4, !tbaa !10
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 404
  store float %i.fk, ptr %i.fm, align 4, !tbaa !10
  %i.fn = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 408
  store float %i.fn, ptr %i.fo, align 4, !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 412
  store float %i.fn, ptr %i.fp, align 4, !tbaa !10
  %i.fq = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 432
  store float %i.fq, ptr %i.fr, align 4, !tbaa !10
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 436
  store float %i.fq, ptr %i.fs, align 4, !tbaa !10
  %i.ft = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 440
  store float %i.ft, ptr %i.fu, align 4, !tbaa !10
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 444
  store float %i.ft, ptr %i.fv, align 4, !tbaa !10
  %i.fw = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 464
  store float %i.fw, ptr %i.fx, align 4, !tbaa !10
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 468
  store float %i.fw, ptr %i.fy, align 4, !tbaa !10
  %i.fz = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 472
  store float %i.fz, ptr %i.ga, align 4, !tbaa !10
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 476
  store float %i.fz, ptr %i.gb, align 4, !tbaa !10
  %i.gc = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 496
  store float %i.gc, ptr %i.gd, align 4, !tbaa !10
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 500
  store float %i.gc, ptr %i.ge, align 4, !tbaa !10
  %i.gf = load float, ptr %i.fj, align 4, !tbaa !10 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 504
  store float %i.gf, ptr %i.gg, align 4, !tbaa !10
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 508
  store float %i.gf, ptr %i.gh, align 4, !tbaa !10
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 512
  store float 2.989000e+03, ptr %i.gi, align 4, !tbaa !10
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !10 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 544
  store float %i.gk, ptr %i.gl, align 4, !tbaa !10
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 516
  store float %i.gk, ptr %i.gm, align 4, !tbaa !10
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.go = load float, ptr %i.gn, align 4, !tbaa !10
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 548
  store float %i.go, ptr %i.gp, align 4, !tbaa !10
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !10 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 520
  store float %i.gr, ptr %i.gs, align 4, !tbaa !10
  store float %i.gr, ptr %14, align 4, !tbaa !10
  %i.gt = load float, ptr %i.gq, align 4, !tbaa !10 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 524
  store float %i.gt, ptr %i.gu, align 4, !tbaa !10
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 580
  store float %i.gt, ptr %i.gv, align 4, !tbaa !10
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.gw = load float, ptr %i.gq, align 4, !tbaa !10 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 552
  store float %i.gw, ptr %i.gx, align 4, !tbaa !10
  store float %i.gw, ptr %15, align 4, !tbaa !10
  %i.gy = load float, ptr %i.gq, align 4, !tbaa !10 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 556
  store float %i.gy, ptr %i.gz, align 4, !tbaa !10
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 612
  store float %i.gy, ptr %i.ha, align 4, !tbaa !10
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !10 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 584
  store float %i.hc, ptr %i.hd, align 4, !tbaa !10
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 588
  store float %i.hc, ptr %i.he, align 4, !tbaa !10
  %i.hf = load float, ptr %i.hb, align 4, !tbaa !10 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 616
  store float %i.hf, ptr %i.hg, align 4, !tbaa !10
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 620
  store float %i.hf, ptr %i.hh, align 4, !tbaa !10
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 16 uses
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 528
  store float %i.hj, ptr %i.hk, align 4, !tbaa !10
  store float %i.hj, ptr %16, align 4, !tbaa !10
  %i.hl = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 532
  store float %i.hl, ptr %i.hm, align 4, !tbaa !10
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 644
  store float %i.hl, ptr %i.hn, align 4, !tbaa !10
  %i.ho = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 536
  store float %i.ho, ptr %i.hp, align 4, !tbaa !10
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 648
  store float %i.ho, ptr %i.hq, align 4, !tbaa !10
  %i.hr = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 540
  store float %i.hr, ptr %i.hs, align 4, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 652
  store float %i.hr, ptr %i.ht, align 4, !tbaa !10
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.hu = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 560
  store float %i.hu, ptr %i.hv, align 4, !tbaa !10
  store float %i.hu, ptr %17, align 4, !tbaa !10
  %i.hw = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 564
  store float %i.hw, ptr %i.hx, align 4, !tbaa !10
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 676
  store float %i.hw, ptr %i.hy, align 4, !tbaa !10
  %i.hz = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 568
  store float %i.hz, ptr %i.ia, align 4, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 680
  store float %i.hz, ptr %i.ib, align 4, !tbaa !10
  %i.ic = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 572
  store float %i.ic, ptr %i.id, align 4, !tbaa !10
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 684
  store float %i.ic, ptr %i.ie, align 4, !tbaa !10
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.if = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 592
  store float %i.if, ptr %i.ig, align 4, !tbaa !10
  store float %i.if, ptr %18, align 4, !tbaa !10
  %i.ih = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 596
  store float %i.ih, ptr %i.ii, align 4, !tbaa !10
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 708
  store float %i.ih, ptr %i.ij, align 4, !tbaa !10
  %i.ik = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 600
  store float %i.ik, ptr %i.il, align 4, !tbaa !10
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 712
  store float %i.ik, ptr %i.im, align 4, !tbaa !10
  %i.in = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 604
  store float %i.in, ptr %i.io, align 4, !tbaa !10
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 716
  store float %i.in, ptr %i.ip, align 4, !tbaa !10
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.iq = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 624
  store float %i.iq, ptr %i.ir, align 4, !tbaa !10
  store float %i.iq, ptr %19, align 4, !tbaa !10
  %i.is = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 628
  store float %i.is, ptr %i.it, align 4, !tbaa !10
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 740
  store float %i.is, ptr %i.iu, align 4, !tbaa !10
  %i.iv = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 632
  store float %i.iv, ptr %i.iw, align 4, !tbaa !10
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 744
  store float %i.iv, ptr %i.ix, align 4, !tbaa !10
  %i.iy = load float, ptr %i.hi, align 4, !tbaa !10 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 636
  store float %i.iy, ptr %i.iz, align 4, !tbaa !10
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 748
  store float %i.iy, ptr %i.ja, align 4, !tbaa !10
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 8 uses
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 656
  store float %i.jc, ptr %i.jd, align 4, !tbaa !10
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 660
  store float %i.jc, ptr %i.je, align 4, !tbaa !10
  %i.jf = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 664
  store float %i.jf, ptr %i.jg, align 4, !tbaa !10
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 668
  store float %i.jf, ptr %i.jh, align 4, !tbaa !10
  %i.ji = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 688
  store float %i.ji, ptr %i.jj, align 4, !tbaa !10
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 692
  store float %i.ji, ptr %i.jk, align 4, !tbaa !10
  %i.jl = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 696
  store float %i.jl, ptr %i.jm, align 4, !tbaa !10
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 700
  store float %i.jl, ptr %i.jn, align 4, !tbaa !10
  %i.jo = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 720
  store float %i.jo, ptr %i.jp, align 4, !tbaa !10
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 724
  store float %i.jo, ptr %i.jq, align 4, !tbaa !10
  %i.jr = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 728
  store float %i.jr, ptr %i.js, align 4, !tbaa !10
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 732
  store float %i.jr, ptr %i.jt, align 4, !tbaa !10
  %i.ju = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 752
  store float %i.ju, ptr %i.jv, align 4, !tbaa !10
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 756
  store float %i.ju, ptr %i.jw, align 4, !tbaa !10
  %i.jx = load float, ptr %i.jb, align 4, !tbaa !10 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 760
  store float %i.jx, ptr %i.jy, align 4, !tbaa !10
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 764
  store float %i.jx, ptr %i.jz, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN3jxl6N_SSE223GetQuantWeightsIdentityERKNSt3__15arrayINS2_IfLm3EEELm3EEEPf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #12 {
.preheader:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  store float %i.a, ptr %1, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store float %i.a, ptr %i.b, align 4, !tbaa !10
  %i.c = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.c, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.c, ptr %i.e, align 4, !tbaa !10
  %i.f = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.f, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.f, ptr %i.h, align 4, !tbaa !10
  %i.i = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.i, ptr %i.j, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.i, ptr %i.k, align 4, !tbaa !10
  %i.l = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store float %i.l, ptr %i.m, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  store float %i.l, ptr %i.n, align 4, !tbaa !10
  %i.o = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.o, ptr %i.p, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.o, ptr %i.q, align 4, !tbaa !10
  %i.r = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.r, ptr %i.s, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.r, ptr %i.t, align 4, !tbaa !10
  %i.u = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.u, ptr %i.v, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %i.u, ptr %i.w, align 4, !tbaa !10
  %i.x = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  store float %i.x, ptr %i.y, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.x, ptr %i.z, align 4, !tbaa !10
  %i.aa = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float %i.aa, ptr %i.ab, align 4, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.aa, ptr %i.ac, align 4, !tbaa !10
  %i.ad = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.ad, ptr %i.ae, align 4, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.ad, ptr %i.af, align 4, !tbaa !10
  %i.ag = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.ag, ptr %i.ah, align 4, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.ag, ptr %i.ai, align 4, !tbaa !10
  %i.aj = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96
  store float %i.aj, ptr %i.ak, align 4, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 100
  store float %i.aj, ptr %i.al, align 4, !tbaa !10
  %i.am = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  store float %i.am, ptr %i.an, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float %i.am, ptr %i.ao, align 4, !tbaa !10
  %i.ap = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float %i.ap, ptr %i.aq, align 4, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.ap, ptr %i.ar, align 4, !tbaa !10
  %i.as = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %i.as, ptr %i.at, align 4, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float %i.as, ptr %i.au, align 4, !tbaa !10
  %i.av = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 128
  store float %i.av, ptr %i.aw, align 4, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 132
  store float %i.av, ptr %i.ax, align 4, !tbaa !10
  %i.ay = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 136
  store float %i.ay, ptr %i.az, align 4, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 140
  store float %i.ay, ptr %i.ba, align 4, !tbaa !10
  %i.bb = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 144
  store float %i.bb, ptr %i.bc, align 4, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 148
  store float %i.bb, ptr %i.bd, align 4, !tbaa !10
  %i.be = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 152
  store float %i.be, ptr %i.bf, align 4, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 156
  store float %i.be, ptr %i.bg, align 4, !tbaa !10
  %i.bh = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 160
  store float %i.bh, ptr %i.bi, align 4, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 164
  store float %i.bh, ptr %i.bj, align 4, !tbaa !10
  %i.bk = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 168
  store float %i.bk, ptr %i.bl, align 4, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 172
  store float %i.bk, ptr %i.bm, align 4, !tbaa !10
  %i.bn = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 176
  store float %i.bn, ptr %i.bo, align 4, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 180
  store float %i.bn, ptr %i.bp, align 4, !tbaa !10
  %i.bq = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 184
  store float %i.bq, ptr %i.br, align 4, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 188
  store float %i.bq, ptr %i.bs, align 4, !tbaa !10
  %i.bt = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 192
  store float %i.bt, ptr %i.bu, align 4, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 196
  store float %i.bt, ptr %i.bv, align 4, !tbaa !10
  %i.bw = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 200
  store float %i.bw, ptr %i.bx, align 4, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 204
  store float %i.bw, ptr %i.by, align 4, !tbaa !10
  %i.bz = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 208
  store float %i.bz, ptr %i.ca, align 4, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 212
  store float %i.bz, ptr %i.cb, align 4, !tbaa !10
  %i.cc = load float, ptr %0, align 4, !tbaa !10  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 216
  store float %i.cc, ptr %i.cd, align 4, !tbaa !10
end_hunk_2
begin_hunk_3_@_ZN3jxl6N_SSE217ComputeQuantTableERKNS_13QuantEncodingEPfS4_mNS_10QuantTableEPm:bb.a
  %i.mn = fcmp oge <4 x float> %.v.i.i.i.i.1, splat (float f0x4F000000)
  %i.mo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %.v.i.i.i.i.1)
  %i.mp = shl <4 x i32> %i.mo, splat (i32 23)
  %i.mq = add <4 x i32> %i.mp, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.mr = bitcast <4 x i32> %i.mq to <4 x float>
  %i.ms = select <4 x i1> %i.mn, <4 x float> <float 5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.mr
  %i.mt = extractelement <4 x float> %.v.i.i.i.i.1, i64 0
  %i.mu = fsub float %i.me, %i.mt                 ; 2 uses
  %i.mv = extractelement <4 x float> %i.ms, i64 0
  %i.mw = fmul float %i.mu, f0x3E5749EE
  %i.mx = insertelement <2 x float> poison, float %i.mu, i64 0 ; 2 uses
  %i.my = insertelement <2 x float> %i.mx, float %i.mw, i64 1
  %i.mz = fadd <2 x float> %i.my, <float f0x4122CC6B, float f0xBCB621BE>
  %i.na = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nb = fmul <2 x float> %i.na, %i.mz
  %i.nc = fadd <2 x float> %i.nb, <float f0x424379A1, float -1.944150e+01>
  %i.nd = fmul <2 x float> %i.na, %i.nc
  %i.ne = fadd <2 x float> %i.nd, <float f0x42C519F0, float f0x42C519F1> ; 2 uses
  %i.nf = extractelement <2 x float> %i.ne, i64 0
  %i.ng = fmul float %i.mv, %i.nf
  %i.nh = extractelement <2 x float> %i.ne, i64 1
  %i.ni = fdiv float %i.ng, %i.nh
  %i.nj = fmul float %i.lb, %i.ni
  %.val261.val.1 = load ptr, ptr %6, align 8, !tbaa !22
  %i.nk = getelementptr [4 x i8], ptr %.val261.val.1, i64 %i.hj
  %i.nl = getelementptr i8, ptr %i.nk, i64 %i.hy
  %i.nm = getelementptr i8, ptr %i.nl, i64 8
  store float %i.nj, ptr %i.nm, align 4, !tbaa !10
  br label %.thread474

.thread474:                                       ; preds = %.preheader366, %_ZN3jxl6N_SSE211InterpolateEffPKfm.exit.thread322.1
  %i.nn = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.no = load float, ptr %i.nn, align 8, !tbaa !10
  %i.np = fadd float %i.no, f0xBF5A0E1E
  %i.nq = fmul float %i.np, 3.000000e+00
  %i.nr = fdiv float %i.nq, f0x4141EB0C           ; 2 uses
  %i.ns = fptoui float %i.nr to i64               ; 3 uses
  %i.nt = add i64 %i.ns, 1                        ; 2 uses
  %i.nu = icmp ult i64 %i.nt, 4
  br i1 %i.nu, label %bb.v, label %.thread337

bb.v:                                             ; preds = %.thread474
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ns
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !10, !noalias !136 ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.nt
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !10, !noalias !136
  %i.nz = fdiv float %i.ny, %i.nw
  %i.oa = uitofp i64 %i.ns to float
  %i.ob = fsub float %i.nr, %i.oa
  %i.oc = insertelement <4 x float> poison, float %i.nz, i64 0
  %i.od = bitcast <4 x float> %i.oc to <4 x i32>
  %i.oe = shufflevector <4 x i32> %i.od, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.of = add <4 x i32> %i.oe, splat (i32 -1059760811) ; 2 uses
  %i.og = ashr <4 x i32> %i.of, splat (i32 23)
  %i.oh = and <4 x i32> %i.of, <i32 -8388608, i32 poison, i32 poison, i32 poison>
  %i.oi = sub <4 x i32> %i.oe, %i.oh
  %i.oj = bitcast <4 x i32> %i.oi to <4 x float>
  %i.ok = sitofp <4 x i32> %i.og to <4 x float>
  fence acq_rel
  %i.ol = extractelement <4 x float> %i.oj, i64 0
  %i.om = fadd float %i.ol, -1.000000e+00
  fence acq_rel
  %i.on = insertelement <2 x float> poison, float %i.om, i64 0
  %i.oo = shufflevector <2 x float> %i.on, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.op = fmul <2 x float> %i.oo, <float f0x3F3E11C7, float f0x3E32458C>
  %i.oq = fadd <2 x float> %i.op, <float f0x3FB6E02B, float f0x3F813CED>
  %i.or = fmul <2 x float> %i.oo, %i.oq
  %i.os = fadd <2 x float> %i.or, <float f0xB5F85AB0, float f0x3F7D8625> ; 2 uses
  %i.ot = extractelement <2 x float> %i.os, i64 0
  %i.ou = extractelement <2 x float> %i.os, i64 1
  %i.ov = fdiv float %i.ot, %i.ou
  %i.ow = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ov, i64 0
  %i.ox = fadd <4 x float> %i.ow, %i.ok           ; 2 uses
  %i.oy = extractelement <4 x float> %i.ox, i64 0
  %i.oz = fmul float %i.ob, %i.oy                 ; 2 uses
  %i.pa = insertelement <4 x float> %i.ox, float %i.oz, i64 0 ; 4 uses
  %i.pb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.pa)
  %i.pc = sitofp <4 x i32> %i.pb to <4 x float>   ; 2 uses
  %i.pd = fcmp olt <4 x float> %i.pa, %i.pc
  %i.pe = sitofp <4 x i1> %i.pd to <4 x float>
  %i.pf = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pa)
  %i.pg = fcmp uge <4 x float> %i.pf, splat (float f0x4B000000)
  %i.ph = fadd <4 x float> %i.pc, %i.pe
  %.v.i.i.i.i.2 = select <4 x i1> %i.pg, <4 x float> %i.pa, <4 x float> %i.ph ; 3 uses
  %i.pi = fcmp oge <4 x float> %.v.i.i.i.i.2, splat (float f0x4F000000)
  %i.pj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %.v.i.i.i.i.2)
  %i.pk = shl <4 x i32> %i.pj, splat (i32 23)
  %i.pl = add <4 x i32> %i.pk, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.pm = bitcast <4 x i32> %i.pl to <4 x float>
  %i.pn = select <4 x i1> %i.pi, <4 x float> <float 5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.pm
  %i.po = extractelement <4 x float> %.v.i.i.i.i.2, i64 0
  %i.pp = fsub float %i.oz, %i.po                 ; 2 uses
  %i.pq = extractelement <4 x float> %i.pn, i64 0
  %i.pr = fmul float %i.pp, f0x3E5749EE
  %i.ps = insertelement <2 x float> poison, float %i.pp, i64 0 ; 2 uses
  %i.pt = insertelement <2 x float> %i.ps, float %i.pr, i64 1
  %i.pu = fadd <2 x float> %i.pt, <float f0x4122CC6B, float f0xBCB621BE>
  %i.pv = shufflevector <2 x float> %i.ps, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pw = fmul <2 x float> %i.pv, %i.pu
  %i.px = fadd <2 x float> %i.pw, <float f0x424379A1, float -1.944150e+01>
  %i.py = fmul <2 x float> %i.pv, %i.px
  %i.pz = fadd <2 x float> %i.py, <float f0x42C519F0, float f0x42C519F1> ; 2 uses
  %i.qa = extractelement <2 x float> %i.pz, i64 0
  %i.qb = fmul float %i.pq, %i.qa
  %i.qc = extractelement <2 x float> %i.pz, i64 1
  %i.qd = fdiv float %i.qb, %i.qc
  %i.qe = fmul float %i.nw, %i.qd
  %.val261.val.2 = load ptr, ptr %6, align 8, !tbaa !22
  %i.qf = getelementptr [4 x i8], ptr %.val261.val.2, i64 %i.hj
  %i.qg = getelementptr i8, ptr %i.qf, i64 %i.hy
  %i.qh = getelementptr i8, ptr %i.qg, i64 16
  store float %i.qe, ptr %i.qh, align 4, !tbaa !10
  %i.qi = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !10
  %i.qk = fadd float %i.qj, f0xBF5A0E1E
  %i.ql = fmul float %i.qk, 3.000000e+00
  %i.qm = fdiv float %i.ql, f0x4141EB0C           ; 2 uses
  %i.qn = fptoui float %i.qm to i64               ; 3 uses
  %i.qo = add i64 %i.qn, 1                        ; 2 uses
  %i.qp = icmp ult i64 %i.qo, 4
  br i1 %i.qp, label %bb.w, label %.thread337

bb.w:                                             ; preds = %bb.v
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.qn
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !10, !noalias !136 ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.qo
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !10, !noalias !136
  %i.qu = fdiv float %i.qt, %i.qr
  %i.qv = uitofp i64 %i.qn to float
  %i.qw = fsub float %i.qm, %i.qv
  %i.qx = insertelement <4 x float> poison, float %i.qu, i64 0
  %i.qy = bitcast <4 x float> %i.qx to <4 x i32>
  %i.qz = shufflevector <4 x i32> %i.qy, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ra = add <4 x i32> %i.qz, splat (i32 -1059760811) ; 2 uses
  %i.rb = ashr <4 x i32> %i.ra, splat (i32 23)
  %i.rc = and <4 x i32> %i.ra, <i32 -8388608, i32 poison, i32 poison, i32 poison>
  %i.rd = sub <4 x i32> %i.qz, %i.rc
  %i.re = bitcast <4 x i32> %i.rd to <4 x float>
  %i.rf = sitofp <4 x i32> %i.rb to <4 x float>
  fence acq_rel
  %i.rg = extractelement <4 x float> %i.re, i64 0
  %i.rh = fadd float %i.rg, -1.000000e+00
  fence acq_rel
  %i.ri = insertelement <2 x float> poison, float %i.rh, i64 0
  %i.rj = shufflevector <2 x float> %i.ri, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rk = fmul <2 x float> %i.rj, <float f0x3F3E11C7, float f0x3E32458C>
  %i.rl = fadd <2 x float> %i.rk, <float f0x3FB6E02B, float f0x3F813CED>
  %i.rm = fmul <2 x float> %i.rj, %i.rl
  %i.rn = fadd <2 x float> %i.rm, <float f0xB5F85AB0, float f0x3F7D8625> ; 2 uses
  %i.ro = extractelement <2 x float> %i.rn, i64 0
  %i.rp = extractelement <2 x float> %i.rn, i64 1
  %i.rq = fdiv float %i.ro, %i.rp
  %i.rr = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.rq, i64 0
  %i.rs = fadd <4 x float> %i.rr, %i.rf           ; 2 uses
  %i.rt = extractelement <4 x float> %i.rs, i64 0
  %i.ru = fmul float %i.qw, %i.rt                 ; 2 uses
  %i.rv = insertelement <4 x float> %i.rs, float %i.ru, i64 0 ; 4 uses
  %i.rw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.rv)
  %i.rx = sitofp <4 x i32> %i.rw to <4 x float>   ; 2 uses
  %i.ry = fcmp olt <4 x float> %i.rv, %i.rx
  %i.rz = sitofp <4 x i1> %i.ry to <4 x float>
  %i.sa = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rv)
  %i.sb = fcmp uge <4 x float> %i.sa, splat (float f0x4B000000)
  %i.sc = fadd <4 x float> %i.rx, %i.rz
  %.v.i.i.i.i.3 = select <4 x i1> %i.sb, <4 x float> %i.rv, <4 x float> %i.sc ; 3 uses
  %i.sd = fcmp oge <4 x float> %.v.i.i.i.i.3, splat (float f0x4F000000)
  %i.se = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %.v.i.i.i.i.3)
  %i.sf = shl <4 x i32> %i.se, splat (i32 23)
  %i.sg = add <4 x i32> %i.sf, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.sh = bitcast <4 x i32> %i.sg to <4 x float>
  %i.si = select <4 x i1> %i.sd, <4 x float> <float 5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.sh
  %i.sj = extractelement <4 x float> %.v.i.i.i.i.3, i64 0
  %i.sk = fsub float %i.ru, %i.sj                 ; 2 uses
  %i.sl = extractelement <4 x float> %i.si, i64 0
  %i.sm = fmul float %i.sk, f0x3E5749EE
  %i.sn = insertelement <2 x float> poison, float %i.sk, i64 0 ; 2 uses
  %i.so = insertelement <2 x float> %i.sn, float %i.sm, i64 1
  %i.sp = fadd <2 x float> %i.so, <float f0x4122CC6B, float f0xBCB621BE>
  %i.sq = shufflevector <2 x float> %i.sn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sr = fmul <2 x float> %i.sq, %i.sp
  %i.ss = fadd <2 x float> %i.sr, <float f0x424379A1, float -1.944150e+01>
  %i.st = fmul <2 x float> %i.sq, %i.ss
  %i.su = fadd <2 x float> %i.st, <float f0x42C519F0, float f0x42C519F1> ; 2 uses
  %i.sv = extractelement <2 x float> %i.su, i64 0
  %i.sw = fmul float %i.sl, %i.sv
  %i.sx = extractelement <2 x float> %i.su, i64 1
  %i.sy = fdiv float %i.sw, %i.sx
  %i.sz = fmul float %i.qr, %i.sy
  %.val261.val.3 = load ptr, ptr %6, align 8, !tbaa !22
  %i.ta = getelementptr [4 x i8], ptr %.val261.val.3, i64 %i.hj
  %i.tb = getelementptr i8, ptr %i.ta, i64 %i.hy
  %i.tc = getelementptr i8, ptr %i.tb, i64 24
  store float %i.sz, ptr %i.tc, align 4, !tbaa !10
  %i.td = add nuw nsw i64 %.0240374, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.td, 4
  br i1 %exitcond.not, label %bb.x, label %.preheader366, !llvm.loop !129

bb.x:                                             ; preds = %bb.w
  %.idx250 = shl nuw nsw i64 %.0242379, 7
  %i.te = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx250 ; 9 uses
  %i.tf = mul i64 %.0242379, %i.n
  %i.tg = load ptr, ptr %6, align 8               ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.tf ; 24 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 36
  %i.tk = load <4 x float>, ptr %i.ti, align 4, !tbaa !10
  store <4 x float> %i.tk, ptr %i.tj, align 4, !tbaa !10
  %i.tl = getelementptr inbounds nuw i8, ptr %i.te, i64 20
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 52
  %i.tn = load <2 x float>, ptr %i.tl, align 4, !tbaa !10
  store <2 x float> %i.tn, ptr %i.tm, align 4, !tbaa !10
  %i.to = getelementptr inbounds nuw i8, ptr %i.te, i64 28
  %i.tp = load float, ptr %i.to, align 4, !tbaa !10
  %i.tq = getelementptr inbounds nuw i8, ptr %i.th, i64 60
  store float %i.tp, ptr %i.tq, align 4, !tbaa !10
  %i.tr = getelementptr inbounds nuw i8, ptr %i.th, i64 96
  %i.ts = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  %i.tt = load <4 x float>, ptr %i.ts, align 16, !tbaa !10
  store <4 x float> %i.tt, ptr %i.tr, align 4, !tbaa !10
  %i.tu = getelementptr inbounds nuw i8, ptr %i.te, i64 48
  %i.tv = getelementptr inbounds nuw i8, ptr %i.th, i64 112
  %i.tw = load <4 x float>, ptr %i.tu, align 16, !tbaa !10
  store <4 x float> %i.tw, ptr %i.tv, align 4, !tbaa !10
  %i.tx = getelementptr inbounds nuw i8, ptr %i.th, i64 160
  %i.ty = getelementptr inbounds nuw i8, ptr %i.te, i64 64
  %i.tz = load <4 x float>, ptr %i.ty, align 16, !tbaa !10
  store <4 x float> %i.tz, ptr %i.tx, align 4, !tbaa !10
  %i.ua = getelementptr inbounds nuw i8, ptr %i.te, i64 80
  %i.ub = getelementptr inbounds nuw i8, ptr %i.th, i64 176
  %i.uc = load <4 x float>, ptr %i.ua, align 16, !tbaa !10
  store <4 x float> %i.uc, ptr %i.ub, align 4, !tbaa !10
  %i.ud = getelementptr inbounds nuw i8, ptr %i.th, i64 224
  %i.ue = getelementptr inbounds nuw i8, ptr %i.te, i64 96
  %i.uf = load <4 x float>, ptr %i.ue, align 16, !tbaa !10
  store <4 x float> %i.uf, ptr %i.ud, align 4, !tbaa !10
  %i.ug = getelementptr inbounds nuw i8, ptr %i.te, i64 112
  %i.uh = getelementptr inbounds nuw i8, ptr %i.th, i64 240
  %i.ui = load <4 x float>, ptr %i.ug, align 16, !tbaa !10
  store <4 x float> %i.ui, ptr %i.uh, align 4, !tbaa !10
  %i.uj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hj ; 15 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !10
  %i.um = getelementptr inbounds nuw i8, ptr %i.th, i64 12
  store float %i.ul, ptr %i.um, align 4, !tbaa !10
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.uo = load float, ptr %i.un, align 8, !tbaa !10
  %i.up = getelementptr inbounds nuw i8, ptr %i.th, i64 20
  store float %i.uo, ptr %i.up, align 4, !tbaa !10
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uj, i64 12
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !10
  %i.us = getelementptr inbounds nuw i8, ptr %i.th, i64 28
  store float %i.ur, ptr %i.us, align 4, !tbaa !10
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %i.uu = load float, ptr %i.ut, align 16, !tbaa !10
  %i.uv = getelementptr inbounds nuw i8, ptr %i.th, i64 68
  store float %i.uu, ptr %i.uv, align 4, !tbaa !10
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uj, i64 20
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !10
  %i.uy = getelementptr inbounds nuw i8, ptr %i.th, i64 76
  store float %i.ux, ptr %i.uy, align 4, !tbaa !10
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uj, i64 24
  %i.va = load float, ptr %i.uz, align 8, !tbaa !10
  %i.vb = getelementptr inbounds nuw i8, ptr %i.th, i64 84
  store float %i.va, ptr %i.vb, align 4, !tbaa !10
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uj, i64 28
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !10
  %i.ve = getelementptr inbounds nuw i8, ptr %i.th, i64 92
  store float %i.vd, ptr %i.ve, align 4, !tbaa !10
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uj, i64 32
  %i.vg = load float, ptr %i.vf, align 16, !tbaa !10
  %i.vh = getelementptr inbounds nuw i8, ptr %i.th, i64 132
  store float %i.vg, ptr %i.vh, align 4, !tbaa !10
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uj, i64 36
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !10
  %i.vk = getelementptr inbounds nuw i8, ptr %i.th, i64 140
  store float %i.vj, ptr %i.vk, align 4, !tbaa !10
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uj, i64 40
  %i.vm = load float, ptr %i.vl, align 8, !tbaa !10
  %i.vn = getelementptr inbounds nuw i8, ptr %i.th, i64 148
  store float %i.vm, ptr %i.vn, align 4, !tbaa !10
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uj, i64 44
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !10
  %i.vq = getelementptr inbounds nuw i8, ptr %i.th, i64 156
  store float %i.vp, ptr %i.vq, align 4, !tbaa !10
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uj, i64 48
  %i.vs = load float, ptr %i.vr, align 16, !tbaa !10
  %i.vt = getelementptr inbounds nuw i8, ptr %i.th, i64 196
  store float %i.vs, ptr %i.vt, align 4, !tbaa !10
  %i.vu = getelementptr inbounds nuw i8, ptr %i.uj, i64 52
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !10
  %i.vw = getelementptr inbounds nuw i8, ptr %i.th, i64 204
  store float %i.vv, ptr %i.vw, align 4, !tbaa !10
  %i.vx = getelementptr inbounds nuw i8, ptr %i.uj, i64 56
  %i.vy = load float, ptr %i.vx, align 8, !tbaa !10
  %i.vz = getelementptr inbounds nuw i8, ptr %i.th, i64 212
  store float %i.vy, ptr %i.vz, align 4, !tbaa !10
  %i.wa = getelementptr inbounds nuw i8, ptr %i.uj, i64 60
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !10
  %i.wc = getelementptr inbounds nuw i8, ptr %i.th, i64 220
  store float %i.wb, ptr %i.wc, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.wd = add nuw nsw i64 %.0242379, 1            ; 2 uses
  %exitcond414.not = icmp eq i64 %i.wd, 3
  br i1 %exitcond414.not, label %bb.y, label %bb.r, !llvm.loop !130

.thread337:                                       ; preds = %bb.r, %.preheader368.preheader, %.preheader368.1, %.preheader368.2, %bb.t, %bb.u, %.thread474, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.thread340

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.loopexit

.loopexit.thread:                                 ; preds = %vector.body, %bb.j, %.preheader362, %bb.g, %bb.e
  %i.we = load i64, ptr %5, align 8, !tbaa !38
  br label %.lr.ph389

.loopexit:                                        ; preds = %bb.y, %bb.m, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.wf = load i64, ptr %5, align 8, !tbaa !38    ; 2 uses
  br i1 %.not.i, label %.critedge258, label %.lr.ph389

.lr.ph389:                                        ; preds = %.loopexit.thread, %.loopexit
  %i.wg = phi i64 [ %i.we, %.loopexit.thread ], [ %i.wf, %.loopexit ] ; 3 uses
  %i.wh = load ptr, ptr %6, align 8, !tbaa !22
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wg
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.wg
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph389, %bb.aa
  %.0233388 = phi i64 [ 0, %.lr.ph389 ], [ %i.wt, %bb.aa ] ; 4 uses
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %.0233388
  %i.wl = load <4 x float>, ptr %i.wk, align 1, !tbaa !15 ; 4 uses
  %i.wm = fcmp oge <4 x float> %i.wl, splat (float 1.000000e+08)
  %i.wn = fcmp olt <4 x float> %i.wl, splat (float f0x322BCC77)
  %i.wo = or <4 x i1> %i.wm, %i.wn
  %i.wp = bitcast <4 x i1> %i.wo to i4
  %or.cond354 = icmp eq i4 %i.wp, 0
  br i1 %or.cond354, label %bb.aa, label %.thread340, !prof !42

bb.aa:                                            ; preds = %bb.z
  %i.wq = fdiv <4 x float> splat (float 1.000000e+00), %i.wl
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %.0233388
  store <4 x float> %i.wq, ptr %i.wr, align 1, !tbaa !15
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.0233388
  store <4 x float> %i.wl, ptr %i.ws, align 1, !tbaa !15
  %i.wt = add nuw i64 %.0233388, 4                ; 2 uses
  %.not255 = icmp ult i64 %i.wt, %i.o
  br i1 %.not255, label %bb.z, label %.critedge258, !llvm.loop !131

.critedge258:                                     ; preds = %bb.aa, %.loopexit.thread475, %.loopexit
  %i.wu = phi i64 [ %i.fg, %.loopexit.thread475 ], [ %i.wf, %.loopexit ], [ %i.wg, %bb.aa ] ; 2 uses
  %i.wv = add i64 %i.wu, %i.o
  store i64 %i.wv, ptr %5, align 8, !tbaa !38
  %i.ww = sext i32 %i.g to i64                    ; 3 uses
  %i.wx = sext i32 %i.k to i64                    ; 3 uses
  %i.wy = tail call noundef i64 @llvm.umin.i64(i64 %i.wx, i64 %i.ww) ; 8 uses
  %i.wz = tail call noundef i64 @llvm.umax.i64(i64 %i.wx, i64 %i.ww) ; 3 uses
  %factor.op.mul396 = shl nsw i64 %i.wz, 3        ; 27 uses
  %factor.op.mul399 = shl nsw i64 %i.ww, 8
  %.not405 = icmp eq i64 %i.wy, 0
  %factor.op.mul = mul i64 %factor.op.mul399, %i.wx ; 2 uses
  %.not406 = icmp eq i64 %i.wz, 0
  %i.xa = getelementptr [4 x i8], ptr %2, i64 %i.wu ; 11 uses
  %brmerge = or i1 %.not405, %.not406
  br i1 %brmerge, label %.thread340, label %.preheader355.preheader

.preheader355.preheader:                          ; preds = %.critedge258
  %i.xb = shl nuw nsw i64 %i.wz, 2                ; 27 uses
  %i.xc = add nsw i64 %i.wy, -1                   ; 3 uses
  %xtraiter = and i64 %i.wy, 7                    ; 3 uses
  %i.xd = icmp ult i64 %i.xc, 7
  br i1 %i.xd, label %.preheader.epil.preheader, label %.preheader355.preheader.new

.preheader355.preheader.new:                      ; preds = %.preheader355.preheader
  %unroll_iter = and i64 %i.wy, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader355.preheader.new
  %.0224397 = phi i64 [ 0, %.preheader355.preheader.new ], [ %i.xt, %.preheader ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader355.preheader.new ], [ %niter.next.7, %.preheader ]
  %factor.op.mul.reass = mul i64 %factor.op.mul396, %.0224397
  %i.xe = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xe, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xf = or disjoint i64 %.0224397, 1
  %factor.op.mul.reass.1484 = mul i64 %factor.op.mul396, %i.xf
  %i.xg = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.1484
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xg, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xh = or disjoint i64 %.0224397, 2
  %factor.op.mul.reass.2487 = mul i64 %factor.op.mul396, %i.xh
  %i.xi = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.2487
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xi, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xj = or disjoint i64 %.0224397, 3
  %factor.op.mul.reass.3 = mul i64 %factor.op.mul396, %i.xj
  %i.xk = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xk, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xl = or disjoint i64 %.0224397, 4
  %factor.op.mul.reass.4 = mul i64 %factor.op.mul396, %i.xl
  %i.xm = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xm, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xn = or disjoint i64 %.0224397, 5
  %factor.op.mul.reass.5 = mul i64 %factor.op.mul396, %i.xn
  %i.xo = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xo, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xp = or disjoint i64 %.0224397, 6
  %factor.op.mul.reass.6 = mul i64 %factor.op.mul396, %i.xp
  %i.xq = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xq, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xr = or disjoint i64 %.0224397, 7
  %factor.op.mul.reass.7 = mul i64 %factor.op.mul396, %i.xr
  %i.xs = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xs, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xt = add nuw i64 %.0224397, 8                ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge398.unr-lcssa, label %.preheader, !llvm.loop !132

._crit_edge398.unr-lcssa:                         ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge398, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge398.unr-lcssa, %.preheader355.preheader
  %.0224397.epil.init = phi i64 [ 0, %.preheader355.preheader ], [ %i.xt, %._crit_edge398.unr-lcssa ]
  %lcmp.mod482 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod482)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.0224397.epil = phi i64 [ %.0224397.epil.init, %.preheader.epil.preheader ], [ %i.xv, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %factor.op.mul.reass.epil = mul i64 %factor.op.mul396, %.0224397.epil
  %i.xu = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xu, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xv = add nuw i64 %.0224397.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
end_hunk_3
