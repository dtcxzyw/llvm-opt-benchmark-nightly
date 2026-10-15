Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopUnrollPass?download=true
inline.NumInlined: 3625
inline.NumDeleted: 2020
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.66 = private unnamed_addr constant [9 x i8] c"peeling;\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"runtime;\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"upperbound;\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"profile-peeling;\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"full-unroll-max=\00", align 1
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@.str.71 = private unnamed_addr constant [12 x i8] c"loop-unroll\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"CannotUnrollLoop\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c"unable to unroll loop: \00", align 1
@_ZTVN4llvm24OptimizationRemarkMissedE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvm30DiagnosticInfoOptimizationBaseE = external unnamed_addr constant { [7 x ptr] }, align 8
@.str.74 = private unnamed_addr constant [22 x i8] c"llvm.loop.unroll.full\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"llvm.loop.unroll.count\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"llvm.loop.unroll.enable\00", align 1
@.str.77 = private unnamed_addr constant [33 x i8] c"llvm.loop.unroll.runtime.disable\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"PragmaUnrollCountRejected\00", align 1
@.str.79 = private unnamed_addr constant [41 x i8] c"may be unable to unroll loop with count \00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"PragmaCount\00", align 1
@.str.81 = private unnamed_addr constant [73 x i8] c": remainder loop is not allowed and count does not divide trip multiple \00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"TripMultiple\00", align 1
@_ZTVN4llvm26OptimizationRemarkAnalysisE = external unnamed_addr constant { [7 x ptr] }, align 8
@.str.83 = private unnamed_addr constant [34 x i8] c"PragmaFullUnrollTripCountTooLarge\00", align 1
@.str.84 = private unnamed_addr constant [48 x i8] c"may be unable to fully unroll loop: trip count \00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"TripCount\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c" exceeds limit \00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"Limit\00", align 1
@.str.88 = private unnamed_addr constant [33 x i8] c"PragmaFullUnrollUnknownTripCount\00", align 1
@.str.89 = private unnamed_addr constant [58 x i8] c"may be unable to fully unroll loop: trip count is unknown\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"Unroll loops\00", align 1
@_ZN12_GLOBAL__N_110LoopUnroll2IDE = internal global i8 0, align 1
@_ZTVN12_GLOBAL__N_110LoopUnrollE = internal unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr null, ptr @_ZN4llvm4PassD2Ev, ptr @_ZN12_GLOBAL__N_110LoopUnrollD0Ev, ptr @_ZNK4llvm4Pass11getPassNameEv, ptr @_ZN4llvm4Pass16doInitializationERNS_6ModuleE, ptr @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE, ptr @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE, ptr @_ZNK4llvm8LoopPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN4llvm8LoopPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE, ptr @_ZN4llvm8LoopPass18preparePassManagerERNS_7PMStackE, ptr @_ZNK4llvm8LoopPass27getPotentialPassManagerTypeEv, ptr @_ZNK12_GLOBAL__N_110LoopUnroll16getAnalysisUsageERN4llvm13AnalysisUsageE, ptr @_ZN4llvm4Pass13releaseMemoryEv, ptr @_ZN4llvm4Pass18getAsImmutablePassEv, ptr @_ZN4llvm4Pass18getAsPMDataManagerEv, ptr @_ZNK4llvm4Pass14verifyAnalysisEv, ptr @_ZN4llvm4Pass17dumpPassStructureEj, ptr @_ZN12_GLOBAL__N_110LoopUnroll9runOnLoopEPN4llvm4LoopERNS1_13LPPassManagerE, ptr @_ZN4llvm8LoopPass16doInitializationEPNS_4LoopERNS_13LPPassManagerE, ptr @_ZN4llvm8LoopPass14doFinalizationEv] }, align 8
@_ZN4llvm22AssumptionCacheTracker2IDE = external global i8, align 1
@_ZN4llvm30TargetTransformInfoWrapperPass2IDE = external global i8, align 1
@_ZN4llvm25UniformityInfoWrapperPass2IDE = external global i8, align 1
@_ZN4llvm7LCSSAIDE = external local_unnamed_addr constant ptr, align 8
@_ZN4llvm24DominatorTreeWrapperPass2IDE = external global i8, align 1
@_ZN4llvm19LoopInfoWrapperPass2IDE = external global i8, align 1
@_ZN4llvm26ScalarEvolutionWrapperPass2IDE = external global i8, align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"<unnamed loop>\00", align 1
@.str.92 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"llvm.loop.unroll.followup_all\00", align 1
@.str.94 = private unnamed_addr constant [36 x i8] c"llvm.loop.unroll.followup_remainder\00", align 1
@constinit = private unnamed_addr constant [2 x %"class.llvm::StringRef"] [%"class.llvm::StringRef" { ptr @.str.93, i64 29 }, %"class.llvm::StringRef" { ptr @.str.94, i64 35 }], align 8
@.str.95 = private unnamed_addr constant [35 x i8] c"llvm.loop.unroll.followup_unrolled\00", align 1
@constinit.96 = private unnamed_addr constant [2 x %"class.llvm::StringRef"] [%"class.llvm::StringRef" { ptr @.str.93, i64 29 }, %"class.llvm::StringRef" { ptr @.str.95, i64 34 }], align 8
@.str.97 = private unnamed_addr constant [22 x i8] c"NotInLoopSimplifyForm\00", align 1
@.str.98 = private unnamed_addr constant [49 x i8] c"unable to unroll loop: not in loop-simplify form\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"UnrollThresholdsZero\00", align 1
@.str.100 = private unnamed_addr constant [48 x i8] c"unable to unroll loop: unroll threshold is zero\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"InlineCandidatesPreventUnroll\00", align 1
@.str.102 = private unnamed_addr constant [48 x i8] c"unable to unroll loop: contains inlinable calls\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"NoUnrollStrategy\00", align 1
@.str.104 = private unnamed_addr constant [52 x i8] c"unable to unroll loop: no viable unroll count found\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"Peeled\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"peeled loop by \00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"PeelCount\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c" iterations\00", align 1
@_ZTVN4llvm18OptimizationRemarkE = external unnamed_addr constant { [7 x ptr] }, align 8
@.str.109 = private unnamed_addr constant [26 x i8] c"FailedToUnrollAsRequested\00", align 1
@.str.110 = private unnamed_addr constant [46 x i8] c"failed to unroll loop as explicitly requested\00", align 1
@.str.111 = private unnamed_addr constant [27 x i8] c"FullUnrollAsDirectedFailed\00", align 1
@.str.112 = private unnamed_addr constant [42 x i8] c"unable to fully unroll loop as directed; \00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"unrolled by factor \00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"UnrollCount\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"UnrollCountDiffers\00", align 1
@.str.116 = private unnamed_addr constant [44 x i8] c"unable to unroll loop with requested count \00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"RequestedCount\00", align 1
@.str.118 = private unnamed_addr constant [22 x i8] c"; unrolled by factor \00", align 1
@_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE = external global %"struct.llvm::AnalysisSetKey", align 8
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4llvm2cl11OptionValueIjEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIjEE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@_ZN4llvm12LoopAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm23ScalarEvolutionAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm16TargetIRAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm21DominatorTreeAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm18AssumptionAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm33OptimizationRemarkEmitterAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm9AAManager3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm22UniformityInfoAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm25InnerAnalysisManagerProxyINS_15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEEENS_8FunctionEJEE3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm25OuterAnalysisManagerProxyINS_15AnalysisManagerINS_6ModuleEJEEENS_8FunctionEJEE3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm22ProfileSummaryAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm22BlockFrequencyAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@.str.120 = private unnamed_addr constant [71 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = llvm::LoopUnrollPass]\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_LoopUnrollPass.cpp, ptr null }]

@_ZN4llvm19UnrollCostEstimatorC1EPKNS_4LoopERKNS_19TargetTransformInfoERKNS_15SmallPtrSetImplIPKNS_5ValueEEEjb = unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i1), ptr @_ZN4llvm19UnrollCostEstimatorC2EPKNS_4LoopERKNS_19TargetTransformInfoERKNS_15SmallPtrSetImplIPKNS_5ValueEEEjb
@_ZN4llvm16UnrollPragmaInfoC1EPKNS_4LoopE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm16UnrollPragmaInfoC2EPKNS_4LoopE

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #19, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !28, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.i) #19
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #19
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #19, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !28, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.i) #19
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #19
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm26gatherUnrollingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERKNS_19TargetTransformInfoEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoERNS_25OptimizationRemarkEmitterEiSt8optionalIjESE_SD_IbESF_SF_SE_(ptr dead_on_unwind noalias nonnull writable sret(%"struct.llvm::TargetTransformInfo::UnrollingPreferences") align 4 initializes((0, 61), (64, 70)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1152) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %7, i64 %8, i64 %9, i16 %10, i16 %11, i16 %12, i64 %13) local_unnamed_addr #3 {
bb.a:
  %.sroa.023.0.extract.trunc = trunc i64 %8 to i32 ; 2 uses
  %.sroa.018.0.extract.trunc = trunc i64 %9 to i32
  %.sroa.016.0.extract.trunc = trunc i16 %10 to i8
  %.sroa.014.0.extract.trunc = trunc i16 %11 to i8
  %.sroa.012.0.extract.trunc = trunc i16 %12 to i8
  %.sroa.0.0.extract.trunc = trunc i64 %13 to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.a, align 4, !tbaa !310
  %i.b = icmp sgt i32 %7, 2
  %.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL25UnrollThresholdAggressive, i64 120), align 8
  %.val27 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollThresholdDefault, i64 120), align 8
  %14 = select i1 %i.b, i32 %.val, i32 %.val27
  store i32 %14, ptr %0, align 4, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 400, ptr %i.c, align 4, !tbaa !36
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollOptSizeThreshold, i64 120), align 8, !tbaa !42 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.d, ptr %i.e, align 4, !tbaa !311
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  store i32 150, ptr %i.f, align 4, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %i.d, ptr %i.g, align 4, !tbaa !312
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 8, ptr %i.i, align 4, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 -1, ptr %i.j, align 4, !tbaa !46
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 120), align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.k, ptr %i.l, align 4, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i32 -1, ptr %i.m, align 4, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2, ptr %i.n, align 4, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  store i8 0, ptr %i.o, align 4, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 45 ; 3 uses
  store i8 0, ptr %i.p, align 1, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 46 ; 2 uses
  store i8 1, ptr %i.q, align 2, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.s, i8 0, i64 5, i1 false)
  store i32 60, ptr %i.u, align 4, !tbaa !313
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 120), align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %i.v, ptr %i.w, align 4, !tbaa !53
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24SCEVCheapExpansionBudgetE, i64 120), align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.x, ptr %i.y, align 4, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.z, align 4, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 0, ptr %i.aa, align 1, !tbaa !56
  tail call void @_ZNK4llvm19TargetTransformInfo23getUnrollingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERNS0_20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1152) %2, ptr noundef nonnull align 4 dereferenceable(70) %0, ptr noundef nonnull %6) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !61
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83 ; 2 uses
  %i.ag = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.af, i32 noundef 51) #19
  br i1 %i.ag, label %.critedge, label %_ZNK4llvm8Function10hasOptSizeEv.exit

_ZNK4llvm8Function10hasOptSizeEv.exit:            ; preds = %bb.a
  %i.ah = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.af, i32 noundef 19) #19
  br i1 %i.ah, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit
  %i.ai = tail call noundef i32 @_ZN4llvm23hasUnrollTransformationEPKNS_4LoopE(ptr noundef nonnull %1) #19
  %.not = icmp eq i32 %i.ai, 5
  br i1 %.not, label %.critedge11, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !59
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !61
  %i.al = tail call noundef zeroext i1 @_ZN4llvm21shouldOptimizeForSizeEPKNS_10BasicBlockEPNS_18ProfileSummaryInfoEPNS_18BlockFrequencyInfoENS_13PGSOQueryTypeE(ptr noundef %i.ak, ptr noundef %5, ptr noundef %4, i32 noundef 0) #19
  br i1 %i.al, label %.critedge, label %.critedge11

.critedge:                                        ; preds = %bb.a, %_ZNK4llvm8Function10hasOptSizeEv.exit, %bb.c
  %i.am = load i32, ptr %i.e, align 4, !tbaa !311
  store i32 %i.am, ptr %0, align 4, !tbaa !35
  %i.an = load i32, ptr %i.g, align 4, !tbaa !312
  store i32 %i.an, ptr %i.f, align 4, !tbaa !43
  store i32 100, ptr %i.c, align 4, !tbaa !36
  br label %.critedge11

.critedge11:                                      ; preds = %bb.b, %.critedge, %bb.c
  %i.ao = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL15UnrollThreshold, i64 8), align 8, !tbaa !95
  %.not28.a = icmp eq i16 %i.ao, 0
  br i1 %.not28.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge11
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15UnrollThreshold, i64 120), align 8, !tbaa !42
  store i32 %i.ap, ptr %0, align 4, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge11
  %i.aq = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollPartialThreshold, i64 8), align 8, !tbaa !95
  %.not29.a = icmp eq i16 %i.aq, 0
  br i1 %.not29.a, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollPartialThreshold, i64 120), align 8, !tbaa !42
  store i32 %i.ar, ptr %i.f, align 4, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 8), align 8, !tbaa !95
  %.not30.a = icmp eq i16 %i.as, 0
  br i1 %.not30.a, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 120), align 8, !tbaa !42
  store i32 %i.at, ptr %i.c, align 4, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14UnrollMaxCount, i64 8), align 8, !tbaa !95
  %.not31.a = icmp eq i16 %i.au, 0
  br i1 %.not31.a, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL14UnrollMaxCount, i64 120), align 8, !tbaa !42
  store i32 %i.av, ptr %i.j, align 4, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 8), align 8, !tbaa !95
  %.not32.a = icmp eq i16 %i.aw, 0
  br i1 %.not32.a, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 120), align 8, !tbaa !42
  store i32 %i.ax, ptr %i.l, align 4, !tbaa !47
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ay = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollFullMaxCount, i64 8), align 8, !tbaa !95
  %.not33.a = icmp eq i16 %i.ay, 0
  br i1 %.not33.a, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollFullMaxCount, i64 120), align 8, !tbaa !42
  store i32 %i.az, ptr %i.m, align 4, !tbaa !48
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ba = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollAllowPartial, i64 8), align 8, !tbaa !95
  %.not34.a = icmp eq i16 %i.ba, 0
  br i1 %.not34.a, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollAllowPartial, i64 120), align 8, !tbaa !100, !range !29, !noundef !30
  store i8 %i.bb, ptr %i.o, align 4, !tbaa !50
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL20UnrollAllowRemainder, i64 8), align 8, !tbaa !95
  %.not35.a = icmp eq i16 %i.bc, 0
  br i1 %.not35.a, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL20UnrollAllowRemainder, i64 120), align 8, !tbaa !100, !range !29, !noundef !30
  store i8 %i.bd, ptr %i.q, align 2, !tbaa !52
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.be = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL13UnrollRuntime, i64 8), align 8, !tbaa !95
  %.not36.a = icmp eq i16 %i.be, 0
  br i1 %.not36.a, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL13UnrollRuntime, i64 120), align 8, !tbaa !100, !range !29, !noundef !30
  store i8 %i.bf, ptr %i.p, align 1, !tbaa !51
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 120), align 8, !tbaa !42
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr %i.t, align 1, !tbaa !101
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bi = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UnrollUnrollRemainder, i64 8), align 8, !tbaa !95
  %.not37.a = icmp eq i16 %i.bi, 0
  br i1 %.not37.a, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UnrollUnrollRemainder, i64 120), align 8, !tbaa !100, !range !29, !noundef !30
  store i8 %i.bj, ptr %i.r, align 2, !tbaa !102
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bk = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 8), align 8, !tbaa !95
  %.not38.a = icmp eq i16 %i.bk, 0
  br i1 %.not38.a, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 120), align 8, !tbaa !42
  store i32 %i.bl, ptr %i.w, align 4, !tbaa !53
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bm = and i64 %8, 4294967296
  %.not39.a = icmp eq i64 %i.bm, 0
  br i1 %.not39.a, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %.sroa.023.0.extract.trunc, ptr %0, align 4, !tbaa !35
  store i32 %.sroa.023.0.extract.trunc, ptr %i.f, align 4, !tbaa !43
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bn = and i64 %9, 4294967296
  %.not40.a = icmp eq i64 %i.bn, 0
  br i1 %.not40.a, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %.sroa.018.0.extract.trunc, ptr %i.h, align 4, !tbaa !44
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bo = and i16 %10, 256
  %.not41.a = icmp eq i16 %i.bo, 0
  br i1 %.not41.a, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i8 %.sroa.016.0.extract.trunc, ptr %i.o, align 4, !tbaa !50
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bp = and i16 %11, 256
  %.not42.a = icmp eq i16 %i.bp, 0
  br i1 %.not42.a, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 %.sroa.014.0.extract.trunc, ptr %i.p, align 1, !tbaa !51
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bq = and i16 %12, 256
  %.not43.a = icmp eq i16 %i.bq, 0
  br i1 %.not43.a, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i8 %.sroa.012.0.extract.trunc, ptr %i.t, align 1, !tbaa !101
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.br = and i64 %13, 4294967296
  %.not44 = icmp eq i64 %i.br, 0
  br i1 %.not44, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 %.sroa.0.0.extract.trunc, ptr %i.m, align 4, !tbaa !48
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  ret void
}

declare void @_ZNK4llvm19TargetTransformInfo23getUnrollingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERNS0_20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef nonnull align 4 dereferenceable(70), ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm23hasUnrollTransformationEPKNS_4LoopE(ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm21shouldOptimizeForSizeEPKNS_10BasicBlockEPNS_18ProfileSummaryInfoEPNS_18BlockFrequencyInfoENS_13PGSOQueryTypeE(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19UnrollCostEstimatorC2EPKNS_4LoopERKNS_19TargetTransformInfoERKNS_15SmallPtrSetImplIPKNS_5ValueEEEjb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(29) initializes((0, 12)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(17) %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"struct.llvm::CodeMetrics", align 8 ; 11 uses
  store i64 0, ptr %0, align 8, !tbaa !105
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 20, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107  ; 2 uses
  %.not20 = icmp eq ptr %i.f, %i.h
  br i1 %.not20, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.j, align 8, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, i8 0, i64 12, i1 false)
  br label %bb.b

._crit_edge:                                      ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 44
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !319
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %6, i64 2
  %.pre23 = load i8, ptr %.phi.trans.insert22, align 2, !tbaa !320, !range !29
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.pre25 = load i32, ptr %.phi.trans.insert24, align 4, !tbaa !321 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.pre, ptr %i.l, align 4, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.pre23, ptr %i.m, align 8, !tbaa !111
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.pre25, ptr %i.n, align 8, !tbaa !112
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !322
  %.not15 = icmp eq i32 %.pre25, 3
  br i1 %.not15, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.021 = phi ptr [ %i.q, %.lr.ph ], [ %i.f, %bb.a ] ; 2 uses
  %i.p = load ptr, ptr %.021, align 8, !tbaa !61
  call void @_ZN4llvm11CodeMetrics17analyzeBasicBlockEPKNS_10BasicBlockERKNS_19TargetTransformInfoERKNS_15SmallPtrSetImplIPKNS_5ValueEEEbPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(17) %3, i1 noundef zeroext false, ptr noundef nonnull %1) #19
  %i.q = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.r = call noundef ptr @_ZN4llvm23getLoopConvergenceHeartEPKNS_4LoopE(ptr noundef nonnull %1) #19
  %.not16 = icmp eq ptr %i.r, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.s = zext i1 %5 to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = phi i8 [ 1, %bb.b ], [ %i.s, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.t, ptr %i.u, align 4, !tbaa !115
  %i.v = load i32, ptr %i.a, align 8, !tbaa !106
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZNK4llvm15InstructionCostltEl.exit, label %bb.f

_ZNK4llvm15InstructionCostltEl.exit:              ; preds = %bb.d
  %i.x = add i32 %4, 1
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 2 uses
  %i.aa = load i64, ptr %0, align 8, !tbaa !113
  %i.ab = icmp slt i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm15InstructionCostltEl.exit
  store i64 %i.z, ptr %0, align 8, !tbaa !113
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4llvm15InstructionCostltEl.exit, %bb.d
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.c
  br i1 %i.ad, label %_ZN4llvm11CodeMetricsD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.ac) #19
  br label %_ZN4llvm11CodeMetricsD2Ev.exit

_ZN4llvm11CodeMetricsD2Ev.exit:                   ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void
}

declare void @_ZN4llvm11CodeMetrics17analyzeBasicBlockEPKNS_10BasicBlockERKNS_19TargetTransformInfoERKNS_15SmallPtrSetImplIPKNS_5ValueEEEbPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(17), i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare noundef ptr @_ZN4llvm23getLoopConvergenceHeartEPKNS_4LoopE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(29) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !112
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call fastcc void @"_ZZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopEENK3$_0clENS_9StringRefE"(ptr %1, ptr nonnull %i.a, ptr nonnull @.str.59, i64 30)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !106
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call fastcc void @"_ZZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopEENK3$_0clENS_9StringRefE"(ptr %1, ptr nonnull %i.a, ptr nonnull @.str.60, i64 31)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !111, !range !29, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @"_ZZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopEENK3$_0clENS_9StringRefE"(ptr %1, ptr nonnull %i.a, ptr nonnull @.str.61, i64 38)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
end_hunk_0
begin_hunk_1_@"_ZZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopEENK3$_0clENS_9StringRefE":bb.a
  %i.bv = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i ], [ %i.bf, %"_ZZZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopEENK3$_0clENS_9StringRefEENKUlvE_clEv.exit.i" ] ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.y
  br i1 %i.bw, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @free(ptr noundef %i.bv) #19
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i: ; preds = %bb.f, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZZNKS_19UnrollCostEstimator9canUnrollEPS0_PKNS_4LoopEENK3$_0clENS_9StringRefEEUlvE_EEvT_PDTclfL0p_EE.exit"

"_ZN4llvm25OptimizationRemarkEmitter4emitIZZNKS_19UnrollCostEstimator9canUnrollEPS0_PKNS_4LoopEENK3$_0clENS_9StringRefEEUlvE_EEvT_PDTclfL0p_EE.exit": ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i64 0, -4294967295) i64 @_ZNK4llvm19UnrollCostEstimator19getUnrolledLoopSizeERKNS_19TargetTransformInfo20UnrollingPreferencesEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(29) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(70) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !105
  %i.b = sdiv i64 %i.a, 4
  %i.c = trunc i64 %i.b to i32
  %.not = icmp eq i32 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49   ; 2 uses
  %i.f = sub i32 %i.c, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %.sink = select i1 %.not, i32 %i.i, i32 %2
  %i.j = zext i32 %.sink to i64
  %i.k = mul nuw i64 %i.g, %i.j
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw i64 %i.k, %i.l
  ret i64 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16UnrollPragmaInfoC2EPKNS_4LoopE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(11) initializes((0, 2), (4, 11)) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL11UnrollCount, i64 8), align 8, !tbaa !95
  %i.b = icmp ne i16 %i.a, 0
  %i.c = zext i1 %i.b to i8
  store i8 %i.c, ptr %0, align 4, !tbaa !152
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.e = tail call noundef ptr @_ZN4llvm24getUnrollMetadataForLoopEPKNS_4LoopENS_9StringRefE(ptr noundef %1, ptr nonnull @.str.74, i64 21) #19
  %i.f = icmp ne ptr %i.e, null
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr %i.d, align 1, !tbaa !153
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = tail call noundef ptr @_ZN4llvm24getUnrollMetadataForLoopEPKNS_4LoopENS_9StringRefE(ptr noundef %1, ptr nonnull @.str.75, i64 22) #19 ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZL22unrollCountPragmaValuePKN4llvm4LoopE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 2
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.k, 2
  %i.p = and i64 %i.o, 15
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.q
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i

_ZNK4llvm6MDNode10getOperandEj.exit.i:            ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !328
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !334  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !157
  %i.z = icmp ult i32 %i.y, 65
  %i.aa = load ptr, ptr %i.w, align 8
  %spec.select.i.i.i = select i1 %i.z, ptr %i.w, ptr %i.aa
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !149
  %i.ab = trunc i64 %.0.i.i.i to i32
  br label %_ZL22unrollCountPragmaValuePKN4llvm4LoopE.exit

