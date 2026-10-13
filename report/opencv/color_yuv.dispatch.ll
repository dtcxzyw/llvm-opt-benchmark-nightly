Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/color_yuv.dispatch?download=true
inline.NumInlined: 608
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.cv::utils::trace::details::Region::LocationStaticStorage" = type { ptr, ptr, ptr, i32, i32 }
%"struct.cv::detail::CheckContext" = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%"class.cv::Range" = type { i32, i32 }
%"class.cv::impl::(anonymous namespace)::CvtColorLoop_Invoker.9" = type { %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, ptr }
%"class.cv::ParallelLoopBody" = type { ptr }
%"class.cv::impl::(anonymous namespace)::CvtColorLoop_Invoker.8" = type { %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, ptr }
%"class.cv::impl::(anonymous namespace)::CvtColorLoop_Invoker" = type { %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, ptr }
%"class.cv::utils::trace::details::Region" = type <{ ptr, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB2YCrCb_i" = type <{ i32, i32, [5 x i32], i8, [3 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB2YCrCb_i.0" = type { i32, i32, i8, [5 x i32] }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB2YCrCb_f" = type { i32, i32, i8, [5 x float] }
%"class.cv::impl::(anonymous namespace)::CvtColorLoop_Invoker.12" = type { %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, ptr }
%"class.cv::impl::(anonymous namespace)::CvtColorLoop_Invoker.11" = type { %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, ptr }
%"class.cv::impl::(anonymous namespace)::CvtColorLoop_Invoker.10" = type { %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, ptr }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YCrCb2RGB_i" = type { i32, i32, i8, [4 x i32] }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YCrCb2RGB_i.1" = type { i32, i32, i8, [4 x i32] }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YCrCb2RGB_f" = type { i32, i32, i8, [4 x float] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV420sp2RGB8Invoker" = type { %"class.cv::ParallelLoopBody", ptr, i64, i32, ptr, i64, ptr, i64 }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV420sp2RGB8Invoker.13" = type { %"class.cv::ParallelLoopBody", ptr, i64, i32, ptr, i64, ptr, i64 }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV420sp2RGB8Invoker.14" = type { %"class.cv::ParallelLoopBody", ptr, i64, i32, ptr, i64, ptr, i64 }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV420sp2RGB8Invoker.15" = type { %"class.cv::ParallelLoopBody", ptr, i64, i32, ptr, i64, ptr, i64 }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV420sp2RGB8Invoker.16" = type { %"class.cv::ParallelLoopBody", ptr, i64, i32, ptr, i64, ptr, i64 }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV420sp2RGB8Invoker.17" = type { %"class.cv::ParallelLoopBody", ptr, i64, i32, ptr, i64, ptr, i64 }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV420sp2RGB8Invoker.18" = type { %"class.cv::ParallelLoopBody", ptr, i64, i32, ptr, i64, ptr, i64 }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV420sp2RGB8Invoker.19" = type { %"class.cv::ParallelLoopBody", ptr, i64, i32, ptr, i64, ptr, i64 }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV420p2RGB8Invoker" = type { %"class.cv::ParallelLoopBody", ptr, i64, i32, ptr, ptr, ptr, i64, i32, i32 }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV420p2RGB8Invoker.20" = type { %"class.cv::ParallelLoopBody", ptr, i64, i32, ptr, ptr, ptr, i64, i32, i32 }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV420p2RGB8Invoker.21" = type { %"class.cv::ParallelLoopBody", ptr, i64, i32, ptr, ptr, ptr, i64, i32, i32 }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV420p2RGB8Invoker.22" = type { %"class.cv::ParallelLoopBody", ptr, i64, i32, ptr, ptr, ptr, i64, i32, i32 }
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB8toYUV420pInvoker" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, ptr, i64, i32, i32, i32, i8, i8, i8, i8 }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV422toRGB8Invoker" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV422toRGB8Invoker.23" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV422toRGB8Invoker.25" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV422toRGB8Invoker.27" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV422toRGB8Invoker.29" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV422toRGB8Invoker.31" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV422toRGB8Invoker.33" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV422toRGB8Invoker.35" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV422toRGB8Invoker.37" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV422toRGB8Invoker.39" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV422toRGB8Invoker.41" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::YUV422toRGB8Invoker.43" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB8toYUV422Invoker" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB8toYUV422Invoker.45" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB8toYUV422Invoker.47" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB8toYUV422Invoker.49" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB8toYUV422Invoker.51" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB8toYUV422Invoker.53" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB8toYUV422Invoker.55" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB8toYUV422Invoker.57" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB8toYUV422Invoker.59" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB8toYUV422Invoker.61" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB8toYUV422Invoker.63" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB8toYUV422Invoker.65" = type <{ %"class.cv::ParallelLoopBody", ptr, i64, ptr, i64, i32, [4 x i8] }>
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"struct.cv::impl::(anonymous namespace)::CvtHelper" = type { %"class.cv::Mat", %"class.cv::Mat", i32, i32, %"class.cv::Size_" }
%"struct.cv::impl::(anonymous namespace)::CvtHelper.2" = type { %"class.cv::Mat", %"class.cv::Mat", i32, i32, %"class.cv::Size_" }
%"struct.cv::impl::(anonymous namespace)::CvtHelper.3" = type { %"class.cv::Mat", %"class.cv::Mat", i32, i32, %"class.cv::Size_" }
%"struct.cv::impl::(anonymous namespace)::CvtHelper.4" = type { %"class.cv::Mat", %"class.cv::Mat", i32, i32, %"class.cv::Size_" }
%"struct.cv::impl::(anonymous namespace)::CvtHelper.5" = type { %"class.cv::Mat", %"class.cv::Mat", i32, i32, %"class.cv::Size_" }
%"struct.cv::impl::(anonymous namespace)::CvtHelper.6" = type { %"class.cv::Mat", %"class.cv::Mat", i32, i32, %"class.cv::Size_" }
%"struct.cv::impl::(anonymous namespace)::CvtHelper.7" = type { %"class.cv::Mat", %"class.cv::Mat", i32, i32, %"class.cv::Size_" }

$_ZN2cv5utils5trace7details6RegionD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$__clang_call_terminate = comdat any

@_ZZN2cv3hal12cpu_baseline11cvtBGRtoYUVEPKhmPhmiiiibbE32__cv_trace_location_extra_fn1981 = internal global ptr null, align 8
@_ZZN2cv3hal12cpu_baseline11cvtBGRtoYUVEPKhmPhmiiiibbE26__cv_trace_location_fn1981 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal12cpu_baseline11cvtBGRtoYUVEPKhmPhmiiiibbE32__cv_trace_location_extra_fn1981, ptr @.str, ptr @.str.1, i32 1981, i32 1 }, align 8
@.str = private unnamed_addr constant [112 x i8] c"void cv::hal::cpu_baseline::cvtBGRtoYUV(const uchar *, size_t, uchar *, size_t, int, int, int, int, bool, bool)\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"/opt-bench/work/opencv/opencv/modules/imgproc/src/color_yuv.simd.hpp\00", align 1
@_ZZN2cv3hal12cpu_baseline11cvtYUVtoBGREPKhmPhmiiiibbE32__cv_trace_location_extra_fn1997 = internal global ptr null, align 8
@_ZZN2cv3hal12cpu_baseline11cvtYUVtoBGREPKhmPhmiiiibbE26__cv_trace_location_fn1997 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal12cpu_baseline11cvtYUVtoBGREPKhmPhmiiiibbE32__cv_trace_location_extra_fn1997, ptr @.str.2, ptr @.str.1, i32 1997, i32 1 }, align 8
@.str.2 = private unnamed_addr constant [112 x i8] c"void cv::hal::cpu_baseline::cvtYUVtoBGR(const uchar *, size_t, uchar *, size_t, int, int, int, int, bool, bool)\00", align 1
@_ZZN2cv3hal12cpu_baseline19cvtTwoPlaneYUVtoBGREPKhmS3_mPhmiiibiE32__cv_trace_location_extra_fn2025 = internal global ptr null, align 8
@_ZZN2cv3hal12cpu_baseline19cvtTwoPlaneYUVtoBGREPKhmS3_mPhmiiibiE26__cv_trace_location_fn2025 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal12cpu_baseline19cvtTwoPlaneYUVtoBGREPKhmS3_mPhmiiibiE32__cv_trace_location_extra_fn2025, ptr @.str.3, ptr @.str.1, i32 2025, i32 1 }, align 8
@.str.3 = private unnamed_addr constant [137 x i8] c"void cv::hal::cpu_baseline::cvtTwoPlaneYUVtoBGR(const uchar *, size_t, const uchar *, size_t, uchar *, size_t, int, int, int, bool, int)\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Unknown/unsupported color conversion code\00", align 1
@__func__._ZN2cv3hal12cpu_baseline19cvtTwoPlaneYUVtoBGREPKhmS3_mPhmiiibi = private unnamed_addr constant [20 x i8] c"cvtTwoPlaneYUVtoBGR\00", align 1
@_ZZN2cv3hal12cpu_baseline21cvtThreePlaneYUVtoBGREPKhmPhmiiibiE32__cv_trace_location_extra_fn2065 = internal global ptr null, align 8
@_ZZN2cv3hal12cpu_baseline21cvtThreePlaneYUVtoBGREPKhmPhmiiibiE26__cv_trace_location_fn2065 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal12cpu_baseline21cvtThreePlaneYUVtoBGREPKhmPhmiiibiE32__cv_trace_location_extra_fn2065, ptr @.str.5, ptr @.str.1, i32 2065, i32 1 }, align 8
@.str.5 = private unnamed_addr constant [116 x i8] c"void cv::hal::cpu_baseline::cvtThreePlaneYUVtoBGR(const uchar *, size_t, uchar *, size_t, int, int, int, bool, int)\00", align 1
@__func__._ZN2cv3hal12cpu_baseline21cvtThreePlaneYUVtoBGREPKhmPhmiiibi = private unnamed_addr constant [22 x i8] c"cvtThreePlaneYUVtoBGR\00", align 1
@_ZZN2cv3hal12cpu_baseline21cvtBGRtoThreePlaneYUVEPKhmPhmiiibiE32__cv_trace_location_extra_fn2097 = internal global ptr null, align 8
@_ZZN2cv3hal12cpu_baseline21cvtBGRtoThreePlaneYUVEPKhmPhmiiibiE26__cv_trace_location_fn2097 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal12cpu_baseline21cvtBGRtoThreePlaneYUVEPKhmPhmiiibiE32__cv_trace_location_extra_fn2097, ptr @.str.6, ptr @.str.1, i32 2097, i32 1 }, align 8
@.str.6 = private unnamed_addr constant [116 x i8] c"void cv::hal::cpu_baseline::cvtBGRtoThreePlaneYUV(const uchar *, size_t, uchar *, size_t, int, int, int, bool, int)\00", align 1
@_ZZN2cv3hal12cpu_baseline19cvtBGRtoTwoPlaneYUVEPKhmPhS4_miiibiE32__cv_trace_location_extra_fn2118 = internal global ptr null, align 8
@_ZZN2cv3hal12cpu_baseline19cvtBGRtoTwoPlaneYUVEPKhmPhS4_miiibiE26__cv_trace_location_fn2118 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal12cpu_baseline19cvtBGRtoTwoPlaneYUVEPKhmPhS4_miiibiE32__cv_trace_location_extra_fn2118, ptr @.str.7, ptr @.str.1, i32 2118, i32 1 }, align 8
@.str.7 = private unnamed_addr constant [123 x i8] c"void cv::hal::cpu_baseline::cvtBGRtoTwoPlaneYUV(const uchar *, size_t, uchar *, uchar *, size_t, int, int, int, bool, int)\00", align 1
@_ZZN2cv3hal12cpu_baseline19cvtOnePlaneYUVtoBGREPKhmPhmiiibiiE32__cv_trace_location_extra_fn2144 = internal global ptr null, align 8
@_ZZN2cv3hal12cpu_baseline19cvtOnePlaneYUVtoBGREPKhmPhmiiibiiE26__cv_trace_location_fn2144 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal12cpu_baseline19cvtOnePlaneYUVtoBGREPKhmPhmiiibiiE32__cv_trace_location_extra_fn2144, ptr @.str.8, ptr @.str.1, i32 2144, i32 1 }, align 8
@.str.8 = private unnamed_addr constant [119 x i8] c"void cv::hal::cpu_baseline::cvtOnePlaneYUVtoBGR(const uchar *, size_t, uchar *, size_t, int, int, int, bool, int, int)\00", align 1
@__func__._ZN2cv3hal12cpu_baseline19cvtOnePlaneYUVtoBGREPKhmPhmiiibii = private unnamed_addr constant [20 x i8] c"cvtOnePlaneYUVtoBGR\00", align 1
@_ZZN2cv3hal12cpu_baseline19cvtOnePlaneBGRtoYUVEPKhmPhmiiibiiE32__cv_trace_location_extra_fn2176 = internal global ptr null, align 8
@_ZZN2cv3hal12cpu_baseline19cvtOnePlaneBGRtoYUVEPKhmPhmiiibiiE26__cv_trace_location_fn2176 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal12cpu_baseline19cvtOnePlaneBGRtoYUVEPKhmPhmiiibiiE32__cv_trace_location_extra_fn2176, ptr @.str.9, ptr @.str.1, i32 2176, i32 1 }, align 8
@.str.9 = private unnamed_addr constant [119 x i8] c"void cv::hal::cpu_baseline::cvtOnePlaneBGRtoYUV(const uchar *, size_t, uchar *, size_t, int, int, int, bool, int, int)\00", align 1
@__func__._ZN2cv3hal12cpu_baseline19cvtOnePlaneBGRtoYUVEPKhmPhmiiibii = private unnamed_addr constant [20 x i8] c"cvtOnePlaneBGRtoYUV\00", align 1
@_ZZN2cv3hal11cvtBGRtoYUVEPKhmPhmiiiibbNS_13AlgorithmHintEE30__cv_trace_location_extra_fn26 = internal global ptr null, align 8
@_ZZN2cv3hal11cvtBGRtoYUVEPKhmPhmiiiibbNS_13AlgorithmHintEE24__cv_trace_location_fn26 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal11cvtBGRtoYUVEPKhmPhmiiiibbNS_13AlgorithmHintEE30__cv_trace_location_extra_fn26, ptr @.str.10, ptr @.str.11, i32 26, i32 1 }, align 8
@.str.10 = private unnamed_addr constant [113 x i8] c"void cv::hal::cvtBGRtoYUV(const uchar *, size_t, uchar *, size_t, int, int, int, int, bool, bool, AlgorithmHint)\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/opencv/opencv/modules/imgproc/src/color_yuv.dispatch.cpp\00", align 1
@_ZZN2cv3hal11cvtYUVtoBGREPKhmPhmiiiibbNS_13AlgorithmHintEE30__cv_trace_location_extra_fn79 = internal global ptr null, align 8
@_ZZN2cv3hal11cvtYUVtoBGREPKhmPhmiiiibbNS_13AlgorithmHintEE24__cv_trace_location_fn79 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal11cvtYUVtoBGREPKhmPhmiiiibbNS_13AlgorithmHintEE30__cv_trace_location_extra_fn79, ptr @.str.14, ptr @.str.11, i32 79, i32 1 }, align 8
@.str.14 = private unnamed_addr constant [113 x i8] c"void cv::hal::cvtYUVtoBGR(const uchar *, size_t, uchar *, size_t, int, int, int, int, bool, bool, AlgorithmHint)\00", align 1
@_ZZN2cv3hal19cvtTwoPlaneYUVtoBGREPKhmS2_mPhmiiibiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn136 = internal global ptr null, align 8
@_ZZN2cv3hal19cvtTwoPlaneYUVtoBGREPKhmS2_mPhmiiibiNS_13AlgorithmHintEE25__cv_trace_location_fn136 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal19cvtTwoPlaneYUVtoBGREPKhmS2_mPhmiiibiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn136, ptr @.str.17, ptr @.str.11, i32 136, i32 1 }, align 8
@.str.17 = private unnamed_addr constant [138 x i8] c"void cv::hal::cvtTwoPlaneYUVtoBGR(const uchar *, size_t, const uchar *, size_t, uchar *, size_t, int, int, int, bool, int, AlgorithmHint)\00", align 1
@_ZZN2cv3hal19cvtTwoPlaneYUVtoBGREPKhmPhmiiibiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn159 = internal global ptr null, align 8
@_ZZN2cv3hal19cvtTwoPlaneYUVtoBGREPKhmPhmiiibiNS_13AlgorithmHintEE25__cv_trace_location_fn159 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal19cvtTwoPlaneYUVtoBGREPKhmPhmiiibiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn159, ptr @.str.20, ptr @.str.11, i32 159, i32 1 }, align 8
@.str.20 = private unnamed_addr constant [115 x i8] c"void cv::hal::cvtTwoPlaneYUVtoBGR(const uchar *, size_t, uchar *, size_t, int, int, int, bool, int, AlgorithmHint)\00", align 1
@_ZZN2cv3hal19cvtTwoPlaneYUVtoBGREPKhS2_mPhmiiibiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn181 = internal global ptr null, align 8
@_ZZN2cv3hal19cvtTwoPlaneYUVtoBGREPKhS2_mPhmiiibiNS_13AlgorithmHintEE25__cv_trace_location_fn181 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal19cvtTwoPlaneYUVtoBGREPKhS2_mPhmiiibiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn181, ptr @.str.23, ptr @.str.11, i32 181, i32 1 }, align 8
@.str.23 = private unnamed_addr constant [130 x i8] c"void cv::hal::cvtTwoPlaneYUVtoBGR(const uchar *, const uchar *, size_t, uchar *, size_t, int, int, int, bool, int, AlgorithmHint)\00", align 1
@_ZZN2cv3hal21cvtThreePlaneYUVtoBGREPKhmPhmiiibiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn194 = internal global ptr null, align 8
@_ZZN2cv3hal21cvtThreePlaneYUVtoBGREPKhmPhmiiibiNS_13AlgorithmHintEE25__cv_trace_location_fn194 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal21cvtThreePlaneYUVtoBGREPKhmPhmiiibiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn194, ptr @.str.24, ptr @.str.11, i32 194, i32 1 }, align 8
@.str.24 = private unnamed_addr constant [117 x i8] c"void cv::hal::cvtThreePlaneYUVtoBGR(const uchar *, size_t, uchar *, size_t, int, int, int, bool, int, AlgorithmHint)\00", align 1
@_ZZN2cv3hal21cvtBGRtoThreePlaneYUVEPKhmPhmiiibiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn215 = internal global ptr null, align 8
@_ZZN2cv3hal21cvtBGRtoThreePlaneYUVEPKhmPhmiiibiNS_13AlgorithmHintEE25__cv_trace_location_fn215 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal21cvtBGRtoThreePlaneYUVEPKhmPhmiiibiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn215, ptr @.str.27, ptr @.str.11, i32 215, i32 1 }, align 8
@.str.27 = private unnamed_addr constant [117 x i8] c"void cv::hal::cvtBGRtoThreePlaneYUV(const uchar *, size_t, uchar *, size_t, int, int, int, bool, int, AlgorithmHint)\00", align 1
@_ZZN2cv3hal19cvtBGRtoTwoPlaneYUVEPKhmPhS3_miiibiE31__cv_trace_location_extra_fn236 = internal global ptr null, align 8
@_ZZN2cv3hal19cvtBGRtoTwoPlaneYUVEPKhmPhS3_miiibiE25__cv_trace_location_fn236 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal19cvtBGRtoTwoPlaneYUVEPKhmPhS3_miiibiE31__cv_trace_location_extra_fn236, ptr @.str.30, ptr @.str.11, i32 236, i32 1 }, align 8
@.str.30 = private unnamed_addr constant [109 x i8] c"void cv::hal::cvtBGRtoTwoPlaneYUV(const uchar *, size_t, uchar *, uchar *, size_t, int, int, int, bool, int)\00", align 1
@_ZZN2cv3hal19cvtOnePlaneYUVtoBGREPKhmPhmiiibiiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn253 = internal global ptr null, align 8
@_ZZN2cv3hal19cvtOnePlaneYUVtoBGREPKhmPhmiiibiiNS_13AlgorithmHintEE25__cv_trace_location_fn253 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal19cvtOnePlaneYUVtoBGREPKhmPhmiiibiiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn253, ptr @.str.32, ptr @.str.11, i32 253, i32 1 }, align 8
@.str.32 = private unnamed_addr constant [120 x i8] c"void cv::hal::cvtOnePlaneYUVtoBGR(const uchar *, size_t, uchar *, size_t, int, int, int, bool, int, int, AlgorithmHint)\00", align 1
@_ZZN2cv3hal19cvtOnePlaneBGRtoYUVEPKhmPhmiiibiiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn274 = internal global ptr null, align 8
@_ZZN2cv3hal19cvtOnePlaneBGRtoYUVEPKhmPhmiiibiiNS_13AlgorithmHintEE25__cv_trace_location_fn274 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv3hal19cvtOnePlaneBGRtoYUVEPKhmPhmiiibiiNS_13AlgorithmHintEE31__cv_trace_location_extra_fn274, ptr @.str.35, ptr @.str.11, i32 274, i32 1 }, align 8
@.str.35 = private unnamed_addr constant [120 x i8] c"void cv::hal::cvtOnePlaneBGRtoYUV(const uchar *, size_t, uchar *, size_t, int, int, int, bool, int, int, AlgorithmHint)\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"_src.channels() == 2 && _src.depth() == CV_8U\00", align 1
@__func__._ZN2cv19cvtColorYUV2Gray_chERKNS_11_InputArrayERKNS_12_OutputArrayEi = private unnamed_addr constant [20 x i8] c"cvtColorYUV2Gray_ch\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"dcn == 3 || dcn == 4\00", align 1
@__func__._ZN2cv27cvtColorTwoPlaneYUV2BGRpairERKNS_11_InputArrayES2_RKNS_12_OutputArrayENS_13AlgorithmHintEibi = private unnamed_addr constant [28 x i8] c"cvtColorTwoPlaneYUV2BGRpair\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"depth == CV_8U\00", align 1
@.str.41 = private unnamed_addr constant [59 x i8] c"ysz.width == uvs.width * 2 && ysz.height == uvs.height * 2\00", align 1
@_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEC1EiibE10coeffs_crb = internal unnamed_addr constant [5 x i32] [i32 4899, i32 9617, i32 1868, i32 11682, i32 9241], align 16
@_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEC1EiibE10coeffs_yuv = internal unnamed_addr constant [5 x i32] [i32 4899, i32 9617, i32 1868, i32 14369, i32 8061], align 16
@_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEC1EiibE10coeffs_crb = internal unnamed_addr constant [5 x float] [float 2.990000e-01, float 5.870000e-01, float 1.140000e-01, float f0x3F36872B, float 5.640000e-01], align 16
@_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEC1EiibE10coeffs_yuv = internal unnamed_addr constant [5 x float] [float 2.990000e-01, float 5.870000e-01, float 1.140000e-01, float f0x3F608312, float 4.920000e-01], align 16
@_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEC1EiibE10coeffs_crb = internal unnamed_addr constant [4 x i32] [i32 22987, i32 -11698, i32 -5636, i32 29049], align 16
@_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEC1EiibE10coeffs_yuv = internal unnamed_addr constant [4 x i32] [i32 18678, i32 -9519, i32 -6472, i32 33292], align 16
@_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEC1EiibE10coeffs_cbr = internal unnamed_addr constant [4 x float] [float 1.403000e+00, float -7.140000e-01, float -3.440000e-01, float 1.773000e+00], align 16
@_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEC1EiibE10coeffs_yuv = internal unnamed_addr constant [4 x float] [float 1.140000e+00, float -5.810000e-01, float -3.950000e-01, float 2.032000e+00], align 16
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_120RGB8toYUV420pInvokerE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120RGB8toYUV420pInvokerE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_120RGB8toYUV420pInvokerD0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_120RGB8toYUV420pInvokerclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120RGB8toYUV420pInvokerE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120RGB8toYUV420pInvokerE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120RGB8toYUV420pInvokerE = internal constant [60 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_120RGB8toYUV420pInvokerE\00", align 1
@_ZTIN2cv16ParallelLoopBodyE = external constant ptr
@.str.42 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEED0Ev, ptr @_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEEclERKNS_5RangeE] }, align 8
@_ZTIN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEEE = internal constant [101 x i8] c"N2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEEE\00", align 1
@_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEEclERKNS_5RangeEE31__cv_trace_location_extra_fn146 = internal global ptr null, align 8
@_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEEclERKNS_5RangeEE25__cv_trace_location_fn146 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEEclERKNS_5RangeEE31__cv_trace_location_extra_fn146, ptr @.str.43, ptr @.str.44, i32 146, i32 1 }, align 8
@.str.43 = private unnamed_addr constant [239 x i8] c"virtual void cv::impl::(anonymous namespace)::CvtColorLoop_Invoker<cv::hal::cpu_baseline::(anonymous namespace)::RGB2YCrCb_i<uchar>>::operator()(const Range &) const [Cvt = cv::hal::cpu_baseline::(anonymous namespace)::RGB2YCrCb_i<uchar>]\00", align 1
@.str.44 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/opencv/opencv/modules/imgproc/src/color.simd_helpers.hpp\00", align 1
@_ZTVN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEED0Ev, ptr @_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEclERKNS_5RangeE] }, align 8
@_ZTIN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEE = internal constant [101 x i8] c"N2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEE\00", align 1
@_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEclERKNS_5RangeEE31__cv_trace_location_extra_fn146 = internal global ptr null, align 8
@_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEclERKNS_5RangeEE25__cv_trace_location_fn146 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEclERKNS_5RangeEE31__cv_trace_location_extra_fn146, ptr @.str.45, ptr @.str.44, i32 146, i32 1 }, align 8
@.str.45 = private unnamed_addr constant [241 x i8] c"virtual void cv::impl::(anonymous namespace)::CvtColorLoop_Invoker<cv::hal::cpu_baseline::(anonymous namespace)::RGB2YCrCb_i<ushort>>::operator()(const Range &) const [Cvt = cv::hal::cpu_baseline::(anonymous namespace)::RGB2YCrCb_i<ushort>]\00", align 1
@_ZTVN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEED0Ev, ptr @_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEclERKNS_5RangeE] }, align 8
@_ZTIN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEE = internal constant [101 x i8] c"N2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEE\00", align 1
@_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEclERKNS_5RangeEE31__cv_trace_location_extra_fn146 = internal global ptr null, align 8
@_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEclERKNS_5RangeEE25__cv_trace_location_fn146 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEclERKNS_5RangeEE31__cv_trace_location_extra_fn146, ptr @.str.46, ptr @.str.44, i32 146, i32 1 }, align 8
@.str.46 = private unnamed_addr constant [239 x i8] c"virtual void cv::impl::(anonymous namespace)::CvtColorLoop_Invoker<cv::hal::cpu_baseline::(anonymous namespace)::RGB2YCrCb_f<float>>::operator()(const Range &) const [Cvt = cv::hal::cpu_baseline::(anonymous namespace)::RGB2YCrCb_f<float>]\00", align 1
@_ZTVN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEED0Ev, ptr @_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEclERKNS_5RangeE] }, align 8
@_ZTIN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEE = internal constant [101 x i8] c"N2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEE\00", align 1
@_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEclERKNS_5RangeEE31__cv_trace_location_extra_fn146 = internal global ptr null, align 8
@_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEclERKNS_5RangeEE25__cv_trace_location_fn146 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEclERKNS_5RangeEE31__cv_trace_location_extra_fn146, ptr @.str.47, ptr @.str.44, i32 146, i32 1 }, align 8
@.str.47 = private unnamed_addr constant [239 x i8] c"virtual void cv::impl::(anonymous namespace)::CvtColorLoop_Invoker<cv::hal::cpu_baseline::(anonymous namespace)::YCrCb2RGB_i<uchar>>::operator()(const Range &) const [Cvt = cv::hal::cpu_baseline::(anonymous namespace)::YCrCb2RGB_i<uchar>]\00", align 1
@_ZTVN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEEEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEEED0Ev, ptr @_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEEEclERKNS_5RangeE] }, align 8
@_ZTIN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEEEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEEEE = internal constant [101 x i8] c"N2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEEEE\00", align 1
@_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEEEclERKNS_5RangeEE31__cv_trace_location_extra_fn146 = internal global ptr null, align 8
@_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEEEclERKNS_5RangeEE25__cv_trace_location_fn146 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEEEclERKNS_5RangeEE31__cv_trace_location_extra_fn146, ptr @.str.48, ptr @.str.44, i32 146, i32 1 }, align 8
@.str.48 = private unnamed_addr constant [241 x i8] c"virtual void cv::impl::(anonymous namespace)::CvtColorLoop_Invoker<cv::hal::cpu_baseline::(anonymous namespace)::YCrCb2RGB_i<ushort>>::operator()(const Range &) const [Cvt = cv::hal::cpu_baseline::(anonymous namespace)::YCrCb2RGB_i<ushort>]\00", align 1
@_ZTVN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEEEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEEED0Ev, ptr @_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEEEclERKNS_5RangeE] }, align 8
@_ZTIN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEEEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEEEE = internal constant [101 x i8] c"N2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEEEE\00", align 1
@_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEEEclERKNS_5RangeEE31__cv_trace_location_extra_fn146 = internal global ptr null, align 8
@_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEEEclERKNS_5RangeEE25__cv_trace_location_fn146 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEEEclERKNS_5RangeEE31__cv_trace_location_extra_fn146, ptr @.str.49, ptr @.str.44, i32 146, i32 1 }, align 8
@.str.49 = private unnamed_addr constant [239 x i8] c"virtual void cv::impl::(anonymous namespace)::CvtColorLoop_Invoker<cv::hal::cpu_baseline::(anonymous namespace)::YCrCb2RGB_f<float>>::operator()(const Range &) const [Cvt = cv::hal::cpu_baseline::(anonymous namespace)::YCrCb2RGB_f<float>]\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi3EEE = internal constant [74 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi3EEE = internal constant [74 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi3EEE = internal constant [74 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi3EEE = internal constant [74 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi4EEE = internal constant [74 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi4EEE = internal constant [74 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi4EEE = internal constant [74 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi4EEE = internal constant [74 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi3EEE = internal constant [69 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi3EEE = internal constant [69 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi4EEE = internal constant [69 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi0ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi4EEE = internal constant [69 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV420p2RGB8InvokerILi2ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi3EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi3EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi3EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi3EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi3EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi3EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi4EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi0ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi4EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi0ELi1ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi4EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi0ELi1ELi0ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi4EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi0ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi4EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi0ELi1ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi4EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119YUV422toRGB8InvokerILi2ELi1ELi0ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi3EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi3EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi3EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi3EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi3EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi3EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi3EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi3EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi3EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi3EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi3EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi3EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi3EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi4EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi0ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi4EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi0ELi1ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi4EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi0ELi1ELi0ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi4EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi0ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi4EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi4EEE\00", align 1
@_ZTVN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi4EEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi4EEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi4EED0Ev, ptr @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi4EEclERKNS_5RangeE] }, align 8
@_ZTIN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi4EEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi4EEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, align 8
@_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi4EEE = internal constant [77 x i8] c"N2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi4EEE\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"!_src.empty()\00", align 1
@__func__._ZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi3ELi4ELin1EEENS3_ILi3ELin1ELin1EEENS3_ILi0ELi2ELi5EEELNS1_10SizePolicyE4EEC2ERKNS_11_InputArrayERKNS_12_OutputArrayEi = private unnamed_addr constant [10 x i8] c"CvtHelper\00", align 1
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi3ELi4ELin1EEENS3_ILi3ELin1ELin1EEENS3_ILi0ELi2ELi5EEELNS1_10SizePolicyE4EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__92 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.51, ptr @.str.44, i32 92, i32 0, ptr @.str.52, ptr @.str.53, ptr @.str.54 }, align 8
@.str.51 = private unnamed_addr constant [424 x i8] c"cv::impl::(anonymous namespace)::CvtHelper<cv::impl::(anonymous namespace)::Set<3, 4>, cv::impl::(anonymous namespace)::Set<3>, cv::impl::(anonymous namespace)::Set<0, 2, 5>>::CvtHelper(InputArray, OutputArray, int) [VScn = cv::impl::(anonymous namespace)::Set<3, 4>, VDcn = cv::impl::(anonymous namespace)::Set<3>, VDepth = cv::impl::(anonymous namespace)::Set<0, 2, 5>, sizePolicy = cv::impl::(anonymous namespace)::NONE]\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"Invalid number of channels in input image\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"scn\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"VScn::contains(scn)\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"Invalid number of channels in output image\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"dcn\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"VDcn::contains(dcn)\00", align 1
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi3ELi4ELin1EEENS3_ILi3ELin1ELin1EEENS3_ILi0ELi2ELi5EEELNS1_10SizePolicyE4EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__94 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.51, ptr @.str.44, i32 94, i32 0, ptr @.str.58, ptr @.str.59, ptr @.str.60 }, align 8
@.str.58 = private unnamed_addr constant [33 x i8] c"Unsupported depth of input image\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"VDepth::contains(depth)\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.62 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi3ELin1ELin1EEENS3_ILi3ELi4ELin1EEENS3_ILi0ELi2ELi5EEELNS1_10SizePolicyE4EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__92 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.63, ptr @.str.44, i32 92, i32 0, ptr @.str.52, ptr @.str.53, ptr @.str.54 }, align 8
@.str.63 = private unnamed_addr constant [424 x i8] c"cv::impl::(anonymous namespace)::CvtHelper<cv::impl::(anonymous namespace)::Set<3>, cv::impl::(anonymous namespace)::Set<3, 4>, cv::impl::(anonymous namespace)::Set<0, 2, 5>>::CvtHelper(InputArray, OutputArray, int) [VScn = cv::impl::(anonymous namespace)::Set<3>, VDcn = cv::impl::(anonymous namespace)::Set<3, 4>, VDepth = cv::impl::(anonymous namespace)::Set<0, 2, 5>, sizePolicy = cv::impl::(anonymous namespace)::NONE]\00", align 1
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi3ELin1ELin1EEENS3_ILi3ELi4ELin1EEENS3_ILi0ELi2ELi5EEELNS1_10SizePolicyE4EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__93 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.63, ptr @.str.44, i32 93, i32 0, ptr @.str.55, ptr @.str.56, ptr @.str.57 }, align 8
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi3ELin1ELin1EEENS3_ILi3ELi4ELin1EEENS3_ILi0ELi2ELi5EEELNS1_10SizePolicyE4EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__94 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.63, ptr @.str.44, i32 94, i32 0, ptr @.str.58, ptr @.str.59, ptr @.str.60 }, align 8
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi2ELin1ELin1EEENS3_ILi3ELi4ELin1EEENS3_ILi0ELin1ELin1EEELNS1_10SizePolicyE2EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__92 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.64, ptr @.str.44, i32 92, i32 0, ptr @.str.52, ptr @.str.53, ptr @.str.54 }, align 8
@.str.64 = private unnamed_addr constant [461 x i8] c"cv::impl::(anonymous namespace)::CvtHelper<cv::impl::(anonymous namespace)::Set<2>, cv::impl::(anonymous namespace)::Set<3, 4>, cv::impl::(anonymous namespace)::Set<0>, cv::impl::(anonymous namespace)::FROM_UYVY>::CvtHelper(InputArray, OutputArray, int) [VScn = cv::impl::(anonymous namespace)::Set<2>, VDcn = cv::impl::(anonymous namespace)::Set<3, 4>, VDepth = cv::impl::(anonymous namespace)::Set<0>, sizePolicy = cv::impl::(anonymous namespace)::FROM_UYVY]\00", align 1
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi2ELin1ELin1EEENS3_ILi3ELi4ELin1EEENS3_ILi0ELin1ELin1EEELNS1_10SizePolicyE2EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__93 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.64, ptr @.str.44, i32 93, i32 0, ptr @.str.55, ptr @.str.56, ptr @.str.57 }, align 8
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi2ELin1ELin1EEENS3_ILi3ELi4ELin1EEENS3_ILi0ELin1ELin1EEELNS1_10SizePolicyE2EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__94 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.64, ptr @.str.44, i32 94, i32 0, ptr @.str.58, ptr @.str.59, ptr @.str.60 }, align 8
@.str.65 = private unnamed_addr constant [18 x i8] c"sz.width % 2 == 0\00", align 1
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi3ELi4ELin1EEENS3_ILi2ELin1ELin1EEENS3_ILi0ELin1ELin1EEELNS1_10SizePolicyE3EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__92 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.66, ptr @.str.44, i32 92, i32 0, ptr @.str.52, ptr @.str.53, ptr @.str.54 }, align 8
@.str.66 = private unnamed_addr constant [457 x i8] c"cv::impl::(anonymous namespace)::CvtHelper<cv::impl::(anonymous namespace)::Set<3, 4>, cv::impl::(anonymous namespace)::Set<2>, cv::impl::(anonymous namespace)::Set<0>, cv::impl::(anonymous namespace)::TO_UYVY>::CvtHelper(InputArray, OutputArray, int) [VScn = cv::impl::(anonymous namespace)::Set<3, 4>, VDcn = cv::impl::(anonymous namespace)::Set<2>, VDepth = cv::impl::(anonymous namespace)::Set<0>, sizePolicy = cv::impl::(anonymous namespace)::TO_UYVY]\00", align 1
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi3ELi4ELin1EEENS3_ILi2ELin1ELin1EEENS3_ILi0ELin1ELin1EEELNS1_10SizePolicyE3EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__94 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.66, ptr @.str.44, i32 94, i32 0, ptr @.str.58, ptr @.str.59, ptr @.str.60 }, align 8
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi3ELi4ELin1EEENS3_ILi1ELin1ELin1EEENS3_ILi0ELin1ELin1EEELNS1_10SizePolicyE0EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__92 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.67, ptr @.str.44, i32 92, i32 0, ptr @.str.52, ptr @.str.53, ptr @.str.54 }, align 8
@.str.67 = private unnamed_addr constant [455 x i8] c"cv::impl::(anonymous namespace)::CvtHelper<cv::impl::(anonymous namespace)::Set<3, 4>, cv::impl::(anonymous namespace)::Set<1>, cv::impl::(anonymous namespace)::Set<0>, cv::impl::(anonymous namespace)::TO_YUV>::CvtHelper(InputArray, OutputArray, int) [VScn = cv::impl::(anonymous namespace)::Set<3, 4>, VDcn = cv::impl::(anonymous namespace)::Set<1>, VDepth = cv::impl::(anonymous namespace)::Set<0>, sizePolicy = cv::impl::(anonymous namespace)::TO_YUV]\00", align 1
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi3ELi4ELin1EEENS3_ILi1ELin1ELin1EEENS3_ILi0ELin1ELin1EEELNS1_10SizePolicyE0EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__94 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.67, ptr @.str.44, i32 94, i32 0, ptr @.str.58, ptr @.str.59, ptr @.str.60 }, align 8
@.str.68 = private unnamed_addr constant [40 x i8] c"sz.width % 2 == 0 && sz.height % 2 == 0\00", align 1
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi1ELin1ELin1EEES4_NS3_ILi0ELin1ELin1EEELNS1_10SizePolicyE1EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__92 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.69, ptr @.str.44, i32 92, i32 0, ptr @.str.52, ptr @.str.53, ptr @.str.54 }, align 8
@.str.69 = private unnamed_addr constant [453 x i8] c"cv::impl::(anonymous namespace)::CvtHelper<cv::impl::(anonymous namespace)::Set<1>, cv::impl::(anonymous namespace)::Set<1>, cv::impl::(anonymous namespace)::Set<0>, cv::impl::(anonymous namespace)::FROM_YUV>::CvtHelper(InputArray, OutputArray, int) [VScn = cv::impl::(anonymous namespace)::Set<1>, VDcn = cv::impl::(anonymous namespace)::Set<1>, VDepth = cv::impl::(anonymous namespace)::Set<0>, sizePolicy = cv::impl::(anonymous namespace)::FROM_YUV]\00", align 1
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi1ELin1ELin1EEES4_NS3_ILi0ELin1ELin1EEELNS1_10SizePolicyE1EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__94 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.69, ptr @.str.44, i32 94, i32 0, ptr @.str.58, ptr @.str.59, ptr @.str.60 }, align 8
@.str.70 = private unnamed_addr constant [40 x i8] c"sz.width % 2 == 0 && sz.height % 3 == 0\00", align 1
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi1ELin1ELin1EEENS3_ILi3ELi4ELin1EEENS3_ILi0ELin1ELin1EEELNS1_10SizePolicyE1EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__92 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.71, ptr @.str.44, i32 92, i32 0, ptr @.str.52, ptr @.str.53, ptr @.str.54 }, align 8
@.str.71 = private unnamed_addr constant [459 x i8] c"cv::impl::(anonymous namespace)::CvtHelper<cv::impl::(anonymous namespace)::Set<1>, cv::impl::(anonymous namespace)::Set<3, 4>, cv::impl::(anonymous namespace)::Set<0>, cv::impl::(anonymous namespace)::FROM_YUV>::CvtHelper(InputArray, OutputArray, int) [VScn = cv::impl::(anonymous namespace)::Set<1>, VDcn = cv::impl::(anonymous namespace)::Set<3, 4>, VDepth = cv::impl::(anonymous namespace)::Set<0>, sizePolicy = cv::impl::(anonymous namespace)::FROM_YUV]\00", align 1
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi1ELin1ELin1EEENS3_ILi3ELi4ELin1EEENS3_ILi0ELin1ELin1EEELNS1_10SizePolicyE1EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__93 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.71, ptr @.str.44, i32 93, i32 0, ptr @.str.55, ptr @.str.56, ptr @.str.57 }, align 8
@_ZZN2cv4impl12_GLOBAL__N_19CvtHelperINS1_3SetILi1ELin1ELin1EEENS3_ILi3ELi4ELin1EEENS3_ILi0ELin1ELin1EEELNS1_10SizePolicyE1EEC1ERKNS_11_InputArrayERKNS_12_OutputArrayEiE14__cv_check__94 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.71, ptr @.str.44, i32 94, i32 0, ptr @.str.58, ptr @.str.59, ptr @.str.60 }, align 8
@switch.table._ZN2cv3hal12cpu_baseline21cvtThreePlaneYUVtoBGREPKhmPhmiiibi = private unnamed_addr constant [13 x ptr] [ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_114cvtYUV420p2RGBILi0ELi3EEEvPhmiimPKhS6_S6_ii, ptr poison, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_114cvtYUV420p2RGBILi2ELi3EEEvPhmiimPKhS6_S6_ii, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_114cvtYUV420p2RGBILi0ELi4EEEvPhmiimPKhS6_S6_ii, ptr poison, ptr @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_114cvtYUV420p2RGBILi2ELi4EEEvPhmiimPKhS6_S6_ii], align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3hal12cpu_baseline11cvtBGRtoYUVEPKhmPhmiiiibb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.cv::Range", align 4        ; 6 uses
  %11 = alloca %"class.cv::impl::(anonymous namespace)::CvtColorLoop_Invoker.9", align 8 ; 13 uses
  %12 = alloca %"class.cv::Range", align 4        ; 6 uses
  %13 = alloca %"class.cv::impl::(anonymous namespace)::CvtColorLoop_Invoker.8", align 8 ; 13 uses
  %14 = alloca %"class.cv::Range", align 4        ; 6 uses
  %15 = alloca %"class.cv::impl::(anonymous namespace)::CvtColorLoop_Invoker", align 8 ; 13 uses
  %16 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %17 = alloca %"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB2YCrCb_i", align 4 ; 10 uses
  %18 = alloca %"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB2YCrCb_i.0", align 4 ; 10 uses
  %19 = alloca %"struct.cv::hal::cpu_baseline::(anonymous namespace)::RGB2YCrCb_f", align 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3hal12cpu_baseline11cvtBGRtoYUVEPKhmPhmiiiibbE26__cv_trace_location_fn1981)
  %i.a = select i1 %8, i32 2, i32 0               ; 3 uses
  %i.b = zext i1 %9 to i8                         ; 3 uses
  switch i32 %6, label %bb.h [
    i32 0, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  store i32 %7, ptr %17, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 %i.a, ptr %i.c, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 28
  store i8 %i.b, ptr %i.d, align 4, !tbaa !36
  %.in.v.i = select i1 %9, ptr @_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEC1EiibE10coeffs_crb, ptr @_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEC1EiibE10coeffs_yuv ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %20 = load <4 x i32>, ptr %.in.v.i, align 16, !tbaa !37 ; 3 uses
  store <4 x i32> %20, ptr %i.e, align 4, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %.in.v.i, i64 16
  %21 = load i32, ptr %i.f, align 16, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 %21, ptr %i.g, align 4, !tbaa !37
  br i1 %8, label %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEC2Eiib.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %22 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %23 = extractelement <4 x i32> %20, i64 2
  store i32 %23, ptr %i.e, align 4, !tbaa !37
  %24 = extractelement <4 x i32> %20, i64 0
  store i32 %24, ptr %22, align 4, !tbaa !37
  br label %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEC2Eiib.exit

_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEC2Eiib.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  store i32 0, ptr %14, align 4, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %5, ptr %i.h, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEEE, i64 16), ptr %15, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 %1, ptr %i.j, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %2, ptr %i.k, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i64 %3, ptr %i.l, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i32 %4, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 48
  store ptr %17, ptr %i.n, align 8, !tbaa !404
  %i.o = mul nsw i32 %5, %4
  %i.p = sitofp i32 %i.o to double
  %i.q = fmul nnan double %i.p, f0x3EF0000000000000
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef %i.q)
          to label %bb.d unwind label %.body

