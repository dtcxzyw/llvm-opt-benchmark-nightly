Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LazyBlockFrequencyInfo?download=true
inline.NumInlined: 67
inline.NumDeleted: 59
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::once_flag" = type { i32 }
%class.anon = type { ptr, ptr }
%"class.std::reference_wrapper" = type { ptr }

$_ZN4llvm26LazyBlockFrequencyInfoPassD2Ev = comdat any

$_ZN4llvm26LazyBlockFrequencyInfoPassD0Ev = comdat any

$_ZN4llvm4Pass16doInitializationERNS_6ModuleE = comdat any

$_ZN4llvm4Pass14doFinalizationERNS_6ModuleE = comdat any

$_ZN4llvm15callDefaultCtorINS_26LazyBlockFrequencyInfoPassEEEPNS_4PassEv = comdat any

$_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL44InitializeLazyBlockFrequencyInfoPassPassFlag = internal global %"struct.std::once_flag" zeroinitializer, align 4
@_ZN4llvm26LazyBlockFrequencyInfoPass2IDE = global i8 0, align 1
@_ZTVN4llvm26LazyBlockFrequencyInfoPassE = unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr null, ptr @_ZN4llvm26LazyBlockFrequencyInfoPassD2Ev, ptr @_ZN4llvm26LazyBlockFrequencyInfoPassD0Ev, ptr @_ZNK4llvm4Pass11getPassNameEv, ptr @_ZN4llvm4Pass16doInitializationERNS_6ModuleE, ptr @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE, ptr @_ZNK4llvm26LazyBlockFrequencyInfoPass5printERNS_11raw_ostreamEPKNS_6ModuleE, ptr @_ZNK4llvm12FunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE, ptr @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE, ptr @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv, ptr @_ZNK4llvm26LazyBlockFrequencyInfoPass16getAnalysisUsageERNS_13AnalysisUsageE, ptr @_ZN4llvm26LazyBlockFrequencyInfoPass13releaseMemoryEv, ptr @_ZN4llvm4Pass18getAsImmutablePassEv, ptr @_ZN4llvm4Pass18getAsPMDataManagerEv, ptr @_ZNK4llvm4Pass14verifyAnalysisEv, ptr @_ZN4llvm4Pass17dumpPassStructureEj, ptr @_ZN4llvm26LazyBlockFrequencyInfoPass13runOnFunctionERNS_8FunctionE, ptr @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE] }, align 8
@.str = private unnamed_addr constant [30 x i8] c"Lazy Block Frequency Analysis\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"lazy-block-freq\00", align 1
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@_ZN4llvm24DominatorTreeWrapperPass2IDE = external global i8, align 1
@_ZN4llvm19LoopInfoWrapperPass2IDE = external global i8, align 1
@_ZN4llvm29LazyBranchProbabilityInfoPass2IDE = external global i8, align 1