_ZL22unrollCountPragmaValuePKN4llvm4LoopE.exit:   ; preds = %bb.a, %_ZNK4llvm6MDNode10getOperandEj.exit.i
  %.0.i = phi i32 [ %i.ab, %_ZNK4llvm6MDNode10getOperandEj.exit.i ], [ 0, %bb.a ]
  store i32 %.0.i, ptr %i.h, align 4, !tbaa !158
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = tail call noundef ptr @_ZN4llvm24getUnrollMetadataForLoopEPKNS_4LoopENS_9StringRefE(ptr noundef %1, ptr nonnull @.str.76, i64 23) #19
  %i.ae = icmp ne ptr %i.ad, null
  %i.af = zext i1 %i.ae to i8
  store i8 %i.af, ptr %i.ac, align 4, !tbaa !159
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ah = tail call noundef ptr @_ZN4llvm24getUnrollMetadataForLoopEPKNS_4LoopENS_9StringRefE(ptr noundef %1, ptr nonnull @.str.77, i64 32) #19
  %i.ai = icmp ne ptr %i.ah, null
  %i.aj = zext i1 %i.ai to i8
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !160
  %i.ak = load i32, ptr %i.h, align 4, !tbaa !158
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZL22unrollCountPragmaValuePKN4llvm4LoopE.exit
  %i.al = load i8, ptr %i.d, align 1, !tbaa !153, !range !29, !noundef !30
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load i8, ptr %i.ac, align 4, !tbaa !159, !range !29, !noundef !30
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load i8, ptr %0, align 4, !tbaa !152, !range !29, !noundef !30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %_ZL22unrollCountPragmaValuePKN4llvm4LoopE.exit
  %i.aq = phi i8 [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %_ZL22unrollCountPragmaValuePKN4llvm4LoopE.exit ], [ %i.ap, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.aq, ptr %i.ar, align 2, !tbaa !161
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18computeUnrollCountEPNS_4LoopERKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjbjRKNS_19UnrollCostEstimatorERNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(1152) %5, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext %10, i32 noundef %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(29) %12, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(70) %13, ptr noundef nonnull align 4 dereferenceable(8) %14) local_unnamed_addr #3 {
bb.a:
  %15 = alloca %"class.llvm::OptimizationRemarkAnalysis", align 8 ; 14 uses
  %16 = alloca %"class.llvm::DiagnosticLocation", align 8 ; 4 uses
  %17 = alloca %"class.llvm::DebugLoc", align 8   ; 4 uses
  %18 = alloca %"class.llvm::OptimizationRemarkAnalysis", align 8 ; 15 uses
  %19 = alloca %"class.llvm::OptimizationRemarkAnalysis", align 8 ; 9 uses
  %20 = alloca %"class.llvm::DiagnosticLocation", align 8 ; 4 uses
  %21 = alloca %"class.llvm::DebugLoc", align 8   ; 4 uses
  %22 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %23 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %24 = alloca %"class.llvm::OptimizationRemarkAnalysis", align 8 ; 15 uses
  %25 = alloca %"class.llvm::OptimizationRemarkAnalysis", align 8 ; 9 uses
  %26 = alloca %"class.llvm::DiagnosticLocation", align 8 ; 4 uses
  %27 = alloca %"class.llvm::DebugLoc", align 8   ; 4 uses
  %28 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %29 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %30 = alloca %"class.llvm::OptimizationRemarkAnalysis", align 8 ; 15 uses
  %31 = alloca %"struct.llvm::UnrollPragmaInfo", align 4 ; 11 uses
  %i.a = load i64, ptr %12, align 8, !tbaa !105
  %i.b = sdiv i64 %i.a, 4
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  call void @_ZN4llvm16UnrollPragmaInfoC1EPKNS_4LoopE(ptr noundef nonnull align 4 dereferenceable(11) %31, ptr noundef %0) #19
  %i.d = load i32, ptr %14, align 4, !tbaa !163
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL11UnrollCount, i64 8), align 8, !tbaa !95
  %.not200 = icmp eq i16 %i.e, 0
  br i1 %.not200, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef nonnull @.str.62) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 1, ptr %i.f, align 4, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 45
  store i8 0, ptr %i.g, align 1, !tbaa !51
  br label %.critedge146

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !159, !range !29, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %31, i64 4 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4              ; 5 uses
  %i.m = icmp ne i32 %i.l, 0                      ; 3 uses
  %or.cond = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 47
  store i8 1, ptr %i.n, align 1, !tbaa !164
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 45
  store i8 1, ptr %i.o, align 1, !tbaa !51
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = load i8, ptr %31, align 4, !tbaa !152, !range !29, !noundef !30
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 46 ; 3 uses
  %i.s = load i8, ptr %i.r, align 2, !range !29
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  %or.cond.i = select i1 %i.q, i1 %i.t, i1 false
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0176.0.copyload = load i64, ptr %12, align 8, !tbaa !113
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL11UnrollCount, i64 120), align 8, !tbaa !42 ; 3 uses
  %i.v = sdiv i64 %.sroa.0176.0.copyload, 4
  %i.w = trunc i64 %i.v to i32
  %.not.i.i = icmp eq i32 %i.u, 0
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !49   ; 2 uses
  %i.z = sub i32 %i.w, %i.y
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.ac = load i32, ptr %i.ab, align 4
  %.sink.i.i = select i1 %.not.i.i, i32 %i.ac, i32 %i.u
  %i.ad = zext i32 %.sink.i.i to i64
  %i.ae = mul nuw i64 %i.ad, %i.aa
  %i.af = zext i32 %i.y to i64
  %i.ag = add nuw i64 %i.ae, %i.af
  %i.ah = load i32, ptr %13, align 4, !tbaa !35
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp ult i64 %i.ag, %i.ai               ; 2 uses
  %brmerge = select i1 %i.aj, i1 true, i1 %i.m
  %.mux = select i1 %i.aj, i32 %i.u, i32 %i.l
  br i1 %brmerge, label %_ZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterE.exit, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL18shouldPragmaUnrollPNS_4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPS0_E3$_0EEvT_PDTclfL0p_EE.exit.i"

bb.i:                                             ; preds = %bb.g
  br i1 %i.m, label %bb.j, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL18shouldPragmaUnrollPNS_4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPS0_E3$_0EEvT_PDTclfL0p_EE.exit.i"

bb.j:                                             ; preds = %bb.i
  br i1 %i.t, label %_ZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = urem i32 %11, %i.l
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %7, align 8, !tbaa !126
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.am) #19
  %i.ao = call noundef ptr @_ZN4llvm11LLVMContext21getLLVMRemarkStreamerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #19
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i.i, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i.i

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i.i: ; preds = %bb.l
  %i.ap = load ptr, ptr %7, align 8, !tbaa !126
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ap) #19
  %i.ar = call noundef ptr @_ZNK4llvm11LLVMContext17getDiagHandlerPtrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #19 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #19, !inline_history !335
  br i1 %i.av, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i.i, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL18shouldPragmaUnrollPNS_4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPS0_E3$_0EEvT_PDTclfL0p_EE.exit.i"

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i.i: ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19, !noalias !347
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19, !noalias !347
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19, !noalias !347
  %i.aw = call ptr @_ZNK4llvm4Loop11getStartLocEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #19, !noalias !347
  store ptr %i.aw, ptr %27, align 8, !noalias !347
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(8) %27) #19, !noalias !347
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !59, !noalias !347
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !61, !noalias !347
  call void @_ZN4llvm26OptimizationRemarkAnalysisC1EPKcNS_9StringRefERKNS_18DiagnosticLocationEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(432) %25, ptr noundef nonnull @.str.71, ptr nonnull @.str.78, i64 25, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef %i.az) #19, !noalias !347
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %25, ptr nonnull @.str.79, i64 40) #19, !noalias !347
  %i.ba = load i32, ptr %i.k, align 4, !tbaa !158, !noalias !347
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(80) %28, ptr nonnull @.str.80, i64 11, i32 noundef %i.ba) #19, !noalias !347
  %i.bb = call noundef nonnull align 8 dereferenceable(432) ptr @_ZN4llvmlsINS_26OptimizationRemarkAnalysisEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS2_E4typeEEENS5_8ArgumentEE4typeE(ptr noundef nonnull align 8 dereferenceable(432) %25, ptr nofree noundef nonnull align 8 dereferenceable(80) %28), !noalias !347 ; 2 uses
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %i.bb, ptr nonnull @.str.81, i64 72) #19, !noalias !347
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(80) %29, ptr nonnull @.str.82, i64 12, i32 noundef %11) #19, !noalias !347
  %i.bc = call noundef nonnull align 8 dereferenceable(432) ptr @_ZN4llvmlsINS_26OptimizationRemarkAnalysisEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS2_E4typeEEENS5_8ArgumentEE4typeE(ptr noundef nonnull align 8 dereferenceable(432) %i.bb, ptr nofree noundef nonnull align 8 dereferenceable(80) %29), !noalias !347 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bd, ptr noundef nonnull align 8 dereferenceable(5) %i.be, i64 5, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %30, align 8, !tbaa !21, !alias.scope !347
  %i.bh = getelementptr inbounds nuw i8, ptr %30, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i64 40, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %30, i64 80 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %30, i64 96 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !33, !alias.scope !347
  %i.bl = getelementptr inbounds nuw i8, ptr %30, i64 88 ; 2 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !127, !alias.scope !347
  %i.bm = getelementptr inbounds nuw i8, ptr %30, i64 92
  store i32 4, ptr %i.bm, align 4, !tbaa !128, !alias.scope !347
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !127
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.bq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_30DiagnosticInfoOptimizationBase8ArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(336) %i.bj, ptr noundef nonnull align 8 dereferenceable(336) %i.bp) ; 0 uses
  br label %_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i.i

_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i.i: ; preds = %bb.m, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %30, i64 416
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 416
  %i.bt = load i64, ptr %i.bs, align 8
  store i64 %i.bt, ptr %i.br, align 8, !alias.scope !347
  %i.bu = getelementptr inbounds nuw i8, ptr %30, i64 424
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !145
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !145, !alias.scope !347
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm26OptimizationRemarkAnalysisE, i64 16), ptr %30, align 8, !tbaa !21, !alias.scope !347
  %i.bx = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !148, !noalias !347 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !149, !noalias !347
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cd = load ptr, ptr %29, align 8, !tbaa !148, !noalias !347 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !149, !noalias !347
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !148, !noalias !347 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !149, !noalias !347
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i
  %i.co = load ptr, ptr %28, align 8, !tbaa !148, !noalias !347 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2.i.i.i
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !149, !noalias !347
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %25, align 8, !tbaa !21, !noalias !347
  %i.ct = getelementptr inbounds nuw i8, ptr %25, i64 80 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !33, !noalias !347 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %25, i64 88
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !127, !noalias !347 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i.i
  %i.cx = zext i32 %i.cw to i64
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.cx, 80
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.cz, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i ], [ %i.cy, %.lr.ph.i.preheader.i.i.i.i.i ] ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -80 ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !148 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !149
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.dg = load ptr, ptr %i.cz, align 8, !tbaa !148 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !149
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, %i.cz
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !33, !noalias !347
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i.i
  %i.dl = phi ptr [ %.pre.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i ], [ %i.cu, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %25, i64 96
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_0clEv.exit.i.i", label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i
  call void @free(ptr noundef %i.dl) #19
  br label %"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_0clEv.exit.i.i"

"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_0clEv.exit.i.i": ; preds = %bb.n, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19, !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19, !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19, !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @_ZN4llvm25OptimizationRemarkEmitter4emitERNS_30DiagnosticInfoOptimizationBaseE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(424) %30) #19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %30, align 8, !tbaa !21
  %i.do = load ptr, ptr %i.bj, align 8, !tbaa !33 ; 3 uses
  %i.dp = load i32, ptr %i.bl, align 8, !tbaa !127 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_0clEv.exit.i.i"
  %i.dq = zext i32 %i.dp to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.dq, 80
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ds, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i ], [ %i.dr, %.lr.ph.i.preheader.i.i.i.i ] ; 4 uses
  %i.ds = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -80 ; 3 uses
  %i.dt = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !148 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -32 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !149
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dz = load ptr, ptr %i.ds, align 8, !tbaa !148 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -64 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !149
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.do, %i.ds
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i, %"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_0clEv.exit.i.i"
  %i.ee = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i ], [ %i.do, %"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_0clEv.exit.i.i" ] ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.bk
  br i1 %i.ef, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i
  call void @free(ptr noundef %i.ee) #19
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i: ; preds = %bb.o, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL18shouldPragmaUnrollPNS_4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPS0_E3$_0EEvT_PDTclfL0p_EE.exit.i"

"_ZN4llvm25OptimizationRemarkEmitter4emitIZL18shouldPragmaUnrollPNS_4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPS0_E3$_0EEvT_PDTclfL0p_EE.exit.i": ; preds = %bb.h, %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i.i, %bb.i
  %i.eg = getelementptr inbounds nuw i8, ptr %31, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !153, !range !29, !noundef !30
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.p, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL18shouldPragmaUnrollPNS_4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPS0_E3$_2EEvT_PDTclfL0p_EE.exit.i"

bb.p:                                             ; preds = %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL18shouldPragmaUnrollPNS_4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPS0_E3$_0EEvT_PDTclfL0p_EE.exit.i"
  %.not22.i = icmp eq i32 %8, 0
  br i1 %.not22.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 120), align 8, !tbaa !42
  %i.ek = icmp ugt i32 %8, %i.ej
  br i1 %i.ek, label %bb.r, label %_ZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterE.exit

bb.r:                                             ; preds = %bb.q
  %i.el = load ptr, ptr %7, align 8, !tbaa !126
  %i.em = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.el) #19
  %i.en = call noundef ptr @_ZN4llvm11LLVMContext21getLLVMRemarkStreamerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.em) #19
  %.not.i.i27.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i27.i, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i74.i, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i28.i

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i74.i: ; preds = %bb.r
  %i.eo = load ptr, ptr %7, align 8, !tbaa !126
  %i.ep = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.eo) #19
  %i.eq = call noundef ptr @_ZNK4llvm11LLVMContext17getDiagHandlerPtrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ep) #19 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = call noundef zeroext i1 %i.et(ptr noundef nonnull align 8 dereferenceable(32) %i.eq) #19, !inline_history !338
  br i1 %i.eu, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i28.i, label %.critedge

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i28.i: ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i74.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19, !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19, !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19, !noalias !348
  %i.ev = call ptr @_ZNK4llvm4Loop11getStartLocEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #19, !noalias !348
  store ptr %i.ev, ptr %21, align 8, !noalias !348
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(8) %21) #19, !noalias !348
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !59, !noalias !348
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !61, !noalias !348
  call void @_ZN4llvm26OptimizationRemarkAnalysisC1EPKcNS_9StringRefERKNS_18DiagnosticLocationEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(432) %19, ptr noundef nonnull @.str.71, ptr nonnull @.str.83, i64 33, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef %i.ey) #19, !noalias !348
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %19, ptr nonnull @.str.84, i64 47) #19, !noalias !348
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr nonnull @.str.85, i64 9, i32 noundef %8) #19, !noalias !348
  %i.ez = call noundef nonnull align 8 dereferenceable(432) ptr @_ZN4llvmlsINS_26OptimizationRemarkAnalysisEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS2_E4typeEEENS5_8ArgumentEE4typeE(ptr noundef nonnull align 8 dereferenceable(432) %19, ptr nofree noundef nonnull align 8 dereferenceable(80) %22), !noalias !348 ; 2 uses
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %i.ez, ptr nonnull @.str.86, i64 15) #19, !noalias !348
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 120), align 8, !tbaa !42, !noalias !348
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr nonnull @.str.87, i64 5, i32 noundef %i.fa) #19, !noalias !348
  %i.fb = call noundef nonnull align 8 dereferenceable(432) ptr @_ZN4llvmlsINS_26OptimizationRemarkAnalysisEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS2_E4typeEEENS5_8ArgumentEE4typeE(ptr noundef nonnull align 8 dereferenceable(432) %i.ez, ptr nofree noundef nonnull align 8 dereferenceable(80) %23), !noalias !348 ; 7 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.fc, ptr noundef nonnull align 8 dereferenceable(5) %i.fd, i64 5, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %24, align 8, !tbaa !21, !alias.scope !348
  %i.fg = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fg, ptr noundef nonnull align 8 dereferenceable(40) %i.fh, i64 40, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %24, i64 80 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %24, i64 96 ; 2 uses
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !33, !alias.scope !348
  %i.fk = getelementptr inbounds nuw i8, ptr %24, i64 88 ; 2 uses
  store i32 0, ptr %i.fk, align 8, !tbaa !127, !alias.scope !348
  %i.fl = getelementptr inbounds nuw i8, ptr %24, i64 92
  store i32 4, ptr %i.fl, align 4, !tbaa !128, !alias.scope !348
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 88
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !127
  %.not.i.i.i.i.i.i.i29.i = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i.i.i.i.i.i29.i, label %_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i30.i, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i28.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  %i.fp = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_30DiagnosticInfoOptimizationBase8ArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(336) %i.fi, ptr noundef nonnull align 8 dereferenceable(336) %i.fo) ; 0 uses
  br label %_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i30.i

_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i30.i: ; preds = %bb.s, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i28.i
  %i.fq = getelementptr inbounds nuw i8, ptr %24, i64 416
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 416
  %i.fs = load i64, ptr %i.fr, align 8
  store i64 %i.fs, ptr %i.fq, align 8, !alias.scope !348
  %i.ft = getelementptr inbounds nuw i8, ptr %24, i64 424
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fb, i64 424
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !145
  store ptr %i.fv, ptr %i.ft, align 8, !tbaa !145, !alias.scope !348
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm26OptimizationRemarkAnalysisE, i64 16), ptr %24, align 8, !tbaa !21, !alias.scope !348
  %i.fw = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !148, !noalias !348 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i32.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31.i: ; preds = %_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i30.i
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !149, !noalias !348
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i32.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i32.i: ; preds = %_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i30.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31.i
  %i.gc = load ptr, ptr %23, align 8, !tbaa !148, !noalias !348 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i33.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i33.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i32.i
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !149, !noalias !348
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i34.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i34.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i32.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i33.i
  %i.gh = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !148, !noalias !348 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2.i.i36.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i35.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i34.i
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !149, !noalias !348
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2.i.i36.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2.i.i36.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i34.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i35.i
  %i.gn = load ptr, ptr %22, align 8, !tbaa !148, !noalias !348 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i38.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3.i.i37.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2.i.i36.i
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !149, !noalias !348
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i38.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i38.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2.i.i36.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3.i.i37.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %19, align 8, !tbaa !21, !noalias !348
  %i.gs = getelementptr inbounds nuw i8, ptr %19, i64 80 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !33, !noalias !348 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %19, i64 88
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !127, !noalias !348 ; 2 uses
  %.not4.i.i.i.i.i39.i = icmp eq i32 %i.gv, 0
  br i1 %.not4.i.i.i.i.i39.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i51.i, label %.lr.ph.i.preheader.i.i.i.i40.i

.lr.ph.i.preheader.i.i.i.i40.i:                   ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i38.i
  %i.gw = zext i32 %i.gv to i64
  %.idx.i.i.i.i41.i = mul nuw nsw i64 %i.gw, 80
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx.i.i.i.i41.i
  br label %.lr.ph.i.i.i.i.i42.i

.lr.ph.i.i.i.i.i42.i:                             ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i47.i, %.lr.ph.i.preheader.i.i.i.i40.i
  %.05.i.i.i.i.i43.i = phi ptr [ %i.gy, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i47.i ], [ %i.gx, %.lr.ph.i.preheader.i.i.i.i40.i ] ; 4 uses
  %i.gy = getelementptr inbounds i8, ptr %.05.i.i.i.i.i43.i, i64 -80 ; 3 uses
  %i.gz = getelementptr inbounds i8, ptr %.05.i.i.i.i.i43.i, i64 -48
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !148 ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %.05.i.i.i.i.i43.i, i64 -32 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i45.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i44.i: ; preds = %.lr.ph.i.i.i.i.i42.i
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !149
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i45.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i45.i: ; preds = %.lr.ph.i.i.i.i.i42.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i44.i
  %i.hf = load ptr, ptr %i.gy, align 8, !tbaa !148 ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %.05.i.i.i.i.i43.i, i64 -64 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i46.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i45.i
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !149
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i47.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i47.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i45.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i46.i
  %.not.i.i.i.i.i48.i = icmp eq ptr %i.gt, %i.gy
  br i1 %.not.i.i.i.i.i48.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i49.i, label %.lr.ph.i.i.i.i.i42.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i49.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i47.i
  %.pre.i.i.i.i50.i = load ptr, ptr %i.gs, align 8, !tbaa !33, !noalias !348
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i51.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i51.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i49.i, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i38.i
  %i.hk = phi ptr [ %.pre.i.i.i.i50.i, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i49.i ], [ %i.gt, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i38.i ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %19, i64 96
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_1clEv.exit.i.i", label %bb.t

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i51.i
  call void @free(ptr noundef %i.hk) #19
  br label %"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_1clEv.exit.i.i"

"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_1clEv.exit.i.i": ; preds = %bb.t, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i51.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19, !noalias !348
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19, !noalias !348
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19, !noalias !348
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @_ZN4llvm25OptimizationRemarkEmitter4emitERNS_30DiagnosticInfoOptimizationBaseE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(424) %24) #19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %24, align 8, !tbaa !21
  %i.hn = load ptr, ptr %i.fi, align 8, !tbaa !33 ; 3 uses
  %i.ho = load i32, ptr %i.fk, align 8, !tbaa !127 ; 2 uses
  %.not4.i.i.i.i52.i = icmp eq i32 %i.ho, 0
  br i1 %.not4.i.i.i.i52.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i64.i, label %.lr.ph.i.preheader.i.i.i53.i

.lr.ph.i.preheader.i.i.i53.i:                     ; preds = %"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_1clEv.exit.i.i"
  %i.hp = zext i32 %i.ho to i64
  %.idx.i.i.i54.i = mul nuw nsw i64 %i.hp, 80
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.idx.i.i.i54.i
  br label %.lr.ph.i.i.i.i55.i

.lr.ph.i.i.i.i55.i:                               ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i60.i, %.lr.ph.i.preheader.i.i.i53.i
  %.05.i.i.i.i56.i = phi ptr [ %i.hr, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i60.i ], [ %i.hq, %.lr.ph.i.preheader.i.i.i53.i ] ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %.05.i.i.i.i56.i, i64 -80 ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %.05.i.i.i.i56.i, i64 -48
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !148 ; 2 uses
  %i.hu = getelementptr inbounds i8, ptr %.05.i.i.i.i56.i, i64 -32 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i57.i: ; preds = %.lr.ph.i.i.i.i55.i
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !149
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i58.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i58.i: ; preds = %.lr.ph.i.i.i.i55.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i57.i
  %i.hy = load ptr, ptr %i.hr, align 8, !tbaa !148 ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %.05.i.i.i.i56.i, i64 -64 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i60.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i59.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i59.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i58.i
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !149
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i60.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i60.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i58.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i59.i
  %.not.i.i.i.i61.i = icmp eq ptr %i.hn, %i.hr
  br i1 %.not.i.i.i.i61.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i62.i, label %.lr.ph.i.i.i.i55.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i62.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i60.i
  %.pre.i.i.i63.i = load ptr, ptr %i.fi, align 8, !tbaa !33
end_hunk_1
begin_hunk_2_@_ZN4llvm18computeUnrollCountEPNS_4LoopERKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjbjRKNS_19UnrollCostEstimatorERNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE:bb.a
  %i.ix = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.iy = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ix, ptr noundef nonnull align 8 dereferenceable(40) %i.iy, i64 40, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 2 uses
  store ptr %i.ja, ptr %i.iz, align 8, !tbaa !33, !alias.scope !349
  %i.jb = getelementptr inbounds nuw i8, ptr %18, i64 88 ; 2 uses
  store i32 0, ptr %i.jb, align 8, !tbaa !127, !alias.scope !349
  %i.jc = getelementptr inbounds nuw i8, ptr %18, i64 92
  store i32 4, ptr %i.jc, align 4, !tbaa !128, !alias.scope !349
  %i.jd = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !127, !noalias !349
  %.not.i.i.i.i.i.i.i77.i = icmp eq i32 %i.je, 0
  br i1 %.not.i.i.i.i.i.i.i77.i, label %_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i78.i, label %bb.w

bb.w:                                             ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i76.i
  %i.jf = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.jg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_30DiagnosticInfoOptimizationBase8ArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(336) %i.iz, ptr noundef nonnull align 8 dereferenceable(336) %i.jf) ; 0 uses
  %.pre.i.i.i = load i32, ptr %i.jd, align 8, !tbaa !127, !noalias !349
  br label %_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i78.i

_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i78.i: ; preds = %bb.w, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i76.i
  %i.jh = phi i32 [ 0, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i76.i ], [ %.pre.i.i.i, %bb.w ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %18, i64 416
  %i.jj = getelementptr inbounds nuw i8, ptr %15, i64 416
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !349
  store i64 %i.jk, ptr %i.ji, align 8, !alias.scope !349
  %i.jl = getelementptr inbounds nuw i8, ptr %18, i64 424
  %i.jm = getelementptr inbounds nuw i8, ptr %15, i64 424
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !145, !noalias !349
  store ptr %i.jn, ptr %i.jl, align 8, !tbaa !145, !alias.scope !349
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm26OptimizationRemarkAnalysisE, i64 16), ptr %18, align 8, !tbaa !21, !alias.scope !349
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %15, align 8, !tbaa !21, !noalias !349
  %i.jo = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !33, !noalias !349 ; 3 uses
  %.not4.i.i.i.i.i79.i = icmp eq i32 %i.jh, 0
  br i1 %.not4.i.i.i.i.i79.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i91.i, label %.lr.ph.i.preheader.i.i.i.i80.i

.lr.ph.i.preheader.i.i.i.i80.i:                   ; preds = %_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i78.i
  %i.jq = zext i32 %i.jh to i64
  %.idx.i.i.i.i81.i = mul nuw nsw i64 %i.jq, 80
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 %.idx.i.i.i.i81.i
  br label %.lr.ph.i.i.i.i.i82.i

