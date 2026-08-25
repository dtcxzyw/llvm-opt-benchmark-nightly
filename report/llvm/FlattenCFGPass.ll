Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FlattenCFGPass?download=true
inline.NumInlined: 232
inline.NumDeleted: 173
begin_hunk_0_@_ZL21iterativelyFlattenCFGRN4llvm8FunctionEPNS_9AAResultsE:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i17
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i) #12
  br label %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i.i:     ; preds = %bb.i, %.lr.ph.i.i.i17
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.an, %.pre37
  br i1 %.not.i.i.i18, label %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i17, !llvm.loop !69

_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit.i

_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit.i:      ; preds = %.preheader, %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split.i, %.split.us
  %.us-phi54 = phi i1 [ %i.ak, %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split.i ], [ %i.ak, %.split.us ], [ false, %.preheader ]
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split.i ], [ %.pre, %.split.us ], [ %i.l, %.preheader ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !65
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #15
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
  store ptr null, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_120FlattenCFGLegacyPass2IDE, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_120FlattenCFGLegacyPassE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.e = tail call noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() #12, !inline_history !31
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store ptr %i.e, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  store ptr @_ZL38initializeFlattenCFGLegacyPassPassOnceRN4llvm12PassRegistryE, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !10
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !8
  %i.h = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.h, align 8, !tbaa !8
  %i.i = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL38InitializeFlattenCFGLegacyPassPassFlag, ptr noundef nonnull @__once_proxy) #12, !inline_history !32 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_120FlattenCFGLegacyPassC2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #13, !inline_history !32
  unreachable

_ZN12_GLOBAL__N_120FlattenCFGLegacyPassC2Ev.exit: ; preds = %bb.a
  store ptr null, ptr %i.g, align 8, !tbaa !8
  store ptr null, ptr %i.h, align 8, !tbaa !8
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !72
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !77
  %i.n = tail call fastcc noundef zeroext i1 @_ZL21iterativelyFlattenCFGRN4llvm8FunctionEPNS_9AAResultsE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef %i.l) ; 2 uses
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, %.lr.ph
  %i.o = tail call noundef zeroext i1 @_ZN4llvm23removeUnreachableBlocksERNS_8FunctionEPNS_14DomTreeUpdaterEPNS_16MemorySSAUpdaterE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef null, ptr noundef null) #12 ; 0 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.q = tail call fastcc noundef zeroext i1 @_ZL21iterativelyFlattenCFGRN4llvm8FunctionEPNS_9AAResultsE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef %i.p)
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !80

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.d = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE11_M_allocateEm.exit.i, label %bb.g

_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 24
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #14 ; 4 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE11_M_allocateEm.exit.i ] ; 5 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE11_M_allocateEm.exit.i ] ; 3 uses
  store i64 4, ptr %.011.i.i.i.i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62   ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.0810.i.i.i.i.i, align 8
  %i.t = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.u = inttoptr i64 %i.t to ptr
  tail call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i.i, ptr noundef %i.u) #12
  br label %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !81

_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit: ; preds = %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE11_M_allocateEm.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !68    ; 3 uses
  %.pre8 = load ptr, ptr %i.j, align 8, !tbaa !63 ; 2 uses
  %.not4.i.i = icmp eq ptr %.pre, %.pre8
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i ], [ %.pre, %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i) #12
  br label %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i:       ; preds = %bb.e, %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.z, %.pre8
  br i1 %.not.i.i7, label %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !69

_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit

_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit:        ; preds = %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split, %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit
  %2 = phi ptr [ %.pr, %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exitthread-pre-split ], [ %.pre, %_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %2 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef %i.ad) #15
  br label %_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %1
  store ptr %i.af, ptr %i.b, align 8, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZN4llvm10FlattenCFGEPNS_10BasicBlockEPNS_9AAResultsE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

declare void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm6WeakVHESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !68     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvm6WeakVHESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
  unreachable

_ZNKSt6vectorIN4llvm6WeakVHESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #14 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  store i64 4, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62   ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !62
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZN4llvm6WeakVHC2ERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvm6WeakVHESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.v = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.w = inttoptr i64 %i.v to ptr
  tail call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.w) #12
  br label %_ZN4llvm6WeakVHC2ERKS0_.exit

_ZN4llvm6WeakVHC2ERKS0_.exit:                     ; preds = %_ZNKSt6vectorIN4llvm6WeakVHESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm6WeakVHC2ERKS0_.exit, %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZN4llvm6WeakVHC2ERKS0_.exit ] ; 5 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZN4llvm6WeakVHC2ERKS0_.exit ] ; 3 uses
  store i64 4, ptr %.011.i.i.i.i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62  ; 2 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.0810.i.i.i.i.i, align 8
  %i.ab = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.ac = inttoptr i64 %i.ab to ptr
  tail call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i.i, ptr noundef %i.ac) #12
  br label %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !81

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZN4llvm6WeakVHC2ERKS0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZN4llvm6WeakVHC2ERKS0_.exit ], [ %i.ae, %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit27, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i24
  %.011.i.i.i.i.i20 = phi ptr [ %i.an, %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i24 ], [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 5 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.am, %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i24 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  store i64 4, ptr %.011.i.i.i.i.i20, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i22, label %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i24, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i23 = load i64, ptr %.0810.i.i.i.i.i21, align 8
  %i.ak = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i23, -8
  %i.al = inttoptr i64 %i.ak to ptr
  tail call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i.i20, ptr noundef %i.al) #12
  br label %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i24

_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i24: ; preds = %bb.e, %.lr.ph.i.i.i.i.i19
  %i.am = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 24 ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i.i.i25, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit27, label %.lr.ph.i.i.i.i.i19, !llvm.loop !81

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit27: ; preds = %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i24, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i26 = phi ptr [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.an, %_ZSt10_ConstructIN4llvm6WeakVHEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i24 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit27, %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit27 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i) #12
  br label %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i:       ; preds = %bb.f, %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.aq, %i.b
  br i1 %.not.i.i28, label %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !69

_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit:        ; preds = %_ZSt8_DestroyIN4llvm6WeakVHEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm6WeakVHES2_SaIS1_EET0_T_S5_S4_RT1_.exit27
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.au) #15
  br label %_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4llvm6WeakVHESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN4llvm6WeakVHEEvT_S3_.exit, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !68
  store ptr %.0.lcssa.i.i.i.i.i26, ptr %i.a, align 8, !tbaa !63
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !65
  ret void
}

declare void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @__once_proxy() #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #5 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
end_hunk_0
