Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/butteraugli?download=true
inline.NumInlined: 2552
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 72
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 138
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__1::vector" = type { ptr, ptr, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }
%"struct.jxl::WeightsSeparable5" = type { [12 x float], [12 x float] }
%"class.jxl::RectT" = type { i64, i64, i64, i64 }
%"class.jxl::Plane" = type { %"struct.jxl::detail::PlaneBase" }
%"struct.jxl::detail::PlaneBase" = type { i32, i32, i32, i32, i64, %"class.jxl::AlignedMemory", i64 }
%"class.jxl::AlignedMemory" = type { ptr, ptr, ptr }
%"class.jxl::StatusOr" = type <{ %"union.jxl::StatusOr<jxl::Plane<float>>::Storage", i32, [4 x i8] }>
%"union.jxl::StatusOr<jxl::Plane<float>>::Storage" = type { %"class.jxl::Plane" }
%"class.jxl::StatusOr.1" = type <{ %"union.jxl::StatusOr<jxl::Image3<float>>::Storage", i32, [4 x i8] }>
%"union.jxl::StatusOr<jxl::Image3<float>>::Storage" = type { %"class.jxl::Image3" }
%"class.jxl::Image3" = type { [3 x %"class.jxl::Plane"] }
%"struct.jxl::BlurTemp" = type { %"class.jxl::Plane" }
%"class.jxl::StatusOr.6" = type <{ %"union.jxl::StatusOr<std::__1::unique_ptr<jxl::ButteraugliComparator>>::Storage", i32, [4 x i8] }>
%"union.jxl::StatusOr<std::__1::unique_ptr<jxl::ButteraugliComparator>>::Storage" = type { %"class.std::__1::unique_ptr" }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.3" }
%"class.std::__1::__compressed_pair.3" = type { %"struct.std::__1::__compressed_pair_elem.4" }
%"struct.std::__1::__compressed_pair_elem.4" = type { ptr }
%"struct.jxl::PsychoImage" = type { [2 x %"class.jxl::Plane"], [2 x %"class.jxl::Plane"], %"class.jxl::Image3", %"class.jxl::Image3" }
%"struct.jxl::ButteraugliParams" = type { float, float, float }

$_ZN3jxl8BlurTemp13GetTransposedERKNS_5PlaneIfEEPPS2_ = comdat any

$_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm = comdat any

$_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm = comdat any

$_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev = comdat any

$_ZN3jxl6Image3IfEaSEOS1_ = comdat any

$_ZN3jxl6Image3IfED2Ev = comdat any

$_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev = comdat any

$_ZN3jxl23ButteraugliDiffmapSmallILm8EEEbRKNS_6Image3IfEES4_RKNS_17ButteraugliParamsERNS_5PlaneIfEE = comdat any

$_ZN3jxl21ButteraugliComparatorD2Ev = comdat any

$_ZN3jxl21ButteraugliComparatorD0Ev = comdat any

$_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8nn180100EPKc = comdat any

$_ZN3jxl6N_SSE49MaltaUnitIN3hwy6N_SSE44SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_8MaltaTagES6_PKfl = comdat any

$_ZN3jxl6N_SSE49MaltaUnitIN3hwy6N_SSE44SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_10MaltaTagLFES6_PKfl = comdat any

$_ZN3jxl6N_AVX29MaltaUnitIN3hwy6N_AVX24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_8MaltaTagES6_PKfl = comdat any

$_ZN3jxl6N_AVX29MaltaUnitIN3hwy6N_AVX24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_10MaltaTagLFES6_PKfl = comdat any

$_ZN3jxl6N_SSE29MaltaUnitIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_8MaltaTagES6_PKfl = comdat any

$_ZN3jxl6N_SSE29MaltaUnitIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_10MaltaTagLFES6_PKfl = comdat any

$_ZTVN3jxl21ButteraugliComparatorE = comdat any