.lr.ph.i.i.i.i.i82.i:                             ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i87.i, %.lr.ph.i.preheader.i.i.i.i80.i
  %.05.i.i.i.i.i83.i = phi ptr [ %i.js, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i87.i ], [ %i.jr, %.lr.ph.i.preheader.i.i.i.i80.i ] ; 4 uses
  %i.js = getelementptr inbounds i8, ptr %.05.i.i.i.i.i83.i, i64 -80 ; 3 uses
  %i.jt = getelementptr inbounds i8, ptr %.05.i.i.i.i.i83.i, i64 -48
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !148 ; 2 uses
  %i.jv = getelementptr inbounds i8, ptr %.05.i.i.i.i.i83.i, i64 -32 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i85.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i84.i: ; preds = %.lr.ph.i.i.i.i.i82.i
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !149
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i85.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i85.i: ; preds = %.lr.ph.i.i.i.i.i82.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i84.i
  %i.jz = load ptr, ptr %i.js, align 8, !tbaa !148 ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %.05.i.i.i.i.i83.i, i64 -64 ; 2 uses
  %i.kb = icmp eq ptr %i.jz, %i.ka
  br i1 %i.kb, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i87.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i86.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i86.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i85.i
  %i.kc = load i64, ptr %i.ka, align 8, !tbaa !149
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kd) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i87.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i87.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i85.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i86.i
  %.not.i.i.i.i.i88.i = icmp eq ptr %i.jp, %i.js
  br i1 %.not.i.i.i.i.i88.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i89.i, label %.lr.ph.i.i.i.i.i82.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i89.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i87.i
  %.pre.i.i.i.i90.i = load ptr, ptr %i.jo, align 8, !tbaa !33, !noalias !349
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i91.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i91.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i89.i, %_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i78.i
  %i.ke = phi ptr [ %.pre.i.i.i.i90.i, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i89.i ], [ %i.jp, %_ZN4llvm26OptimizationRemarkAnalysisC2EOS0_.exit.i.i78.i ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_2clEv.exit.i.i", label %bb.x

bb.x:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i91.i
  call void @free(ptr noundef %i.ke) #19
  br label %"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_2clEv.exit.i.i"

"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_2clEv.exit.i.i": ; preds = %bb.x, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19, !noalias !349
  call void @_ZN4llvm25OptimizationRemarkEmitter4emitERNS_30DiagnosticInfoOptimizationBaseE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(424) %18) #19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %18, align 8, !tbaa !21
  %i.kh = load ptr, ptr %i.iz, align 8, !tbaa !33 ; 3 uses
  %i.ki = load i32, ptr %i.jb, align 8, !tbaa !127 ; 2 uses
  %.not4.i.i.i.i92.i = icmp eq i32 %i.ki, 0
  br i1 %.not4.i.i.i.i92.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i104.i, label %.lr.ph.i.preheader.i.i.i93.i

.lr.ph.i.preheader.i.i.i93.i:                     ; preds = %"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_2clEv.exit.i.i"
  %i.kj = zext i32 %i.ki to i64
  %.idx.i.i.i94.i = mul nuw nsw i64 %i.kj, 80
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.idx.i.i.i94.i
  br label %.lr.ph.i.i.i.i95.i

.lr.ph.i.i.i.i95.i:                               ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i100.i, %.lr.ph.i.preheader.i.i.i93.i
  %.05.i.i.i.i96.i = phi ptr [ %i.kl, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i100.i ], [ %i.kk, %.lr.ph.i.preheader.i.i.i93.i ] ; 4 uses
  %i.kl = getelementptr inbounds i8, ptr %.05.i.i.i.i96.i, i64 -80 ; 3 uses
  %i.km = getelementptr inbounds i8, ptr %.05.i.i.i.i96.i, i64 -48
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !148 ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %.05.i.i.i.i96.i, i64 -32 ; 2 uses
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i98.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i97.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i97.i: ; preds = %.lr.ph.i.i.i.i95.i
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !149
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i98.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i98.i: ; preds = %.lr.ph.i.i.i.i95.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i97.i
  %i.ks = load ptr, ptr %i.kl, align 8, !tbaa !148 ; 2 uses
  %i.kt = getelementptr inbounds i8, ptr %.05.i.i.i.i96.i, i64 -64 ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i100.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i99.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i99.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i98.i
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !149
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kw) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i100.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i100.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i98.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i99.i
  %.not.i.i.i.i101.i = icmp eq ptr %i.kh, %i.kl
  br i1 %.not.i.i.i.i101.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i102.i, label %.lr.ph.i.i.i.i95.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i102.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i100.i
  %.pre.i.i.i103.i = load ptr, ptr %i.iz, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i104.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i104.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i102.i, %"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_2clEv.exit.i.i"
  %i.kx = phi ptr [ %.pre.i.i.i103.i, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i102.i ], [ %i.kh, %"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_2clEv.exit.i.i" ] ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.ja
  br i1 %i.ky, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i105.i, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i104.i
  call void @free(ptr noundef %i.kx) #19
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i105.i

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i105.i: ; preds = %bb.y, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i104.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL18shouldPragmaUnrollPNS_4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPS0_E3$_2EEvT_PDTclfL0p_EE.exit.i"

"_ZN4llvm25OptimizationRemarkEmitter4emitIZL18shouldPragmaUnrollPNS_4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPS0_E3$_2EEvT_PDTclfL0p_EE.exit.i": ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i105.i, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i110.i, %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL18shouldPragmaUnrollPNS_4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPS0_E3$_0EEvT_PDTclfL0p_EE.exit.i"
  %i.kz = load i8, ptr %i.h, align 4, !tbaa !159, !range !29, !noundef !30
  %i.la = trunc nuw i8 %i.kz to i1
  %i.lb = icmp eq i32 %8, 0
  %or.cond.not24.i = and i1 %i.lb, %i.la
  %i.lc = icmp ne i32 %9, 0
  %or.cond3.i = and i1 %i.lc, %or.cond.not24.i
  br i1 %or.cond3.i, label %bb.z, label %.critedge

bb.z:                                             ; preds = %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL18shouldPragmaUnrollPNS_4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPS0_E3$_2EEvT_PDTclfL0p_EE.exit.i"
  %i.ld = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !47
  %.not.i = icmp ugt i32 %9, %i.le
  br i1 %.not.i, label %.critedge.thread289, label %_ZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterE.exit

.critedge.thread289:                              ; preds = %bb.z
  %i.lf = getelementptr inbounds nuw i8, ptr %31, i64 10
  br label %.critedge140

_ZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterE.exit: ; preds = %bb.h, %bb.z, %bb.q, %bb.k, %bb.j
  %.sroa.07.0.i = phi i32 [ %.mux, %bb.h ], [ %i.l, %bb.k ], [ %8, %bb.q ], [ %i.l, %bb.j ], [ %9, %bb.z ]
  %i.lg = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 %.sroa.07.0.i, ptr %i.lg, align 4, !tbaa !44
  %i.lh = load i8, ptr %31, align 4, !tbaa !152, !range !29, !noundef !30
  %i.li = trunc nuw i8 %i.lh to i1
  %i.lj = load i32, ptr %i.k, align 4
  %i.lk = icmp ne i32 %i.lj, 0
  %or.cond9 = select i1 %i.li, i1 true, i1 %i.lk
  br i1 %or.cond9, label %bb.aa, label %.critedge146

bb.aa:                                            ; preds = %_ZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterE.exit
  %i.ll = getelementptr inbounds nuw i8, ptr %13, i64 47
  store i8 1, ptr %i.ll, align 1, !tbaa !164
  %i.lm = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i8 1, ptr %i.lm, align 4, !tbaa !165
  br label %.critedge146

.critedge:                                        ; preds = %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL18shouldPragmaUnrollPNS_4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPS0_E3$_2EEvT_PDTclfL0p_EE.exit.i", %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i65.i, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i74.i
  %i.ln = getelementptr inbounds nuw i8, ptr %31, i64 10 ; 3 uses
  %i.lo = load i8, ptr %i.ln, align 2, !tbaa !161, !range !29, !noundef !30
  %i.lp = trunc nuw i8 %i.lo to i1
  %i.lq = icmp ne i32 %8, 0                       ; 2 uses
  %or.cond11 = and i1 %i.lq, %i.lp
  br i1 %or.cond11, label %.thread181, label %bb.ab

.thread181:                                       ; preds = %.critedge
  %i.lr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PragmaUnrollThreshold, i64 120), align 8, !tbaa !42 ; 2 uses
  %i.ls = load i32, ptr %13, align 4, !tbaa !166
  %.sroa.speculated173 = call i32 @llvm.umax.i32(i32 %i.ls, i32 %i.lr)
  store i32 %.sroa.speculated173, ptr %13, align 4, !tbaa !35
  %i.lt = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !166
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.lu, i32 %i.lr)
  store i32 %.sroa.speculated, ptr %i.lt, align 4, !tbaa !43
  br label %bb.ac

bb.ab:                                            ; preds = %.critedge
  br i1 %i.lq, label %bb.ac, label %.critedge140

bb.ac:                                            ; preds = %.thread181, %bb.ab
  %.sroa.0166.0.copyload = load i64, ptr %12, align 8, !tbaa !113
  %i.lv = call fastcc i64 @_ZL16shouldFullUnrollPN4llvm4LoopERKNS_19TargetTransformInfoERNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEjNS_19UnrollCostEstimatorERKNS2_20UnrollingPreferencesE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(1152) %5, ptr noundef nonnull align 8 dereferenceable(17) %6, i32 noundef %8, i64 %.sroa.0166.0.copyload, ptr noundef nonnull align 4 dereferenceable(70) %13) ; 2 uses
  %.not201 = icmp samesign ult i64 %i.lv, 4294967296
  br i1 %.not201, label %.critedge140.thread, label %bb.ad

.critedge140.thread:                              ; preds = %bb.ac
  %i.lw = icmp ne i32 %9, 0
  br label %.critedge142

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0168.0.extract.trunc = trunc i64 %i.lv to i32
  %i.lx = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 %.sroa.0168.0.extract.trunc, ptr %i.lx, align 4, !tbaa !44
  br label %.critedge146

.critedge140:                                     ; preds = %.critedge.thread289, %bb.ab
  %i.ly = phi ptr [ %i.ln, %bb.ab ], [ %i.lf, %.critedge.thread289 ] ; 4 uses
  %.not299 = icmp eq i32 %9, 0
  br i1 %.not299, label %.critedge142, label %bb.ae

bb.ae:                                            ; preds = %.critedge140
  %i.lz = getelementptr inbounds nuw i8, ptr %13, i64 49
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !101, !range !29, !noundef !30
  %i.mb = trunc nuw i8 %i.ma to i1
  %or.cond15 = or i1 %10, %i.mb
  br i1 %or.cond15, label %bb.af, label %.critedge142

bb.af:                                            ; preds = %bb.ae
  %i.mc = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !47
  %.not131 = icmp ugt i32 %9, %i.md
  br i1 %.not131, label %.critedge142, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.0162.0.copyload = load i64, ptr %12, align 8, !tbaa !113
  %i.me = call fastcc i64 @_ZL16shouldFullUnrollPN4llvm4LoopERKNS_19TargetTransformInfoERNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEjNS_19UnrollCostEstimatorERKNS2_20UnrollingPreferencesE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(1152) %5, ptr noundef nonnull align 8 dereferenceable(17) %6, i32 noundef %9, i64 %.sroa.0162.0.copyload, ptr noundef nonnull align 4 dereferenceable(70) %13) ; 2 uses
  %.not202 = icmp samesign ult i64 %i.me, 4294967296
  br i1 %.not202, label %.critedge142, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0163.0.extract.trunc = trunc i64 %i.me to i32
  %i.mf = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 %.sroa.0163.0.extract.trunc, ptr %i.mf, align 4, !tbaa !44
  br label %.critedge146

.critedge142:                                     ; preds = %.critedge140.thread, %bb.ag, %.critedge140, %bb.af, %bb.ae
  %i.mg = phi i1 [ %i.lw, %.critedge140.thread ], [ true, %bb.ag ], [ false, %.critedge140 ], [ true, %bb.af ], [ true, %bb.ae ] ; 2 uses
  %.not130184294 = phi i1 [ false, %.critedge140.thread ], [ true, %bb.ag ], [ true, %.critedge140 ], [ true, %bb.af ], [ true, %bb.ae ]
  %i.mh = phi ptr [ %i.ln, %.critedge140.thread ], [ %i.ly, %bb.ag ], [ %i.ly, %.critedge140 ], [ %i.ly, %bb.af ], [ %i.ly, %bb.ae ]
  %i.mi = load i32, ptr %13, align 4, !tbaa !35
  call void @_ZN4llvm16computePeelCountEPNS_4LoopEjRNS_19TargetTransformInfo18PeelingPreferencesEjRNS_13DominatorTreeERNS_15ScalarEvolutionERKS2_PNS_15AssumptionCacheEj(ptr noundef %0, i32 noundef %i.c, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef nonnull align 8 dereferenceable(1152) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %4, i32 noundef %i.mi) #19
  %i.mj = load i32, ptr %14, align 4, !tbaa !163
  %.not132 = icmp eq i32 %i.mj, 0
  br i1 %.not132, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge142
  %i.mk = getelementptr inbounds nuw i8, ptr %13, i64 45
  store i8 0, ptr %i.mk, align 1, !tbaa !51
  %i.ml = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 1, ptr %i.ml, align 4, !tbaa !44
  br label %.critedge146

bb.aj:                                            ; preds = %.critedge142
  br i1 %.not130184294, label %.critedge144, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mm = load i8, ptr %i.mh, align 2, !tbaa !161, !range !29, !noundef !30
  %i.mn = getelementptr inbounds nuw i8, ptr %13, i64 44 ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 4, !tbaa !50, !range !29, !noundef !30
  %i.mp = or i8 %i.mo, %i.mm                      ; 2 uses
  store i8 %i.mp, ptr %i.mn, align 4, !tbaa !50
  %.sroa.0156.0.copyload = load i64, ptr %12, align 8, !tbaa !113
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %bb.al, label %_ZL19shouldPartialUnrolljjN4llvm19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesE.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.mr = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !43 ; 3 uses
  %.not29.i = icmp eq i32 %i.ms, -1
  br i1 %.not29.i, label %._crit_edge.i, label %bb.am

._crit_edge.i:                                    ; preds = %bb.al
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %13, i64 28
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !46
  br label %_ZL19shouldPartialUnrolljjN4llvm19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesE.exit

bb.am:                                            ; preds = %bb.al
  %i.mt = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !44 ; 2 uses
  %i.mv = icmp eq i32 %i.mu, 0
  %spec.select.i = select i1 %i.mv, i32 %8, i32 %i.mu ; 2 uses
  %i.mw = sdiv i64 %.sroa.0156.0.copyload, 4
  %i.mx = trunc i64 %i.mw to i32
  %i.my = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !49 ; 5 uses
  %i.na = sub i32 %i.mx, %i.mz
  %i.nb = zext i32 %i.na to i64                   ; 2 uses
  %i.nc = zext i32 %spec.select.i to i64
  %i.nd = mul nuw i64 %i.nb, %i.nc
  %i.ne = zext i32 %i.mz to i64                   ; 2 uses
  %i.nf = add nuw i64 %i.nd, %i.ne
  %i.ng = zext i32 %i.ms to i64                   ; 2 uses
  %i.nh = icmp ugt i64 %i.nf, %i.ng
  br i1 %i.nh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ni = add i32 %i.mz, 1
  %.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %i.ms, i32 %i.ni)
  %i.nj = sub i32 %.sroa.speculated.i, %i.mz
  %i.nk = sub i32 %i.c, %i.mz
  %i.nl = udiv i32 %i.nj, %i.nk
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0.i = phi i32 [ %i.nl, %bb.an ], [ %spec.select.i, %bb.am ]
  %i.nm = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !46 ; 2 uses
  %spec.select13.i = call i32 @llvm.umin.i32(i32 %.0.i, i32 %i.nn) ; 2 uses
  %.not3016.i = icmp eq i32 %spec.select13.i, 0
  br i1 %.not3016.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ao, %.lr.ph.i
  %.217.i = phi i32 [ %i.np, %.lr.ph.i ], [ %spec.select13.i, %bb.ao ] ; 3 uses
  %i.no = urem i32 %8, %.217.i
  %.not31.i = icmp eq i32 %i.no, 0
  %i.np = add i32 %.217.i, -1
  br i1 %.not31.i, label %.critedge.i, label %.lr.ph.i

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.ao
  %.2.lcssa.i = phi i32 [ 0, %bb.ao ], [ %.217.i, %.lr.ph.i ] ; 2 uses
  %i.nq = load i8, ptr %i.r, align 2, !tbaa !52, !range !29, !noundef !30
  %i.nr = trunc nuw i8 %i.nq to i1
  %i.ns = icmp ult i32 %.2.lcssa.i, 2
  %or.cond.i155 = and i1 %i.ns, %i.nr
  br i1 %or.cond.i155, label %bb.ap, label %.critedge3.i

bb.ap:                                            ; preds = %.critedge.i
  %i.nt = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !45 ; 2 uses
  %.not3320.i = icmp eq i32 %i.nu, 0
  br i1 %.not3320.i, label %_ZL19shouldPartialUnrolljjN4llvm19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesE.exit.thread, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %bb.ap, %bb.aq
  %storemerge3221.i = phi i32 [ %i.nz, %bb.aq ], [ %i.nu, %bb.ap ] ; 3 uses
  %i.nv = zext i32 %storemerge3221.i to i64
  %i.nw = mul nuw i64 %i.nv, %i.nb
  %i.nx = add nuw i64 %i.nw, %i.ne
  %i.ny = icmp ugt i64 %i.nx, %i.ng
  br i1 %i.ny, label %bb.aq, label %.critedge3.i

bb.aq:                                            ; preds = %.lr.ph22.i
  %i.nz = lshr i32 %storemerge3221.i, 1           ; 2 uses
  %.not33.i = icmp eq i32 %i.nz, 0
  br i1 %.not33.i, label %_ZL19shouldPartialUnrolljjN4llvm19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesE.exit.thread, label %.lr.ph22.i, !llvm.loop !344

.critedge3.i:                                     ; preds = %.lr.ph22.i, %.critedge.i
  %.3.i = phi i32 [ %.2.lcssa.i, %.critedge.i ], [ %storemerge3221.i, %.lr.ph22.i ] ; 2 uses
  %i.oa = icmp ult i32 %.3.i, 2
  br i1 %i.oa, label %_ZL19shouldPartialUnrolljjN4llvm19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesE.exit.thread, label %_ZL19shouldPartialUnrolljjN4llvm19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesE.exit

_ZL19shouldPartialUnrolljjN4llvm19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesE.exit: ; preds = %._crit_edge.i, %.critedge3.i
  %i.ob = phi i32 [ %i.nn, %.critedge3.i ], [ %.pre.i, %._crit_edge.i ]
  %.4.i = phi i32 [ %.3.i, %.critedge3.i ], [ %8, %._crit_edge.i ]
  %spec.select14.i = call i32 @llvm.umin.i32(i32 %.4.i, i32 %i.ob)
  br label %_ZL19shouldPartialUnrolljjN4llvm19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesE.exit.thread

_ZL19shouldPartialUnrolljjN4llvm19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesE.exit.thread: ; preds = %bb.aq, %_ZL19shouldPartialUnrolljjN4llvm19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesE.exit, %bb.ap, %.critedge3.i, %bb.ak
  %.sroa.0159.0.extract.trunc190 = phi i32 [ %spec.select14.i, %_ZL19shouldPartialUnrolljjN4llvm19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesE.exit ], [ 0, %bb.ap ], [ 0, %bb.ak ], [ 0, %.critedge3.i ], [ 0, %bb.aq ]
  %i.oc = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 %.sroa.0159.0.extract.trunc190, ptr %i.oc, align 4, !tbaa !44
  br label %.critedge146

.critedge144:                                     ; preds = %bb.aj
  %i.od = getelementptr inbounds nuw i8, ptr %31, i64 9
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !160, !range !29, !noundef !30
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %.critedge146, label %bb.ar

bb.ar:                                            ; preds = %.critedge144
  br i1 %i.mg, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.og = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.oh = load i8, ptr %i.og, align 4, !tbaa !165, !range !29, !noundef !30
  %i.oi = trunc nuw i8 %i.oh to i1
  br i1 %i.oi, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.oj = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !47
  %.not133 = icmp ugt i32 %9, %i.ok
  br i1 %.not133, label %bb.au, label %.critedge146

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !59
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !61
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 72
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !83
  %i.oq = call { i64, i8 } @_ZNK4llvm8Function13getEntryCountEv(ptr noundef nonnull align 8 dereferenceable(140) %i.op) #19
  %i.or = extractvalue { i64, i8 } %i.oq, 1
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ot = call i64 @_ZN4llvm25getLoopEstimatedTripCountEPNS_4LoopEPj(ptr noundef nonnull %0, ptr noundef null) #19 ; 2 uses
  %i.ou = and i64 %i.ot, 4294967296
  %.not203 = icmp eq i64 %i.ou, 0
  br i1 %.not203, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.0.0.extract.trunc = trunc i64 %i.ot to i32
  %i.ov = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL26FlatLoopTripCountThreshold, i64 120), align 8, !tbaa !42
  %i.ow = icmp ugt i32 %i.ov, %.sroa.0.0.extract.trunc
  br i1 %i.ow, label %.critedge146, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ox = getelementptr inbounds nuw i8, ptr %13, i64 47
  store i8 1, ptr %i.ox, align 1, !tbaa !164
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.av, %bb.au
  %i.oy = getelementptr inbounds nuw i8, ptr %13, i64 45
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !51, !range !29, !noundef !30
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %bb.az, label %.critedge146

bb.az:                                            ; preds = %bb.ay
  %i.pb = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !45 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 4 uses
  %.not134208 = icmp eq i32 %i.pc, 0
  br i1 %.not134208, label %.critedge17.thread.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az
  %i.pe = load i64, ptr %12, align 8, !tbaa !105
  %i.pf = sdiv i64 %i.pe, 4
  %i.pg = trunc i64 %i.pf to i32
  %i.ph = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !49 ; 2 uses
  %i.pj = sub i32 %i.pg, %i.pi
  %i.pk = zext i32 %i.pj to i64
  %i.pl = zext i32 %i.pi to i64
  %i.pm = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !43
  %i.po = zext i32 %i.pn to i64
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bb
  %.pr = phi i32 [ %i.pc, %.lr.ph ], [ %i.pt, %bb.bb ] ; 7 uses
  %i.pp = zext i32 %.pr to i64
  %i.pq = mul nuw i64 %i.pk, %i.pp
  %i.pr = add nuw i64 %i.pq, %i.pl
  %i.ps = icmp ugt i64 %i.pr, %i.po
  br i1 %i.ps, label %bb.bb, label %.critedge.thread

bb.bb:                                            ; preds = %bb.ba
  %i.pt = lshr i32 %.pr, 1                        ; 2 uses
  %.not134 = icmp eq i32 %i.pt, 0
  br i1 %.not134, label %.critedge17.thread.sink.split, label %bb.ba, !llvm.loop !345

.critedge.thread:                                 ; preds = %bb.ba
  store i32 %.pr, ptr %i.pd, align 4, !tbaa !44
  %i.pu = load i8, ptr %i.r, align 2, !tbaa !52, !range !29, !noundef !30
  %i.pv = trunc nuw i8 %i.pu to i1
  br i1 %i.pv, label %.critedge17, label %bb.bc

bb.bc:                                            ; preds = %.critedge.thread
  %i.pw = urem i32 %11, %.pr
  %.not136 = icmp eq i32 %i.pw, 0
  br i1 %.not136, label %.critedge17, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.bc, %bb.bd
  %i.px = phi i32 [ %i.pz, %bb.bd ], [ %.pr, %bb.bc ] ; 3 uses
  %i.py = urem i32 %11, %i.px
  %.not138 = icmp eq i32 %i.py, 0
  br i1 %.not138, label %.critedge17, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph211
  %i.pz = lshr i32 %i.px, 1                       ; 3 uses
  store i32 %i.pz, ptr %i.pd, align 4, !tbaa !44
  %.not137 = icmp eq i32 %i.pz, 0
  br i1 %.not137, label %.critedge17.thread, label %.lr.ph211, !llvm.loop !346

