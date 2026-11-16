Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/stage_gaborish?download=true
inline.NumInlined: 114
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }

$_ZN3jxl6N_SSE413GaborishStageD0Ev = comdat any

$_ZNK3jxl6N_SSE413GaborishStage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmm = comdat any

$_ZNK3jxl6N_SSE413GaborishStage14GetChannelModeEm = comdat any

$_ZNK3jxl6N_SSE413GaborishStage7GetNameEv = comdat any

$_ZN3jxl6N_AVX213GaborishStageD0Ev = comdat any

$_ZNK3jxl6N_AVX213GaborishStage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmm = comdat any

$_ZNK3jxl6N_AVX213GaborishStage14GetChannelModeEm = comdat any

$_ZNK3jxl6N_AVX213GaborishStage7GetNameEv = comdat any

$_ZN3jxl6N_SSE213GaborishStageD0Ev = comdat any

$_ZNK3jxl6N_SSE213GaborishStage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmm = comdat any

$_ZNK3jxl6N_SSE213GaborishStage14GetChannelModeEm = comdat any

$_ZNK3jxl6N_SSE213GaborishStage7GetNameEv = comdat any

$_ZTVN3jxl6N_SSE413GaborishStageE = comdat any

$_ZTVN3jxl6N_AVX213GaborishStageE = comdat any

$_ZTVN3jxl6N_SSE213GaborishStageE = comdat any