@_ZTVN3jxl21ButteraugliComparatorE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN3jxl21ButteraugliComparatorD2Ev, ptr @_ZN3jxl21ButteraugliComparatorD0Ev] }, comdat, align 8
@_ZN3jxlL38OpsinDynamicsImageHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIN3jxl6StatusEJRKNS1_6Image3IfEERKNS1_17ButteraugliParamsEPS4_PNS1_8BlurTempESA_EE13ChooseAndCallIXadsoKPFS2_S6_S9_SA_SC_SA_EL_ZNS1_L38OpsinDynamicsImageHighwayDispatchTableEEEEEES2_S6_S9_SA_SC_SA_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX218OpsinDynamicsImageERKNS_6Image3IfEERKNS_17ButteraugliParamsEPS2_PNS_8BlurTempES8_, ptr null, ptr @_ZN3jxl6N_SSE418OpsinDynamicsImageERKNS_6Image3IfEERKNS_17ButteraugliParamsEPS2_PNS_8BlurTempES8_, ptr null, ptr null, ptr @_ZN3jxl6N_SSE218OpsinDynamicsImageERKNS_6Image3IfEERKNS_17ButteraugliParamsEPS2_PNS_8BlurTempES8_, ptr @_ZN3jxl6N_SSE218OpsinDynamicsImageERKNS_6Image3IfEERKNS_17ButteraugliParamsEPS2_PNS_8BlurTempES8_], align 16
@_ZN3jxlL39SeparateFrequenciesHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIN3jxl6StatusEJmmRKNS1_17ButteraugliParamsEPNS1_8BlurTempERKNS1_6Image3IfEERNS1_11PsychoImageEEE13ChooseAndCallIXadsoKPFS2_mmS5_S7_SB_SD_EL_ZNS1_L39SeparateFrequenciesHighwayDispatchTableEEEEEES2_mmS5_S7_SB_SD_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX219SeparateFrequenciesEmmRKNS_17ButteraugliParamsEPNS_8BlurTempERKNS_6Image3IfEERNS_11PsychoImageE, ptr null, ptr @_ZN3jxl6N_SSE419SeparateFrequenciesEmmRKNS_17ButteraugliParamsEPNS_8BlurTempERKNS_6Image3IfEERNS_11PsychoImageE, ptr null, ptr null, ptr @_ZN3jxl6N_SSE219SeparateFrequenciesEmmRKNS_17ButteraugliParamsEPNS_8BlurTempERKNS_6Image3IfEERNS_11PsychoImageE, ptr @_ZN3jxl6N_SSE219SeparateFrequenciesEmmRKNS_17ButteraugliParamsEPNS_8BlurTempERKNS_6Image3IfEERNS_11PsychoImageE], align 16
@_ZN3jxlL35MaskPsychoImageHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIN3jxl6StatusEJRKNS1_11PsychoImageES5_mmRKNS1_17ButteraugliParamsEPNS1_8BlurTempEPNS1_5PlaneIfEESD_EE13ChooseAndCallIXadsoKPFS2_S5_S5_mmS8_SA_SD_SD_EL_ZNS1_L35MaskPsychoImageHighwayDispatchTableEEEEEES2_S5_S5_mmS8_SA_SD_SD_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX215MaskPsychoImageERKNS_11PsychoImageES3_mmRKNS_17ButteraugliParamsEPNS_8BlurTempEPNS_5PlaneIfEESB_, ptr null, ptr @_ZN3jxl6N_SSE415MaskPsychoImageERKNS_11PsychoImageES3_mmRKNS_17ButteraugliParamsEPNS_8BlurTempEPNS_5PlaneIfEESB_, ptr null, ptr null, ptr @_ZN3jxl6N_SSE215MaskPsychoImageERKNS_11PsychoImageES3_mmRKNS_17ButteraugliParamsEPNS_8BlurTempEPNS_5PlaneIfEESB_, ptr @_ZN3jxl6N_SSE215MaskPsychoImageERKNS_11PsychoImageES3_mmRKNS_17ButteraugliParamsEPNS_8BlurTempEPNS_5PlaneIfEESB_], align 16
@_ZN3jxlL36L2DiffAsymmetricHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIvJRKN3jxl5PlaneIfEES5_ffPS3_EE13ChooseAndCallIXadsoKPFvS5_S5_ffS6_EL_ZNS1_L36L2DiffAsymmetricHighwayDispatchTableEEEEEEvS5_S5_ffS6_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX2L16L2DiffAsymmetricERKNS_5PlaneIfEES4_ffPS2_, ptr null, ptr @_ZN3jxl6N_SSE4L16L2DiffAsymmetricERKNS_5PlaneIfEES4_ffPS2_, ptr null, ptr null, ptr @_ZN3jxl6N_SSE2L16L2DiffAsymmetricERKNS_5PlaneIfEES4_ffPS2_, ptr @_ZN3jxl6N_SSE2L16L2DiffAsymmetricERKNS_5PlaneIfEES4_ffPS2_], align 16
@_ZN3jxlL26L2DiffHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIvJRKN3jxl5PlaneIfEES5_fPS3_EE13ChooseAndCallIXadsoKPFvS5_S5_fS6_EL_ZNS1_L26L2DiffHighwayDispatchTableEEEEEEvS5_S5_fS6_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX2L6L2DiffERKNS_5PlaneIfEES4_fPS2_, ptr null, ptr @_ZN3jxl6N_SSE4L6L2DiffERKNS_5PlaneIfEES4_fPS2_, ptr null, ptr null, ptr @_ZN3jxl6N_SSE2L6L2DiffERKNS_5PlaneIfEES4_fPS2_, ptr @_ZN3jxl6N_SSE2L6L2DiffERKNS_5PlaneIfEES4_fPS2_], align 16
@_ZN3jxlL29SetL2DiffHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIvJRKN3jxl5PlaneIfEES5_fPS3_EE13ChooseAndCallIXadsoKPFvS5_S5_fS6_EL_ZNS1_L29SetL2DiffHighwayDispatchTableEEEEEEvS5_S5_fS6_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX2L9SetL2DiffERKNS_5PlaneIfEES4_fPS2_, ptr null, ptr @_ZN3jxl6N_SSE4L9SetL2DiffERKNS_5PlaneIfEES4_fPS2_, ptr null, ptr null, ptr @_ZN3jxl6N_SSE2L9SetL2DiffERKNS_5PlaneIfEES4_fPS2_, ptr @_ZN3jxl6N_SSE2L9SetL2DiffERKNS_5PlaneIfEES4_fPS2_], align 16
@_ZN3jxlL44CombineChannelsToDiffmapHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIN3jxl6StatusEJRKNS1_5PlaneIfEERKNS1_6Image3IfEESA_fPS4_EE13ChooseAndCallIXadsoKPFS2_S6_SA_SA_fSB_EL_ZNS1_L44CombineChannelsToDiffmapHighwayDispatchTableEEEEEES2_S6_SA_SA_fSB_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX224CombineChannelsToDiffmapERKNS_5PlaneIfEERKNS_6Image3IfEES8_fPS2_, ptr null, ptr @_ZN3jxl6N_SSE424CombineChannelsToDiffmapERKNS_5PlaneIfEERKNS_6Image3IfEES8_fPS2_, ptr null, ptr null, ptr @_ZN3jxl6N_SSE224CombineChannelsToDiffmapERKNS_5PlaneIfEERKNS_6Image3IfEES8_fPS2_, ptr @_ZN3jxl6N_SSE224CombineChannelsToDiffmapERKNS_5PlaneIfEERKNS_6Image3IfEES8_fPS2_], align 16
@_ZN3jxlL45ButteraugliDiffmapInPlaceHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIN3jxl6StatusEJRNS1_6Image3IfEES5_RKNS1_17ButteraugliParamsERNS1_5PlaneIfEEEE13ChooseAndCallIXadsoKPFS2_S5_S5_S8_SB_EL_ZNS1_L45ButteraugliDiffmapInPlaceHighwayDispatchTableEEEEEES2_S5_S5_S8_SB_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX225ButteraugliDiffmapInPlaceERNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE, ptr null, ptr @_ZN3jxl6N_SSE425ButteraugliDiffmapInPlaceERNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE, ptr null, ptr null, ptr @_ZN3jxl6N_SSE225ButteraugliDiffmapInPlaceERNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE, ptr @_ZN3jxl6N_SSE225ButteraugliDiffmapInPlaceERNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE], align 16
@_ZN3jxlL32MaltaDiffMapHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIN3jxl6StatusEJRKNS1_5PlaneIfEES6_dddPS4_S7_EE13ChooseAndCallIXadsoKPFS2_S6_S6_dddS7_S7_EL_ZNS1_L32MaltaDiffMapHighwayDispatchTableEEEEEES2_S6_S6_dddS7_S7_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX212MaltaDiffMapERKNS_5PlaneIfEES4_dddPS2_S5_, ptr null, ptr @_ZN3jxl6N_SSE412MaltaDiffMapERKNS_5PlaneIfEES4_dddPS2_S5_, ptr null, ptr null, ptr @_ZN3jxl6N_SSE212MaltaDiffMapERKNS_5PlaneIfEES4_dddPS2_S5_, ptr @_ZN3jxl6N_SSE212MaltaDiffMapERKNS_5PlaneIfEES4_dddPS2_S5_], align 16
@_ZN3jxlL34MaltaDiffMapLFHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIN3jxl6StatusEJRKNS1_5PlaneIfEES6_dddPS4_S7_EE13ChooseAndCallIXadsoKPFS2_S6_S6_dddS7_S7_EL_ZNS1_L34MaltaDiffMapLFHighwayDispatchTableEEEEEES2_S6_S6_dddS7_S7_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX214MaltaDiffMapLFERKNS_5PlaneIfEES4_dddPS2_S5_, ptr null, ptr @_ZN3jxl6N_SSE414MaltaDiffMapLFERKNS_5PlaneIfEES4_dddPS2_S5_, ptr null, ptr null, ptr @_ZN3jxl6N_SSE214MaltaDiffMapLFERKNS_5PlaneIfEES4_dddPS2_S5_, ptr @_ZN3jxl6N_SSE214MaltaDiffMapLFERKNS_5PlaneIfEES4_dddPS2_S5_], align 16
@__const._ZN3jxl12_GLOBAL__N_110ScoreToRgbEdddPf.heatmap = private unnamed_addr constant [12 x [3 x double]] [[3 x double] zeroinitializer, [3 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00], [3 x double] [double 1.000000e+00, double 0.000000e+00, double 1.000000e+00], [3 x double] [double 5.000000e-01, double 5.000000e-01, double 1.000000e+00], [3 x double] [double 1.000000e+00, double 5.000000e-01, double 5.000000e-01], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 5.000000e-01], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00]], align 16
@.str.109 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.110 = private unnamed_addr constant [66 x i8] c"length_error was thrown in -fno-exceptions mode with message \22%s\22\00", align 1