.critedge17:                                      ; preds = %.lr.ph211, %.critedge.thread, %bb.bc
  %i.qa = phi i32 [ %.pr, %bb.bc ], [ %.pr, %.critedge.thread ], [ %i.px, %.lr.ph211 ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !46 ; 2 uses
  %i.qd = icmp ugt i32 %i.qa, %i.qc
  br i1 %i.qd, label %.critedge17.thread.sink.split, label %.critedge17.thread

.critedge17.thread.sink.split:                    ; preds = %bb.bb, %.critedge17, %bb.az
  %.sink = phi i32 [ 0, %bb.az ], [ %i.qc, %.critedge17 ], [ 0, %bb.bb ] ; 2 uses
  store i32 %.sink, ptr %i.pd, align 4, !tbaa !44
  br label %.critedge17.thread

.critedge17.thread:                               ; preds = %bb.bd, %.critedge17.thread.sink.split, %.critedge17
  %i.qe = phi i32 [ %.sink, %.critedge17.thread.sink.split ], [ %i.qa, %.critedge17 ], [ 0, %bb.bd ] ; 2 uses
  %i.qf = icmp ugt i32 %i.qe, %9
  %or.cond298 = and i1 %i.mg, %i.qf               ; 2 uses
  %i.qg = select i1 %or.cond298, i32 %9, i32 %i.qe ; 2 uses
  %i.qh = icmp ult i32 %i.qg, 2                   ; 2 uses
  %i.qi = or i1 %or.cond298, %i.qh
  br i1 %i.qi, label %bb.be, label %.critedge146

bb.be:                                            ; preds = %.critedge17.thread
  %simplifycfg.merge = select i1 %i.qh, i32 0, i32 %i.qg
  store i32 %simplifycfg.merge, ptr %i.pd, align 4, !tbaa !44
  br label %.critedge146

.critedge146:                                     ; preds = %bb.be, %.critedge17.thread, %_ZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterE.exit, %bb.aa, %bb.aw, %_ZL19shouldPartialUnrolljjN4llvm19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesE.exit.thread, %bb.ah, %bb.ad, %bb.ay, %bb.at, %.critedge144, %bb.ai, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 1, 8589934592) i64 @_ZL16shouldFullUnrollPN4llvm4LoopERKNS_19TargetTransformInfoERNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEjNS_19UnrollCostEstimatorERKNS2_20UnrollingPreferencesE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(1152) %2, ptr noundef nonnull align 8 dereferenceable(17) %3, i32 noundef range(i32 1, 0) %4, i64 %.0.val, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(70) %5) unnamed_addr #3 {
bb.a:
  %6 = alloca %"class.llvm::iterator_range.496", align 8 ; 7 uses
  %7 = alloca %"class.llvm::SmallVector.451", align 8 ; 9 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 12 uses
  %9 = alloca %"class.llvm::SmallSetVector", align 8 ; 22 uses
  %10 = alloca %"class.llvm::SmallSetVector.381", align 8 ; 20 uses
  %11 = alloca %"class.llvm::DenseMap.392", align 8 ; 18 uses
  %12 = alloca %"class.llvm::SmallVector.394", align 8 ; 11 uses
  %13 = alloca %"class.llvm::InstructionCost", align 8 ; 8 uses
  %14 = alloca %"class.llvm::DenseSet.399", align 8 ; 11 uses
  %15 = alloca %"class.llvm::SmallVector.403", align 8 ; 8 uses
  %16 = alloca %"class.llvm::SmallVector.408", align 8 ; 8 uses
  %17 = alloca %class.anon.410, align 8           ; 12 uses
  %18 = alloca %"class.llvm::UnrolledInstAnalyzer", align 8 ; 12 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %19 = alloca %"struct.std::pair.422", align 8   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48
  %i.f = icmp ugt i32 %4, %i.e
  br i1 %i.f, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = zext i32 %4 to i64
  br label %bb.ek

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %.0.val, 4
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.j = load i32, ptr %i.i, align 4, !tbaa !49   ; 2 uses
  %i.k = sub i32 %i.h, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = zext i32 %4 to i64                       ; 5 uses
  %i.n = mul nuw i64 %i.l, %i.m
  %i.o = zext i32 %i.j to i64
  %i.p = add nuw i64 %i.n, %i.o
  %i.q = load i32, ptr %5, align 4, !tbaa !35     ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.ek, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.w = load i32, ptr %i.v, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !168
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !168
  %i.ab = icmp eq ptr %i.y, %i.aa
  %i.ac = add i32 %4, -1                          ; 2 uses
  %or.cond.not.i = icmp ult i32 %i.ac, %i.w
  %or.cond.i = and i1 %or.cond.not.i, %i.ab
  br i1 %or.cond.i, label %.lr.ph258.i, label %_ZL21analyzeLoopUnrollCostPKN4llvm4LoopEjRNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEERKNS_19TargetTransformInfoEjj.exit.thread

_ZL21analyzeLoopUnrollCostPKN4llvm4LoopEjRNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEERKNS_19TargetTransformInfoEjj.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge20

.lr.ph258.i:                                      ; preds = %bb.c
  %i.ad = mul i32 %i.u, %i.q
  %i.ae = udiv i32 %i.ad, 100
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %9, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 11 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !127
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 3 uses
  store i32 16, ptr %i.ai, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %10, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 10 uses
  store i32 0, ptr %i.al, align 8, !tbaa !127
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 3 uses
  store i32 4, ptr %i.am, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.an, ptr %12, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !127
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 4, ptr %i.ap, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !106
  store i64 0, ptr %13, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.ar, ptr %15, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 0, ptr %i.as, align 8, !tbaa !127
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 16, ptr %i.at, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.au, ptr %16, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !127
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 4, ptr %i.aw, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  store ptr %15, ptr %17, align 8, !tbaa !457
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %14, ptr %i.ax, align 8, !tbaa !458
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.a, ptr %i.ay, align 8, !tbaa !168
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %16, ptr %i.az, align 8, !tbaa !459
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr %11, ptr %i.ba, align 8, !tbaa !460
  %i.bb = getelementptr inbounds nuw i8, ptr %17, i64 40
  store ptr %13, ptr %i.bb, align 8, !tbaa !461
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 48
  store ptr %1, ptr %i.bc, align 8, !tbaa !462
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !59
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !61
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !83
  %i.bi = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.bh, i32 noundef 19) #19
  %i.bj = select i1 %i.bi, i32 2, i32 3
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.cd = shl nuw nsw i32 %i.ae, 2
  %i.ce = zext nneg i32 %i.cd to i64
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 8
  br label %bb.e

bb.d:                                             ; preds = %_ZN4llvm20UnrolledInstAnalyzerD2Ev.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.e, !llvm.loop !350

.preheader.i:                                     ; preds = %bb.d
  %i.cm = sdiv i64 %.sroa.079.5141.i, 4
  %i.cn = shl i64 %i.cm, 32
  %i.co = load i32, ptr %i.al, align 8, !tbaa !127
  %.not.i.i224266.i = icmp eq i32 %i.co, 0
  br i1 %.not.i.i224266.i, label %._crit_edge268.i, label %.lr.ph267.i

bb.e:                                             ; preds = %bb.d, %.lr.ph258.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph258.i ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %.sroa.782.0253.i = phi i32 [ 0, %.lr.ph258.i ], [ %.sroa.782.6143.i, %bb.d ] ; 2 uses
  %.sroa.079.0252.i = phi i64 [ 0, %.lr.ph258.i ], [ %.sroa.079.5141.i, %bb.d ] ; 2 uses
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !59
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !61 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 48 ; 2 uses
  %.sroa.074.0208.i = load ptr, ptr %i.ct, align 8, !tbaa !463 ; 2 uses
  %.not160209.i = icmp eq ptr %.sroa.074.0208.i, %i.cu
  br i1 %.not160209.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.cv = icmp eq i64 %indvars.iv.i, 0            ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueES3_ELb1EE9push_backES4_.exit.i, %.lr.ph.i
  %.sroa.074.0210.i = phi ptr [ %.sroa.074.0208.i, %.lr.ph.i ], [ %.sroa.074.0.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueES3_ELb1EE9push_backES4_.exit.i ] ; 5 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.074.0210.i, i64 -24 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !175
  %.not161.i = icmp eq i8 %i.cx, 87               ; 2 uses
  %spec.select.i.i.i = select i1 %.not161.i, ptr %i.cw, ptr null ; 2 uses
  br i1 %.not161.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  br i1 %i.cv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cz = call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE16getLoopPreheaderEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cy) #19
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.da = call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE12getLoopLatchEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cy) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.db = phi ptr [ %i.cz, %bb.h ], [ %i.da, %bb.i ]
  %i.dc = getelementptr inbounds i8, ptr %.sroa.074.0210.i, i64 -20
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = and i32 %i.dd, 268435455                ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.de, 0
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.sroa.074.0210.i, i64 -32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !176 ; 2 uses
  br i1 %.not11.i.i.i, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.074.0210.i, i64 52
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !187
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %.pre.i.i, i64 %i.dh
  %i.dj = zext nneg i32 %i.de to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.l ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.i.i.i
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !61
  %i.dm = icmp eq ptr %i.dl, %i.db
  br i1 %i.dm, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.dj
  br i1 %.not.i.i.i, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i, label %bb.k, !llvm.loop !2
end_hunk_2
begin_hunk_3_@_ZL16shouldFullUnrollPN4llvm4LoopERKNS_19TargetTransformInfoERNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEjNS_19UnrollCostEstimatorERKNS2_20UnrollingPreferencesE:bb.a
  %i.avu = getelementptr inbounds nuw [8 x i8], ptr %i.avs, i64 %indvars.iv.i.i234.i
  %i.avv = load ptr, ptr %i.avu, align 8, !tbaa !61
  %i.avw = icmp eq ptr %i.avv, %i.avg
  br i1 %i.avw, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit237.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %indvars.iv.next.i.i235.i = add nuw nsw i64 %indvars.iv.i.i234.i, 1 ; 2 uses
  %.not.i.i236.i = icmp eq i64 %indvars.iv.next.i.i235.i, %i.avt
  br i1 %.not.i.i236.i, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit237.i, label %bb.dt, !llvm.loop !2

_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit237.i: ; preds = %bb.du, %bb.dt, %bb.ds
  %i.avx = phi i64 [ 4294967295, %bb.ds ], [ %indvars.iv.i.i234.i, %bb.dt ], [ 4294967295, %bb.du ]
  %i.avy = getelementptr inbounds nuw [32 x i8], ptr %.pre.i232.i, i64 %i.avx
  %i.avz = load ptr, ptr %i.avy, align 8, !tbaa !191 ; 3 uses
  %i.awa = load i8, ptr %i.avz, align 8, !tbaa !175
  %i.awb = icmp ult i8 %i.awa, 30
  br i1 %i.awb, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread.i, label %bb.dv

bb.dv:                                            ; preds = %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit237.i
  %i.awc = load ptr, ptr %i.a, align 8, !tbaa !117 ; 3 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avz, i64 40
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !234 ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awc, i64 56 ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awc, i64 72
  %i.awh = load i8, ptr %i.awg, align 8, !tbaa !28, !range !29, !noundef !30
  %i.awi = trunc nuw i8 %i.awh to i1
  br i1 %i.awi, label %bb.dw, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.i

bb.dw:                                            ; preds = %bb.dv
  %i.awj = load ptr, ptr %i.awf, align 8, !tbaa !31 ; 2 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awc, i64 68
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !212 ; 2 uses
  %i.awm = zext i32 %i.awl to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.awm, 3
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awj, i64 %.idx.i.i.i.i.i
  %.not17.i.i.i.i.i = icmp eq i32 %i.awl, 0
  br i1 %.not17.i.i.i.i.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread.i, label %.lr.ph.i.i.i.i239.i

bb.dx:                                            ; preds = %.lr.ph.i.i.i.i239.i
  %i.awo = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i240.i = icmp eq ptr %i.awo, %i.awn
  br i1 %.not.i.i.i.i240.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread.i, label %.lr.ph.i.i.i.i239.i

.lr.ph.i.i.i.i239.i:                              ; preds = %bb.dw, %bb.dx
  %.01218.i.i.i.i.i = phi ptr [ %i.awo, %bb.dx ], [ %i.awj, %bb.dw ] ; 2 uses
  %i.awp = load ptr, ptr %.01218.i.i.i.i.i, align 8, !tbaa !213
  %.not15.i.i.i.i.i = icmp eq ptr %i.awp, %i.awe
  br i1 %.not15.i.i.i.i.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread151.i, label %bb.dx

_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.i: ; preds = %bb.dv
  %i.awq = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.awf, ptr noundef %i.awe) #19
  %.not159.i = icmp eq ptr %i.awq, null
  br i1 %.not159.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread151.i

_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread151.i: ; preds = %.lr.ph.i.i.i.i239.i, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.i
  call fastcc void @"_ZZL21analyzeLoopUnrollCostPKN4llvm4LoopEjRNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEERKNS_19TargetTransformInfoEjjENK3$_0clERNS_11InstructionEi"(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull align 8 dereferenceable(72) %i.avz, i32 noundef %i.ac)
  br label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread.i

_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread.i: ; preds = %bb.dx, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread151.i, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.i, %bb.dw, %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit237.i
  %i.awr = getelementptr inbounds nuw i8, ptr %.sroa.03.0262.i, i64 8
  %.sroa.03.0.i = load ptr, ptr %i.awr, align 8, !tbaa !463 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.03.0.i, %i.avj
  br i1 %.not.i, label %.critedge151.i, label %.lr.ph264.i

.critedge151.i:                                   ; preds = %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsINS_11InstructionEEEbPKT_.exit.thread.i, %.lr.ph264.i, %.lr.ph267.i
  %i.aws = load i32, ptr %i.al, align 8, !tbaa !127
  %.not.i.i224.i = icmp eq i32 %i.aws, 0
  br i1 %.not.i.i224.i, label %._crit_edge268.i, label %.lr.ph267.i, !llvm.loop !456

._crit_edge268.i:                                 ; preds = %.critedge151.i, %.preheader.i
  %i.awt = load i64, ptr %13, align 8, !tbaa !105
  %i.awu = sdiv i64 %i.awt, 4
  %.sroa.0.0.insert.ext.i = and i64 %i.awu, 4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, %i.cn
  br label %.thread145.i

.thread145.i:                                     ; preds = %_ZN4llvm20UnrolledInstAnalyzerD2Ev.exit.i, %._crit_edge268.i
  %.sroa.084.0.i = phi i64 [ %.sroa.0.0.insert.insert.i, %._crit_edge268.i ], [ undef, %_ZN4llvm20UnrolledInstAnalyzerD2Ev.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.awv = load ptr, ptr %16, align 8, !tbaa !33  ; 2 uses
  %i.aww = icmp eq ptr %i.awv, %i.au
  br i1 %i.aww, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i, label %bb.dy

bb.dy:                                            ; preds = %.thread145.i
  call void @free(ptr noundef %i.awv) #19
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i: ; preds = %bb.dy, %.thread145.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.awx = load ptr, ptr %15, align 8, !tbaa !33  ; 2 uses
  %i.awy = icmp eq ptr %i.awx, %i.ar
  br i1 %i.awy, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj16EED2Ev.exit.i, label %bb.dz

bb.dz:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.awx) #19
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj16EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_11InstructionELj16EED2Ev.exit.i: ; preds = %bb.dz, %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %.val155.i = load i32, ptr %i.cb, align 4, !tbaa !218 ; 2 uses
  %i.awz = icmp eq i32 %.val155.i, 0
  br i1 %i.awz, label %_ZN4llvm6detail12DenseSetImplIN12_GLOBAL__N_117UnrolledInstStateENS_8DenseMapIS3_NS0_13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, label %bb.ea

bb.ea:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj16EED2Ev.exit.i
  %.val154.i = load ptr, ptr %14, align 8
  %i.axa = zext i32 %.val155.i to i64             ; 2 uses
  %i.axb = shl nuw nsw i64 %i.axa, 4
  %i.axc = add nuw nsw i64 %i.axa, 31
  %i.axd = lshr i64 %i.axc, 3
  %i.axe = and i64 %i.axd, 1073741820
  %i.axf = add nuw nsw i64 %i.axe, %i.axb
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val154.i, i64 noundef %i.axf, i64 noundef 8) #19
  br label %_ZN4llvm6detail12DenseSetImplIN12_GLOBAL__N_117UnrolledInstStateENS_8DenseMapIS3_NS0_13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i

_ZN4llvm6detail12DenseSetImplIN12_GLOBAL__N_117UnrolledInstStateENS_8DenseMapIS3_NS0_13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i: ; preds = %bb.ea, %_ZN4llvm11SmallVectorIPNS_11InstructionELj16EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.axg = load ptr, ptr %12, align 8, !tbaa !33  ; 2 uses
  %i.axh = icmp eq ptr %i.axg, %i.an
  br i1 %i.axh, label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueES3_ELj4EED2Ev.exit.i, label %bb.eb

bb.eb:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIN12_GLOBAL__N_117UnrolledInstStateENS_8DenseMapIS3_NS0_13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i
  call void @free(ptr noundef %i.axg) #19
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueES3_ELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPNS_5ValueES3_ELj4EED2Ev.exit.i: ; preds = %bb.eb, %_ZN4llvm6detail12DenseSetImplIN12_GLOBAL__N_117UnrolledInstStateENS_8DenseMapIS3_NS0_13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.axi = load i32, ptr %i.bl, align 4, !tbaa !197 ; 2 uses
  %i.axj = icmp eq i32 %i.axi, 0
  br i1 %i.axj, label %_ZN4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit.i, label %bb.ec

bb.ec:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueES3_ELj4EED2Ev.exit.i
  %i.axk = load ptr, ptr %11, align 8, !tbaa !195
  %i.axl = zext i32 %i.axi to i64                 ; 2 uses
  %i.axm = shl nuw nsw i64 %i.axl, 4
  %i.axn = add nuw nsw i64 %i.axl, 31
  %i.axo = lshr i64 %i.axn, 3
  %i.axp = and i64 %i.axo, 1073741820
  %i.axq = add nuw nsw i64 %i.axp, %i.axm
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.axk, i64 noundef %i.axq, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit.i: ; preds = %bb.ec, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueES3_ELj4EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.axr = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  %i.axs = icmp eq ptr %i.axr, %i.ak
  br i1 %i.axs, label %_ZN4llvm11SmallVectorISt4pairIPNS_10BasicBlockES3_ELj4EED2Ev.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %_ZN4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit.i
  call void @free(ptr noundef %i.axr) #19
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_10BasicBlockES3_ELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorISt4pairIPNS_10BasicBlockES3_ELj4EED2Ev.exit.i.i: ; preds = %bb.ed, %_ZN4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit.i
  %i.axt = load i32, ptr %i.cj, align 4, !tbaa !233 ; 2 uses
  %i.axu = icmp eq i32 %i.axt, 0
  br i1 %i.axu, label %_ZN4llvm9SetVectorISt4pairIPNS_10BasicBlockES3_ENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EED2Ev.exit.i, label %bb.ee

bb.ee:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_10BasicBlockES3_ELj4EED2Ev.exit.i.i
  %i.axv = load ptr, ptr %10, align 8, !tbaa !231
  %i.axw = zext i32 %i.axt to i64                 ; 2 uses
  %i.axx = shl nuw nsw i64 %i.axw, 4
  %i.axy = add nuw nsw i64 %i.axw, 31
  %i.axz = lshr i64 %i.axy, 3
  %i.aya = and i64 %i.axz, 1073741820
  %i.ayb = add nuw nsw i64 %i.aya, %i.axx
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.axv, i64 noundef %i.ayb, i64 noundef 8) #19
  br label %_ZN4llvm9SetVectorISt4pairIPNS_10BasicBlockES3_ENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EED2Ev.exit.i

_ZN4llvm9SetVectorISt4pairIPNS_10BasicBlockES3_ENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EED2Ev.exit.i: ; preds = %bb.ee, %_ZN4llvm11SmallVectorISt4pairIPNS_10BasicBlockES3_ELj4EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.ayc = load ptr, ptr %i.af, align 8, !tbaa !33 ; 2 uses
  %i.ayd = icmp eq ptr %i.ayc, %i.ag
  br i1 %i.ayd, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i.i, label %bb.ef

bb.ef:                                            ; preds = %_ZN4llvm9SetVectorISt4pairIPNS_10BasicBlockES3_ENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.ayc) #19
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i.i: ; preds = %bb.ef, %_ZN4llvm9SetVectorISt4pairIPNS_10BasicBlockES3_ENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EED2Ev.exit.i
  %i.aye = load i32, ptr %i.bt, align 4, !tbaa !209 ; 2 uses
  %i.ayf = icmp eq i32 %i.aye, 0
  br i1 %i.ayf, label %_ZL21analyzeLoopUnrollCostPKN4llvm4LoopEjRNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEERKNS_19TargetTransformInfoEjj.exit, label %bb.eg

bb.eg:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i.i
  %i.ayg = load ptr, ptr %9, align 8, !tbaa !211
  %i.ayh = zext i32 %i.aye to i64                 ; 2 uses
  %i.ayi = shl nuw nsw i64 %i.ayh, 3
  %i.ayj = add nuw nsw i64 %i.ayh, 31
  %i.ayk = lshr i64 %i.ayj, 3
  %i.ayl = and i64 %i.ayk, 1073741820
  %i.aym = add nuw nsw i64 %i.ayl, %i.ayi
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ayg, i64 noundef %i.aym, i64 noundef 8) #19
  br label %_ZL21analyzeLoopUnrollCostPKN4llvm4LoopEjRNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEERKNS_19TargetTransformInfoEjj.exit

_ZL21analyzeLoopUnrollCostPKN4llvm4LoopEjRNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEERKNS_19TargetTransformInfoEjj.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj16EED2Ev.exit.i.i, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.9.i, label %bb.eh, label %.critedge20

bb.eh:                                            ; preds = %_ZL21analyzeLoopUnrollCostPKN4llvm4LoopEjRNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEERKNS_19TargetTransformInfoEjj.exit
  %i.ayn = load i32, ptr %i.t, align 4, !tbaa !36 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.084.0.i to i32 ; 3 uses
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.084.0.i, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %.not.i23 = icmp ult i64 %.sroa.084.0.i, 184467436613926912
  br i1 %.not.i23, label %bb.ei, label %_ZL27getFullUnrollBoostingFactorRKN12_GLOBAL__N_119EstimatedUnrollCostEj.exit

bb.ei:                                            ; preds = %bb.eh
  %.not4.i = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  br i1 %.not4.i, label %_ZL27getFullUnrollBoostingFactorRKN12_GLOBAL__N_119EstimatedUnrollCostEj.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ayo = mul nuw i32 %.sroa.0.4.extract.trunc, 100
  %i.ayp = udiv i32 %i.ayo, %.sroa.0.0.extract.trunc
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.ayn, i32 %i.ayp)
  br label %_ZL27getFullUnrollBoostingFactorRKN12_GLOBAL__N_119EstimatedUnrollCostEj.exit

_ZL27getFullUnrollBoostingFactorRKN12_GLOBAL__N_119EstimatedUnrollCostEj.exit: ; preds = %bb.eh, %bb.ei, %bb.ej
  %.0.i = phi i32 [ 100, %bb.eh ], [ %.sroa.speculated.i, %bb.ej ], [ %i.ayn, %bb.ei ]
  %i.ayq = load i32, ptr %5, align 4, !tbaa !35
  %i.ayr = mul i32 %i.ayq, %.0.i
  %i.ays = udiv i32 %i.ayr, 100
  %.not = icmp ugt i32 %i.ays, %.sroa.0.0.extract.trunc
  br i1 %.not, label %bb.ek, label %.critedge20

.critedge20:                                      ; preds = %_ZL21analyzeLoopUnrollCostPKN4llvm4LoopEjRNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEERKNS_19TargetTransformInfoEjj.exit.thread, %_ZL27getFullUnrollBoostingFactorRKN12_GLOBAL__N_119EstimatedUnrollCostEj.exit, %_ZL21analyzeLoopUnrollCostPKN4llvm4LoopEjRNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEERKNS_19TargetTransformInfoEjj.exit
  br label %bb.ek

bb.ek:                                            ; preds = %._crit_edge, %_ZL27getFullUnrollBoostingFactorRKN12_GLOBAL__N_119EstimatedUnrollCostEj.exit, %bb.b, %.critedge20
  %.sroa.05.0.insert.ext.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.m, %_ZL27getFullUnrollBoostingFactorRKN12_GLOBAL__N_119EstimatedUnrollCostEj.exit ], [ %i.m, %bb.b ], [ %i.m, %.critedge20 ]
  %.sroa.3.0 = phi i64 [ 0, %._crit_edge ], [ 4294967296, %_ZL27getFullUnrollBoostingFactorRKN12_GLOBAL__N_119EstimatedUnrollCostEj.exit ], [ 4294967296, %bb.b ], [ 0, %.critedge20 ]
  %.sroa.05.0.insert.insert = or disjoint i64 %.sroa.3.0, %.sroa.05.0.insert.ext.pre-phi
  ret i64 %.sroa.05.0.insert.insert
}