@_ZN4llvm26LazyBlockFrequencyInfoPassC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm26LazyBlockFrequencyInfoPassC2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm40initializeLazyBlockFrequencyInfoPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %class.anon, align 8                ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store ptr @_ZL44initializeLazyBlockFrequencyInfoPassPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !11
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !9
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !9
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL44InitializeLazyBlockFrequencyInfoPassPassFlag, ptr noundef nonnull @__once_proxy) #12 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #13
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !9
  store ptr null, ptr %i.c, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL44initializeLazyBlockFrequencyInfoPassPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 {
bb.a:
  tail call void @_ZN4llvm25initializeLazyBPIPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  tail call void @_ZN4llvm33initializeLoopInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #14 ; 9 uses
  store ptr @.str, ptr %i.a, align 8, !tbaa !38
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 29, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.1, ptr %i.b, align 8, !tbaa !38
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 15, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN4llvm26LazyBlockFrequencyInfoPass2IDE, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 1, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 1, ptr %i.e, align 1, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorINS_26LazyBlockFrequencyInfoPassEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !46
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm26LazyBlockFrequencyInfoPassC2Ev(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 28)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm26LazyBlockFrequencyInfoPass2IDE, ptr %i.b, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.c, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4llvm26LazyBlockFrequencyInfoPassE, i64 16), ptr %0, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4llvm18BlockFrequencyInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm26LazyBlockFrequencyInfoPass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !31, !range !49, !noundef !32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK4llvm22LazyBlockFrequencyInfoINS_8FunctionENS_29LazyBranchProbabilityInfoPassENS_8LoopInfoENS_18BlockFrequencyInfoEE13getCalculatedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 144 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !65, !range !49, !noundef !32
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN4llvm12BPIPassTraitINS_29LazyBranchProbabilityInfoPassEE6getBPIEPS1_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68
  tail call void @_ZN4llvm21BranchProbabilityInfo9calculateERKNS_8FunctionERKNS_8LoopInfoEPKNS_17TargetLibraryInfoEPNS_13DominatorTreeEPNS_17PostDominatorTreeE(ptr noundef nonnull align 8 dereferenceable(176) %i.j, ptr noundef nonnull align 8 dereferenceable(140) %i.o, ptr noundef nonnull align 8 dereferenceable(184) %i.q, ptr noundef %i.s, ptr noundef null, ptr noundef null) #12
  store i8 1, ptr %i.k, align 8, !tbaa !65
  br label %_ZN4llvm12BPIPassTraitINS_29LazyBranchProbabilityInfoPassEE6getBPIEPS1_.exit.i.i

_ZN4llvm12BPIPassTraitINS_29LazyBranchProbabilityInfoPassEE6getBPIEPS1_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  tail call void @_ZN4llvm18BlockFrequencyInfo9calculateERKNS_8FunctionERKNS_21BranchProbabilityInfoERKNS_8LoopInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %i.f, ptr noundef nonnull align 8 dereferenceable(140) %i.j, ptr noundef nonnull align 8 dereferenceable(184) %i.u) #12
  store i8 1, ptr %i.b, align 8, !tbaa !31
  br label %_ZNK4llvm22LazyBlockFrequencyInfoINS_8FunctionENS_29LazyBranchProbabilityInfoPassENS_8LoopInfoENS_18BlockFrequencyInfoEE13getCalculatedEv.exit

_ZNK4llvm22LazyBlockFrequencyInfoINS_8FunctionENS_29LazyBranchProbabilityInfoPassENS_8LoopInfoENS_18BlockFrequencyInfoEE13getCalculatedEv.exit: ; preds = %bb.a, %_ZN4llvm12BPIPassTraitINS_29LazyBranchProbabilityInfoPassEE6getBPIEPS1_.exit.i.i
  tail call void @_ZNK4llvm18BlockFrequencyInfo5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  ret void
}

declare void @_ZNK4llvm18BlockFrequencyInfo5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm26LazyBlockFrequencyInfoPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm29LazyBranchProbabilityInfoPass23getLazyBPIAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(161) %1) #12
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage23addRequiredTransitiveIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm24DominatorTreeWrapperPass2IDE) #12 ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage23addRequiredTransitiveIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm19LoopInfoWrapperPass2IDE) #12 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.c, align 8, !tbaa !78
  ret void
}

declare void @_ZN4llvm29LazyBranchProbabilityInfoPass23getLazyBPIAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm26LazyBlockFrequencyInfoPass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4llvm18BlockFrequencyInfo13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm26LazyBlockFrequencyInfoPass13runOnFunctionERNS_8FunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80   ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !83   ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm29LazyBranchProbabilityInfoPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_29LazyBranchProbabilityInfoPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm29LazyBranchProbabilityInfoPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_29LazyBranchProbabilityInfoPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_29LazyBranchProbabilityInfoPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i3.i.i5 = icmp eq ptr %i.f, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %.not.i3.i.i5, label %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %_ZNK4llvm4Pass11getAnalysisINS_29LazyBranchProbabilityInfoPassEEERT_v.exit, %.lr.ph.i.i.i6
  %.sroa.08.015.i4.i.i7 = phi ptr [ %i.k, %.lr.ph.i.i.i6 ], [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_29LazyBranchProbabilityInfoPassEEERT_v.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i7, i64 16 ; 4 uses
  %.not11.i.i.i8 = icmp ne ptr %i.k, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i8)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83
  %.not.i.i.i9 = icmp eq ptr %i.l, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %.not.i.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6