@_ZN3jxl21ButteraugliComparatorC1EmmRKNS_17ButteraugliParamsE = hidden unnamed_addr alias void (ptr, i64, i64, ptr), ptr @_ZN3jxl21ButteraugliComparatorC2EmmRKNS_17ButteraugliParamsE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl13ComputeKernelEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::vector") align 8 captures(none) initializes((0, 24)) %0, float noundef %1) local_unnamed_addr #0 {
.lr.ph.preheader:
  %i.a = fpext float %1 to double                 ; 2 uses
  %i.b = fmul double %i.a, 2.000000e+00
  %i.c = fmul double %i.b, %i.a
  %i.d = fdiv double -1.000000e+00, %i.c
  %i.e = tail call noundef float @llvm.fabs.f32(float %1)
  %i.f = fmul float %i.e, 2.250000e+00
  %i.g = fptosi float %i.f to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1) ; 4 uses
  %i.h = shl nuw nsw i32 %.sroa.speculated, 1
  %i.i = or disjoint i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nuw nsw i64 %i.j, 2                  ; 3 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #44 ; 5 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.j
  store ptr %i.o, ptr %i.l, align 8, !tbaa !56
  %i.p = getelementptr i8, ptr %i.n, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.n, i8 0, i64 %i.m, i1 false), !tbaa !58
  store ptr %i.p, ptr %i.k, align 8, !tbaa !59
  %i.q = sub nsw i32 0, %.sroa.speculated
  %i.r = sext i32 %i.q to i64
  %i.s = zext nneg i32 %.sroa.speculated to i64
  %i.t = add nuw i32 %.sroa.speculated, 1
  %invariant.gep = getelementptr [4 x i8], ptr %i.n, i64 %i.s
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.r, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.u = trunc nsw i64 %indvars.iv to i32
  %i.v = sitofp i32 %i.u to double                ; 2 uses
  %i.w = fmul double %i.d, %i.v
  %i.x = fmul double %i.w, %i.v
  %i.y = tail call double @exp(double noundef %i.x) #45
  %i.z = fptrunc double %i.y to float
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.z, ptr %gep, align 4, !tbaa !58
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2
  %i.h = lshr i64 %i.g, 1                         ; 3 uses
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.h) ; 4 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = load i32, ptr %0, align 8, !tbaa !65
  %i.l = add i32 %i.k, -1
  %i.m = add i64 %i.h, %2
  %i.n = trunc i64 %i.m to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.n) ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.c, i64 %i.h ; 6 uses
  %.not46 = icmp slt i32 %.sroa.speculated, %i.j
  br i1 %.not46, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %sext = shl i64 %i.i, 32
  %i.o = ashr exact i64 %sext, 32                 ; 3 uses
  %i.p = sext i32 %.sroa.speculated to i64        ; 3 uses
  %i.q = add nsw i64 %i.p, 1
  %i.r = sub i64 %i.q, %i.i
  %i.s = sub nsw i64 %i.p, %i.o
  %xtraiter = and i64 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %.04047.prol = phi float [ %i.v, %.lr.ph.prol ], [ 0.000000e+00, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.t = sub i64 %indvars.iv.prol, %2
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.t
  %i.u = load float, ptr %gep.prol, align 4, !tbaa !58
  %i.v = fadd float %.04047.prol, %i.u            ; 3 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !110

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.o, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.04047.unr = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.lcssa78.unr = phi float [ poison, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %i.w = icmp ult i64 %i.s, 3
  br i1 %i.w, label %._crit_edge.thread, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.prol.loopexit
  %invariant.op = sub i64 1, %2
  %invariant.op81 = sub i64 2, %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !67   ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 3 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %._crit_edge61, label %.lr.ph60.split.us

._crit_edge.thread:                               ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa78 = phi float [ %.lcssa78.unr, %.lr.ph.prol.loopexit ], [ %i.ay, %.lr.ph ]
  %i.aa = fdiv float 1.000000e+00, %.lcssa78
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !67 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %.not72 = icmp eq i32 %i.ac, 0
  br i1 %.not72, label %._crit_edge61, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %._crit_edge.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !69
  %sext70 = shl i64 %i.i, 32
  %i.ai = ashr exact i64 %sext70, 32
  %i.aj = sext i32 %.sroa.speculated to i64
  br label %.lr.ph55

.lr.ph60.split.us:                                ; preds = %._crit_edge
  %min.iters.check = icmp ult i32 %i.y, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph60.split.us
  %n.vec = and i64 %i.z, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x float> splat (float +qnan), ptr %i.ak, align 4, !tbaa !58
  store <4 x float> splat (float +qnan), ptr %i.al, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.z
  br i1 %cmp.n, label %._crit_edge61, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph60.split.us, %middle.block
  %.03858.us.ph = phi i64 [ 0, %.lr.ph60.split.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03858.us = phi i64 [ %i.ao, %scalar.ph ], [ %.03858.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03858.us
  store float +qnan, ptr %i.an, align 4, !tbaa !58
  %i.ao = add nuw nsw i64 %.03858.us, 1           ; 2 uses
  %exitcond68.not = icmp eq i64 %i.ao, %i.z
  br i1 %exitcond68.not, label %._crit_edge61, label %scalar.ph, !llvm.loop !112

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.04047 = phi float [ %.04047.unr, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ]
  %i.ap = sub i64 %indvars.iv, %2
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ap
  %i.aq = load float, ptr %gep, align 4, !tbaa !58
  %i.ar = fadd float %.04047, %i.aq
  %.reass = add i64 %indvars.iv, %invariant.op
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %.reass
  %i.as = load float, ptr %gep.1, align 4, !tbaa !58
  %i.at = fadd float %i.ar, %i.as
  %.reass82 = add i64 %indvars.iv, %invariant.op81
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %.reass82
  %i.au = load float, ptr %gep.2, align 4, !tbaa !58
  %i.av = fadd float %i.at, %i.au
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aw = sub i64 %indvars.iv.next.2, %2
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aw
  %i.ax = load float, ptr %gep.3, align 4, !tbaa !58
  %i.ay = fadd float %i.av, %i.ax                 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %.not.not.3 = icmp slt i64 %indvars.iv.next.2, %i.p
  br i1 %.not.not.3, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !1

._crit_edge61:                                    ; preds = %._crit_edge56, %scalar.ph, %middle.block, %._crit_edge.thread, %._crit_edge
  ret void

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %._crit_edge56
  %.03858 = phi i64 [ %i.bd, %._crit_edge56 ], [ 0, %.lr.ph55.preheader ] ; 3 uses
  %i.az = mul i64 %i.ah, %.03858
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.az ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ba, i64 64) ]
  br label %bb.b

end_hunk_0
begin_hunk_1_@_ZN3jxl24ConvolutionWithTransposeERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEPS1_:bb.a
  br i1 %exitcond350.not, label %.preheader, label %bb.f, !llvm.loop !152

bb.h:                                             ; preds = %.lr.ph318, %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit258
  %indvar = phi i32 [ 0, %.lr.ph318 ], [ %indvar.next, %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit258 ] ; 3 uses
  %.0317 = phi i64 [ %spec.select, %.lr.ph318 ], [ %i.afd, %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit258 ] ; 11 uses
  %i.adb = add i32 %i.aba, %indvar
  %i.adc = tail call i32 @llvm.smin.i32(i32 %i.adb, i32 %i.aau)
  %smin668 = sext i32 %i.adc to i64               ; 2 uses
  %umin669 = tail call i64 @llvm.umin.i64(i64 %.0317, i64 %i.aat)
  %i.add = trunc i64 %umin669 to i32
  %i.ade = add i32 %i.g, %indvar
  %i.adf = add i32 %i.aaz, %i.add
  %i.adg = sub i32 %i.ade, %i.adf
  %i.adh = sext i32 %i.adg to i64                 ; 2 uses
  %i.adi = sub nsw i64 %smin668, %i.adh
  %i.adj = mul i64 %i.aam, %.0317
  %i.adk = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.adj ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.adk, i64 64) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.adl = tail call i64 @llvm.usub.sat.i64(i64 %.0317, i64 %i.aat) ; 2 uses
  %i.adm = trunc nuw i64 %i.adl to i32
  %i.adn = add nuw i64 %i.aat, %.0317
  %i.ado = trunc i64 %i.adn to i32
  %.sroa.speculated.i229 = tail call i32 @llvm.smin.i32(i32 %i.aau, i32 %i.ado) ; 2 uses
  %.not46.i231 = icmp slt i32 %.sroa.speculated.i229, %i.adm
  br i1 %.not46.i231, label %._crit_edge.i253, label %.lr.ph.preheader.i232

.lr.ph.preheader.i232:                            ; preds = %bb.h
  %i.adp = add nsw i64 %smin668, 1
  %i.adq = sub nsw i64 %i.adp, %i.adh
  %sext.i233 = shl nuw i64 %i.adl, 32
  %i.adr = ashr exact i64 %sext.i233, 32          ; 3 uses
  %i.ads = sext i32 %.sroa.speculated.i229 to i64 ; 2 uses
  %xtraiter670 = and i64 %i.adq, 3                ; 2 uses
  %lcmp.mod671.not = icmp eq i64 %xtraiter670, 0
  br i1 %lcmp.mod671.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol

.lr.ph.i234.prol:                                 ; preds = %.lr.ph.preheader.i232, %.lr.ph.i234.prol
  %indvars.iv.i235.prol = phi i64 [ %indvars.iv.next.i238.prol, %.lr.ph.i234.prol ], [ %i.adr, %.lr.ph.preheader.i232 ] ; 2 uses
  %.04047.i236.prol = phi float [ %i.adv, %.lr.ph.i234.prol ], [ 0.000000e+00, %.lr.ph.preheader.i232 ]
  %prol.iter672 = phi i64 [ %prol.iter672.next, %.lr.ph.i234.prol ], [ 0, %.lr.ph.preheader.i232 ]
  %i.adt = sub i64 %indvars.iv.i235.prol, %.0317
  %gep.i237.prol = getelementptr [4 x i8], ptr %invariant.gep.i230, i64 %i.adt
  %i.adu = load float, ptr %gep.i237.prol, align 4, !tbaa !58, !noalias !172
  %i.adv = fadd float %.04047.i236.prol, %i.adu   ; 3 uses
  %indvars.iv.next.i238.prol = add nsw i64 %indvars.iv.i235.prol, 1 ; 2 uses
  %prol.iter672.next = add i64 %prol.iter672, 1   ; 2 uses
  %prol.iter672.cmp.not = icmp eq i64 %prol.iter672.next, %xtraiter670
  br i1 %prol.iter672.cmp.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol, !llvm.loop !153

.lr.ph.i234.prol.loopexit:                        ; preds = %.lr.ph.i234.prol, %.lr.ph.preheader.i232
  %indvars.iv.i235.unr = phi i64 [ %i.adr, %.lr.ph.preheader.i232 ], [ %indvars.iv.next.i238.prol, %.lr.ph.i234.prol ]
  %.04047.i236.unr = phi float [ 0.000000e+00, %.lr.ph.preheader.i232 ], [ %i.adv, %.lr.ph.i234.prol ]
  %.lcssa.unr = phi float [ poison, %.lr.ph.preheader.i232 ], [ %i.adv, %.lr.ph.i234.prol ]
  %i.adw = icmp ult i64 %i.adi, 3
  br i1 %i.adw, label %._crit_edge.thread.i240, label %.lr.ph.preheader.i232.new

.lr.ph.preheader.i232.new:                        ; preds = %.lr.ph.i234.prol.loopexit
  %invariant.op686 = sub i64 1, %.0317
  %invariant.op688 = sub i64 2, %.0317
  br label %.lr.ph.i234

._crit_edge.i253:                                 ; preds = %bb.h
  %i.adx = load i32, ptr %i.b, align 4, !tbaa !67, !noalias !172 ; 3 uses
  %i.ady = zext i32 %i.adx to i64                 ; 3 uses
  %.not.i254 = icmp eq i32 %i.adx, 0
  br i1 %.not.i254, label %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit258, label %.lr.ph60.split.us.i255

._crit_edge.thread.i240:                          ; preds = %.lr.ph.i234, %.lr.ph.i234.prol.loopexit
  %.lcssa = phi float [ %.lcssa.unr, %.lr.ph.i234.prol.loopexit ], [ %i.aes, %.lr.ph.i234 ]
  %i.adz = fdiv float 1.000000e+00, %.lcssa
  %i.aea = load i32, ptr %i.b, align 4, !tbaa !67, !noalias !172 ; 2 uses
  %i.aeb = zext i32 %i.aea to i64
  %.not72.i241 = icmp eq i32 %i.aea, 0
  br i1 %.not72.i241, label %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit258, label %.lr.ph55.preheader.i242

.lr.ph55.preheader.i242:                          ; preds = %._crit_edge.thread.i240
  %i.aec = load ptr, ptr %i.aav, align 8, !tbaa !68, !noalias !172
  %i.aed = load i64, ptr %i.aaw, align 8, !tbaa !69, !noalias !172
  br label %.lr.ph55.i244

.lr.ph60.split.us.i255:                           ; preds = %._crit_edge.i253
  %min.iters.check633 = icmp ult i32 %i.adx, 8
  br i1 %min.iters.check633, label %scalar.ph632.preheader, label %vector.ph634

vector.ph634:                                     ; preds = %.lr.ph60.split.us.i255
  %n.vec635 = and i64 %i.ady, 4294967288          ; 3 uses
  br label %vector.body636

vector.body636:                                   ; preds = %vector.body636, %vector.ph634
  %index637 = phi i64 [ 0, %vector.ph634 ], [ %index.next638, %vector.body636 ] ; 2 uses
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %index637 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 16
  store <4 x float> splat (float +qnan), ptr %i.aee, align 32, !tbaa !58, !alias.scope !172
  store <4 x float> splat (float +qnan), ptr %i.aef, align 16, !tbaa !58, !alias.scope !172
  %index.next638 = add nuw i64 %index637, 8       ; 2 uses
  %i.aeg = icmp eq i64 %index.next638, %n.vec635
  br i1 %i.aeg, label %middle.block639, label %vector.body636, !llvm.loop !154

middle.block639:                                  ; preds = %vector.body636
  %cmp.n640 = icmp eq i64 %n.vec635, %i.ady
  br i1 %cmp.n640, label %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit258, label %scalar.ph632.preheader

scalar.ph632.preheader:                           ; preds = %.lr.ph60.split.us.i255, %middle.block639
  %.03858.us.i256.ph = phi i64 [ 0, %.lr.ph60.split.us.i255 ], [ %n.vec635, %middle.block639 ]
  br label %scalar.ph632

scalar.ph632:                                     ; preds = %scalar.ph632.preheader, %scalar.ph632
  %.03858.us.i256 = phi i64 [ %i.aei, %scalar.ph632 ], [ %.03858.us.i256.ph, %scalar.ph632.preheader ] ; 2 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %.03858.us.i256
  store float +qnan, ptr %i.aeh, align 4, !tbaa !58, !alias.scope !172
  %i.aei = add nuw nsw i64 %.03858.us.i256, 1     ; 2 uses
  %exitcond68.not.i257 = icmp eq i64 %i.aei, %i.ady
  br i1 %exitcond68.not.i257, label %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit258, label %scalar.ph632, !llvm.loop !155

.lr.ph.i234:                                      ; preds = %.lr.ph.i234, %.lr.ph.preheader.i232.new
  %indvars.iv.i235 = phi i64 [ %indvars.iv.i235.unr, %.lr.ph.preheader.i232.new ], [ %indvars.iv.next.i238.3, %.lr.ph.i234 ] ; 5 uses
  %.04047.i236 = phi float [ %.04047.i236.unr, %.lr.ph.preheader.i232.new ], [ %i.aes, %.lr.ph.i234 ]
  %i.aej = sub i64 %indvars.iv.i235, %.0317
  %gep.i237 = getelementptr [4 x i8], ptr %invariant.gep.i230, i64 %i.aej
  %i.aek = load float, ptr %gep.i237, align 4, !tbaa !58, !noalias !172
  %i.ael = fadd float %.04047.i236, %i.aek
  %.reass687 = add i64 %indvars.iv.i235, %invariant.op686
  %gep.i237.1 = getelementptr [4 x i8], ptr %invariant.gep.i230, i64 %.reass687
  %i.aem = load float, ptr %gep.i237.1, align 4, !tbaa !58, !noalias !172
  %i.aen = fadd float %i.ael, %i.aem
  %.reass689 = add i64 %indvars.iv.i235, %invariant.op688
  %gep.i237.2 = getelementptr [4 x i8], ptr %invariant.gep.i230, i64 %.reass689
  %i.aeo = load float, ptr %gep.i237.2, align 4, !tbaa !58, !noalias !172
  %i.aep = fadd float %i.aen, %i.aeo
  %indvars.iv.next.i238.2 = add nsw i64 %indvars.iv.i235, 3 ; 2 uses
  %i.aeq = sub i64 %indvars.iv.next.i238.2, %.0317
  %gep.i237.3 = getelementptr [4 x i8], ptr %invariant.gep.i230, i64 %i.aeq
  %i.aer = load float, ptr %gep.i237.3, align 4, !tbaa !58, !noalias !172
  %i.aes = fadd float %i.aep, %i.aer              ; 2 uses
  %indvars.iv.next.i238.3 = add nsw i64 %indvars.iv.i235, 4
  %.not.not.i239.3 = icmp slt i64 %indvars.iv.next.i238.2, %i.ads
  br i1 %.not.not.i239.3, label %.lr.ph.i234, label %._crit_edge.thread.i240, !llvm.loop !1

.lr.ph55.i244:                                    ; preds = %._crit_edge56.i251, %.lr.ph55.preheader.i242
  %.03858.i245 = phi i64 [ %i.aex, %._crit_edge56.i251 ], [ 0, %.lr.ph55.preheader.i242 ] ; 3 uses
  %i.aet = mul i64 %.03858.i245, %i.aed
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aec, i64 %i.aet ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aeu, i64 64) ]
  br label %bb.i

