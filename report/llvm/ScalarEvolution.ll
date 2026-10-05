Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ScalarEvolution?download=true
inline.NumInlined: 24488
inline.NumDeleted: 8078
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN4llvm26ScalarEvolutionPrinterPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.x = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.n, i64 noundef %i.o) #29 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !335
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.n, i64 %i.o, i1 false)
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !335
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.o ; 2 uses
  store ptr %i.z, ptr %i.r, align 8, !tbaa !335
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.d, %bb.e, %bb.f
  %i.aa = phi ptr [ %.pre, %bb.d ], [ %i.z, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.x, %bb.d ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !334
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ult i64 %i.af, 3
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ah = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.139, i64 noundef 3) #29 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aa, ptr noundef nonnull align 1 dereferenceable(3) @.str.139, i64 3, i1 false)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !335
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !335
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

_ZN4llvm11raw_ostreamlsEPKc.exit6:                ; preds = %bb.g, %bb.h
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull @_ZN4llvm23ScalarEvolutionAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(140) %2) #29
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %1, align 8, !tbaa !3707, !nonnull !107, !align !223
  tail call void @_ZNK4llvm15ScalarEvolution5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(1152) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.an)
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !108, !alias.scope !3708
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.ao, align 8, !tbaa !286, !alias.scope !3708
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.aq, align 8, !tbaa !105, !alias.scope !3708
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !108, !alias.scope !3708
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.at, align 8, !tbaa !286, !alias.scope !3708
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.au, align 4, !tbaa !285, !alias.scope !3708
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.av, align 8, !tbaa !105, !alias.scope !3708
  store i32 1, ptr %i.ap, align 4, !tbaa !285, !alias.scope !3708, !noalias !3709
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !256, !alias.scope !3708, !noalias !3709
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm40initializeScalarEvolutionWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %class.anon.1478, align 8           ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr @_ZL44initializeScalarEvolutionWrapperPassPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !256
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !3710
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !256
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !256
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL44InitializeScalarEvolutionWrapperPassPassFlag, ptr noundef nonnull @__once_proxy) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #31
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !256
  store ptr null, ptr %i.c, align 8, !tbaa !256
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL44initializeScalarEvolutionWrapperPassPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #3 {
bb.a:
  tail call void @_ZN4llvm36initializeAssumptionCacheTrackerPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #29
  tail call void @_ZN4llvm33initializeLoopInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #29
  tail call void @_ZN4llvm38initializeDominatorTreeWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #29
  tail call void @_ZN4llvm42initializeTargetLibraryInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #29
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #34 ; 9 uses
  store ptr @.str.183, ptr %i.a, align 8, !tbaa !125
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 25, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.184, ptr %i.b, align 8, !tbaa !125
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 16, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN4llvm26ScalarEvolutionWrapperPass2IDE, ptr %i.c, align 8, !tbaa !3712
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !3713
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 1, ptr %i.e, align 1, !tbaa !3714
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorINS_26ScalarEvolutionWrapperPassEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !3715
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm26ScalarEvolutionWrapperPassC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 28), (32, 40)) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !847
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm26ScalarEvolutionWrapperPass2IDE, ptr %i.b, align 8, !tbaa !3716
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.c, align 8, !tbaa !3717
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4llvm26ScalarEvolutionWrapperPassE, i64 16), ptr %0, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.d, align 8, !tbaa !3719
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm26ScalarEvolutionWrapperPass13runOnFunctionERNS_8FunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(1152) ptr @_Znwm(i64 noundef 1152) #34 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !847  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3721 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3721 ; 2 uses
  %.not1114.i.i.i = icmp ne ptr %i.e, %i.g
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !3724
  %.not.i3.i.i = icmp eq ptr %i.h, @_ZN4llvm28TargetLibraryInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_28TargetLibraryInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.i, %i.g
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3724
  %.not.i.i.i = icmp eq ptr %i.j, @_ZN4llvm28TargetLibraryInfoWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_28TargetLibraryInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_28TargetLibraryInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.e, %bb.a ], [ %i.i, %.lr.ph.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm28TargetLibraryInfoWrapperPass6getTLIERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(344) %i.l, ptr noundef nonnull align 8 dereferenceable(140) %1)
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !847  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3721 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3721 ; 2 uses
  %.not1114.i.i.i4 = icmp ne ptr %i.o, %i.q
  tail call void @llvm.assume(i1 %.not1114.i.i.i4)
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !3724
  %.not.i3.i.i5 = icmp eq ptr %i.r, @_ZN4llvm22AssumptionCacheTracker2IDE
  br i1 %.not.i3.i.i5, label %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %_ZNK4llvm4Pass11getAnalysisINS_28TargetLibraryInfoWrapperPassEEERT_v.exit, %.lr.ph.i.i.i6
  %.sroa.08.015.i4.i.i7 = phi ptr [ %i.s, %.lr.ph.i.i.i6 ], [ %i.o, %_ZNK4llvm4Pass11getAnalysisINS_28TargetLibraryInfoWrapperPassEEERT_v.exit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i7, i64 16 ; 4 uses
  %.not11.i.i.i8 = icmp ne ptr %i.s, %i.q
  tail call void @llvm.assume(i1 %.not11.i.i.i8)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3724
  %.not.i.i.i9 = icmp eq ptr %i.t, @_ZN4llvm22AssumptionCacheTracker2IDE
  br i1 %.not.i.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit, label %.lr.ph.i.i.i6

_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit: ; preds = %.lr.ph.i.i.i6, %_ZNK4llvm4Pass11getAnalysisINS_28TargetLibraryInfoWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i10 = phi ptr [ %i.o, %_ZNK4llvm4Pass11getAnalysisINS_28TargetLibraryInfoWrapperPassEEERT_v.exit ], [ %i.s, %.lr.ph.i.i.i6 ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i10, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(153) ptr @_ZN4llvm22AssumptionCacheTracker18getAssumptionCacheERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(140) %1) #29
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !847  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3721 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3721 ; 3 uses
  %.not1114.i.i.i11 = icmp ne ptr %i.y, %i.aa
  tail call void @llvm.assume(i1 %.not1114.i.i.i11)
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !3724 ; 2 uses
  %.not.i3.i.i12 = icmp eq ptr %i.ab, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i12, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit, %.lr.ph.i.i.i13
  %.sroa.08.015.i4.i.i14 = phi ptr [ %i.ac, %.lr.ph.i.i.i13 ], [ %i.y, %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i14, i64 16 ; 4 uses
  %.not11.i.i.i15 = icmp ne ptr %i.ac, %i.aa
  tail call void @llvm.assume(i1 %.not11.i.i.i15)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !3724
  %.not.i.i.i16 = icmp eq ptr %i.ad, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i16, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i13

_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i13, %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i17 = phi ptr [ %i.y, %_ZNK4llvm4Pass11getAnalysisINS_22AssumptionCacheTrackerEEERT_v.exit ], [ %i.ac, %.lr.ph.i.i.i13 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i17, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.not.i3.i.i19 = icmp eq ptr %i.ab, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %.not.i3.i.i19, label %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, %.lr.ph.i.i.i20
  %.sroa.08.015.i4.i.i21 = phi ptr [ %i.ah, %.lr.ph.i.i.i20 ], [ %i.y, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i21, i64 16 ; 4 uses
  %.not11.i.i.i22 = icmp ne ptr %i.ah, %i.aa
  tail call void @llvm.assume(i1 %.not11.i.i.i22)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3724
  %.not.i.i.i23 = icmp eq ptr %i.ai, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %.not.i.i.i23, label %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i20

_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i20, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i24 = phi ptr [ %i.y, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit ], [ %i.ah, %.lr.ph.i.i.i20 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i24, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  tail call void @_ZN4llvm15ScalarEvolutionC1ERNS_8FunctionERNS_17TargetLibraryInfoERNS_15AssumptionCacheERNS_13DominatorTreeERNS_8LoopInfoE(ptr noundef nonnull align 8 dereferenceable(1152) %i.b, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(153) %i.w, ptr noundef nonnull align 8 dereferenceable(204) %i.ag, ptr noundef nonnull align 8 dereferenceable(184) %i.al) #29
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !250 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !250
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm15ScalarEvolutionESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN4llvm15ScalarEvolutionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm15ScalarEvolutionEEclEPS1_.exit.i.i: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit
  tail call void @_ZN4llvm15ScalarEvolutionD1Ev(ptr noundef nonnull align 8 dead_on_return(1152) dereferenceable(1152) %i.am) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 1152) #32
  br label %_ZNSt10unique_ptrIN4llvm15ScalarEvolutionESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN4llvm15ScalarEvolutionESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, %_ZNKSt14default_deleteIN4llvm15ScalarEvolutionEEclEPS1_.exit.i.i
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm28TargetLibraryInfoWrapperPass6getTLIERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::AnalysisManager", align 8 ; 13 uses
  %3 = alloca %"class.llvm::TargetLibraryInfo", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN4llvm15AnalysisManagerINS_8FunctionEJEEC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4llvm21TargetLibraryAnalysis3runERKNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::TargetLibraryInfo") align 8 %3, ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !3733, !range !106, !noundef !107
  %i.e = trunc nuw i8 %i.d to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  br i1 %i.e, label %_ZNSt8optionalIN4llvm17TargetLibraryInfoEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !3733
  br label %_ZNSt8optionalIN4llvm17TargetLibraryInfoEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

_ZNSt8optionalIN4llvm17TargetLibraryInfoEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !850  ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt8optionalIN4llvm17TargetLibraryInfoEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !851
  %i.k = zext i32 %i.g to i64                     ; 2 uses
  %i.l = mul nuw nsw i64 %i.k, 24
  %i.m = add nuw nsw i64 %i.k, 31
  %i.n = lshr i64 %i.m, 3
  %i.o = and i64 %i.n, 1073741820
  %i.p = add nuw nsw i64 %i.o, %i.l
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.j, i64 noundef %i.p, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i: ; preds = %bb.c, %_ZNSt8optionalIN4llvm17TargetLibraryInfoEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3736 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !3737
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3738
  %i.x = zext i32 %i.s to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !271 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ac = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.ab, %.lr.ph.i.i ], [ %i.aq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ad = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3740 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not8.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.aj, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i ], [ %i.ai, %bb.d ] ; 3 uses
  %i.aj = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !3740 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !854 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !98
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #29, !inline_history !3725
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 32) #32
  %.not.i.i.i.i.i2 = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i.i.i.i.i2, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3726

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, %bb.d
  %i.ap = add i32 %.0.i3.i.i, -1
  %i.aq = and i32 %i.ap, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !3727

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.z
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !3728

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.r, align 4, !tbaa !3736 ; 2 uses
  %i.ar = icmp eq i32 %.pr.i, 0
  br i1 %i.ar, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !3737
  %i.at = zext i32 %.pr.i to i64                  ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 5
  %i.av = add nuw nsw i64 %i.at, 31
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741820
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.as, i64 noundef %i.ay, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3743 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit
  %i.bc = load ptr, ptr %2, align 8, !tbaa !3744
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !3745
  %i.bf = zext i32 %i.ba to i64
  %i.bg = add nuw nsw i64 %i.bf, 31
  %i.bh = lshr i64 %i.bg, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i.i.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !271 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.bk = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.bj, %.lr.ph.i.i.i ], [ %i.bv, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.bl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.bm = or disjoint i32 %i.bl, %i.bk
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !3747 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !98
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #29, !inline_history !3729
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i, %bb.f
  %i.bu = add i32 %.0.i3.i.i.i, -1
  %i.bv = and i32 %i.bu, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.f, !llvm.loop !3730

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.bh
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !3731

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.az, align 4, !tbaa !3743 ; 2 uses
  %i.bw = icmp eq i32 %.pr.i.i, 0
  br i1 %i.bw, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit, label %bb.g
end_hunk_0
