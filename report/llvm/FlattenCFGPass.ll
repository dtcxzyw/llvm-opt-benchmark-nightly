Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FlattenCFGPass?download=true
inline.NumInlined: 232
inline.NumDeleted: 173
begin_hunk_0
%"class.llvm::SmallPtrSet.5" = type { %"class.llvm::SmallPtrSetImpl.base.7", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.7" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.std::vector.45" = type { %"struct.std::_Vector_base.46" }
%"struct.std::_Vector_base.46" = type { %"struct.std::_Vector_base<llvm::WeakVH, std::allocator<llvm::WeakVH>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::WeakVH, std::allocator<llvm::WeakVH>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::WeakVH, std::allocator<llvm::WeakVH>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::WeakVH, std::allocator<llvm::WeakVH>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::WeakVH" = type { %"class.llvm::ValueHandleBase" }
%"class.llvm::ValueHandleBase" = type { %"class.llvm::PointerIntPair", ptr, ptr }
%"class.llvm::PointerIntPair" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }

$_ZN4llvm4Pass16doInitializationERNS_6ModuleE = comdat any

$_ZN4llvm4Pass14doFinalizationERNS_6ModuleE = comdat any

$_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE7reserveEm = comdat any

$_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL38InitializeFlattenCFGLegacyPassPassFlag = internal global %"struct.std::once_flag" zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"Flatten the CFG\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"flattencfg\00", align 1
@_ZN12_GLOBAL__N_120FlattenCFGLegacyPass2IDE = internal global i8 0, align 1
@_ZTVN12_GLOBAL__N_120FlattenCFGLegacyPassE = internal unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr null, ptr @_ZN4llvm4PassD2Ev, ptr @_ZN12_GLOBAL__N_120FlattenCFGLegacyPassD0Ev, ptr @_ZNK4llvm4Pass11getPassNameEv, ptr @_ZN4llvm4Pass16doInitializationERNS_6ModuleE, ptr @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE, ptr @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE, ptr @_ZNK4llvm12FunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE, ptr @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE, ptr @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv, ptr @_ZNK12_GLOBAL__N_120FlattenCFGLegacyPass16getAnalysisUsageERN4llvm13AnalysisUsageE, ptr @_ZN4llvm4Pass13releaseMemoryEv, ptr @_ZN4llvm4Pass18getAsImmutablePassEv, ptr @_ZN4llvm4Pass18getAsPMDataManagerEv, ptr @_ZNK4llvm4Pass14verifyAnalysisEv, ptr @_ZN4llvm4Pass17dumpPassStructureEj, ptr @_ZN12_GLOBAL__N_120FlattenCFGLegacyPass13runOnFunctionERN4llvm8FunctionE, ptr @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE] }, align 8
@_ZN4llvm20AAResultsWrapperPass2IDE = external global i8, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE = external global %"struct.llvm::AnalysisSetKey", align 8
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@_ZN4llvm9AAManager3KeyE = external global %"struct.llvm::AnalysisKey", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm34initializeFlattenCFGLegacyPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %class.anon, align 8                ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store ptr @_ZL38initializeFlattenCFGLegacyPassPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !15
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !13
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !13
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL38InitializeFlattenCFGLegacyPassPassFlag, ptr noundef nonnull @__once_proxy) #12 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #13
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !13
  store ptr null, ptr %i.c, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL38initializeFlattenCFGLegacyPassPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 {
bb.a:
  tail call void @_ZN4llvm34initializeAAResultsWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #14 ; 9 uses
  store ptr @.str, ptr %i.a, align 8, !tbaa !39
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 15, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.1, ptr %i.b, align 8, !tbaa !39
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 10, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN12_GLOBAL__N_120FlattenCFGLegacyPass2IDE, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_120FlattenCFGLegacyPassEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !47
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm20createFlattenCFGPassEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %class.anon, align 8                ; 5 uses
  %1 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #14 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_120FlattenCFGLegacyPass2IDE, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_120FlattenCFGLegacyPassE, i64 16), ptr %i.a, align 8, !tbaa !24
  %i.e = tail call noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() #12, !inline_history !0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store ptr %i.e, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  store ptr @_ZL38initializeFlattenCFGLegacyPassPassOnceRN4llvm12PassRegistryE, ptr %0, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !15
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !13
  %i.h = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.h, align 8, !tbaa !13
  %i.i = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL38InitializeFlattenCFGLegacyPassPassFlag, ptr noundef nonnull @__once_proxy) #12, !inline_history !1 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_120FlattenCFGLegacyPassC2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #13, !inline_history !1
  unreachable