._crit_edge56.i251:                               ; preds = %bb.i
  %i.aev = fmul float %i.adz, %i.afc
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %.03858.i245
  store float %i.aev, ptr %i.aew, align 4, !tbaa !58, !alias.scope !172
  %i.aex = add nuw nsw i64 %.03858.i245, 1        ; 2 uses
  %exitcond.not.i252 = icmp eq i64 %i.aex, %i.aeb
  br i1 %exitcond.not.i252, label %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit258, label %.lr.ph55.i244, !llvm.loop !2

bb.i:                                             ; preds = %bb.i, %.lr.ph55.i244
  %indvars.iv65.i246 = phi i64 [ %i.adr, %.lr.ph55.i244 ], [ %indvars.iv.next66.i249, %bb.i ] ; 4 uses
  %.03752.i247 = phi float [ 0.000000e+00, %.lr.ph55.i244 ], [ %i.afc, %bb.i ]
  %i.aey = getelementptr inbounds [4 x i8], ptr %i.aeu, i64 %indvars.iv65.i246
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !58, !noalias !172
  %i.afa = sub i64 %indvars.iv65.i246, %.0317
  %gep50.i248 = getelementptr [4 x i8], ptr %invariant.gep.i230, i64 %i.afa
  %i.afb = load float, ptr %gep50.i248, align 4, !tbaa !58, !noalias !172
  %i.afc = tail call float @llvm.fmuladd.f32(float %i.aez, float %i.afb, float %.03752.i247) ; 2 uses
  %indvars.iv.next66.i249 = add nsw i64 %indvars.iv65.i246, 1
  %.not42.not.i250 = icmp slt i64 %indvars.iv65.i246, %i.ads
  br i1 %.not42.not.i250, label %bb.i, label %._crit_edge56.i251, !llvm.loop !3