_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i6, %_ZNK4llvm4Pass11getAnalysisINS_29LazyBranchProbabilityInfoPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i10 = phi ptr [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_29LazyBranchProbabilityInfoPassEEERT_v.exit ], [ %i.k, %.lr.ph.i.i.i6 ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i10, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.p, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %i.q, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.o, ptr %i.r, align 8, !tbaa !36
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm26LazyBlockFrequencyInfoPass23getLazyBFIAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(161) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm29LazyBranchProbabilityInfoPass23getLazyBPIAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(161) %0) #12
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage23addRequiredTransitiveIDERc(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm26LazyBlockFrequencyInfoPass2IDE) #12 ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage23addRequiredTransitiveIDERc(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm19LoopInfoWrapperPass2IDE) #12 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm25initializeLazyBFIPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %class.anon, align 8                ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  tail call void @_ZN4llvm25initializeLazyBPIPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store ptr @_ZL44initializeLazyBlockFrequencyInfoPassPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !11
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !9
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !9
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL44InitializeLazyBlockFrequencyInfoPassPassFlag, ptr noundef nonnull @__once_proxy) #12 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN4llvm40initializeLazyBlockFrequencyInfoPassPassERNS_12PassRegistryE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #13
  unreachable

_ZN4llvm40initializeLazyBlockFrequencyInfoPassPassERNS_12PassRegistryE.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !9
  store ptr null, ptr %i.c, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @_ZN4llvm33initializeLoopInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  ret void
}

declare void @_ZN4llvm25initializeLazyBPIPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

declare void @_ZN4llvm33initializeLoopInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm26LazyBlockFrequencyInfoPassD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4llvm26LazyBlockFrequencyInfoPassE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4llvm18BlockFrequencyInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %i.a) #12
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #12
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm26LazyBlockFrequencyInfoPassD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4llvm26LazyBlockFrequencyInfoPassE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4llvm18BlockFrequencyInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %i.a) #12, !inline_history !84
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(72) %0) #12, !inline_history !84
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #15
  ret void
}

declare { ptr, i64 } @_ZNK4llvm4Pass11getPassNameEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef ptr @_ZNK4llvm12FunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #2

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #2

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN4llvm15callDefaultCtorINS_26LazyBlockFrequencyInfoPassEEEPNS_4PassEv() #0 comdat {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #14 ; 2 uses
  tail call void @_ZN4llvm26LazyBlockFrequencyInfoPassC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #12
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm18BlockFrequencyInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4llvm18BlockFrequencyInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm18BlockFrequencyInfo9calculateERKNS_8FunctionERKNS_21BranchProbabilityInfoERKNS_8LoopInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

declare void @_ZN4llvm21BranchProbabilityInfo9calculateERKNS_8FunctionERKNS_8LoopInfoEPKNS_17TargetLibraryInfoEPNS_13DominatorTreeEPNS_17PostDominatorTreeE(ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @__once_proxy() #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #4 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87, !nonnull !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88, !nonnull !32, !align !89
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #12, !inline_history !85
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage23addRequiredTransitiveIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare void @_ZN4llvm18BlockFrequencyInfo13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind allocsize(0) }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"bool", !4, i64 0}
!13 = !{!"p1 _ZTSN4llvm16AnalysisResolverE", !8, i64 0}
end_hunk_0