declare void @_ZN4llvm16computePeelCountEPNS_4LoopEjRNS_19TargetTransformInfo18PeelingPreferencesEjRNS_13DominatorTreeERNS_15ScalarEvolutionERKS2_PNS_15AssumptionCacheEj(ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(204), ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @_ZN4llvm25getLoopEstimatedTripCountEPNS_4LoopEPj(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm24initializeLoopUnrollPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %class.anon.638, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr @_ZL28initializeLoopUnrollPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !213
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !236
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !213
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !213
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL28InitializeLoopUnrollPassFlag, ptr noundef nonnull @__once_proxy) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #21
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !213
  store ptr null, ptr %i.c, align 8, !tbaa !213
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL28initializeLoopUnrollPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #3 {
bb.a:
  tail call void @_ZN4llvm36initializeAssumptionCacheTrackerPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #19
  tail call void @_ZN4llvm22initializeLoopPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #19
  tail call void @_ZN4llvm44initializeTargetTransformInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #19
  tail call void @_ZN4llvm39initializeUniformityInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #19
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #23 ; 9 uses
  store ptr @.str.90, ptr %i.a, align 8, !tbaa !237
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 12, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.71, ptr %i.b, align 8, !tbaa !237
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 11, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !113
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN12_GLOBAL__N_110LoopUnroll2IDE, ptr %i.c, align 8, !tbaa !505
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !506
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !507
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_110LoopUnrollEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !508
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm20createLoopUnrollPassEibbiiiiii(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #3 {
bb.a:
  %9 = alloca %class.anon.638, align 8            ; 5 uses
  %10 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #23 ; 13 uses
  %.not = icmp eq i32 %3, -1
  %.not36 = icmp eq i32 %4, -1
  %i.b = insertelement <4 x i32> poison, i32 %5, i64 0
  %i.c = insertelement <4 x i32> %i.b, i32 %6, i64 1
  %i.d = insertelement <4 x i32> %i.c, i32 %7, i64 2
  %i.e = insertelement <4 x i32> %i.d, i32 %8, i64 3 ; 2 uses
  %i.f = icmp eq <4 x i32> %i.e, splat (i32 -1)
  %i.g = icmp ne <4 x i32> %i.e, zeroinitializer
  %.sroa.219.0.insert.shift = select i1 %.not, i64 0, i64 4294967296
  %.sroa.018.0.insert.ext = zext i32 %3 to i64
  %.sroa.018.0.insert.insert = or disjoint i64 %.sroa.219.0.insert.shift, %.sroa.018.0.insert.ext
  %.sroa.217.0.insert.shift = select i1 %.not36, i64 0, i64 4294967296
  %.sroa.016.0.insert.ext = zext i32 %4 to i64
  %.sroa.016.0.insert.insert = or disjoint i64 %.sroa.217.0.insert.shift, %.sroa.016.0.insert.ext
  %i.h = zext i1 %1 to i8
  %i.i = zext i1 %2 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !241
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_110LoopUnroll2IDE, ptr %i.k, align 8, !tbaa !242
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.l, align 8, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12_GLOBAL__N_110LoopUnrollE, i64 16), ptr %i.a, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %0, ptr %i.m, align 4, !tbaa !254
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %i.h, ptr %i.n, align 8, !tbaa !255
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %i.i, ptr %i.o, align 1, !tbaa !256
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i64 %.sroa.016.0.insert.insert, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i64 %.sroa.018.0.insert.insert, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.s = select <4 x i1> %i.f, <4 x i16> zeroinitializer, <4 x i16> splat (i16 256)
  %i.t = zext <4 x i1> %i.g to <4 x i16>
  %i.u = or disjoint <4 x i16> %i.s, %i.t
  store <4 x i16> %i.u, ptr %i.r, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i16 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %i.w, align 8
  %i.x = tail call noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() #19, !inline_history !7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store ptr %i.x, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr @_ZL28initializeLoopUnrollPassOnceRN4llvm12PassRegistryE, ptr %9, align 8, !tbaa !213
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %10, ptr %i.y, align 8, !tbaa !236
  %i.z = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %9, ptr %i.z, align 8, !tbaa !213
  %i.aa = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.aa, align 8, !tbaa !213
  %i.ab = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL28InitializeLoopUnrollPassFlag, ptr noundef nonnull @__once_proxy) #19, !inline_history !8 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_110LoopUnrollC2EibbSt8optionalIjES2_S1_IbES3_S3_S3_S3_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ab) #21, !inline_history !8
  unreachable

_ZN12_GLOBAL__N_110LoopUnrollC2EibbSt8optionalIjES2_S1_IbES3_S3_S3_S3_S2_.exit: ; preds = %bb.a
  store ptr null, ptr %i.z, align 8, !tbaa !213
  store ptr null, ptr %i.aa, align 8, !tbaa !213
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18LoopFullUnrollPass3runERNS_4LoopERNS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEEES5_RNS_10LPMUpdaterE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(27) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"struct.std::pair.629", align 8    ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %8 = alloca %"class.llvm::OptimizationRemarkEmitter", align 8 ; 5 uses
  %9 = alloca %"class.llvm::SmallPtrSet.165", align 8 ; 28 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.llvm::SmallVector.183", align 8 ; 13 uses
  %12 = alloca %"class.llvm::SmallVector.183", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  call void @_ZN4llvm25OptimizationRemarkEmitterC1EPKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.f) #19
  %i.g = load ptr, ptr %2, align 8, !tbaa !267    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.h, ptr %9, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 4, ptr %i.i, align 8, !tbaa !268
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 13 uses
  store i32 0, ptr %i.j, align 4, !tbaa !212
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store i8 1, ptr %i.k, align 8, !tbaa !28
  %.not = icmp eq ptr %i.g, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !168  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !168  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not6.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_4LoopEE12insert_rangeIRS1_EEvOT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN4llvm15SmallPtrSetImplIPNS_4LoopEE6insertES2_.exit.i.i
  %i.p = phi i8 [ %i.ac, %_ZN4llvm15SmallPtrSetImplIPNS_4LoopEE6insertES2_.exit.i.i ], [ 1, %bb.b ]
  %.sroa.02.07.i.i = phi ptr [ %i.ad, %_ZN4llvm15SmallPtrSetImplIPNS_4LoopEE6insertES2_.exit.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.02.07.i.i, align 8, !tbaa !117 ; 3 uses
  %i.r = trunc nuw i8 %i.p to i1
  br i1 %i.r, label %bb.c, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i
end_hunk_3
begin_hunk_4_@_ZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19, !noalias !551
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19, !noalias !551
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19, !noalias !551
  %i.aa = tail call ptr @_ZNK4llvm4Loop11getStartLocEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #19, !noalias !551
  store ptr %i.aa, ptr %26, align 8, !noalias !551
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(8) %26) #19, !noalias !551
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59, !noalias !551
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !61, !noalias !551
  call void @_ZN4llvm24OptimizationRemarkMissedC1EPKcNS_9StringRefERKNS_18DiagnosticLocationEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(432) %24, ptr noundef nonnull @.str.71, ptr nonnull @.str.97, i64 21, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef %i.ad) #19, !noalias !551
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %24, ptr nonnull @.str.98, i64 48) #19, !noalias !551
  %i.ae = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %24, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ae, ptr noundef nonnull align 8 dereferenceable(5) %i.af, i64 5, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %24, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %27, align 8, !tbaa !21, !alias.scope !551
  %i.ai = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %24, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %27, i64 80 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %27, i64 96 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !33, !alias.scope !551
  %i.am = getelementptr inbounds nuw i8, ptr %27, i64 88 ; 2 uses
  store i32 0, ptr %i.am, align 8, !tbaa !127, !alias.scope !551
  %i.an = getelementptr inbounds nuw i8, ptr %27, i64 92
  store i32 4, ptr %i.an, align 4, !tbaa !128, !alias.scope !551
  %i.ao = getelementptr inbounds nuw i8, ptr %24, i64 88 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !127, !noalias !551
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i
  %i.aq = getelementptr inbounds nuw i8, ptr %24, i64 80
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_30DiagnosticInfoOptimizationBase8ArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(336) %i.ak, ptr noundef nonnull align 8 dereferenceable(336) %i.aq) ; 0 uses
  %.pre.i.i = load i32, ptr %i.ao, align 8, !tbaa !127, !noalias !551
  br label %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i

_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i: ; preds = %bb.j, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i
  %i.as = phi i32 [ 0, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i ], [ %.pre.i.i, %bb.j ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %27, i64 416
  %i.au = getelementptr inbounds nuw i8, ptr %24, i64 416
  %i.av = load i64, ptr %i.au, align 8, !noalias !551
  store i64 %i.av, ptr %i.at, align 8, !alias.scope !551
  %i.aw = getelementptr inbounds nuw i8, ptr %27, i64 424
  %i.ax = getelementptr inbounds nuw i8, ptr %24, i64 424
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !145, !noalias !551
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !145, !alias.scope !551
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm24OptimizationRemarkMissedE, i64 16), ptr %27, align 8, !tbaa !21, !alias.scope !551
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %24, align 8, !tbaa !21, !noalias !551
  %i.az = getelementptr inbounds nuw i8, ptr %24, i64 80 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !33, !noalias !551 ; 3 uses
  %.not4.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i
  %i.bb = zext i32 %i.as to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.bb, 80
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bd, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i ], [ %i.bc, %.lr.ph.i.preheader.i.i.i.i ] ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -80 ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !148 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !149
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !148 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -64 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !149
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %i.bd
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !33, !noalias !551
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i, %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i
  %i.bp = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i ], [ %i.ba, %_ZN4llvm24OptimizationRemarkMissedC2EOS0_.exit.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %24, i64 96
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_0clEv.exit.i", label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i
  call void @free(ptr noundef %i.bp) #19
  br label %"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_0clEv.exit.i"

"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_0clEv.exit.i": ; preds = %bb.k, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19, !noalias !551
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19, !noalias !551
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19, !noalias !551
  call void @_ZN4llvm25OptimizationRemarkEmitter4emitERNS_30DiagnosticInfoOptimizationBaseE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(424) %27) #19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %27, align 8, !tbaa !21
  %i.bs = load ptr, ptr %i.ak, align 8, !tbaa !33 ; 3 uses
  %i.bt = load i32, ptr %i.am, align 8, !tbaa !127 ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_0clEv.exit.i"
  %i.bu = zext i32 %i.bt to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.bu, 80
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bw, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i ], [ %i.bv, %.lr.ph.i.preheader.i.i.i ] ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -80 ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !148 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -32 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !149
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !148 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -64 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !149
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.bw
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, %"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_0clEv.exit.i"
  %i.ci = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i ], [ %i.bs, %"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_0clEv.exit.i" ] ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.al
  br i1 %i.cj, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @free(ptr noundef %i.ci) #19
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i: ; preds = %bb.l, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL15tryToUnrollLoopPNS_4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERS0_PNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESL_SK_IbESM_SM_SM_SM_SL_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_0EEvT_PDTclfL0p_EE.exit"

bb.m:                                             ; preds = %bb.g
  %i.ck = and i32 %i.f, 1
  %.not163 = icmp eq i32 %i.ck, 0
  %or.cond = and i1 %12, %.not163
  br i1 %or.cond, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL15tryToUnrollLoopPNS_4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERS0_PNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESL_SK_IbESM_SM_SM_SM_SL_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_0EEvT_PDTclfL0p_EE.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !59
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !61
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !83 ; 2 uses
  %i.cq = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.cp, i32 noundef 51) #19
  br i1 %i.cq, label %_ZNK4llvm8Function10hasOptSizeEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.cp, i32 noundef 19) #19
  br label %_ZNK4llvm8Function10hasOptSizeEv.exit

_ZNK4llvm8Function10hasOptSizeEv.exit:            ; preds = %bb.n, %bb.o
  %i.cs = phi i1 [ true, %bb.n ], [ %i.cr, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  call void @_ZN4llvm26gatherUnrollingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERKNS_19TargetTransformInfoEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoERNS_25OptimizationRemarkEmitterEiSt8optionalIjESE_SD_IbESF_SF_SE_(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::TargetTransformInfo::UnrollingPreferences") align 4 %28, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %10, i64 %15, i64 %14, i16 %16, i16 %17, i16 %18, i64 %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  %i.ct = call i64 @_ZN4llvm24gatherPeelingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERKNS_19TargetTransformInfoESt8optionalIbES8_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i16 %19, i16 %20, i1 noundef zeroext true) #19
  store i64 %i.ct, ptr %29, align 8
  %i.cu = load i32, ptr %28, align 4, !tbaa !35
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %28, i64 44
  %i.cx = load i8, ptr %i.cw, align 4, !tbaa !50, !range !29, !noundef !30
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %28, i64 12
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = icmp ne i32 %i.da, 0
  %or.cond.not165 = select i1 %i.cy, i1 %i.db, i1 false
  %or.cond4 = or i1 %i.cs, %or.cond.not165
  br i1 %or.cond4, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = and i32 %i.f, 5
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %bb.bl, label %bb.r

bb.r:                                             ; preds = %bb.q
  call fastcc void @"_ZN4llvm25OptimizationRemarkEmitter4emitIZL15tryToUnrollLoopPNS_4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERS0_PNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESL_SK_IbESM_SM_SM_SM_SL_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_1EEvT_PDTclfL0p_EE"(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.b)
  br label %bb.bl

bb.s:                                             ; preds = %bb.p, %_ZNK4llvm8Function10hasOptSizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  %i.dd = getelementptr inbounds nuw i8, ptr %30, i64 24
  store ptr %i.dd, ptr %30, align 8, !tbaa !31
  %i.de = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 32, ptr %i.de, align 8, !tbaa !268
  %i.df = getelementptr inbounds nuw i8, ptr %30, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !212
  %i.dg = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  store i8 1, ptr %i.dg, align 8, !tbaa !28
  call void @_ZN4llvm11CodeMetrics22collectEphemeralValuesEPKNS_4LoopEPNS_15AssumptionCacheERNS_15SmallPtrSetImplIPKNS_5ValueEEE(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(17) %30) #19
  %i.dh = call noundef ptr @_ZN4llvm15ScalarEvolution21getBackedgeTakenCountEPKNS_4LoopENS0_13ExitCountKindE(ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull %0, i32 noundef 0) #19
  %.not166 = icmp eq ptr %22, null
  br i1 %.not166, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = call fastcc noundef zeroext i1 @_ZL13isSCEVUniformPKN4llvm4SCEVERNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEE(ptr noundef %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %22)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dj = phi i1 [ false, %bb.s ], [ %i.di, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  %i.dk = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !49
  call void @_ZN4llvm19UnrollCostEstimatorC1EPKNS_4LoopERKNS_19TargetTransformInfoERKNS_15SmallPtrSetImplIPKNS_5ValueEEEjb(ptr noundef nonnull align 8 dereferenceable(29) %31, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(17) %30, i32 noundef %i.dl, i1 noundef zeroext %i.dj) #19
  %i.dm = and i32 %i.f, 5
  %.not167 = icmp eq i32 %i.dm, 0                 ; 3 uses
  %i.dn = select i1 %.not167, ptr null, ptr %6    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !117
  %i.do = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !112
  %i.dq = icmp eq i32 %i.dp, 2
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call fastcc void @"_ZZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopEENK3$_0clENS_9StringRefE"(ptr %i.dn, ptr nonnull %i.a, ptr nonnull @.str.59, i64 30)
  br label %_ZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopE.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.dr = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !106
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call fastcc void @"_ZZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopEENK3$_0clENS_9StringRefE"(ptr %i.dn, ptr nonnull %i.a, ptr nonnull @.str.60, i64 31)
  br label %_ZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopE.exit.thread

bb.y:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !111, !range !29, !noundef !30
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call fastcc void @"_ZZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopEENK3$_0clENS_9StringRefE"(ptr %i.dn, ptr nonnull %i.a, ptr nonnull @.str.61, i64 38)
  br label %_ZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopE.exit.thread

_ZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopE.exit.thread: ; preds = %bb.v, %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bj

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.cs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dx = load i64, ptr %31, align 8, !tbaa !105
  %i.dy = sdiv i64 %i.dx, 4
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = add i32 %i.dz, 1
  %i.eb = load i32, ptr %28, align 4, !tbaa !166
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.eb, i32 %i.ea)
  store i32 %.sroa.speculated, ptr %28, align 4, !tbaa !35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %31, i64 20
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !110
  %.not168 = icmp eq i32 %i.ed, 0
  br i1 %.not168, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not167, label %bb.bj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @"_ZN4llvm25OptimizationRemarkEmitter4emitIZL15tryToUnrollLoopPNS_4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERS0_PNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESL_SK_IbESM_SM_SM_SM_SL_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_2EEvT_PDTclfL0p_EE"(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.b)
  br label %bb.bj

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.ee = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  store ptr %i.ee, ptr %32, align 8, !tbaa !33
  %i.ef = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  store i32 0, ptr %i.ef, align 8, !tbaa !127
  %i.eg = getelementptr inbounds nuw i8, ptr %32, i64 12
  store i32 8, ptr %i.eg, align 4, !tbaa !128
  call void @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE16getExitingBlocksERNS_15SmallVectorImplIPS1_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %32) #19
  %i.eh = load ptr, ptr %32, align 8, !tbaa !33   ; 2 uses
  %i.ei = load i32, ptr %i.ef, align 8, !tbaa !127 ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %.idx = shl nuw nsw i64 %i.ej, 3
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx
  %.not169204 = icmp eq i32 %i.ei, 0
  br i1 %.not169204, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.not174 = icmp eq i32 %.1141, 0
  br i1 %.not174, label %._crit_edge.thread, label %.split

.lr.ph:                                           ; preds = %bb.af, %.lr.ph
  %.0140207 = phi i32 [ %.1141, %.lr.ph ], [ 0, %bb.af ] ; 2 uses
  %.0145206 = phi ptr [ %i.ep, %.lr.ph ], [ %i.eh, %bb.af ] ; 2 uses
  %.0146205 = phi i32 [ %.1147, %.lr.ph ], [ 1, %bb.af ]
  %i.el = load ptr, ptr %.0145206, align 8, !tbaa !61
  %i.em = call noundef i32 @_ZN4llvm15ScalarEvolution25getSmallConstantTripCountEPKNS_4LoopEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull %0, ptr noundef %i.el) #19 ; 3 uses
  %i.en = add i32 %.0140207, -1
  %i.eo = add i32 %i.em, -1
  %.not229 = icmp ult i32 %i.eo, %i.en            ; 2 uses
  %.1147 = select i1 %.not229, i32 %i.em, i32 %.0146205 ; 4 uses
  %.1141 = select i1 %.not229, i32 %i.em, i32 %.0140207 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0145206, i64 8 ; 2 uses
  %.not169 = icmp eq ptr %i.ep, %i.ek
  br i1 %.not169, label %._crit_edge, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.af, %._crit_edge
  %.0146.lcssa233 = phi i32 [ %.1147, %._crit_edge ], [ 1, %bb.af ]
  %i.eq = call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE12getLoopLatchEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #19 ; 3 uses
  %.not170 = icmp eq ptr %i.eq, null
  br i1 %.not170, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.thread
  %i.er = call noundef zeroext i1 @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE13isLoopExitingEPKS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.eq)
  br i1 %i.er, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.thread, %bb.ag
  %i.es = call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE15getExitingBlockEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #19 ; 2 uses
  %.not171 = icmp eq ptr %i.es, null
  br i1 %.not171, label %.split151, label %.thread

.thread:                                          ; preds = %bb.ag, %bb.ah
  %.0144196 = phi ptr [ %i.es, %bb.ah ], [ %i.eq, %bb.ag ]
  %i.et = call noundef i32 @_ZN4llvm15ScalarEvolution28getSmallConstantTripMultipleEPKNS_4LoopEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull %0, ptr noundef nonnull %.0144196) #19
  br label %.split151

.split:                                           ; preds = %._crit_edge
  %i.eu = getelementptr inbounds nuw i8, ptr %31, i64 28 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 4, !tbaa !115, !range !29, !noundef !30
  %i.ew = getelementptr inbounds nuw i8, ptr %28, i64 46 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 2, !tbaa !52, !range !29, !noundef !30
  %i.ey = and i8 %i.ex, %i.ev
  store i8 %i.ey, ptr %i.ew, align 2, !tbaa !52
  call void @_ZN4llvm18computeUnrollCountEPNS_4LoopERKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjbjRKNS_19UnrollCostEstimatorERNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr nonnull poison, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull align 8 dereferenceable(17) %30, ptr noundef nonnull %6, i32 noundef %.1141, i32 noundef 0, i1 noundef zeroext false, i32 noundef %.1147, ptr noundef nonnull align 8 dereferenceable(29) %31, ptr noundef nonnull align 4 dereferenceable(70) %28, ptr noundef nonnull align 4 dereferenceable(8) %29)
  br label %bb.ai

.split151:                                        ; preds = %bb.ah, %.thread
  %.3149.ph = phi i32 [ %.0146.lcssa233, %bb.ah ], [ %i.et, %.thread ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %31, i64 28 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 4, !tbaa !115, !range !29, !noundef !30
  %i.fb = getelementptr inbounds nuw i8, ptr %28, i64 46 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 2, !tbaa !52, !range !29, !noundef !30
  %i.fd = and i8 %i.fc, %i.fa
  store i8 %i.fd, ptr %i.fb, align 2, !tbaa !52
  %i.fe = call noundef i32 @_ZN4llvm15ScalarEvolution28getSmallConstantMaxTripCountEPKNS_4LoopEPNS_15SmallVectorImplIPKNS_13SCEVPredicateEEE(ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull %0, ptr noundef null) #19 ; 2 uses
  %i.ff = call noundef zeroext i1 @_ZN4llvm15ScalarEvolution29isBackedgeTakenCountMaxOrZeroEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull %0) #19
  call void @_ZN4llvm18computeUnrollCountEPNS_4LoopERKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjbjRKNS_19UnrollCostEstimatorERNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr nonnull poison, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull align 8 dereferenceable(17) %30, ptr noundef nonnull %6, i32 noundef 0, i32 noundef %i.fe, i1 noundef zeroext %i.ff, i32 noundef %.3149.ph, ptr noundef nonnull align 8 dereferenceable(29) %31, ptr noundef nonnull align 4 dereferenceable(70) %28, ptr noundef nonnull align 4 dereferenceable(8) %29)
  br label %bb.ai