_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit258: ; preds = %._crit_edge56.i251, %scalar.ph632, %middle.block639, %._crit_edge.i253, %._crit_edge.thread.i240
  %i.afd = add nuw nsw i64 %.0317, 1              ; 2 uses
  %exitcond351.not = icmp eq i64 %i.afd, %i.aah
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond351.not, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit, label %bb.h, !llvm.loop !156

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit: ; preds = %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit258, %.preheader, %.loopexit642
  %.sroa.0270.0 = phi i32 [ 1, %.loopexit642 ], [ 0, %.preheader ], [ 0, %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit258 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bh) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit
  %.sroa.0270.1 = phi i32 [ %.sroa.0270.0, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.sroa.0270.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, float noundef %1, ptr nofree nonnull readnone align 4 captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.std::__1::vector", align 8  ; 7 uses
  %6 = alloca %"struct.jxl::WeightsSeparable5", align 16 ; 9 uses
  %7 = alloca %"class.jxl::RectT", align 8        ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.b = fpext float %1 to double                 ; 2 uses
  %i.c = fmul double %i.b, 2.000000e+00
  %i.d = fmul double %i.c, %i.b
  %i.e = fdiv double -1.000000e+00, %i.d
  %i.f = tail call noundef float @llvm.fabs.f32(float %1)
  %i.g = fmul float %i.f, 2.250000e+00
  %i.h = fptosi float %i.g to i32                 ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1) ; 4 uses
  %i.i = shl nuw nsw i32 %.sroa.speculated.i, 1
  %i.j = or disjoint i32 %i.i, 1
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = shl nuw nsw i64 %i.k, 2                  ; 4 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #44, !noalias !175 ; 14 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !55, !alias.scope !175
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.k
  store ptr %i.p, ptr %i.m, align 8, !tbaa !56, !alias.scope !175
  %i.q = getelementptr i8, ptr %i.o, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.o, i8 0, i64 %i.n, i1 false), !tbaa !58, !noalias !175
  store ptr %i.q, ptr %i.l, align 8, !tbaa !59, !alias.scope !175
  %i.r = sub nsw i32 0, %.sroa.speculated.i
  %i.s = sext i32 %i.r to i64
  %i.t = zext nneg i32 %.sroa.speculated.i to i64
  %i.u = add nuw i32 %.sroa.speculated.i, 1
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.o, i64 %i.t
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
  %indvars.iv.i = phi i64 [ %i.s, %bb.a ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.v = trunc nsw i64 %indvars.iv.i to i32
  %i.w = sitofp i32 %i.v to double                ; 2 uses
  %i.x = fmul double %i.e, %i.w
  %i.y = fmul double %i.x, %i.w
  %i.z = tail call double @exp(double noundef %i.y) #45, !noalias !175
  %i.aa = fptrunc double %i.z to float
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store float %i.aa, ptr %gep.i, align 4, !tbaa !58, !noalias !175
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.u, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN3jxl13ComputeKernelEf.exit, label %.lr.ph.i, !llvm.loop !0

_ZN3jxl13ComputeKernelEf.exit:                    ; preds = %.lr.ph.i
  %i.ab = icmp ne i32 %i.h, 2
  %.not = icmp eq ptr %0, %4
  %or.cond = or i1 %i.ab, %.not
  br i1 %or.cond, label %bb.b, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %_ZN3jxl13ComputeKernelEf.exit
  %i.ac = load float, ptr %i.o, align 4, !tbaa !58
  %i.ad = fadd float %i.ac, 0.000000e+00
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !58
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !58
  %i.aj = fadd float %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.al = load float, ptr %i.ak, align 4, !tbaa !58
  %i.am = fadd float %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ao = load float, ptr %i.an, align 4, !tbaa !58
  %i.ap = fadd float %i.am, %i.ao
  %i.aq = fdiv float 1.000000e+00, %i.ap          ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !58
  %i.at = fmul float %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !58
  %i.aw = fmul float %i.aq, %i.av
  %i.ax = load float, ptr %i.o, align 4, !tbaa !58
  %i.ay = fmul float %i.aq, %i.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.az = insertelement <4 x float> poison, float %i.at, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x float> %i.ba, ptr %6, align 16, !tbaa !58
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bc = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x float> %i.bd, ptr %i.bb, align 16, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bf = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x float> %i.bg, ptr %i.be, align 16, !tbaa !58
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <4 x float> %i.ba, ptr %i.bh, align 16, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 64
  store <4 x float> %i.bd, ptr %i.bi, align 16, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 80
  store <4 x float> %i.bg, ptr %i.bj, align 16, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 16, i1 false)
  %i.bl = load <2 x i32>, ptr %0, align 8, !tbaa !176
  %i.bm = zext <2 x i32> %i.bl to <2 x i64>
  store <2 x i64> %i.bm, ptr %i.bk, align 8, !tbaa !177
  %i.bn = call i32 @_ZN3jxl10Separable5ERKNS_5PlaneIfEERKNS_5RectTImEERKNS_17WeightsSeparable5EPNS_10ThreadPoolEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(96) %6, ptr noundef null, ptr noundef %4) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit

bb.b:                                             ; preds = %_ZN3jxl13ComputeKernelEf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.bo = call i32 @_ZN3jxl8BlurTemp13GetTransposedERKNS_5PlaneIfEEPPS2_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a) #49 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.br = call i32 @_ZN3jxl24ConvolutionWithTransposeERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %i.bq) #49
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.bu = call i32 @_ZN3jxl24ConvolutionWithTransposeERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %4) #49
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.054.1 = phi i32 [ %i.bu, %bb.d ], [ 1, %bb.c ], [ %i.bo, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit: ; preds = %bb.e, %.lr.ph.4
  %.sroa.054.2 = phi i32 [ %.sroa.054.1, %bb.e ], [ %i.bn, %.lr.ph.4 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  ret i32 %.sroa.054.2
}

declare i32 @_ZN3jxl10Separable5ERKNS_5PlaneIfEERKNS_5RectTImEERKNS_17WeightsSeparable5EPNS_10ThreadPoolEPS1_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(96), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN3jxl8BlurTemp13GetTransposedERKNS_5PlaneIfEEPPS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %4 = alloca %"class.jxl::StatusOr", align 8     ; 10 uses
  %5 = alloca %"class.jxl::Plane", align 8        ; 6 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !65
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !67
  %i.g = load i32, ptr %1, align 8, !tbaa !65
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46, !noalias !182
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %i.f, i32 noundef %i.g, i64 noundef 4) #45, !noalias !182
  %i.h = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.d, i64 noundef 0) #45, !noalias !182 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  br i1 %i.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.h, ptr %i.j, align 8, !tbaa !77, !alias.scope !182
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.b
  store i32 0, ptr %i.j, align 8, !tbaa !77, !alias.scope !182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l) #45
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !78, !noalias !182
  store i64 %i.o, ptr %i.m, align 8, !tbaa !78, !alias.scope !182
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.c, %.critedge.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46, !noalias !182
  %i.q = load i32, ptr %i.j, align 8, !tbaa !77   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.d:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(60) %4, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t) #45
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !78, !noalias !183
  store i64 %i.w, ptr %i.u, align 8, !tbaa !78, !alias.scope !183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.s) #45 ; 0 uses
  %i.z = load i64, ptr %i.u, align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !78
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  %.pr = load i32, ptr %i.j, align 8, !tbaa !77
  %i.ab = icmp eq i32 %.pr, 0
  br i1 %i.ab, label %bb.e, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.thread