_ZN12_GLOBAL__N_120FlattenCFGLegacyPassC2Ev.exit: ; preds = %bb.a
  store ptr null, ptr %i.g, align 8, !tbaa !13
  store ptr null, ptr %i.h, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14FlattenCFGPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull @_ZN4llvm9AAManager3KeyE, ptr noundef nonnull align 8 dereferenceable(140) %2) #12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = tail call fastcc noundef zeroext i1 @_ZL21iterativelyFlattenCFGRN4llvm8FunctionEPNS_9AAResultsE(ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull %i.b)
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = tail call noundef zeroext i1 @_ZN4llvm23removeUnreachableBlocksERNS_8FunctionEPNS_14DomTreeUpdaterEPNS_16MemorySSAUpdaterE(ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef null, ptr noundef null) #12 ; 0 uses
  %i.e = tail call fastcc noundef zeroext i1 @_ZL21iterativelyFlattenCFGRN4llvm8FunctionEPNS_9AAResultsE(ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull %i.b)
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i8 0, i64 64, i1 false), !alias.scope !55
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %0, align 8, !tbaa !58, !alias.scope !55
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.h, align 8, !tbaa !59, !alias.scope !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !60, !alias.scope !55
  store i8 1, ptr %i.f, align 8, !tbaa !61, !alias.scope !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.k, ptr %i.j, align 8, !tbaa !58, !alias.scope !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.l, align 8, !tbaa !59, !alias.scope !55
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.m, align 8, !tbaa !61, !alias.scope !55
  br label %bb.b

.critedge:                                        ; preds = %bb.a
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !58, !alias.scope !62
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.n, align 8, !tbaa !59, !alias.scope !62
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.p, align 8, !tbaa !61, !alias.scope !62
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.r, ptr %i.q, align 8, !tbaa !58, !alias.scope !62
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.s, align 8, !tbaa !59, !alias.scope !62
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.t, align 4, !tbaa !60, !alias.scope !62
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.u, align 8, !tbaa !61, !alias.scope !62
  store i32 1, ptr %i.o, align 4, !tbaa !60, !alias.scope !62, !noalias !63
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !13, !alias.scope !62, !noalias !63
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL21iterativelyFlattenCFGRN4llvm8FunctionEPNS_9AAResultsE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(140) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::vector.45", align 8    ; 12 uses
  %3 = alloca %"class.llvm::WeakVH", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not4.i.i.i, label %_ZNK4llvm8Function4sizeEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i ], [ 0, %bb.a ]
  %.sroa.02.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  %i.f = add nuw nsw i64 %.06.i.i.i, 1            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.a
  br i1 %.not.i.i.i, label %_ZNK4llvm8Function4sizeEv.exit, label %.lr.ph.i.i.i, !llvm.loop !64

_ZNK4llvm8Function4sizeEv.exit:                   ; preds = %.lr.ph.i.i.i, %bb.a
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %i.f, %.lr.ph.i.i.i ]
  call void @_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.0.lcssa.i.i.i)
  %.sroa.023.028 = load ptr, ptr %i.b, align 8, !tbaa !68 ; 2 uses
  %.not2629 = icmp eq ptr %.sroa.023.028, %i.a
  br i1 %.not2629, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm8Function4sizeEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

.preheader:                                       ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit, %_ZNK4llvm8Function4sizeEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !69     ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !69
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit.i, label %.preheader.split

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm15ValueHandleBaseD2Ev.exit
  %.sroa.023.030 = phi ptr [ %.sroa.023.028, %.lr.ph ], [ %.sroa.023.0, %_ZN4llvm15ValueHandleBaseD2Ev.exit ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.023.030, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i64 4, ptr %3, align 8
  store ptr null, ptr %i.g, align 8, !tbaa !32
  store ptr %i.o, ptr %i.h, align 8, !tbaa !33
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #12
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !35   ; 6 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !36
  %.not.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !33
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm6WeakVHC2ERKS0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.v = inttoptr i64 %i.u to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef %i.v) #12
  br label %_ZN4llvm6WeakVHC2ERKS0_.exit.i.i

_ZN4llvm6WeakVHC2ERKS0_.exit.i.i:                 ; preds = %bb.d, %bb.c
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.x, ptr %i.i, align 8, !tbaa !35
  br label %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN4llvm6WeakVHC2ERKS0_.exit.i.i, %bb.e
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE9push_backEOS1_.exit
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #12
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit

_ZN4llvm15ValueHandleBaseD2Ev.exit:               ; preds = %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE9push_backEOS1_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.023.030, i64 8
  %.sroa.023.0 = load ptr, ptr %i.z, align 8, !tbaa !68 ; 2 uses
  %.not26 = icmp eq ptr %.sroa.023.0, %i.a
  br i1 %.not26, label %.preheader, label %bb.b

.preheader.split:                                 ; preds = %.preheader, %._crit_edge
  %4 = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %.preheader ] ; 3 uses
  %.035 = phi i1 [ %i.ad, %._crit_edge ], [ false, %.preheader ] ; 2 uses
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !69  ; 2 uses
  %.not2731 = icmp eq ptr %4, %i.aa
  br i1 %.not2731, label %.split.us, label %.lr.ph34

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.ab = zext i1 %.035 to i8
  %i.ac = or i8 %.2, %i.ab
  %i.ad = icmp ne i8 %i.ac, 0                     ; 2 uses
  %i.ae = trunc nuw i8 %.2 to i1
  br i1 %i.ae, label %.preheader.split, label %.split.us, !llvm.loop !65