@_ZN3jxlL36GetGaborishStageHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheINSt3__110unique_ptrIN3jxl19RenderPipelineStageENS1_14default_deleteIS4_EEEEJRKNS3_10LoopFilterEEE13ChooseAndCallIXadsoKPFS7_SA_EL_ZNS3_L36GetGaborishStageHighwayDispatchTableEEEEEES7_SA_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX216GetGaborishStageERKNS_10LoopFilterE, ptr null, ptr @_ZN3jxl6N_SSE416GetGaborishStageERKNS_10LoopFilterE, ptr null, ptr null, ptr @_ZN3jxl6N_SSE216GetGaborishStageERKNS_10LoopFilterE, ptr @_ZN3jxl6N_SSE216GetGaborishStageERKNS_10LoopFilterE], align 16
@_ZTVN3jxl6N_SSE413GaborishStageE = linkonce_odr hidden unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN3jxl19RenderPipelineStageD2Ev, ptr @_ZN3jxl6N_SSE413GaborishStageD0Ev, ptr @_ZNK3jxl6N_SSE413GaborishStage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmm, ptr @_ZNK3jxl6N_SSE413GaborishStage14GetChannelModeEm, ptr @_ZNK3jxl19RenderPipelineStage13IsInitializedEv, ptr @_ZN3jxl19RenderPipelineStage13SetInputSizesERKNSt3__16vectorINS1_4pairImmEENS1_9allocatorIS4_EEEE, ptr @_ZN3jxl19RenderPipelineStage17PrepareForThreadsEm, ptr @_ZNK3jxl19RenderPipelineStage23SwitchToImageDimensionsEv, ptr @_ZNK3jxl19RenderPipelineStage18GetImageDimensionsEPmS1_PNS_11FrameOriginE, ptr @_ZNK3jxl19RenderPipelineStage17ProcessPaddingRowERKNSt3__16vectorINS2_IPfNS1_9allocatorIS3_EEEENS4_IS6_EEEEmmm, ptr @_ZNK3jxl6N_SSE413GaborishStage7GetNameEv] }, comdat, align 8
@.str = private unnamed_addr constant [4 x i8] c"Gab\00", align 1
@_ZTVN3jxl6N_AVX213GaborishStageE = linkonce_odr hidden unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN3jxl19RenderPipelineStageD2Ev, ptr @_ZN3jxl6N_AVX213GaborishStageD0Ev, ptr @_ZNK3jxl6N_AVX213GaborishStage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmm, ptr @_ZNK3jxl6N_AVX213GaborishStage14GetChannelModeEm, ptr @_ZNK3jxl19RenderPipelineStage13IsInitializedEv, ptr @_ZN3jxl19RenderPipelineStage13SetInputSizesERKNSt3__16vectorINS1_4pairImmEENS1_9allocatorIS4_EEEE, ptr @_ZN3jxl19RenderPipelineStage17PrepareForThreadsEm, ptr @_ZNK3jxl19RenderPipelineStage23SwitchToImageDimensionsEv, ptr @_ZNK3jxl19RenderPipelineStage18GetImageDimensionsEPmS1_PNS_11FrameOriginE, ptr @_ZNK3jxl19RenderPipelineStage17ProcessPaddingRowERKNSt3__16vectorINS2_IPfNS1_9allocatorIS3_EEEENS4_IS6_EEEEmmm, ptr @_ZNK3jxl6N_AVX213GaborishStage7GetNameEv] }, comdat, align 8
@_ZTVN3jxl6N_SSE213GaborishStageE = linkonce_odr hidden unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN3jxl19RenderPipelineStageD2Ev, ptr @_ZN3jxl6N_SSE213GaborishStageD0Ev, ptr @_ZNK3jxl6N_SSE213GaborishStage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmm, ptr @_ZNK3jxl6N_SSE213GaborishStage14GetChannelModeEm, ptr @_ZNK3jxl19RenderPipelineStage13IsInitializedEv, ptr @_ZN3jxl19RenderPipelineStage13SetInputSizesERKNSt3__16vectorINS1_4pairImmEENS1_9allocatorIS4_EEEE, ptr @_ZN3jxl19RenderPipelineStage17PrepareForThreadsEm, ptr @_ZNK3jxl19RenderPipelineStage23SwitchToImageDimensionsEv, ptr @_ZNK3jxl19RenderPipelineStage18GetImageDimensionsEPmS1_PNS_11FrameOriginE, ptr @_ZNK3jxl19RenderPipelineStage17ProcessPaddingRowERKNSt3__16vectorINS2_IPfNS1_9allocatorIS3_EEEENS4_IS6_EEEEmmm, ptr @_ZNK3jxl6N_SSE213GaborishStage7GetNameEv] }, comdat, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl6N_SSE416GetGaborishStageERKNS_10LoopFilterE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1) #0 {
_ZNSt3__110unique_ptrIN3jxl6N_SSE413GaborishStageENS_14default_deleteIS3_EEED2B8nn180100Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #14, !noalias !46 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !10, !noalias !46
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.419.0..sroa_idx.i, align 8, !tbaa !10, !noalias !46
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !46
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3jxl6N_SSE413GaborishStageE, i64 16), ptr %i.a, align 8, !tbaa !12, !noalias !46
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load float, ptr %i.g, align 8, !tbaa !17, !noalias !46 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load float, ptr %i.k, align 4, !tbaa !18, !noalias !46 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load float, ptr %i.n, align 8, !tbaa !19, !noalias !46 ; 2 uses
  %i.p = load <2 x float>, ptr %i.d, align 4, !tbaa !20, !noalias !46 ; 2 uses
  %i.q = load <2 x float>, ptr %i.f, align 8, !tbaa !20, !noalias !46 ; 2 uses
  %i.r = insertelement <2 x float> %i.p, float %i.h, i64 1
  %i.s = fadd <2 x float> %i.q, %i.r
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> splat (float 4.000000e+00), <4 x float> splat (float 1.000000e+00))
  %i.v = fdiv <4 x float> splat (float 1.000000e+00), %i.u ; 3 uses
  %i.w = extractelement <4 x float> %i.v, i64 0
  store float %i.w, ptr %i.c, align 8, !tbaa !20, !noalias !46
  %2 = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %3 = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %2, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %4 = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %5 = shufflevector <4 x float> %4, <4 x float> %3, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %6 = fmul <4 x float> %5, %i.v
  store <4 x float> %6, ptr %i.e, align 4, !tbaa !20, !noalias !46
  %i.x = extractelement <4 x float> %i.v, i64 2
  %i.y = fmul float %i.h, %i.x
  store float %i.y, ptr %i.i, align 4, !tbaa !20, !noalias !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.aa = fadd float %i.l, %i.o
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float 4.000000e+00, float 1.000000e+00)
  %i.ac = fdiv float 1.000000e+00, %i.ab          ; 3 uses
  store float %i.ac, ptr %i.j, align 8, !tbaa !20, !noalias !46
  %i.ad = fmul float %i.l, %i.ac
  store float %i.ad, ptr %i.m, align 4, !tbaa !20, !noalias !46
  %i.ae = fmul float %i.o, %i.ac
  store float %i.ae, ptr %i.z, align 8, !tbaa !20, !noalias !46
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl6N_AVX216GetGaborishStageERKNS_10LoopFilterE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1) #1 {
_ZNSt3__110unique_ptrIN3jxl6N_AVX213GaborishStageENS_14default_deleteIS3_EEED2B8nn180100Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #14, !noalias !49 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !10, !noalias !49
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.419.0..sroa_idx.i, align 8, !tbaa !10, !noalias !49
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !49
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3jxl6N_AVX213GaborishStageE, i64 16), ptr %i.a, align 8, !tbaa !12, !noalias !49
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load <2 x float>, ptr %i.d, align 4, !tbaa !20, !noalias !49 ; 2 uses
  %i.k = load float, ptr %i.e, align 8, !tbaa !50, !noalias !49
  %i.l = load <2 x float>, ptr %i.f, align 4, !tbaa !20, !noalias !49 ; 3 uses
  %i.m = load <2 x float>, ptr %i.g, align 4, !tbaa !20, !noalias !49 ; 2 uses
  %i.n = load float, ptr %i.h, align 8, !tbaa !19, !noalias !49 ; 2 uses
  %i.o = extractelement <2 x float> %i.j, i64 0
  %i.p = fadd float %i.o, %i.k
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 4.000000e+00, float 1.000000e+00)
  %shift = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.l, %shift
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 4.000000e+00, float 1.000000e+00)
  %i.t = extractelement <2 x float> %i.m, i64 0
  %i.u = fadd float %i.t, %i.n
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float 4.000000e+00, float 1.000000e+00)
  %i.w = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.q, i64 1
  %i.x = insertelement <4 x float> %i.w, float %i.s, i64 2
  %i.y = insertelement <4 x float> %i.x, float %i.v, i64 3
  %i.z = fdiv <4 x float> splat (float 1.000000e+00), %i.y ; 3 uses
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3>
  %i.ab = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ac = shufflevector <4 x float> %i.z, <4 x float> %i.ab, <8 x i32> <i32 1, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %2 = shufflevector <8 x float> %i.ac, <8 x float> <float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float 1.000000e+00, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 poison, i32 poison, i32 14, i32 poison>
  %i.ad = shufflevector <2 x float> %i.m, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %3 = shufflevector <8 x float> %2, <8 x float> %i.ad, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 8>
  %i.ae = shufflevector <2 x float> %i.l, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %4 = shufflevector <8 x float> %3, <8 x float> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.af = fmul <8 x float> %4, %i.aa
  store <8 x float> %i.af, ptr %i.c, align 8, !tbaa !20, !noalias !49
  %i.ag = extractelement <4 x float> %i.z, i64 3
  %i.ah = fmul float %i.n, %i.ag
  store float %i.ah, ptr %i.i, align 8, !tbaa !20, !noalias !49
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl6N_SSE216GetGaborishStageERKNS_10LoopFilterE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1) #2 {
_ZNSt3__110unique_ptrIN3jxl6N_SSE213GaborishStageENS_14default_deleteIS3_EEED2B8nn180100Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #14, !noalias !53 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !10, !noalias !53
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !tbaa !10, !noalias !53
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !53
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3jxl6N_SSE213GaborishStageE, i64 16), ptr %i.a, align 8, !tbaa !12, !noalias !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load float, ptr %i.g, align 8, !tbaa !17, !noalias !53 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load float, ptr %i.k, align 4, !tbaa !18, !noalias !53 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load float, ptr %i.n, align 8, !tbaa !19, !noalias !53 ; 2 uses
  %i.p = load <2 x float>, ptr %i.d, align 4, !tbaa !20, !noalias !53 ; 2 uses
  %i.q = load <2 x float>, ptr %i.f, align 8, !tbaa !20, !noalias !53 ; 2 uses
  %i.r = insertelement <2 x float> %i.p, float %i.h, i64 1
  %i.s = fadd <2 x float> %i.q, %i.r
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> splat (float 4.000000e+00), <4 x float> splat (float 1.000000e+00))
  %i.v = fdiv <4 x float> splat (float 1.000000e+00), %i.u ; 3 uses
  %i.w = extractelement <4 x float> %i.v, i64 0
  store float %i.w, ptr %i.c, align 8, !tbaa !20, !noalias !53
  %2 = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %3 = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %2, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %4 = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %5 = shufflevector <4 x float> %4, <4 x float> %3, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %6 = fmul <4 x float> %5, %i.v
  store <4 x float> %6, ptr %i.e, align 4, !tbaa !20, !noalias !53
  %i.x = extractelement <4 x float> %i.v, i64 2
  %i.y = fmul float %i.h, %i.x
  store float %i.y, ptr %i.i, align 4, !tbaa !20, !noalias !53
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.aa = fadd float %i.l, %i.o
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float 4.000000e+00, float 1.000000e+00)
  %i.ac = fdiv float 1.000000e+00, %i.ab          ; 3 uses
  store float %i.ac, ptr %i.j, align 8, !tbaa !20, !noalias !53
  %i.ad = fmul float %i.l, %i.ac
  store float %i.ad, ptr %i.m, align 4, !tbaa !20, !noalias !53
  %i.ae = fmul float %i.o, %i.ac
  store float %i.ae, ptr %i.z, align 8, !tbaa !20, !noalias !53
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl16GetGaborishStageERKNS_10LoopFilterE(ptr dead_on_unwind noalias writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !54, !range !55, !noundef !56
  %.not.not = icmp eq i8 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #15
  %i.d = load atomic i64, ptr %i.c seq_cst, align 8
  %i.e = and i64 %i.d, 103425
  %i.f = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.e, i1 true)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL36GetGaborishStageHighwayDispatchTableE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3hwy13FunctionCacheINSt3__110unique_ptrIN3jxl19RenderPipelineStageENS1_14default_deleteIS4_EEEEJRKNS3_10LoopFilterEEE13ChooseAndCallIXadsoKPFS7_SA_EL_ZNS3_L36GetGaborishStageHighwayDispatchTableEEEEEES7_SA_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1) #2 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #15 ; 2 uses
  %i.b = tail call noundef i64 @_ZN3hwy16SupportedTargetsEv() #15
  %i.c = shl i64 %i.b, 1
  %i.d = and i64 %i.c, 65534
  %i.e = or disjoint i64 %i.d, 65536
  store atomic i64 %i.e, ptr %i.a seq_cst, align 8
  %i.f = load atomic i64, ptr %i.a seq_cst, align 8
  %i.g = and i64 %i.f, 103425
  %i.h = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.g, i1 true)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL36GetGaborishStageHighwayDispatchTableE, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1) #15
  ret void
}