end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE29MaltaUnitIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_10MaltaTagLFES6_PKfl:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = load float, ptr %i.ai, align 1, !tbaa !79, !alias.scope !2523
  %i.ak = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.al = load float, ptr %i.ak, align 1, !tbaa !79, !alias.scope !2524
  %i.am = getelementptr inbounds i8, ptr %i.v, i64 -12
  %i.an = load float, ptr %i.am, align 1, !tbaa !79, !alias.scope !2525
  %i.ao = insertelement <4 x float> poison, float %i.h, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.u, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.ad, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.al, i64 3
  %i.as = insertelement <4 x float> poison, float %i.j, i64 0
  %i.at = insertelement <4 x float> %i.as, float %i.x, i64 1
  %i.au = insertelement <4 x float> %i.at, float %i.af, i64 2
  %i.av = insertelement <4 x float> %i.au, float %i.an, i64 3
  %i.aw = fadd <4 x float> %i.ar, %i.av
  %i.ax = insertelement <4 x float> poison, float %i.d, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %i.o, i64 1
  %i.az = insertelement <4 x float> %i.ay, float %i.z, i64 2
  %i.ba = insertelement <4 x float> %i.az, float %i.ah, i64 3
  %i.bb = insertelement <4 x float> poison, float %i.f, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.r, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.ab, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.aj, i64 3
  %i.bf = fadd <4 x float> %i.ba, %i.be
  %i.bg = insertelement <4 x float> poison, float %i.b, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bi = fadd <4 x float> %i.bh, %i.aw
  %i.bj = fadd <4 x float> %i.bf, %i.bi           ; 2 uses
  %i.bk = fmul <4 x float> %i.bj, %i.bj           ; 4 uses
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bm = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.bk, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.bn = fadd <4 x float> %i.bl, %i.bm
  %i.bo = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.bk, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.bp = fadd <4 x float> %i.bn, %i.bo
  %i.bq = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.bk, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.br = fadd <4 x float> %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.bt = load float, ptr %i.bs, align 1, !tbaa !79, !alias.scope !2526
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bv = load float, ptr %i.bu, align 1, !tbaa !79, !alias.scope !2527 ; 3 uses
  %i.bw = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.bx = load float, ptr %i.bw, align 1, !tbaa !79, !alias.scope !2528 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.bz = load float, ptr %i.by, align 1, !tbaa !79, !alias.scope !2529
  %i.ca = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.cb = load float, ptr %i.ca, align 1, !tbaa !79, !alias.scope !2530
  %i.cc = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.cd = load float, ptr %i.cc, align 1, !tbaa !79, !alias.scope !2531 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.cf = load float, ptr %i.ce, align 1, !tbaa !79, !alias.scope !2532 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ch = load float, ptr %i.cg, align 1, !tbaa !79, !alias.scope !2533
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.m
  %i.cj = load float, ptr %i.ci, align 1, !tbaa !79, !alias.scope !2534
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.m
  %i.cl = load float, ptr %i.ck, align 1, !tbaa !79, !alias.scope !2535 ; 3 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.g, i64 %1
  %i.cn = load float, ptr %i.cm, align 1, !tbaa !79, !alias.scope !2536 ; 3 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.i, i64 %1
  %i.cp = load float, ptr %i.co, align 1, !tbaa !79, !alias.scope !2537
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.c, i64 %1
  %i.cr = load float, ptr %i.cq, align 1, !tbaa !79, !alias.scope !2538
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.e, i64 %1
  %i.ct = load float, ptr %i.cs, align 1, !tbaa !79, !alias.scope !2539 ; 3 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.m
  %i.cv = load float, ptr %i.cu, align 1, !tbaa !79, !alias.scope !2540 ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.m
  %i.cx = load float, ptr %i.cw, align 1, !tbaa !79, !alias.scope !2541
  %i.cy = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cz = insertelement <4 x float> %i.cy, float %i.cf, i64 1
  %i.da = insertelement <4 x float> %i.cz, float %i.cn, i64 2
  %i.db = insertelement <4 x float> %i.da, float %i.cv, i64 3
  %i.dc = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.dd = insertelement <4 x float> %i.dc, float %i.ch, i64 1
  %i.de = insertelement <4 x float> %i.dd, float %i.cp, i64 2
  %i.df = insertelement <4 x float> %i.de, float %i.cx, i64 3
  %i.dg = fadd <4 x float> %i.db, %i.df
  %i.dh = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.di = insertelement <4 x float> %i.dh, float %i.cb, i64 1
  %i.dj = insertelement <4 x float> %i.di, float %i.cj, i64 2
  %i.dk = insertelement <4 x float> %i.dj, float %i.cr, i64 3
  %i.dl = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.dm = insertelement <4 x float> %i.dl, float %i.cd, i64 1
  %i.dn = insertelement <4 x float> %i.dm, float %i.cl, i64 2
  %i.do = insertelement <4 x float> %i.dn, float %i.ct, i64 3
  %i.dp = fadd <4 x float> %i.dk, %i.do
  %i.dq = fadd <4 x float> %i.bh, %i.dg
  %i.dr = fadd <4 x float> %i.dp, %i.dq           ; 2 uses
  %i.ds = fmul <4 x float> %i.dr, %i.dr           ; 4 uses
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.du = fadd <4 x float> %i.br, %i.dt
  %i.dv = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ds, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.dw = fadd <4 x float> %i.du, %i.dv
  %i.dx = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ds, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.dy = fadd <4 x float> %i.dw, %i.dx
  %i.dz = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ds, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.ea = fadd <4 x float> %i.dy, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.ec = load float, ptr %i.eb, align 1, !tbaa !79, !alias.scope !2542
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ee = load float, ptr %i.ed, align 1, !tbaa !79, !alias.scope !2543
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.eg = load float, ptr %i.ef, align 1, !tbaa !79, !alias.scope !2544
  %i.eh = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ei = load float, ptr %i.eh, align 1, !tbaa !79, !alias.scope !2545
  %i.ej = getelementptr inbounds i8, ptr %i.q, i64 -12
  %i.ek = load float, ptr %i.ej, align 1, !tbaa !79, !alias.scope !2546
  %i.el = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.em = load float, ptr %i.el, align 1, !tbaa !79, !alias.scope !2547
  %i.en = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.eo = load float, ptr %i.en, align 1, !tbaa !79, !alias.scope !2548
  %i.ep = getelementptr inbounds i8, ptr %i.t, i64 -12
  %i.eq = load float, ptr %i.ep, align 1, !tbaa !79, !alias.scope !2549
  %i.er = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.ei, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.cn, i64 2
  %i.eu = insertelement <4 x float> %i.et, float %i.ct, i64 3
  %i.ev = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ew = insertelement <4 x float> %i.ev, float %i.bx, i64 1
  %i.ex = insertelement <4 x float> %i.ew, float %i.em, i64 2
  %i.ey = insertelement <4 x float> %i.ex, float %i.eq, i64 3
  %i.ez = fadd <4 x float> %i.eu, %i.ey
  %i.fa = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.fb = insertelement <4 x float> %i.fa, float %i.bv, i64 1
  %i.fc = insertelement <4 x float> %i.fb, float %i.ek, i64 2
  %i.fd = insertelement <4 x float> %i.fc, float %i.eo, i64 3
  %i.fe = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.ff = insertelement <4 x float> %i.fe, float %i.eg, i64 1
  %i.fg = insertelement <4 x float> %i.ff, float %i.cl, i64 2
  %i.fh = insertelement <4 x float> %i.fg, float %i.cv, i64 3
  %i.fi = fadd <4 x float> %i.fd, %i.fh
  %i.fj = fadd <4 x float> %i.bh, %i.ez
  %i.fk = fadd <4 x float> %i.fi, %i.fj           ; 2 uses
  %i.fl = fmul <4 x float> %i.fk, %i.fk           ; 4 uses
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fn = fadd <4 x float> %i.ea, %i.fm
  %i.fo = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fl, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.fp = fadd <4 x float> %i.fn, %i.fo
  %i.fq = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fl, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.fr = fadd <4 x float> %i.fp, %i.fq
  %i.fs = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fl, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.ft = fadd <4 x float> %i.fr, %i.fs
  %i.fu = getelementptr inbounds i8, ptr %i.t, i64 -16
  %i.fv = load float, ptr %i.fu, align 1, !tbaa !79, !alias.scope !2550
  %i.fw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.fx = load float, ptr %i.fw, align 1, !tbaa !79, !alias.scope !2551
  %i.fy = getelementptr inbounds i8, ptr %i.q, i64 -16
  %i.fz = load float, ptr %i.fy, align 1, !tbaa !79, !alias.scope !2552
  %i.ga = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.gb = load float, ptr %i.ga, align 1, !tbaa !79, !alias.scope !2553
  %i.gc = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.gd = load float, ptr %i.gc, align 1, !tbaa !79, !alias.scope !2554
  %i.ge = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.gf = load float, ptr %i.ge, align 1, !tbaa !79, !alias.scope !2555
  %i.gg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.gh = load float, ptr %i.gg, align 1, !tbaa !79, !alias.scope !2556
  %i.gi = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.gj = load float, ptr %i.gi, align 1, !tbaa !79, !alias.scope !2557
  %i.gk = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.gl = insertelement <4 x float> %i.gk, float %i.gb, i64 1
  %i.gm = insertelement <4 x float> %i.gl, float %i.cf, i64 2
  %i.gn = insertelement <4 x float> %i.gm, float %i.bx, i64 3
  %i.go = insertelement <4 x float> poison, float %i.fx, i64 0
  %i.gp = insertelement <4 x float> %i.go, float %i.cn, i64 1
  %i.gq = insertelement <4 x float> %i.gp, float %i.gf, i64 2
  %i.gr = insertelement <4 x float> %i.gq, float %i.gj, i64 3
  %i.gs = fadd <4 x float> %i.gn, %i.gr
  %i.gt = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.gu = insertelement <4 x float> %i.gt, float %i.fz, i64 1
  %i.gv = insertelement <4 x float> %i.gu, float %i.cd, i64 2
  %i.gw = insertelement <4 x float> %i.gv, float %i.bv, i64 3
  %i.gx = insertelement <4 x float> poison, float %i.fv, i64 0
  %i.gy = insertelement <4 x float> %i.gx, float %i.cl, i64 1
  %i.gz = insertelement <4 x float> %i.gy, float %i.gd, i64 2
  %i.ha = insertelement <4 x float> %i.gz, float %i.gh, i64 3
  %i.hb = fadd <4 x float> %i.gw, %i.ha
  %i.hc = fadd <4 x float> %i.bh, %i.gs
  %i.hd = fadd <4 x float> %i.hb, %i.hc           ; 2 uses
  %i.he = fmul <4 x float> %i.hd, %i.hd           ; 4 uses
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hg = fadd <4 x float> %i.ft, %i.hf
  %i.hh = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.he, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.hi = fadd <4 x float> %i.hg, %i.hh
  %i.hj = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.he, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.hk = fadd <4 x float> %i.hi, %i.hj
  %i.hl = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.he, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.hm = fadd <4 x float> %i.hk, %i.hl
  ret <4 x float> %i.hm
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #4

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #7 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #8 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #15 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #16 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #21 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #25 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #27 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #31 = { nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #33 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #35 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #36 = { noreturn "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #40 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #41 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #42 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #44 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #45 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #46 = { nounwind }
attributes #47 = { noreturn "no-builtin-fread" "no-builtin-fwrite" }
attributes #48 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #49 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #50 = { "function-inline-cost-multiplier"="2" "no-builtin-fread" "no-builtin-fwrite" }
attributes #51 = { noreturn nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}
!llvm.errno.tbaa = !{!49}