bb.ai:                                            ; preds = %.split, %.split151
  %.not174236 = phi i1 [ false, %.split ], [ true, %.split151 ]
  %.0140.lcssa234 = phi i32 [ %.1141, %.split ], [ 0, %.split151 ] ; 3 uses
  %i.fg = phi ptr [ %i.eu, %.split ], [ %i.ez, %.split151 ]
  %.3149199 = phi i32 [ %.1147, %.split ], [ %.3149.ph, %.split151 ]
  %.0143 = phi i32 [ 0, %.split ], [ %i.fe, %.split151 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %28, i64 20 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !44 ; 4 uses
  %.not172 = icmp eq i32 %i.fi, 0
  br i1 %.not172, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not167, label %bb.bh, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call fastcc void @"_ZN4llvm25OptimizationRemarkEmitter4emitIZL15tryToUnrollLoopPNS_4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERS0_PNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESL_SK_IbESM_SM_SM_SM_SL_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_3EEvT_PDTclfL0p_EE"(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.b)
  br label %bb.bh

bb.al:                                            ; preds = %bb.ai
  %i.fj = load i8, ptr %i.fg, align 4, !tbaa !115, !range !29, !noundef !30
  %i.fk = getelementptr inbounds nuw i8, ptr %28, i64 45 ; 4 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !51, !range !29, !noundef !30
  %i.fm = and i8 %i.fl, %i.fj                     ; 2 uses
  store i8 %i.fm, ptr %i.fk, align 1, !tbaa !51
  %i.fn = load i32, ptr %29, align 8, !tbaa !163
  %.not173 = icmp eq i32 %i.fn, 0
  br i1 %.not173, label %bb.ao, label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2Ej.exit

_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2Ej.exit: ; preds = %bb.al
  call fastcc void @"_ZN4llvm25OptimizationRemarkEmitter4emitIZL15tryToUnrollLoopPNS_4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERS0_PNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESL_SK_IbESM_SM_SM_SM_SL_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_4EEvT_PDTclfL0p_EE"(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.b, ptr %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  %i.fo = getelementptr inbounds nuw i8, ptr %33, i64 20
  store i32 128, ptr %i.fo, align 4, !tbaa !284
  %i.fp = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.fr = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 8208, i64 noundef 8) #19 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8192 ; 2 uses
  store ptr %i.fr, ptr %33, align 8, !tbaa !285
  store ptr %i.fs, ptr %i.fq, align 8, !tbaa !286
  store i32 0, ptr %i.fp, align 8, !tbaa !552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fs, i8 0, i64 16, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %33, i64 48
  store i8 0, ptr %i.ft, align 8, !tbaa !288
  %i.fu = getelementptr inbounds nuw i8, ptr %33, i64 64
  %i.fv = getelementptr inbounds nuw i8, ptr %33, i64 168
  store i32 1, ptr %i.fu, align 8
  store i32 0, ptr %i.fv, align 8
  %i.fw = load i32, ptr %29, align 8, !tbaa !163
  %i.fx = getelementptr inbounds nuw i8, ptr %29, i64 7
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !553, !range !29, !noundef !30
  %i.fz = trunc nuw i8 %i.fy to i1
  call void @_ZN4llvm8peelLoopEPNS_4LoopEjbPNS_8LoopInfoEPNS_15ScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEbRNS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigISD_NS_3sys10SmartMutexILb0EEEEEEE(ptr noundef nonnull %0, i32 noundef %i.fw, i1 noundef zeroext %i.fz, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull %5, i1 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(176) %33) #19
  %i.ga = load ptr, ptr %i.cl, align 8, !tbaa !59 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !107
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 3
  store ptr %i.ga, ptr %34, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 %i.gg, ptr %i.gh, align 8
  call void @_ZN4llvm23simplifyLoopAfterUnrollEPNS_4LoopEbPNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_13DominatorTreeEPNS_15AssumptionCacheEPKNS_19TargetTransformInfoENS_8ArrayRefIPNS_10BasicBlockEEEPNS_9AAResultsE(ptr noundef nonnull %0, i1 noundef zeroext true, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.593") align 8 %34, ptr noundef null) #19
  %i.gi = getelementptr inbounds nuw i8, ptr %29, i64 6
  %i.gj = load i8, ptr %i.gi, align 2, !tbaa !554, !range !29, !noundef !30
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2Ej.exit
  call void @_ZN4llvm4Loop22setLoopAlreadyUnrolledEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2Ej.exit
  call void @_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  br label %bb.bh

bb.ao:                                            ; preds = %bb.al
  br i1 %11, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.gl = or i32 %.0143, %.0140.lcssa234
  %or.cond6.not = icmp eq i32 %i.gl, 0
  br i1 %or.cond6.not, label %bb.bh, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gm = icmp ult i32 %i.fi, %.0140.lcssa234
  %i.gn = icmp ult i32 %i.fi, %.0143
  %or.cond182 = or i1 %i.gm, %i.gn
  br i1 %or.cond182, label %bb.bh, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  br i1 %.not174236, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.go = urem i32 %.3149199, %i.fi
  %.not202 = icmp eq i32 %i.go, 0
  %i.gp = select i1 %.not202, i8 0, i8 %i.fm
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gq = phi i8 [ 0, %bb.ar ], [ %i.gp, %bb.as ]
  store i8 %i.gq, ptr %i.fk, align 1, !tbaa !51
  %i.gr = call noundef ptr @_ZNK4llvm4Loop9getLoopIDEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  call void @_ZN4llvm16UnrollPragmaInfoC1EPKNS_4LoopE(ptr noundef nonnull align 4 dereferenceable(11) %35, ptr noundef nonnull %0) #19
end_hunk_4
begin_hunk_5_@_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE
declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !308, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !308, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !29
  %i.j = load i8, ptr %i.d, align 8, !range !29
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !309, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !309, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @__once_proxy() #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #1 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !835, !nonnull !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !836, !nonnull !30, !align !270
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !839
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #19, !inline_history !833
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E21eraseFromFilledBucketIZNSA_21eraseFromFilledBucketEPS8_EUlRS8_E_EEvSC_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = add i32 %i.a, -2
  store i32 %i.b, ptr %0, align 8
  %i.c = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = select i1 %.not.i.i.i, ptr %i.i, ptr %i.g ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1
  %i.n = select i1 %.not.i.i.i, i32 %i.m, i32 3   ; 4 uses
  %i.o = ptrtoint ptr %1 to i64
  %i.p = ptrtoint ptr %i.f to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 4
  %i.s = trunc i64 %i.r to i32                    ; 3 uses
  %i.t = add i32 %i.s, 1
  %i.u = and i32 %i.t, %i.n                       ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = lshr i64 %i.v, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !166
  %i.z = and i32 %i.u, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.aw, %bb.c ], [ %i.v, %bb.a ]
  %i.ac = phi i32 [ %i.av, %bb.c ], [ %i.u, %bb.a ] ; 3 uses
  %.03338 = phi i32 [ %.2, %bb.c ], [ %i.s, %bb.a ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.pn ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !117 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = sub i32 %.03338, %i.aj
  %i.al = and i32 %i.ak, %i.n
  %i.am = sub i32 %i.ac, %i.aj
  %i.an = and i32 %i.am, %i.n
  %i.ao = icmp ult i32 %i.al, %i.an
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ap = zext i32 %.03338 to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.ap ; 2 uses
  store ptr %i.ae, ptr %i.aq, align 8, !tbaa !117
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !113
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !113
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03338, %.lr.ph ], [ %i.ac, %bb.b ] ; 2 uses
  %i.au = add i32 %i.ac, 1
  %i.av = and i32 %i.au, %i.n                     ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = lshr i64 %i.aw, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !166
  %i.ba = and i32 %i.av, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.s, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.bd = and i32 %.033.lcssa, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = xor i32 %i.be, -1
  %i.bg = lshr i32 %.033.lcssa, 5
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !166
  %i.bk = and i32 %i.bj, %i.bf
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !166
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamESt9nullopt_t(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_LoopUnrollPass.cpp() #15 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvm22ForgetSCEVInLoopUnrollE, i32 noundef 0, i32 noundef 0) #19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ForgetSCEVInLoopUnrollE, i64 120), align 8, !tbaa !100
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ForgetSCEVInLoopUnrollE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ForgetSCEVInLoopUnrollE, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN4llvm22ForgetSCEVInLoopUnrollE, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ForgetSCEVInLoopUnrollE, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ForgetSCEVInLoopUnrollE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvm22ForgetSCEVInLoopUnrollE, ptr nonnull align 1 dereferenceable(24) @.str, i64 23) #19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ForgetSCEVInLoopUnrollE, i64 120), align 8, !tbaa !100
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ForgetSCEVInLoopUnrollE, i64 137), align 1, !tbaa !308
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ForgetSCEVInLoopUnrollE, i64 136), align 8, !tbaa !840
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ForgetSCEVInLoopUnrollE, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ForgetSCEVInLoopUnrollE, i64 10), align 2
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ForgetSCEVInLoopUnrollE, i64 32), align 8, !tbaa !237
  store i64 143, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ForgetSCEVInLoopUnrollE, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvm22ForgetSCEVInLoopUnrollE) #19
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4llvm22ForgetSCEVInLoopUnrollE, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL15UnrollThreshold, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15UnrollThreshold, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15UnrollThreshold, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15UnrollThreshold, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL15UnrollThreshold, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15UnrollThreshold, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL15UnrollThreshold, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL15UnrollThreshold, ptr nonnull align 1 dereferenceable(17) @.str.3, i64 16) #19
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL15UnrollThreshold, i64 10), align 2
  %i.f = and i16 %i.e, -97
  %i.g = or disjoint i16 %i.f, 32
  store i16 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZL15UnrollThreshold, i64 10), align 2
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZL15UnrollThreshold, i64 32), align 8, !tbaa !237
  store i64 37, ptr getelementptr inbounds nuw (i8, ptr @_ZL15UnrollThreshold, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL15UnrollThreshold) #19
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL15UnrollThreshold, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL22UnrollOptSizeThreshold, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollOptSizeThreshold, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollOptSizeThreshold, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollOptSizeThreshold, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL22UnrollOptSizeThreshold, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollOptSizeThreshold, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL22UnrollOptSizeThreshold, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22UnrollOptSizeThreshold, ptr nonnull align 1 dereferenceable(25) @.str.6, i64 24) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollOptSizeThreshold, i64 120), align 8, !tbaa !42
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollOptSizeThreshold, i64 140), align 4, !tbaa !309
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollOptSizeThreshold, i64 136), align 8, !tbaa !841
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollOptSizeThreshold, i64 10), align 2
  %i.j = and i16 %i.i, -97
  %i.k = or disjoint i16 %i.j, 32
  store i16 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollOptSizeThreshold, i64 10), align 2
  store ptr @.str.7, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollOptSizeThreshold, i64 32), align 8, !tbaa !237
  store i64 62, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollOptSizeThreshold, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22UnrollOptSizeThreshold) #19
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL22UnrollOptSizeThreshold, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL22UnrollPartialThreshold, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollPartialThreshold, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollPartialThreshold, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollPartialThreshold, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL22UnrollPartialThreshold, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollPartialThreshold, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL22UnrollPartialThreshold, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22UnrollPartialThreshold, ptr nonnull align 1 dereferenceable(25) @.str.9, i64 24) #19
  %i.m = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollPartialThreshold, i64 10), align 2
  %i.n = and i16 %i.m, -97
  %i.o = or disjoint i16 %i.n, 32
  store i16 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollPartialThreshold, i64 10), align 2
  store ptr @.str.10, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollPartialThreshold, i64 32), align 8, !tbaa !237
  store i64 45, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollPartialThreshold, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22UnrollPartialThreshold) #19
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL22UnrollPartialThreshold, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL30UnrollMaxPercentThresholdBoost, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL30UnrollMaxPercentThresholdBoost, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL30UnrollMaxPercentThresholdBoost, ptr nonnull align 1 dereferenceable(35) @.str.12, i64 34) #19
  store i32 400, ptr getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 120), align 8, !tbaa !42
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 140), align 4, !tbaa !309
  store i32 400, ptr getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 136), align 8, !tbaa !841
  %i.q = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 10), align 2
  %i.r = and i16 %i.q, -97
  %i.s = or disjoint i16 %i.r, 32
  store i16 %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 10), align 2
  store ptr @.str.13, ptr getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 32), align 8, !tbaa !237
  store i64 359, ptr getelementptr inbounds nuw (i8, ptr @_ZL30UnrollMaxPercentThresholdBoost, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL30UnrollMaxPercentThresholdBoost) #19
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL30UnrollMaxPercentThresholdBoost, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL33UnrollMaxIterationsCountToAnalyze, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL33UnrollMaxIterationsCountToAnalyze, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL33UnrollMaxIterationsCountToAnalyze, ptr nonnull align 1 dereferenceable(38) @.str.15, i64 37) #19
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 120), align 8, !tbaa !42
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 140), align 4, !tbaa !309
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 136), align 8, !tbaa !841
  %i.u = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 10), align 2
  %i.v = and i16 %i.u, -97
  %i.w = or disjoint i16 %i.v, 32
  store i16 %i.w, ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 10), align 2
  store ptr @.str.16, ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 32), align 8, !tbaa !237
  store i64 114, ptr getelementptr inbounds nuw (i8, ptr @_ZL33UnrollMaxIterationsCountToAnalyze, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL33UnrollMaxIterationsCountToAnalyze) #19
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL33UnrollMaxIterationsCountToAnalyze, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL11UnrollCount, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11UnrollCount, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11UnrollCount, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL11UnrollCount, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL11UnrollCount, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL11UnrollCount, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL11UnrollCount, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL11UnrollCount, ptr nonnull align 1 dereferenceable(13) @.str.18, i64 12) #19
  %i.y = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL11UnrollCount, i64 10), align 2
  %i.z = and i16 %i.y, -97
  %i.aa = or disjoint i16 %i.z, 32
  store i16 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZL11UnrollCount, i64 10), align 2
  store ptr @.str.19, ptr getelementptr inbounds nuw (i8, ptr @_ZL11UnrollCount, i64 32), align 8, !tbaa !237
  store i64 105, ptr getelementptr inbounds nuw (i8, ptr @_ZL11UnrollCount, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL11UnrollCount) #19
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL11UnrollCount, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL14UnrollMaxCount, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14UnrollMaxCount, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14UnrollMaxCount, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14UnrollMaxCount, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL14UnrollMaxCount, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14UnrollMaxCount, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL14UnrollMaxCount, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14UnrollMaxCount, ptr nonnull align 1 dereferenceable(17) @.str.21, i64 16) #19
  %i.ac = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14UnrollMaxCount, i64 10), align 2
  %i.ad = and i16 %i.ac, -97
  %i.ae = or disjoint i16 %i.ad, 32
  store i16 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @_ZL14UnrollMaxCount, i64 10), align 2
  store ptr @.str.22, ptr getelementptr inbounds nuw (i8, ptr @_ZL14UnrollMaxCount, i64 32), align 8, !tbaa !237
  store i64 79, ptr getelementptr inbounds nuw (i8, ptr @_ZL14UnrollMaxCount, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14UnrollMaxCount) #19
  %i.af = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL14UnrollMaxCount, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL18UnrollFullMaxCount, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollFullMaxCount, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollFullMaxCount, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollFullMaxCount, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL18UnrollFullMaxCount, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollFullMaxCount, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18UnrollFullMaxCount, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL18UnrollFullMaxCount, ptr nonnull align 1 dereferenceable(22) @.str.24, i64 21) #19
  %i.ag = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollFullMaxCount, i64 10), align 2
  %i.ah = and i16 %i.ag, -97
  %i.ai = or disjoint i16 %i.ah, 32
  store i16 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollFullMaxCount, i64 10), align 2
  store ptr @.str.25, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollFullMaxCount, i64 32), align 8, !tbaa !237
  store i64 65, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollFullMaxCount, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL18UnrollFullMaxCount) #19
  %i.aj = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL18UnrollFullMaxCount, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL18UnrollAllowPartial, i32 noundef 0, i32 noundef 0) #19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollAllowPartial, i64 120), align 8, !tbaa !100
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollAllowPartial, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollAllowPartial, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL18UnrollAllowPartial, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollAllowPartial, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18UnrollAllowPartial, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL18UnrollAllowPartial, ptr nonnull align 1 dereferenceable(21) @.str.27, i64 20) #19
  %i.ak = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollAllowPartial, i64 10), align 2
  %i.al = and i16 %i.ak, -97
  %i.am = or disjoint i16 %i.al, 32
  store i16 %i.am, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollAllowPartial, i64 10), align 2
  store ptr @.str.28, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollAllowPartial, i64 32), align 8, !tbaa !237
  store i64 83, ptr getelementptr inbounds nuw (i8, ptr @_ZL18UnrollAllowPartial, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL18UnrollAllowPartial) #19
  %i.an = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL18UnrollAllowPartial, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL20UnrollAllowRemainder, i32 noundef 0, i32 noundef 0) #19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20UnrollAllowRemainder, i64 120), align 8, !tbaa !100
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20UnrollAllowRemainder, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20UnrollAllowRemainder, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL20UnrollAllowRemainder, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20UnrollAllowRemainder, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL20UnrollAllowRemainder, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20UnrollAllowRemainder, ptr nonnull align 1 dereferenceable(23) @.str.30, i64 22) #19
  %i.ao = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL20UnrollAllowRemainder, i64 10), align 2
  %i.ap = and i16 %i.ao, -97
  %i.aq = or disjoint i16 %i.ap, 32
  store i16 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZL20UnrollAllowRemainder, i64 10), align 2
  store ptr @.str.31, ptr getelementptr inbounds nuw (i8, ptr @_ZL20UnrollAllowRemainder, i64 32), align 8, !tbaa !237
  store i64 78, ptr getelementptr inbounds nuw (i8, ptr @_ZL20UnrollAllowRemainder, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20UnrollAllowRemainder) #19
  %i.ar = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL20UnrollAllowRemainder, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL13UnrollRuntime, i32 noundef 0, i32 noundef 0) #19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL13UnrollRuntime, i64 120), align 8, !tbaa !100
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL13UnrollRuntime, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL13UnrollRuntime, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL13UnrollRuntime, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL13UnrollRuntime, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL13UnrollRuntime, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL13UnrollRuntime, ptr nonnull align 1 dereferenceable(15) @.str.33, i64 14) #19
  %i.as = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL13UnrollRuntime, i64 10), align 2
  %i.at = and i16 %i.as, -97
  %i.au = or disjoint i16 %i.at, 32
  store i16 %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZL13UnrollRuntime, i64 10), align 2
  store ptr @.str.34, ptr getelementptr inbounds nuw (i8, ptr @_ZL13UnrollRuntime, i64 32), align 8, !tbaa !237
  store i64 38, ptr getelementptr inbounds nuw (i8, ptr @_ZL13UnrollRuntime, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL13UnrollRuntime) #19
  %i.av = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL13UnrollRuntime, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL19UnrollMaxUpperBound, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL19UnrollMaxUpperBound, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL19UnrollMaxUpperBound, ptr nonnull align 1 dereferenceable(22) @.str.36, i64 21) #19
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 120), align 8, !tbaa !42
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 140), align 4, !tbaa !309
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 136), align 8, !tbaa !841
  %i.aw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 10), align 2
  %i.ax = and i16 %i.aw, -97
  %i.ay = or disjoint i16 %i.ax, 32
  store i16 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 10), align 2
  store ptr @.str.37, ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 32), align 8, !tbaa !237
  store i64 65, ptr getelementptr inbounds nuw (i8, ptr @_ZL19UnrollMaxUpperBound, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL19UnrollMaxUpperBound) #19
  %i.az = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL19UnrollMaxUpperBound, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL21PragmaUnrollThreshold, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PragmaUnrollThreshold, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PragmaUnrollThreshold, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21PragmaUnrollThreshold, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL21PragmaUnrollThreshold, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21PragmaUnrollThreshold, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL21PragmaUnrollThreshold, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21PragmaUnrollThreshold, ptr nonnull align 1 dereferenceable(24) @.str.39, i64 23) #19
  store i32 16384, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PragmaUnrollThreshold, i64 120), align 8, !tbaa !42
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PragmaUnrollThreshold, i64 140), align 4, !tbaa !309
  store i32 16384, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PragmaUnrollThreshold, i64 136), align 8, !tbaa !841
  %i.ba = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PragmaUnrollThreshold, i64 10), align 2
  %i.bb = and i16 %i.ba, -97
  %i.bc = or disjoint i16 %i.bb, 32
  store i16 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PragmaUnrollThreshold, i64 10), align 2
  store ptr @.str.40, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PragmaUnrollThreshold, i64 32), align 8, !tbaa !237
  store i64 76, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PragmaUnrollThreshold, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21PragmaUnrollThreshold) #19
  %i.bd = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL21PragmaUnrollThreshold, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL26FlatLoopTripCountThreshold, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL26FlatLoopTripCountThreshold, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL26FlatLoopTripCountThreshold, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL26FlatLoopTripCountThreshold, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL26FlatLoopTripCountThreshold, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL26FlatLoopTripCountThreshold, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL26FlatLoopTripCountThreshold, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL26FlatLoopTripCountThreshold, ptr nonnull align 1 dereferenceable(30) @.str.42, i64 29) #19
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL26FlatLoopTripCountThreshold, i64 120), align 8, !tbaa !42
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL26FlatLoopTripCountThreshold, i64 140), align 4, !tbaa !309
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL26FlatLoopTripCountThreshold, i64 136), align 8, !tbaa !841
  %i.be = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL26FlatLoopTripCountThreshold, i64 10), align 2
  %i.bf = and i16 %i.be, -97
  %i.bg = or disjoint i16 %i.bf, 32
  store i16 %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_ZL26FlatLoopTripCountThreshold, i64 10), align 2
  store ptr @.str.43, ptr getelementptr inbounds nuw (i8, ptr @_ZL26FlatLoopTripCountThreshold, i64 32), align 8, !tbaa !237
  store i64 137, ptr getelementptr inbounds nuw (i8, ptr @_ZL26FlatLoopTripCountThreshold, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL26FlatLoopTripCountThreshold) #19
  %i.bh = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL26FlatLoopTripCountThreshold, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL21UnrollUnrollRemainder, i32 noundef 0, i32 noundef 0) #19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UnrollUnrollRemainder, i64 120), align 8, !tbaa !100
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UnrollUnrollRemainder, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21UnrollUnrollRemainder, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL21UnrollUnrollRemainder, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21UnrollUnrollRemainder, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL21UnrollUnrollRemainder, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21UnrollUnrollRemainder, ptr nonnull align 1 dereferenceable(17) @.str.45, i64 16) #19
  %i.bi = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UnrollUnrollRemainder, i64 10), align 2
  %i.bj = and i16 %i.bi, -97
  %i.bk = or disjoint i16 %i.bj, 32
  store i16 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UnrollUnrollRemainder, i64 10), align 2
  store ptr @.str.46, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UnrollUnrollRemainder, i64 32), align 8, !tbaa !237
  store i64 40, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UnrollUnrollRemainder, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21UnrollUnrollRemainder) #19
  %i.bl = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL21UnrollUnrollRemainder, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL23UnrollRevisitChildLoops, i32 noundef 0, i32 noundef 0) #19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UnrollRevisitChildLoops, i64 120), align 8, !tbaa !100
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UnrollRevisitChildLoops, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23UnrollRevisitChildLoops, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL23UnrollRevisitChildLoops, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23UnrollRevisitChildLoops, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL23UnrollRevisitChildLoops, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL23UnrollRevisitChildLoops, ptr nonnull align 1 dereferenceable(27) @.str.48, i64 26) #19
  %i.bm = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UnrollRevisitChildLoops, i64 10), align 2
  %i.bn = and i16 %i.bm, -97
  %i.bo = or disjoint i16 %i.bn, 32
  store i16 %i.bo, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UnrollRevisitChildLoops, i64 10), align 2
  store ptr @.str.49, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UnrollRevisitChildLoops, i64 32), align 8, !tbaa !237
  store i64 154, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UnrollRevisitChildLoops, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL23UnrollRevisitChildLoops) #19
  %i.bp = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL23UnrollRevisitChildLoops, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL25UnrollThresholdAggressive, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL25UnrollThresholdAggressive, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL25UnrollThresholdAggressive, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL25UnrollThresholdAggressive, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL25UnrollThresholdAggressive, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL25UnrollThresholdAggressive, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL25UnrollThresholdAggressive, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL25UnrollThresholdAggressive, ptr nonnull align 1 dereferenceable(28) @.str.51, i64 27) #19
  store i32 300, ptr getelementptr inbounds nuw (i8, ptr @_ZL25UnrollThresholdAggressive, i64 120), align 8, !tbaa !42
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL25UnrollThresholdAggressive, i64 140), align 4, !tbaa !309
  store i32 300, ptr getelementptr inbounds nuw (i8, ptr @_ZL25UnrollThresholdAggressive, i64 136), align 8, !tbaa !841
  %i.bq = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL25UnrollThresholdAggressive, i64 10), align 2
  %i.br = and i16 %i.bq, -97
  %i.bs = or disjoint i16 %i.br, 32
  store i16 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @_ZL25UnrollThresholdAggressive, i64 10), align 2
  store ptr @.str.52, ptr getelementptr inbounds nuw (i8, ptr @_ZL25UnrollThresholdAggressive, i64 32), align 8, !tbaa !237
  store i64 77, ptr getelementptr inbounds nuw (i8, ptr @_ZL25UnrollThresholdAggressive, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL25UnrollThresholdAggressive) #19
  %i.bt = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL25UnrollThresholdAggressive, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL22UnrollThresholdDefault, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollThresholdDefault, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollThresholdDefault, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollThresholdDefault, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL22UnrollThresholdDefault, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollThresholdDefault, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL22UnrollThresholdDefault, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22UnrollThresholdDefault, ptr nonnull align 1 dereferenceable(25) @.str.54, i64 24) #19
  store i32 150, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollThresholdDefault, i64 120), align 8, !tbaa !42
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollThresholdDefault, i64 140), align 4, !tbaa !309
  store i32 150, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollThresholdDefault, i64 136), align 8, !tbaa !841
  %i.bu = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollThresholdDefault, i64 10), align 2
  %i.bv = and i16 %i.bu, -97
  %i.bw = or disjoint i16 %i.bv, 32
  store i16 %i.bw, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollThresholdDefault, i64 10), align 2
  store ptr @.str.55, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollThresholdDefault, i64 32), align 8, !tbaa !237
  store i64 79, ptr getelementptr inbounds nuw (i8, ptr @_ZL22UnrollThresholdDefault, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22UnrollThresholdDefault) #19
  %i.bx = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL22UnrollThresholdDefault, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL29PragmaUnrollFullMaxIterations, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 120), align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL29PragmaUnrollFullMaxIterations, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL29PragmaUnrollFullMaxIterations, ptr nonnull align 1 dereferenceable(34) @.str.57, i64 33) #19
  store i32 1000000, ptr getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 120), align 8, !tbaa !42
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 140), align 4, !tbaa !309
  store i32 1000000, ptr getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 136), align 8, !tbaa !841
  %i.by = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 10), align 2
  %i.bz = and i16 %i.by, -97
  %i.ca = or disjoint i16 %i.bz, 32
  store i16 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 10), align 2
  store ptr @.str.58, ptr getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 32), align 8, !tbaa !237
  store i64 62, ptr getelementptr inbounds nuw (i8, ptr @_ZL29PragmaUnrollFullMaxIterations, i64 40), align 8, !tbaa !113
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL29PragmaUnrollFullMaxIterations) #19
  %i.cb = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL29PragmaUnrollFullMaxIterations, ptr nonnull @__dso_handle) #19 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{null}