.body:                                            ; preds = %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEC2Eiib.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.n

bb.d:                                             ; preds = %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEC2Eiib.exit
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  store i32 %7, ptr %18, align 4, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 %i.a, ptr %i.s, align 4, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 %i.b, ptr %i.t, align 4, !tbaa !57
  %.in.v.i34 = select i1 %9, ptr @_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEC1EiibE10coeffs_crb, ptr @_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEC1EiibE10coeffs_yuv ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 2 uses
  %25 = load <4 x i32>, ptr %.in.v.i34, align 16, !tbaa !37 ; 3 uses
  store <4 x i32> %25, ptr %i.u, align 4, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %.in.v.i34, i64 16
  %26 = load i32, ptr %i.v, align 16, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 28
  store i32 %26, ptr %i.w, align 4, !tbaa !37
  br i1 %8, label %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEC2Eiib.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %28 = extractelement <4 x i32> %25, i64 2
  store i32 %28, ptr %i.u, align 4, !tbaa !37
  %29 = extractelement <4 x i32> %25, i64 0
  store i32 %29, ptr %27, align 4, !tbaa !37
  br label %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEC2Eiib.exit

_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEC2Eiib.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store i32 0, ptr %12, align 4, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %5, ptr %i.x, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEE, i64 16), ptr %13, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %0, ptr %i.y, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %1, ptr %i.z, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %2, ptr %i.aa, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 %3, ptr %i.ab, align 8, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i32 %4, ptr %i.ac, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %18, ptr %i.ad, align 8, !tbaa !405
  %i.ae = mul nsw i32 %5, %4
  %i.af = sitofp i32 %i.ae to double
  %i.ag = fmul nnan double %i.af, f0x3EF0000000000000
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, double noundef %i.ag)
          to label %bb.g unwind label %.body34