!0 = distinct !{!0, !60}
!1 = distinct !{!1, !60}
!2 = distinct !{!2, !60}
!3 = distinct !{!3, !60}
!4 = distinct !{!4, !60}
!5 = distinct !{!5, !60}
!6 = distinct !{!6, !60}
!7 = distinct !{!7, !60}
!8 = distinct !{!8, !60}
!9 = distinct !{!9, !60}
!10 = distinct !{!10, !60}
!11 = distinct !{!11, !60}
!12 = distinct !{!12, !60}
!13 = distinct !{!13, !60}
!14 = distinct !{!14, !60}
!15 = distinct !{!15, !60}
!16 = distinct !{!16, !60}
!17 = distinct !{!17, !60}
!18 = distinct !{!18, !60}
!19 = distinct !{!19, !60}
!20 = distinct !{!20, !60}
!21 = distinct !{!21, !60}
!22 = distinct !{!22, !60}
!23 = distinct !{!23, !60}
!24 = distinct !{!24, !60}
!25 = distinct !{!25, !60}
!26 = distinct !{!26, !60}
!27 = distinct !{!27, !60}
!28 = distinct !{!28, !60}
!29 = distinct !{!29, !60}
!30 = distinct !{!30, !60}
!31 = distinct !{!31, !60}
!32 = distinct !{!32, !60}
!33 = distinct !{!33, !60}
!34 = distinct !{!34, !60}
!35 = distinct !{!35, !60}
!36 = distinct !{!36, !60}
!37 = distinct !{null, null, null}
!38 = distinct !{!38, !60}
!39 = distinct !{!39, !60}
!40 = distinct !{ptr @_ZN3jxl18ButteraugliDiffmapERKNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE, null, null, null}
!41 = !{i32 8, !"PIC Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 2}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"omnipotent char", !45, i64 0}
!47 = !{!"int", !46, i64 0}
!48 = !{!"__libc_errno", !47, i64 0}
!49 = !{!48, !47, i64 0}
!50 = !{!"any pointer", !46, i64 0}
!51 = !{!"p1 float", !50, i64 0}
!52 = !{!"_ZTSNSt3__122__compressed_pair_elemIPfLi0ELb0EEE", !51, i64 0}
!53 = !{!"_ZTSNSt3__117__compressed_pairIPfNS_9allocatorIfEEEE", !52, i64 0}
!54 = !{!"_ZTSNSt3__16vectorIfNS_9allocatorIfEEEE", !51, i64 0, !51, i64 8, !53, i64 16}
!55 = !{!54, !51, i64 0}
!56 = !{!51, !51, i64 0}
!57 = !{!"float", !46, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!54, !51, i64 8}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"long", !46, i64 0}
!62 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !50, i64 0}
!63 = !{!"_ZTSN3jxl13AlignedMemoryE", !50, i64 0, !62, i64 8, !50, i64 16}
!64 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !61, i64 16, !63, i64 24, !61, i64 48}
!65 = !{!64, !47, i64 0}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!64, !47, i64 4}
!68 = !{!63, !50, i64 16}
!69 = !{!64, !61, i64 16}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!"p1 _ZTSN3jxl5PlaneIfEE", !50, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!63, !62, i64 8}
!75 = !{!"_ZTSN3jxl10StatusCodeE", !46, i64 0}
!76 = !{!"_ZTSN3jxl8StatusOrINS_5PlaneIfEEEE", !46, i64 0, !75, i64 56}
!77 = !{!76, !75, i64 56}
!78 = !{!64, !61, i64 48}
!79 = !{!46, !46, i64 0}
!80 = !{!"_ZTSN3jxl8StatusOrINS_6Image3IfEEEE", !46, i64 0, !75, i64 168}
!81 = !{!80, !75, i64 168}
!82 = !{!"_ZTSN3jxl17ButteraugliParamsE", !57, i64 0, !57, i64 4, !57, i64 8}
!83 = !{!82, !57, i64 8}
!84 = !{!82, !57, i64 0}
!85 = !{!"branch_weights", i32 4, i32 28}
!86 = !{!"vtable pointer", !45, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!"_ZTSN3jxl6Image3IfEE", !46, i64 0}
!89 = !{!"_ZTSN3jxl11PsychoImageE", !46, i64 0, !46, i64 112, !88, i64 224, !88, i64 392}
!90 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIbEE", !46, i64 0}
!91 = !{!"_ZTSNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEE", !90, i64 0}
!92 = !{!"_ZTSNSt3__111atomic_flagE", !91, i64 0}
!93 = !{!"_ZTSN3jxl5PlaneIfEE", !64, i64 0}
!94 = !{!"_ZTSN3jxl8BlurTempE", !93, i64 0}
!95 = !{!"p1 _ZTSN3jxl21ButteraugliComparatorE", !50, i64 0}
!96 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl21ButteraugliComparatorELi0ELb0EEE", !95, i64 0}
!97 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl21ButteraugliComparatorENS_14default_deleteIS2_EEEE", !96, i64 0}
!98 = !{!"_ZTSNSt3__110unique_ptrIN3jxl21ButteraugliComparatorENS_14default_deleteIS2_EEEE", !97, i64 0}
!99 = !{!"_ZTSN3jxl21ButteraugliComparatorE", !61, i64 8, !61, i64 16, !82, i64 24, !89, i64 40, !88, i64 600, !92, i64 768, !94, i64 776, !98, i64 832}
!100 = !{!99, !61, i64 8}
!101 = !{!99, !61, i64 16}
!102 = !{i64 0, i64 4, !58, i64 4, i64 4, !58, i64 8, i64 4, !58}
!103 = !{!"_ZTSN3jxl8StatusOrINSt3__110unique_ptrINS_21ButteraugliComparatorENS1_14default_deleteIS3_EEEEEE", !46, i64 0, !75, i64 8}
!104 = !{!103, !75, i64 8}
!105 = !{!50, !50, i64 0}
!106 = !{!95, !95, i64 0}
!107 = !{ptr @_ZN3jxl18ButteraugliDiffmapERKNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE}
!108 = !{!"double", !46, i64 0}
!109 = !{!108, !108, i64 0}
!110 = distinct !{!110, !66}
!111 = distinct !{!111, !60, !70, !71}
!112 = distinct !{!112, !60, !71, !70}
!113 = distinct !{!113, !66}
end_hunk_2