!1 = distinct !{!1, !150}
!2 = distinct !{!2, !150}
!3 = distinct !{!3, !150}
!4 = distinct !{!4, !150}
!5 = distinct !{!5, !150}
!6 = distinct !{!6, !150}
!7 = distinct !{null}
!8 = distinct !{null, ptr @_ZN4llvm24initializeLoopUnrollPassERNS_12PassRegistryE}
!9 = distinct !{!9, !150}
!10 = distinct !{null}
!11 = distinct !{!11, !150}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"vtable pointer", !15, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"any pointer", !16, i64 0}
!23 = !{!"_ZTSSt14_Function_base", !16, i64 0, !22, i64 16}
!24 = !{!23, !22, i64 16}
!25 = !{!"any p2 pointer", !22, i64 0}
!26 = !{!"bool", !16, i64 0}
!27 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !25, i64 0, !17, i64 8, !17, i64 12, !26, i64 16}
!28 = !{!27, !26, i64 16}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!27, !25, i64 0}
!32 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !22, i64 0, !17, i64 8, !17, i64 12}
!33 = !{!32, !22, i64 0}
!34 = !{!"_ZTSN4llvm19TargetTransformInfo20UnrollingPreferencesE", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !26, i64 44, !26, i64 45, !26, i64 46, !26, i64 47, !26, i64 48, !26, i64 49, !26, i64 50, !26, i64 51, !17, i64 52, !17, i64 56, !26, i64 60, !17, i64 64, !26, i64 68, !26, i64 69}
!35 = !{!34, !17, i64 0}
!36 = !{!34, !17, i64 4}
!37 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!38 = !{!"_ZTSN4llvm2cl15OptionValueCopyIjEE", !37, i64 0, !17, i64 8, !26, i64 12}
!39 = !{!"_ZTSN4llvm2cl15OptionValueBaseIjLb0EEE", !38, i64 0}
!40 = !{!"_ZTSN4llvm2cl11OptionValueIjEE", !39, i64 0}
!41 = !{!"_ZTSN4llvm2cl11opt_storageIjLb0ELb0EEE", !17, i64 0, !40, i64 8}
!42 = !{!41, !17, i64 0}
!43 = !{!34, !17, i64 12}
!44 = !{!34, !17, i64 20}
!45 = !{!34, !17, i64 24}
!46 = !{!34, !17, i64 28}
!47 = !{!34, !17, i64 32}
!48 = !{!34, !17, i64 36}
!49 = !{!34, !17, i64 40}
!50 = !{!34, !26, i64 44}
!51 = !{!34, !26, i64 45}
!52 = !{!34, !26, i64 46}
!53 = !{!34, !17, i64 56}
!54 = !{!34, !17, i64 64}
!55 = !{!34, !26, i64 68}
!56 = !{!34, !26, i64 69}
!57 = !{!"p2 _ZTSN4llvm10BasicBlockE", !25, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIPN4llvm10BasicBlockESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!58, !57, i64 0}
!60 = !{!"p1 _ZTSN4llvm10BasicBlockE", !22, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"short", !16, i64 0}
!63 = !{!"p1 _ZTSN4llvm4TypeE", !22, i64 0}
!64 = !{!"p1 _ZTSN4llvm3UseE", !22, i64 0}
!65 = !{!"_ZTSN4llvm5ValueE", !16, i64 0, !16, i64 1, !16, i64 1, !62, i64 2, !17, i64 4, !17, i64 7, !17, i64 7, !17, i64 7, !17, i64 7, !63, i64 8, !64, i64 16}
!66 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !22, i64 0}
!67 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !66, i64 0, !66, i64 8}
!68 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !67, i64 0}
!69 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvLb0EvEEEE", !68, i64 0}
!70 = !{!"_ZTSN4llvm10ilist_nodeINS_10BasicBlockEJEEE", !69, i64 0}
!71 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_10BasicBlockENS_8FunctionEJEEE", !70, i64 0}
!72 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0ENS_10BasicBlockEEE", !22, i64 0}
!73 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0ENS_10BasicBlockEEELb0EEE", !72, i64 0, !72, i64 8}
!74 = !{!"_ZTSN4llvm12ilist_detail16node_base_parentINS_10BasicBlockEEE", !60, i64 0}
!75 = !{!"_ZTSN4llvm15ilist_node_baseILb0ENS_10BasicBlockEEE", !73, i64 0, !74, i64 16}
!76 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEEEE", !75, i64 0}
!77 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEEEE", !76, i64 0}
!78 = !{!"_ZTSN4llvm12simple_ilistINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEE", !77, i64 0}
!79 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEENS_21SymbolTableListTraitsIS2_JS4_S7_EEEEE", !78, i64 0}
!80 = !{!"_ZTSN4llvm15SymbolTableListINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEE", !79, i64 0}
!81 = !{!"p1 _ZTSN4llvm8FunctionE", !22, i64 0}
!82 = !{!"_ZTSN4llvm10BasicBlockE", !65, i64 0, !71, i64 24, !17, i64 40, !80, i64 48, !81, i64 72}
!83 = !{!82, !81, i64 72}
!84 = !{!"p1 omnipotent char", !22, i64 0}
!85 = !{!"long", !16, i64 0}
!86 = !{!"_ZTSN4llvm9StringRefE", !84, i64 0, !85, i64 8}
!87 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_2cl14OptionCategoryEvEE", !32, i64 0}
!88 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_2cl14OptionCategoryELb1EEE", !87, i64 0}
!89 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_2cl14OptionCategoryEEE", !88, i64 0}
!90 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_2cl14OptionCategoryELj1EEE", !16, i64 0}
!91 = !{!"_ZTSN4llvm11SmallVectorIPNS_2cl14OptionCategoryELj1EEE", !89, i64 0, !90, i64 16}
!92 = !{!"_ZTSN4llvm15SmallPtrSetImplIPNS_2cl10SubCommandEEE", !27, i64 0}
!93 = !{!"_ZTSN4llvm11SmallPtrSetIPNS_2cl10SubCommandELj1EEE", !92, i64 0, !16, i64 24}
!94 = !{!"_ZTSN4llvm2cl6OptionE", !62, i64 8, !62, i64 10, !62, i64 10, !62, i64 10, !62, i64 10, !62, i64 11, !62, i64 11, !62, i64 12, !62, i64 14, !86, i64 16, !86, i64 32, !86, i64 48, !91, i64 64, !93, i64 88}
!95 = !{!94, !62, i64 8}
!96 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !37, i64 0, !26, i64 8, !26, i64 9}
!97 = !{!"_ZTSN4llvm2cl15OptionValueBaseIbLb0EEE", !96, i64 0}
!98 = !{!"_ZTSN4llvm2cl11OptionValueIbEE", !97, i64 0}
!99 = !{!"_ZTSN4llvm2cl11opt_storageIbLb0ELb0EEE", !26, i64 0, !98, i64 8}
!100 = !{!99, !26, i64 0}
!101 = !{!34, !26, i64 49}
!102 = !{!34, !26, i64 50}
!103 = !{!"_ZTSN4llvm15InstructionCost9CostStateE", !16, i64 0}
!104 = !{!"_ZTSN4llvm15InstructionCostE", !85, i64 0, !103, i64 8}
!105 = !{!104, !85, i64 0}
!106 = !{!104, !103, i64 8}
!107 = !{!58, !57, i64 8}
!108 = !{!"_ZTSN4llvm15ConvergenceKindE", !16, i64 0}
!109 = !{!"_ZTSN4llvm19UnrollCostEstimatorE", !104, i64 0, !26, i64 16, !17, i64 20, !108, i64 24, !26, i64 28}
!110 = !{!109, !17, i64 20}
!111 = !{!109, !26, i64 16}
!112 = !{!109, !108, i64 24}
!113 = !{!85, !85, i64 0}
!114 = !{!103, !103, i64 0}
!115 = !{!109, !26, i64 28}
!116 = !{!"p1 _ZTSN4llvm4LoopE", !22, i64 0}
!117 = !{!116, !116, i64 0}
!118 = !{!"p1 _ZTSN4llvm18BlockFrequencyInfoE", !22, i64 0}
!119 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm18BlockFrequencyInfoELb0EE", !118, i64 0}
!120 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm18BlockFrequencyInfoESt14default_deleteIS1_EEE", !119, i64 0}
!121 = !{!"_ZTSSt5tupleIJPN4llvm18BlockFrequencyInfoESt14default_deleteIS1_EEE", !120, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm18BlockFrequencyInfoESt14default_deleteIS1_EE", !121, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm18BlockFrequencyInfoESt14default_deleteIS1_ELb1ELb1EE", !122, i64 0}
!124 = !{!"_ZTSSt10unique_ptrIN4llvm18BlockFrequencyInfoESt14default_deleteIS1_EE", !123, i64 0}
!125 = !{!"_ZTSN4llvm25OptimizationRemarkEmitterE", !81, i64 0, !118, i64 8, !124, i64 16}
!126 = !{!125, !81, i64 0}
!127 = !{!32, !17, i64 8}
!128 = !{!32, !17, i64 12}
!129 = !{!"_ZTSN4llvm18DiagnosticSeverityE", !16, i64 0}
!130 = !{!"_ZTSN4llvm14DiagnosticInfoE", !17, i64 8, !129, i64 12}
!131 = !{!"p1 _ZTSN4llvm6DIFileE", !22, i64 0}
!132 = !{!"_ZTSN4llvm18DiagnosticLocationE", !131, i64 0, !17, i64 8, !17, i64 12}
!133 = !{!"_ZTSN4llvm30DiagnosticInfoWithLocationBaseE", !130, i64 0, !81, i64 16, !132, i64 24}
!134 = !{!"_ZTSSt22_Optional_payload_baseImE", !16, i64 0, !26, i64 8}
!135 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !134, i64 0}
!136 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !135, i64 0}
!137 = !{!"_ZTSSt8optionalImE", !136, i64 0}
!138 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_30DiagnosticInfoOptimizationBase8ArgumentEvEE", !32, i64 0}
!139 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EEE", !138, i64 0}
!140 = !{!"_ZTSN4llvm15SmallVectorImplINS_30DiagnosticInfoOptimizationBase8ArgumentEEE", !139, i64 0}
!141 = !{!"_ZTSN4llvm18SmallVectorStorageINS_30DiagnosticInfoOptimizationBase8ArgumentELj4EEE", !16, i64 0}
!142 = !{!"_ZTSN4llvm11SmallVectorINS_30DiagnosticInfoOptimizationBase8ArgumentELj4EEE", !140, i64 0, !141, i64 16}
!143 = !{!"_ZTSN4llvm30DiagnosticInfoOptimizationBaseE", !133, i64 0, !84, i64 40, !86, i64 48, !137, i64 64, !142, i64 80, !26, i64 416, !17, i64 420}
!144 = !{!"_ZTSN4llvm28DiagnosticInfoIROptimizationE", !143, i64 0, !60, i64 424}
!145 = !{!144, !60, i64 424}
!146 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !84, i64 0}
!147 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !146, i64 0, !85, i64 8, !16, i64 16}
!148 = !{!147, !84, i64 0}
!149 = !{!16, !16, i64 0}
!150 = !{!"llvm.loop.mustprogress"}
!151 = !{!"_ZTSN4llvm16UnrollPragmaInfoE", !26, i64 0, !26, i64 1, !17, i64 4, !26, i64 8, !26, i64 9, !26, i64 10}
!152 = !{!151, !26, i64 0}
!153 = !{!151, !26, i64 1}
!154 = !{!"p1 _ZTSN4llvm8MetadataE", !22, i64 0}
!155 = !{!"p1 _ZTSN4llvm5ValueE", !22, i64 0}
!156 = !{!"_ZTSN4llvm5APIntE", !16, i64 0, !17, i64 8}
!157 = !{!156, !17, i64 8}
!158 = !{!151, !17, i64 4}
!159 = !{!151, !26, i64 8}
!160 = !{!151, !26, i64 9}
!161 = !{!151, !26, i64 10}
!162 = !{!"_ZTSN4llvm19TargetTransformInfo18PeelingPreferencesE", !17, i64 0, !26, i64 4, !26, i64 5, !26, i64 6, !26, i64 7}
!163 = !{!162, !17, i64 0}
!164 = !{!34, !26, i64 47}
!165 = !{!34, !26, i64 48}
!166 = !{!17, !17, i64 0}
!167 = !{!"p2 _ZTSN4llvm4LoopE", !25, i64 0}
!168 = !{!167, !167, i64 0}
!169 = !{!"p1 _ZTSN4llvm11SmallVectorIPNS_11InstructionELj16EEE", !22, i64 0}
!170 = !{!"p1 _ZTSN4llvm8DenseSetIN12_GLOBAL__N_117UnrolledInstStateENS1_24UnrolledInstStateKeyInfoEEE", !22, i64 0}
!171 = !{!"p1 _ZTSN4llvm11SmallVectorIPNS_11InstructionELj4EEE", !22, i64 0}
!172 = !{!"p1 _ZTSN4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEE", !22, i64 0}
!173 = !{!"p1 _ZTSN4llvm15InstructionCostE", !22, i64 0}
!174 = !{!"p1 _ZTSN4llvm19TargetTransformInfoE", !22, i64 0}
!175 = !{!65, !16, i64 0}
!176 = !{!64, !64, i64 0}
!177 = !{!"_ZTSN4llvm4UserE", !65, i64 0}
!178 = !{!"_ZTSN4llvm10ilist_nodeINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEE", !76, i64 0}
!179 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_11InstructionENS_10BasicBlockEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentIS2_EEEEE", !178, i64 0}
!180 = !{!"p1 _ZTSN4llvm10DILocationE", !22, i64 0}
!181 = !{!"_ZTSN4llvm8DebugLocE", !180, i64 0}
!182 = !{!"p1 _ZTSN4llvm9DbgMarkerE", !22, i64 0}
!183 = !{!"_ZTSN4llvm11InstructionE", !177, i64 0, !179, i64 24, !181, i64 48, !17, i64 56, !17, i64 60, !182, i64 64}
!184 = !{!"_ZTSN4llvm13FastMathFlagsE", !17, i64 0}
!185 = !{!"_ZTSN4llvm20FastMathFlagsStorageE", !184, i64 0}
!186 = !{!"_ZTSN4llvm7PHINodeE", !183, i64 0, !185, i64 72, !17, i64 76}
!187 = !{!186, !17, i64 76}
!188 = !{!"p2 _ZTSN4llvm3UseE", !25, i64 0}
!189 = !{!"p1 _ZTSN4llvm4UserE", !22, i64 0}
!190 = !{!"_ZTSN4llvm3UseE", !155, i64 0, !64, i64 8, !188, i64 16, !189, i64 24}
!191 = !{!190, !155, i64 0}
!192 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_5ValueES3_EE", !22, i64 0}
!193 = !{!"p1 int", !22, i64 0}
!194 = !{!"_ZTSN4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEE", !192, i64 0, !193, i64 8, !17, i64 16, !17, i64 20}
!195 = !{!194, !192, i64 0}
!196 = !{!194, !193, i64 8}
!197 = !{!194, !17, i64 20}
!198 = !{!"branch_weights", i32 1, i32 1999}
!199 = !{!155, !155, i64 0}
!200 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!201 = !{!"branch_weights", i32 0, i32 1}
!202 = !{!194, !17, i64 16}
!203 = !{!"p1 _ZTSN4llvm15ScalarEvolutionE", !22, i64 0}
!204 = !{!203, !203, i64 0}
!205 = !{!"p1 _ZTSN4llvm4SCEVE", !22, i64 0}
!206 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPNS_10BasicBlockEEE", !22, i64 0}
!207 = !{!"_ZTSN4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEE", !206, i64 0, !193, i64 8, !17, i64 16, !17, i64 20}
!208 = !{!207, !17, i64 16}
!209 = !{!207, !17, i64 20}
!210 = !{!207, !193, i64 8}
!211 = !{!207, !206, i64 0}
!212 = !{!27, !17, i64 12}
!213 = !{!22, !22, i64 0}
!214 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIN12_GLOBAL__N_117UnrolledInstStateEEE", !22, i64 0}
!215 = !{!"_ZTSN4llvm8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS1_24UnrolledInstStateKeyInfoENS3_12DenseSetPairIS2_EEEE", !214, i64 0, !193, i64 8, !17, i64 16, !17, i64 20}
!216 = !{!215, !214, i64 0}
!217 = !{!215, !193, i64 8}
!218 = !{!215, !17, i64 20}
!219 = !{!"p1 _ZTSN4llvm11InstructionE", !22, i64 0}
!220 = !{!219, !219, i64 0}
!221 = !{!215, !17, i64 16}
!222 = !{!"_ZTSN4llvm8ConstantE", !177, i64 0}
!223 = !{!"p1 _ZTSN4llvm6ModuleE", !22, i64 0}
!224 = !{!"_ZTSN4llvm11GlobalValueE", !222, i64 0, !63, i64 24, !17, i64 32, !17, i64 32, !17, i64 32, !17, i64 33, !17, i64 33, !17, i64 33, !17, i64 33, !17, i64 33, !17, i64 34, !17, i64 34, !17, i64 36, !223, i64 40}
!225 = !{!"_ZTSSt4pairIPN4llvm10BasicBlockES2_E", !60, i64 0, !60, i64 8}
!226 = !{!225, !60, i64 0}
!227 = !{!225, !60, i64 8}
!228 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairISt4pairIPNS_10BasicBlockES4_EEE", !22, i64 0}
!229 = !{!"_ZTSN4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEE", !228, i64 0, !193, i64 8, !17, i64 16, !17, i64 20}
!230 = !{!229, !17, i64 16}
!231 = !{!229, !228, i64 0}
!232 = !{!229, !193, i64 8}
!233 = !{!229, !17, i64 20}
!234 = !{!74, !60, i64 0}
!235 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !22, i64 0}
!236 = !{!235, !235, i64 0}
!237 = !{!84, !84, i64 0}
!238 = !{!"p1 _ZTSN4llvm16AnalysisResolverE", !22, i64 0}
!239 = !{!"_ZTSN4llvm8PassKindE", !16, i64 0}
!240 = !{!"_ZTSN4llvm4PassE", !238, i64 8, !22, i64 16, !239, i64 24}
!241 = !{!240, !238, i64 8}
!242 = !{!240, !22, i64 16}
!243 = !{!240, !239, i64 24}
!244 = !{!"_ZTSN4llvm8LoopPassE", !240, i64 0}
!245 = !{!"_ZTSSt22_Optional_payload_baseIjE", !16, i64 0, !26, i64 4}
!246 = !{!"_ZTSSt17_Optional_payloadIjLb1ELb1ELb1EE", !245, i64 0}
!247 = !{!"_ZTSSt14_Optional_baseIjLb1ELb1EE", !246, i64 0}
!248 = !{!"_ZTSSt8optionalIjE", !247, i64 0}
!249 = !{!"_ZTSSt22_Optional_payload_baseIbE", !16, i64 0, !26, i64 1}
!250 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !249, i64 0}
!251 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !250, i64 0}
!252 = !{!"_ZTSSt8optionalIbE", !251, i64 0}
!253 = !{!"_ZTSN12_GLOBAL__N_110LoopUnrollE", !244, i64 0, !17, i64 28, !26, i64 32, !26, i64 33, !248, i64 36, !248, i64 44, !252, i64 52, !252, i64 54, !252, i64 56, !252, i64 58, !252, i64 60, !248, i64 64}
!254 = !{!253, !17, i64 28}
!255 = !{!253, !26, i64 32}
!256 = !{!253, !26, i64 33}
!257 = !{!"_ZTSNSt12_Vector_baseIPN4llvm4LoopESaIS2_EE17_Vector_impl_dataE", !167, i64 0, !167, i64 8, !167, i64 16}
!258 = !{!"_ZTSNSt12_Vector_baseIPN4llvm4LoopESaIS2_EE12_Vector_implE", !257, i64 0}
!259 = !{!"_ZTSSt12_Vector_baseIPN4llvm4LoopESaIS2_EE", !258, i64 0}
!260 = !{!"_ZTSSt6vectorIPN4llvm4LoopESaIS2_EE", !259, i64 0}
!261 = !{!"_ZTSNSt12_Vector_baseIPN4llvm10BasicBlockESaIS2_EE12_Vector_implE", !58, i64 0}
!262 = !{!"_ZTSSt12_Vector_baseIPN4llvm10BasicBlockESaIS2_EE", !261, i64 0}
!263 = !{!"_ZTSSt6vectorIPN4llvm10BasicBlockESaIS2_EE", !262, i64 0}
!264 = !{!"_ZTSN4llvm15SmallPtrSetImplIPKNS_10BasicBlockEEE", !27, i64 0}
!265 = !{!"_ZTSN4llvm11SmallPtrSetIPKNS_10BasicBlockELj8EEE", !264, i64 0, !16, i64 24}
!266 = !{!"_ZTSN4llvm8LoopBaseINS_10BasicBlockENS_4LoopEEE", !116, i64 0, !260, i64 8, !263, i64 32, !265, i64 56}
!267 = !{!266, !116, i64 0}
!268 = !{!27, !17, i64 8}
!269 = !{!"p1 _ZTSN4llvm8LoopInfoE", !22, i64 0}
!270 = !{i64 8}
!271 = !{!146, !84, i64 0}
!272 = !{!147, !85, i64 8}
!273 = !{!"p1 _ZTSN4llvm21SmallPriorityWorklistIPNS_4LoopELj4EEE", !22, i64 0}
!274 = !{!"p1 _ZTSN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEEE", !22, i64 0}
!275 = !{!"_ZTSN4llvm10LPMUpdaterE", !273, i64 0, !274, i64 8, !116, i64 16, !26, i64 24, !26, i64 25, !26, i64 26}
!276 = !{!275, !273, i64 0}
!277 = !{!"_ZTSSt4pairIPN4llvm4LoopElE", !116, i64 0, !85, i64 8}
!278 = !{!277, !116, i64 0}
!279 = !{!277, !85, i64 8}
!280 = !{!275, !26, i64 24}
!281 = !{!118, !118, i64 0}
!282 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_EE", !22, i64 0}
!283 = !{!"_ZTSN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEEE", !282, i64 0, !193, i64 8, !17, i64 16, !17, i64 20}
!284 = !{!283, !17, i64 20}
!285 = !{!283, !282, i64 0}
!286 = !{!283, !193, i64 8}
!287 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEE", !16, i64 0, !26, i64 24}
!288 = !{!287, !26, i64 24}
!289 = !{!"_ZTSN4llvm17UnrollLoopOptionsE", !17, i64 0, !26, i64 4, !26, i64 5, !26, i64 6, !26, i64 7, !26, i64 8, !219, i64 16, !17, i64 24, !26, i64 28, !26, i64 29}
!290 = !{!289, !17, i64 0}
!291 = !{!"p1 _ZTSN4llvm8DebugLocE", !22, i64 0}
!292 = !{!"p1 _ZTSN4llvm17UnrollLoopOptionsE", !22, i64 0}
!293 = !{!"p1 _ZTSN4llvm16UnrollPragmaInfoE", !22, i64 0}
!294 = !{!"_ZTSN4llvm17LoopUnrollOptionsE", !252, i64 0, !252, i64 2, !252, i64 4, !252, i64 6, !252, i64 8, !248, i64 12, !17, i64 20, !26, i64 24, !26, i64 25}
!295 = !{!"_ZTSN4llvm14LoopUnrollPassE", !294, i64 0}
!296 = !{!295, !17, i64 20}
!297 = !{!131, !131, i64 0}
!298 = !{i64 0, i64 8, !297, i64 8, i64 4, !166, i64 12, i64 4, !166}
!299 = !{!206, !206, i64 0}
!300 = !{!228, !228, i64 0}
!301 = !{!"_ZTSN4llvm6detail13PunnedPointerIPPNS_15ValueHandleBaseEEE", !16, i64 0}
!302 = !{!"_ZTSN4llvm14PointerIntPairIPPNS_15ValueHandleBaseELj2ENS1_14HandleBaseKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj2ES6_EEEE", !301, i64 0}
!303 = !{!"p1 _ZTSN4llvm15ValueHandleBaseE", !22, i64 0}
!304 = !{!"_ZTSN4llvm15ValueHandleBaseE", !302, i64 0, !303, i64 8, !155, i64 16}
!305 = !{!304, !155, i64 16}
!306 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_4LoopElEE", !22, i64 0}
!307 = !{!306, !306, i64 0}
!308 = !{!96, !26, i64 9}
!309 = !{!38, !26, i64 12}
!310 = !{!34, !26, i64 60}
!311 = !{!34, !17, i64 8}
!312 = !{!34, !17, i64 16}
!313 = !{!34, !17, i64 52}
!314 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_15InstructionCostEvEE", !32, i64 0}
!315 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_15InstructionCostELb1EEE", !314, i64 0}
!316 = !{!"_ZTSN4llvm15SmallVectorImplINS_15InstructionCostEEE", !315, i64 0}
!317 = !{!"_ZTSN4llvm11SmallVectorINS_15InstructionCostELj0EEE", !316, i64 0}
!318 = !{!"_ZTSN4llvm11CodeMetricsE", !26, i64 0, !26, i64 1, !26, i64 2, !26, i64 3, !108, i64 4, !104, i64 8, !317, i64 24, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52}
!319 = !{!318, !17, i64 44}
!320 = !{!318, !26, i64 2}
!321 = !{!318, !108, i64 4}
!322 = !{i64 0, i64 8, !113, i64 8, i64 4, !114}
!323 = distinct !{null, null}
!324 = distinct !{!324, i1 false, !"_ZZZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopEENK3$_0clENS_9StringRefEENKUlvE_clEv"}
!325 = distinct !{!325, !324, !"_ZZZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopEENK3$_0clENS_9StringRefEENKUlvE_clEv: argument 0"}
!326 = !{!325}
!327 = !{!"_ZTSN4llvm9MDOperandE", !154, i64 0}
!328 = !{!327, !154, i64 0}
!329 = !{!"_ZTSN4llvm8MetadataE", !16, i64 0, !16, i64 1, !16, i64 1, !62, i64 2, !17, i64 4}
!330 = !{!"p1 _ZTSN4llvm11LLVMContextE", !22, i64 0}
!331 = !{!"_ZTSN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEEE", !17, i64 0, !17, i64 0, !16, i64 8}
!332 = !{!"_ZTSN4llvm23ReplaceableMetadataImplE", !330, i64 0, !85, i64 8, !331, i64 16}
!333 = !{!"_ZTSN4llvm15ValueAsMetadataE", !329, i64 0, !332, i64 8, !155, i64 136}
!334 = !{!333, !155, i64 136}
!335 = distinct !{null, null, null}
!336 = distinct !{!336, i1 false, !"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_0clEv"}
!337 = distinct !{!337, !336, !"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_0clEv: argument 0"}
!338 = distinct !{null, null, null}
!339 = distinct !{!339, i1 false, !"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_1clEv"}
!340 = distinct !{!340, !339, !"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_1clEv: argument 0"}
!341 = distinct !{null, null, null}
!342 = distinct !{!342, i1 false, !"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_2clEv"}
!343 = distinct !{!343, !342, !"_ZZL18shouldPragmaUnrollPN4llvm4LoopERKNS_16UnrollPragmaInfoEjjjNS_19UnrollCostEstimatorERKNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterEENK3$_2clEv: argument 0"}
!344 = distinct !{!344, !150}
!345 = distinct !{!345, !150}
!346 = distinct !{!346, !150}
!347 = !{!337}
!348 = !{!340}
!349 = !{!343}
!350 = distinct !{!350, !150}
!351 = distinct !{!351, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6getRepEv"}
!352 = distinct !{!352, !351, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6getRepEv: argument 0"}
!353 = distinct !{!353, i1 false, !"_ZNK4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE6getRepEv"}
!354 = distinct !{!354, !353, !"_ZNK4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE6getRepEv: argument 0"}
!355 = distinct !{!355, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6insertEOSt4pairIS3_S3_E"}
!356 = distinct !{!356, !355, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6insertEOSt4pairIS3_S3_E: argument 0"}
!357 = distinct !{!357, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E16try_emplace_implIS3_JS3_EEESt4pairINS_16DenseMapIteratorIS3_S3_S5_S8_Lb0EEEbEOT_DpOT0_"}
!358 = distinct !{!358, !357, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E16try_emplace_implIS3_JS3_EEESt4pairINS_16DenseMapIteratorIS3_S3_S5_S8_Lb0EEEbEOT_DpOT0_: argument 0"}
!359 = distinct !{!359, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6getRepEv"}
!360 = distinct !{!360, !359, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6getRepEv: argument 0"}
!361 = distinct !{!361, i1 false, !"_ZNK4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE6getRepEv"}
!362 = distinct !{!362, !361, !"_ZNK4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE6getRepEv: argument 0"}
!363 = distinct !{!363, !150}
!364 = distinct !{!364, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6getRepEv"}
!365 = distinct !{!365, !364, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6getRepEv: argument 0"}
!366 = distinct !{!366, i1 false, !"_ZNK4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE6getRepEv"}
!367 = distinct !{!367, !366, !"_ZNK4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE6getRepEv: argument 0"}
!368 = distinct !{!368, !150}
!369 = distinct !{!369, !150}
!370 = distinct !{!370, i1 false, !"_ZN4llvm6detail12DenseSetImplIN12_GLOBAL__N_117UnrolledInstStateENS_8DenseMapIS3_NS0_13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS0_12DenseSetPairIS3_EEEEE6insertEOS3_"}
!371 = distinct !{!371, !370, !"_ZN4llvm6detail12DenseSetImplIN12_GLOBAL__N_117UnrolledInstStateENS_8DenseMapIS3_NS0_13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS0_12DenseSetPairIS3_EEEEE6insertEOS3_: argument 0"}
!372 = distinct !{!372, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S6_S8_Lb0EEEbEOS3_DpOT_"}
!373 = distinct !{!373, !372, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S6_S8_Lb0EEEbEOS3_DpOT_: argument 0"}
!374 = distinct !{!374, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E16try_emplace_implIS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S6_S8_Lb0EEEbEOT_DpOT0_"}
!375 = distinct !{!375, !374, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E16try_emplace_implIS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S6_S8_Lb0EEEbEOT_DpOT0_: argument 0"}
!376 = distinct !{!376, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E6getRepEv"}
!377 = distinct !{!377, !376, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E6getRepEv: argument 0"}
!378 = distinct !{!378, i1 false, !"_ZNK4llvm8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS1_24UnrolledInstStateKeyInfoENS3_12DenseSetPairIS2_EEE6getRepEv"}
!379 = distinct !{!379, !378, !"_ZNK4llvm8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS1_24UnrolledInstStateKeyInfoENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!380 = distinct !{!380, !150}
!381 = distinct !{!381, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E6getRepEv"}
!382 = distinct !{!382, !381, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E6getRepEv: argument 0"}
!383 = distinct !{!383, i1 false, !"_ZNK4llvm8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS1_24UnrolledInstStateKeyInfoENS3_12DenseSetPairIS2_EEE6getRepEv"}
!384 = distinct !{!384, !383, !"_ZNK4llvm8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS1_24UnrolledInstStateKeyInfoENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!385 = distinct !{!385, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6getRepEv"}
!386 = distinct !{!386, !385, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6getRepEv: argument 0"}
!387 = distinct !{!387, i1 false, !"_ZNK4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE6getRepEv"}
!388 = distinct !{!388, !387, !"_ZNK4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE6getRepEv: argument 0"}
!389 = distinct !{!389, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6getRepEv"}
!390 = distinct !{!390, !389, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6getRepEv: argument 0"}
!391 = distinct !{!391, i1 false, !"_ZNK4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE6getRepEv"}
!392 = distinct !{!392, !391, !"_ZNK4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE6getRepEv: argument 0"}
!393 = distinct !{!393, i1 false, !"_ZNK4llvm10SwitchInst5casesEv"}
!394 = distinct !{!394, !393, !"_ZNK4llvm10SwitchInst5casesEv: argument 0"}
!395 = distinct !{!395, i1 false, !"_ZN4llvm10make_rangeINS_10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS_11ConstantIntEKNS_10BasicBlockEEEEEEENS_14iterator_rangeIT_EESC_SC_"}
!396 = distinct !{!396, !395, !"_ZN4llvm10make_rangeINS_10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS_11ConstantIntEKNS_10BasicBlockEEEEEEENS_14iterator_rangeIT_EESC_SC_: argument 0"}
!397 = distinct !{!397, i1 false, !"_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_"}
!398 = distinct !{!398, !397, !"_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_: argument 0"}
!399 = distinct !{!399, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_"}
!400 = distinct !{!400, !399, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_: argument 0"}
!401 = distinct !{!401, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_"}
!402 = distinct !{!402, !401, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_: argument 0"}
!403 = distinct !{!403, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!404 = distinct !{!404, !403, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!405 = distinct !{!405, i1 false, !"_ZNK4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!406 = distinct !{!406, !405, !"_ZNK4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!407 = distinct !{!407, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!408 = distinct !{!408, !407, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!409 = distinct !{!409, i1 false, !"_ZNK4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!410 = distinct !{!410, !409, !"_ZNK4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!411 = distinct !{!411, i1 false, !"_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_"}
!412 = distinct !{!412, !411, !"_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_: argument 0"}
!413 = distinct !{!413, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_"}
!414 = distinct !{!414, !413, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_: argument 0"}
!415 = distinct !{!415, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_"}
!416 = distinct !{!416, !415, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_: argument 0"}
!417 = distinct !{!417, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!418 = distinct !{!418, !417, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!419 = distinct !{!419, i1 false, !"_ZNK4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!420 = distinct !{!420, !419, !"_ZNK4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!421 = distinct !{!421, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!422 = distinct !{!422, !421, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!423 = distinct !{!423, i1 false, !"_ZNK4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!424 = distinct !{!424, !423, !"_ZNK4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!425 = distinct !{!425, i1 false, !"_ZN4llvm6detail12DenseSetImplISt4pairIPNS_10BasicBlockES4_ENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertERKS5_"}
!426 = distinct !{!426, !425, !"_ZN4llvm6detail12DenseSetImplISt4pairIPNS_10BasicBlockES4_ENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertERKS5_: argument 0"}
!427 = distinct !{!427, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbERKS5_DpOT_"}
!428 = distinct !{!428, !427, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbERKS5_DpOT_: argument 0"}
!429 = distinct !{!429, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIRKS5_JEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_"}
!430 = distinct !{!430, !429, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIRKS5_JEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_: argument 0"}
!431 = distinct !{!431, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!432 = distinct !{!432, !431, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!433 = distinct !{!433, i1 false, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!434 = distinct !{!434, !433, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!435 = distinct !{!435, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!436 = distinct !{!436, !435, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!437 = distinct !{!437, i1 false, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!438 = distinct !{!438, !437, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!439 = distinct !{!439, i1 false, !"_ZN4llvm6detail12DenseSetImplISt4pairIPNS_10BasicBlockES4_ENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertERKS5_"}
!440 = distinct !{!440, !439, !"_ZN4llvm6detail12DenseSetImplISt4pairIPNS_10BasicBlockES4_ENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertERKS5_: argument 0"}
!441 = distinct !{!441, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbERKS5_DpOT_"}
!442 = distinct !{!442, !441, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbERKS5_DpOT_: argument 0"}
!443 = distinct !{!443, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIRKS5_JEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_"}
!444 = distinct !{!444, !443, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIRKS5_JEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_: argument 0"}
!445 = distinct !{!445, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!446 = distinct !{!446, !445, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!447 = distinct !{!447, i1 false, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!448 = distinct !{!448, !447, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!449 = distinct !{!449, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!450 = distinct !{!450, !449, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!451 = distinct !{!451, i1 false, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!452 = distinct !{!452, !451, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!453 = distinct !{!453, !150}
!454 = distinct !{!454, !150}
!455 = distinct !{!455, !150}
!456 = distinct !{!456, !150}
!457 = !{!169, !169, i64 0}
!458 = !{!170, !170, i64 0}
!459 = !{!171, !171, i64 0}
!460 = !{!172, !172, i64 0}
!461 = !{!173, !173, i64 0}
!462 = !{!174, !174, i64 0}
!463 = !{!73, !72, i64 8}
!464 = !{!354, !352}
!465 = !{!362, !360, !358, !356}
!466 = !{!358, !356}
!467 = !{!367, !365, !358, !356}
!468 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_5ValueENS_20UnrolledInstAnalyzer17SimplifiedAddressEEE", !22, i64 0}
!469 = !{!"_ZTSN4llvm8DenseMapIPNS_5ValueENS_20UnrolledInstAnalyzer17SimplifiedAddressENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !468, i64 0, !193, i64 8, !17, i64 16, !17, i64 20}
!470 = !{!"_ZTSN4llvm20UnrolledInstAnalyzerE", !469, i64 0, !205, i64 24, !172, i64 32, !203, i64 40, !116, i64 48}
!471 = !{!470, !116, i64 48}
!472 = !{!470, !205, i64 24}
!473 = !{!379, !377, !375, !373, !371}
!474 = !{!375, !373, !371}
!475 = !{!384, !382, !375, !373, !371}
!476 = !{!224, !63, i64 24}
!477 = !{!"p1 _ZTSN4llvm17AttributeListImplE", !22, i64 0}
!478 = !{!"_ZTSN4llvm13AttributeListE", !477, i64 0}
!479 = !{!"p1 _ZTSN4llvm12FunctionTypeE", !22, i64 0}
!480 = !{!"_ZTSN4llvm8CallBaseE", !183, i64 0, !478, i64 72, !479, i64 80}
!481 = !{!480, !479, i64 80}
!482 = !{!73, !72, i64 0}
!483 = !{!388, !386}
!484 = !{!"branch_weights", i32 1999, i32 1}
!485 = !{!"branch_weights", i32 1, i32 0}
!486 = !{!392, !390}
!487 = !{!394}
!488 = !{!396, !394}
!489 = !{!406, !404, !402, !400, !398}
!490 = !{!402, !400, !398}
!491 = !{!410, !408, !402, !400, !398}
!492 = !{!420, !418, !416, !414, !412}
!493 = !{!416, !414, !412}
!494 = !{!424, !422, !416, !414, !412}
!495 = !{!434, !432, !430, !428, !426}
!496 = !{!430, !428, !426}
!497 = !{!438, !436, !430, !428, !426}
!498 = !{!448, !446, !444, !442, !440}
!499 = !{!444, !442, !440}
!500 = !{!452, !450, !444, !442, !440}
!501 = !{!469, !17, i64 20}
!502 = !{!469, !468, i64 0}
!503 = !{!469, !193, i64 8}
!504 = !{!"_ZTSN4llvm8PassInfoE", !86, i64 0, !86, i64 16, !22, i64 32, !26, i64 40, !26, i64 41, !22, i64 48}
!505 = !{!504, !22, i64 32}
!506 = !{!504, !26, i64 40}
!507 = !{!504, !26, i64 41}
!508 = !{!504, !22, i64 48}
!509 = distinct !{!509, i1 false, !"_ZN4llvm15SmallPtrSetImplIPNS_4LoopEE6insertES2_"}
end_hunk_5
begin_hunk_6_@llvm.umin.i32
!641 = !{!"p1 _ZTSN4llvm14ProfileSummaryE", !22, i64 0}
!642 = !{!641, !641, i64 0}
!643 = !{!597, !595}
!644 = !{!295, !26, i64 24}
!645 = !{!295, !26, i64 25}
!646 = !{!601}
!647 = !{!603}
!648 = distinct !{null, null}
!649 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !16, i64 0}
!650 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !16, i64 0}
!651 = !{!"_ZTSN4llvm11raw_ostreamE", !649, i64 8, !84, i64 16, !84, i64 24, !84, i64 32, !26, i64 40, !650, i64 44}
!652 = !{!651, !84, i64 24}
!653 = !{!651, !84, i64 32}
!654 = !{!249, !26, i64 1}
!655 = !{!26, !26, i64 0}
!656 = !{!245, !26, i64 4}
!657 = distinct !{!657, !150}
!658 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!659 = distinct !{!659, i1 false, !"_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_"}
!660 = distinct !{!660, !659, !"_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_: argument 0"}
!661 = distinct !{!661, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_"}
!662 = distinct !{!662, !661, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_: argument 0"}
!663 = distinct !{!663, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_"}
!664 = distinct !{!664, !663, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_: argument 0"}
!665 = distinct !{!665, i1 false, !"_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_"}
!666 = distinct !{!666, !665, !"_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_: argument 0"}
!667 = distinct !{!667, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_"}
!668 = distinct !{!668, !667, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_: argument 0"}
!669 = distinct !{!669, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_"}
!670 = distinct !{!670, !669, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_: argument 0"}
!671 = !{!664, !662, !660}
!672 = !{!670, !668, !666}
!673 = distinct !{!673, i1 false, !"_ZN4llvm6detail12DenseSetImplIN12_GLOBAL__N_117UnrolledInstStateENS_8DenseMapIS3_NS0_13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS0_12DenseSetPairIS3_EEEEE4findERKS3_"}
!674 = distinct !{!674, !673, !"_ZN4llvm6detail12DenseSetImplIN12_GLOBAL__N_117UnrolledInstStateENS_8DenseMapIS3_NS0_13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS0_12DenseSetPairIS3_EEEEE4findERKS3_: argument 0"}
!675 = distinct !{!675, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E4findERKS3_"}
!676 = distinct !{!676, !675, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E4findERKS3_: argument 0"}
!677 = distinct !{!677, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E7find_asIS3_EENS_16DenseMapIteratorIS3_S5_S6_S8_Lb0EEERKT_"}
!678 = distinct !{!678, !677, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E7find_asIS3_EENS_16DenseMapIteratorIS3_S5_S6_S8_Lb0EEERKT_: argument 0"}
!679 = distinct !{!679, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E6getRepEv"}
!680 = distinct !{!680, !679, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS2_24UnrolledInstStateKeyInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E6getRepEv: argument 0"}
!681 = distinct !{!681, i1 false, !"_ZNK4llvm8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS1_24UnrolledInstStateKeyInfoENS3_12DenseSetPairIS2_EEE6getRepEv"}
!682 = distinct !{!682, !681, !"_ZNK4llvm8DenseMapIN12_GLOBAL__N_117UnrolledInstStateENS_6detail13DenseSetEmptyENS1_24UnrolledInstStateKeyInfoENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!683 = distinct !{!683, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6getRepEv"}
!684 = distinct !{!684, !683, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6getRepEv: argument 0"}
!685 = distinct !{!685, i1 false, !"_ZNK4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE6getRepEv"}
!686 = distinct !{!686, !685, !"_ZNK4llvm8DenseMapIPNS_5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE6getRepEv: argument 0"}
!687 = distinct !{!687, !150}
!688 = distinct !{!688, !150}
!689 = distinct !{!689, !150}
!690 = !{!"_ZTSZL21analyzeLoopUnrollCostPKN4llvm4LoopEjRNS_13DominatorTreeERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEERKNS_19TargetTransformInfoEjjE3$_0", !169, i64 0, !170, i64 8, !167, i64 16, !171, i64 24, !172, i64 32, !173, i64 40, !174, i64 48}
!691 = !{!690, !169, i64 0}
!692 = !{!690, !170, i64 8}
!693 = !{!682, !680, !678, !676, !674}
!694 = !{!678, !676, !674}
!695 = !{!690, !167, i64 16}
!696 = !{!690, !171, i64 24}
!697 = !{!690, !172, i64 32}
!698 = !{!686, !684}
!699 = !{!690, !174, i64 48}
!700 = !{!690, !173, i64 40}
!701 = distinct !{!701, i1 false, !"_ZN4llvm6detail12DenseSetImplISt4pairIPNS_10BasicBlockES4_ENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertERKS5_"}
!702 = distinct !{!702, !701, !"_ZN4llvm6detail12DenseSetImplISt4pairIPNS_10BasicBlockES4_ENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertERKS5_: argument 0"}
!703 = distinct !{!703, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbERKS5_DpOT_"}
!704 = distinct !{!704, !703, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbERKS5_DpOT_: argument 0"}
!705 = distinct !{!705, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIRKS5_JEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_"}
!706 = distinct !{!706, !705, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIRKS5_JEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_: argument 0"}
!707 = distinct !{!707, i1 false, !"_ZN4llvm6detail12DenseSetImplISt4pairIPNS_10BasicBlockES4_ENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertERKS5_"}
!708 = distinct !{!708, !707, !"_ZN4llvm6detail12DenseSetImplISt4pairIPNS_10BasicBlockES4_ENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertERKS5_: argument 0"}
!709 = distinct !{!709, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbERKS5_DpOT_"}
!710 = distinct !{!710, !709, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbERKS5_DpOT_: argument 0"}
!711 = distinct !{!711, i1 false, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIRKS5_JEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_"}
!712 = distinct !{!712, !711, !"_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIRKS5_JEEES2_INS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_: argument 0"}
!713 = !{!706, !704, !702}
!714 = !{!712, !710, !708}
!715 = distinct !{!715, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!716 = distinct !{!716, !715, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!717 = distinct !{!717, i1 false, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!718 = distinct !{!718, !717, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!719 = !{!718, !716}
!720 = !{!192, !192, i64 0}
!721 = distinct !{!721, !150}
!722 = distinct !{!722, !150}
!723 = distinct !{!723, !150}
!724 = distinct !{!724, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!725 = distinct !{!725, !724, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!726 = distinct !{!726, i1 false, !"_ZNK4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!727 = distinct !{!727, !726, !"_ZNK4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!728 = !{!727, !725}
!729 = distinct !{!729, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!730 = distinct !{!730, !729, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!731 = distinct !{!731, i1 false, !"_ZNK4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!732 = distinct !{!732, !731, !"_ZNK4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!733 = !{!732, !730}
!734 = distinct !{!734, !150}
!735 = distinct !{!735, !150}
!736 = distinct !{!736, !150}
!737 = !{!214, !214, i64 0}
!738 = distinct !{!738, !150}
!739 = distinct !{!739, !150}
!740 = distinct !{!740, !150}
!741 = !{i64 0, i64 8, !220, i64 8, i64 4, !149}
!742 = distinct !{!742, !150}
!743 = !{!"_ZTSN4llvm10SwitchInstE", !183, i64 0, !17, i64 72}
!744 = !{!743, !17, i64 72}
!745 = !{!"p1 _ZTSN4llvm11ConstantIntE", !22, i64 0}
!746 = !{!745, !745, i64 0}
!747 = distinct !{!747, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!748 = distinct !{!748, !747, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!749 = distinct !{!749, i1 false, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!750 = distinct !{!750, !749, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!751 = !{!750, !748}
!752 = distinct !{!752, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!753 = distinct !{!753, !752, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!754 = distinct !{!754, i1 false, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!755 = distinct !{!755, !754, !"_ZNK4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!756 = !{!755, !753}
!757 = distinct !{!757, !150}
!758 = distinct !{!758, !150}
!759 = distinct !{!759, !150}
!760 = !{!"p1 _ZTSSt4pairIPKvPN4llvm4PassEE", !22, i64 0}
!761 = !{!760, !760, i64 0}
!762 = !{!"p1 _ZTSN4llvm4PassE", !22, i64 0}
!763 = !{!"_ZTSSt4pairIPKvPN4llvm4PassEE", !22, i64 0, !762, i64 8}
!764 = !{!763, !22, i64 0}
!765 = distinct !{!765, i1 false, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_1clEv"}
!766 = distinct !{!766, !765, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_1clEv: argument 0"}
!767 = !{!766}
!768 = !{!"_ZTSN4llvm14FoldingSetBase4NodeE", !22, i64 0}
!769 = !{!"_ZTSN4llvm19FoldingSetNodeIDRefE", !193, i64 0, !85, i64 8}
!770 = !{!"_ZTSN4llvm9SCEVTypesE", !16, i64 0}
!771 = !{!"_ZTSN4llvm4SCEVE", !768, i64 0, !769, i64 8, !770, i64 24, !62, i64 26, !62, i64 28, !205, i64 32}
!772 = !{!771, !770, i64 24}
!773 = distinct !{!773, i1 false, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_2clEv"}
!774 = distinct !{!774, !773, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_2clEv: argument 0"}
!775 = !{!774}
!776 = distinct !{!776, i1 false, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_3clEv"}
!777 = distinct !{!777, !776, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_3clEv: argument 0"}
!778 = !{!777}
!779 = distinct !{!779, i1 false, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_4clEv"}
!780 = distinct !{!780, !779, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_4clEv: argument 0"}
!781 = !{!780}
!782 = distinct !{!782, !150}
!783 = distinct !{!783, !150}
!784 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_8MetadataENS_13TrackingMDRefEEE", !22, i64 0}
!785 = !{!"_ZTSN4llvm8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE", !784, i64 0, !193, i64 8, !17, i64 16, !17, i64 20}
!786 = !{!785, !17, i64 20}
!787 = !{!785, !784, i64 0}
!788 = !{!785, !193, i64 8}
!789 = !{!"_ZTSN4llvm13TrackingMDRefE", !154, i64 0}
!790 = !{!789, !154, i64 0}
!791 = distinct !{!791, i1 false, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_5clEv"}
!792 = distinct !{!792, !791, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_5clEv: argument 0"}
!793 = !{!792}
!794 = distinct !{!794, i1 false, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_6clEv"}
!795 = distinct !{!795, !794, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_6clEv: argument 0"}
!796 = !{!795}
!797 = !{!"_ZTSZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_6", !291, i64 0, !57, i64 8, !292, i64 16}
!798 = !{!797, !291, i64 0}
!799 = !{!797, !57, i64 8}
!800 = !{!797, !292, i64 16}
!801 = distinct !{!801, i1 false, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_7clEv"}
!802 = distinct !{!802, !801, !"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_7clEv: argument 0"}
!803 = !{!802}
!804 = !{!"_ZTSZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_7", !291, i64 0, !57, i64 8, !293, i64 16, !292, i64 24}
!805 = !{!804, !291, i64 0}
!806 = !{!804, !57, i64 8}
!807 = !{!804, !293, i64 16}
!808 = !{i64 4}
!809 = !{!804, !292, i64 24}
!810 = distinct !{!810, !150}
!811 = distinct !{!811, !150}
!812 = distinct !{!812, !150, !815, !816}
!813 = distinct !{!813, !817}
!814 = distinct !{!814, !150, !815}
!815 = !{!"llvm.loop.isvectorized", i32 1}
!816 = !{!"llvm.loop.unroll.runtime.disable"}
!817 = !{!"llvm.loop.unroll.disable"}
!818 = distinct !{!818, i1 false, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E6getRepEv"}
!819 = distinct !{!819, !818, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E6getRepEv: argument 0"}
!820 = distinct !{!820, i1 false, !"_ZNK4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE6getRepEv"}
!821 = distinct !{!821, !820, !"_ZNK4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE6getRepEv: argument 0"}
!822 = !{!821, !819}
!823 = distinct !{!823, i1 false, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E6getRepEv"}
!824 = distinct !{!824, !823, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E6getRepEv: argument 0"}
!825 = distinct !{!825, i1 false, !"_ZNK4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE6getRepEv"}
!826 = distinct !{!826, !825, !"_ZNK4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE6getRepEv: argument 0"}
!827 = !{!826, !824}
!828 = !{!193, !193, i64 0}
!829 = !{i64 0, i64 8, !307, i64 8, i64 8, !828, i64 16, i64 4, !166}
!830 = distinct !{!830, !150}
!831 = distinct !{!831, !150}
!832 = distinct !{!832, !150}
!833 = distinct !{null, null, null, null}
!834 = !{!"_ZTSZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS1_EEEvRSt9once_flagOT_DpOT0_EUlvE_", !22, i64 0, !235, i64 8}
!835 = !{!834, !22, i64 0}
!836 = !{!834, !235, i64 8}
!837 = !{!"p1 _ZTSN4llvm12PassRegistryE", !22, i64 0}
!838 = !{!"_ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !837, i64 0}
!839 = !{!838, !837, i64 0}
!840 = !{!96, !26, i64 8}
!841 = !{!38, !17, i64 8}
end_hunk_6