.body34:                                          ; preds = %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEC2Eiib.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br label %bb.n

bb.g:                                             ; preds = %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEC2Eiib.exit
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  store i32 %7, ptr %19, align 4, !tbaa !66
  %i.ai = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 %i.a, ptr %i.ai, align 4, !tbaa !67
  %i.aj = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i8 %i.b, ptr %i.aj, align 4, !tbaa !68
  %.in.v.i41 = select i1 %9, ptr @_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEC1EiibE10coeffs_crb, ptr @_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEC1EiibE10coeffs_yuv ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 2 uses
  %30 = load <4 x float>, ptr %.in.v.i41, align 16, !tbaa !70 ; 3 uses
  store <4 x float> %30, ptr %i.ak, align 4, !tbaa !70
  %.in.4.i45 = getelementptr inbounds nuw i8, ptr %.in.v.i41, i64 16
  %31 = load float, ptr %.in.4.i45, align 16, !tbaa !70
  %i.al = getelementptr inbounds nuw i8, ptr %19, i64 28
  store float %31, ptr %i.al, align 4, !tbaa !70
  br i1 %8, label %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEC2Eiib.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %32 = getelementptr inbounds nuw i8, ptr %19, i64 20
  %33 = extractelement <4 x float> %30, i64 2
  store float %33, ptr %i.ak, align 4, !tbaa !70
  %34 = extractelement <4 x float> %30, i64 0
  store float %34, ptr %32, align 4, !tbaa !70
  br label %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEC2Eiib.exit