.lr.ph34:                                         ; preds = %.preheader.split, %bb.h
  %.133 = phi i8 [ %.2, %bb.h ], [ 0, %.preheader.split ] ; 2 uses
  %.sroa.019.032 = phi ptr [ %i.ai, %bb.h ], [ %4, %.preheader.split ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.019.032, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph34
  %i.ah = call noundef zeroext i1 @_ZN4llvm10FlattenCFGEPNS_10BasicBlockEPNS_9AAResultsE(ptr noundef nonnull %i.ag, ptr noundef %1) #12
  %spec.select = select i1 %i.ah, i8 1, i8 %.133
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph34
  %.2 = phi i8 [ %.133, %.lr.ph34 ], [ %spec.select, %bb.g ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.019.032, i64 24 ; 2 uses
  %.not27 = icmp eq ptr %i.ai, %i.aa
  br i1 %.not27, label %._crit_edge, label %.lr.ph34

.split.us:                                        ; preds = %._crit_edge, %.preheader.split
  %i.aj = phi i1 [ %.035, %.preheader.split ], [ %i.ad, %._crit_edge ] ; 2 uses
  %5 = phi ptr [ %4, %.preheader.split ], [ %.pre, %._crit_edge ] ; 3 uses
  %.pre37 = load ptr, ptr %i.k, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i16 = icmp eq ptr %5, %.pre37
  br i1 %.not4.i.i.i16, label %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit.i, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.split.us, %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.am, %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i.i ], [ %5, %.split.us ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i17
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i) #12
  br label %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i.i:     ; preds = %bb.i, %.lr.ph.i.i.i17
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.am, %.pre37
  br i1 %.not.i.i.i18, label %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i17, !llvm.loop !2

_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !37
  br label %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit.i

_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit.i:      ; preds = %.preheader, %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split.i, %.split.us
  %.us-phi54 = phi i1 [ %i.aj, %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split.i ], [ %i.aj, %.split.us ], [ false, %.preheader ]
  %i.an = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split.i ], [ %5, %.split.us ], [ %i.l, %.preheader ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #15
  br label %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm6WeakVHESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %.us-phi54
}

declare noundef zeroext i1 @_ZN4llvm23removeUnreachableBlocksERNS_8FunctionEPNS_14DomTreeUpdaterEPNS_16MemorySSAUpdaterE(ptr noundef nonnull align 8 dereferenceable(140), ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm34initializeAAResultsWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_120FlattenCFGLegacyPassEEEPNS_4PassEv() #0 {
bb.a:
  %0 = alloca %class.anon, align 8                ; 5 uses
  %1 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #14 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_120FlattenCFGLegacyPass2IDE, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_120FlattenCFGLegacyPassE, i64 16), ptr %i.a, align 8, !tbaa !24
  %i.e = tail call noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() #12, !inline_history !0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store ptr %i.e, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  store ptr @_ZL38initializeFlattenCFGLegacyPassPassOnceRN4llvm12PassRegistryE, ptr %0, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !15
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !13
  %i.h = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.h, align 8, !tbaa !13
  %i.i = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL38InitializeFlattenCFGLegacyPassPassFlag, ptr noundef nonnull @__once_proxy) #12, !inline_history !1 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_120FlattenCFGLegacyPassC2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #13, !inline_history !1
  unreachable

_ZN12_GLOBAL__N_120FlattenCFGLegacyPassC2Ev.exit: ; preds = %bb.a
  store ptr null, ptr %i.g, align 8, !tbaa !13
  store ptr null, ptr %i.h, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120FlattenCFGLegacyPassD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #15
  ret void
}

declare { ptr, i64 } @_ZNK4llvm4Pass11getPassNameEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

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

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZNK4llvm12FunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120FlattenCFGLegacyPass16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm20AAResultsWrapperPass2IDE) #12 ; 0 uses
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_120FlattenCFGLegacyPass13runOnFunctionERN4llvm8FunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 2 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !76
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !81
  %i.n = tail call fastcc noundef zeroext i1 @_ZL21iterativelyFlattenCFGRN4llvm8FunctionEPNS_9AAResultsE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef %i.l) ; 2 uses
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, %.lr.ph
  %i.o = tail call noundef zeroext i1 @_ZN4llvm23removeUnreachableBlocksERNS_8FunctionEPNS_14DomTreeUpdaterEPNS_16MemorySSAUpdaterE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef null, ptr noundef null) #12 ; 0 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.q = tail call fastcc noundef zeroext i1 @_ZL21iterativelyFlattenCFGRN4llvm8FunctionEPNS_9AAResultsE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef %i.p)
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit
  ret i1 %i.n
}

declare noundef zeroext i1 @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 384307168202282325
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE11_M_allocateEm.exit.i, label %bb.g

_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 24
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #14 ; 4 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
end_hunk_0