declare noundef i64 @_ZN3hwy16SupportedTargetsEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_SSE413GaborishStageD0Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN3jxl19RenderPipelineStageD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK3jxl6N_SSE413GaborishStage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmm(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = add i64 %3, 3
  %i.c = and i64 %i.b, -4
  %i.d = sub i64 0, %i.c                          ; 4 uses
  %i.e = add i64 %4, %3                           ; 4 uses
  %i.f = icmp sgt i64 %i.e, %i.d
  br i1 %i.f, label %.lr.ph.preheader, label %.split77

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %1, align 8, !tbaa !30
  %i.i = load i64, ptr %i.a, align 8, !tbaa !33
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.i ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = getelementptr i8, ptr %i.k, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = load ptr, ptr %2, align 8, !tbaa !30
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.x = load <1 x float>, ptr %i.g, align 8
  %i.y = shufflevector <1 x float> %i.x, <1 x float> poison, <4 x i32> zeroinitializer
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aa = load <1 x float>, ptr %i.z, align 4
  %i.ab = shufflevector <1 x float> %i.aa, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load <1 x float>, ptr %i.ac, align 8
  %i.ae = shufflevector <1 x float> %i.ad, <1 x float> poison, <4 x i32> zeroinitializer
  br label %bb.d

.split77:                                         ; preds = %bb.c, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %bb.d
  %i.af = load ptr, ptr %1, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !33
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !39
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.ah ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.ap = getelementptr i8, ptr %i.aj, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load ptr, ptr %2, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !39
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ay = load <1 x float>, ptr %i.ax, align 4
  %i.az = shufflevector <1 x float> %i.ay, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = load <1 x float>, ptr %i.ba, align 8
  %i.bc = shufflevector <1 x float> %i.bb, <1 x float> poison, <4 x i32> zeroinitializer
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.be = load <1 x float>, ptr %i.bd, align 4
  %i.bf = shufflevector <1 x float> %i.be, <1 x float> poison, <4 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge
  %.07475.1 = phi i64 [ %i.d, %._crit_edge ], [ %i.ck, %bb.b ] ; 5 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.am, i64 %.07475.1 ; 3 uses
  %i.bh = load <4 x float>, ptr %i.bg, align 16, !tbaa !42
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load <4 x float>, ptr %i.bi, align 4, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bl = load <4 x float>, ptr %i.bk, align 4, !tbaa !42
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %.07475.1 ; 3 uses
  %i.bn = load <4 x float>, ptr %i.bm, align 16, !tbaa !42
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bp = load <4 x float>, ptr %i.bo, align 4, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.br = load <4 x float>, ptr %i.bq, align 4, !tbaa !42
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %.07475.1 ; 3 uses
  %i.bt = load <4 x float>, ptr %i.bs, align 16, !tbaa !42
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -4
  %i.bv = load <4 x float>, ptr %i.bu, align 4, !tbaa !42
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bx = load <4 x float>, ptr %i.bw, align 4, !tbaa !42
  %i.by = fadd <4 x float> %i.bp, %i.br
  %i.bz = fadd <4 x float> %i.bh, %i.bt
  %i.ca = fadd <4 x float> %i.by, %i.bz
  %i.cb = fadd <4 x float> %i.bj, %i.bl
  %i.cc = fadd <4 x float> %i.bv, %i.bx
  %i.cd = fadd <4 x float> %i.cb, %i.cc
  %i.ce = fmul <4 x float> %i.az, %i.bn
  %i.cf = fmul <4 x float> %i.bc, %i.ca
  %i.cg = fadd <4 x float> %i.ce, %i.cf
  %i.ch = fmul <4 x float> %i.bf, %i.cd
  %i.ci = fadd <4 x float> %i.cg, %i.ch
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %.07475.1
  store <4 x float> %i.ci, ptr %i.cj, align 16, !tbaa !42
  %i.ck = add i64 %.07475.1, 4                    ; 2 uses
  %i.cl = icmp slt i64 %i.ck, %i.e
  br i1 %i.cl, label %bb.b, label %._crit_edge.1, !llvm.loop !57

._crit_edge.1:                                    ; preds = %bb.b
  %i.cm = load ptr, ptr %1, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load i64, ptr %i.a, align 8, !tbaa !33
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !39
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %i.co ; 3 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !41
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 128
end_hunk_0