_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEC2Eiib.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %5, ptr %i.am, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEE, i64 16), ptr %11, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.an, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %1, ptr %i.ao, align 8, !tbaa !74
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %2, ptr %i.ap, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %3, ptr %i.aq, align 8, !tbaa !76
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 %4, ptr %i.ar, align 8, !tbaa !77
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %19, ptr %i.as, align 8, !tbaa !406
  %i.at = mul nsw i32 %5, %4
  %i.au = sitofp i32 %i.at to double
  %i.av = fmul nnan double %i.au, f0x3EF0000000000000
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, double noundef %i.av)
          to label %bb.j unwind label %.body36

.body36:                                          ; preds = %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEC2Eiib.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.n

bb.j:                                             ; preds = %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEC2Eiib.exit
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !80
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %16)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #14
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  ret void

bb.n:                                             ; preds = %.body36, %.body34, %.body
  %.pn = phi { ptr, i32 } [ %i.r, %.body ], [ %i.ah, %.body34 ], [ %i.aw, %.body36 ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #14
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3hal12cpu_baseline11cvtYUVtoBGREPKhmPhmiiiibb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.cv::Range", align 4        ; 6 uses
  %11 = alloca %"class.cv::impl::(anonymous namespace)::CvtColorLoop_Invoker.12", align 8 ; 13 uses
  %12 = alloca %"class.cv::Range", align 4        ; 6 uses
  %13 = alloca %"class.cv::impl::(anonymous namespace)::CvtColorLoop_Invoker.11", align 8 ; 13 uses
  %14 = alloca %"class.cv::Range", align 4        ; 6 uses
  %15 = alloca %"class.cv::impl::(anonymous namespace)::CvtColorLoop_Invoker.10", align 8 ; 13 uses
  %16 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %17 = alloca %"struct.cv::hal::cpu_baseline::(anonymous namespace)::YCrCb2RGB_i", align 4 ; 8 uses
  %18 = alloca %"struct.cv::hal::cpu_baseline::(anonymous namespace)::YCrCb2RGB_i.1", align 4 ; 8 uses
  %19 = alloca %"struct.cv::hal::cpu_baseline::(anonymous namespace)::YCrCb2RGB_f", align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3hal12cpu_baseline11cvtYUVtoBGREPKhmPhmiiiibbE26__cv_trace_location_fn1997)
  %i.a = select i1 %8, i32 2, i32 0               ; 3 uses
  %i.b = zext i1 %9 to i8                         ; 3 uses
  switch i32 %6, label %bb.f [
    i32 0, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  store i32 %7, ptr %17, align 4, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 %i.a, ptr %i.c, align 4, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 %i.b, ptr %i.d, align 4, !tbaa !84
  %.in.v.i = select i1 %9, ptr @_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEC1EiibE10coeffs_crb, ptr @_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEC1EiibE10coeffs_yuv
  %i.e = getelementptr inbounds nuw i8, ptr %17, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %.in.v.i, i64 16, i1 false), !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  store i32 0, ptr %14, align 4, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %5, ptr %i.f, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEE, i64 16), ptr %15, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.g, align 8, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 %1, ptr %i.h, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %2, ptr %i.i, align 8, !tbaa !89
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i64 %3, ptr %i.j, align 8, !tbaa !90
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i32 %4, ptr %i.k, align 8, !tbaa !91
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 48
  store ptr %17, ptr %i.l, align 8, !tbaa !407
  %i.m = mul nsw i32 %5, %4
  %i.n = sitofp i32 %i.m to double
  %i.o = fmul nnan double %i.n, f0x3EF0000000000000
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef %i.o)
          to label %bb.c unwind label %.body

.body:                                            ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  store i32 %7, ptr %18, align 4, !tbaa !93
  %i.q = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 %i.a, ptr %i.q, align 4, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 %i.b, ptr %i.r, align 4, !tbaa !95
  %.in.v.i34 = select i1 %9, ptr @_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEC1EiibE10coeffs_crb, ptr @_ZZN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEC1EiibE10coeffs_yuv
  %i.s = getelementptr inbounds nuw i8, ptr %18, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %.in.v.i34, i64 16, i1 false), !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store i32 0, ptr %12, align 4, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %5, ptr %i.t, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEEEE, i64 16), ptr %13, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %0, ptr %i.u, align 8, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %1, ptr %i.v, align 8, !tbaa !99
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %2, ptr %i.w, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 %3, ptr %i.x, align 8, !tbaa !101
end_hunk_0
