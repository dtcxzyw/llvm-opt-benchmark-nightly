Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UniformityAnalysis?download=true
inline.NumInlined: 2295
inline.NumDeleted: 1299
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm25UniformityInfoPrinterPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !149
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

_ZN4llvm11raw_ostreamlsEPKc.exit6:                ; preds = %bb.g, %bb.h
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull @_ZN4llvm22UniformityInfoAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(140) %2) #18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %1, align 8, !tbaa !403, !nonnull !73, !align !108 ; 4 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !205 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ao, null
  br i1 %.not.i7, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !150
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !149 ; 2 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ult i64 %i.av, 59
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull @.str.2, i64 noundef 59) #18 ; 0 uses
  br label %_ZNK4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEE5printERNS_11raw_ostreamE.exit

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %i.as, ptr noundef nonnull align 1 dereferenceable(59) @.str.2, i64 59, i1 false)
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !149
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !149
  br label %_ZNK4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEE5printERNS_11raw_ostreamE.exit

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit6
  tail call void @_ZNK4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEE5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(1584) %i.ao, ptr noundef nonnull align 8 dereferenceable(48) %i.an)
  br label %_ZNK4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEE5printERNS_11raw_ostreamE.exit

_ZNK4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEE5printERNS_11raw_ostreamE.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !95, !alias.scope !404
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.ba, align 8, !tbaa !101, !alias.scope !404
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.bc, align 8, !tbaa !94, !alias.scope !404
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !95, !alias.scope !404
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.bf, align 8, !tbaa !101, !alias.scope !404
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.bg, align 4, !tbaa !96, !alias.scope !404
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.bh, align 8, !tbaa !94, !alias.scope !404
  store i32 1, ptr %i.bb, align 4, !tbaa !96, !alias.scope !404, !noalias !405
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !97, !alias.scope !404, !noalias !405
  ret void
}

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm25UniformityInfoWrapperPassC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 28), (32, 48)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !215
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm25UniformityInfoWrapperPass2IDE, ptr %i.b, align 8, !tbaa !406
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.c, align 8, !tbaa !407
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4llvm25UniformityInfoWrapperPassE, i64 16), ptr %0, align 8, !tbaa !217
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm39initializeUniformityInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %class.anon.301, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr @_ZL43initializeUniformityInfoWrapperPassPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !97
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !408
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !97
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !97
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL43InitializeUniformityInfoWrapperPassPassFlag, ptr noundef nonnull @__once_proxy) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #19
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !97
  store ptr null, ptr %i.c, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL43initializeUniformityInfoWrapperPassPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 {
bb.a:
  tail call void @_ZN4llvm38initializeDominatorTreeWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #18
  tail call void @_ZN4llvm34initializeCycleInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #18
  tail call void @_ZN4llvm44initializeTargetTransformInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #18
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 9 uses
  store ptr @.str.5, ptr %i.a, align 8, !tbaa !409
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 19, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !198
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.6, ptr %i.b, align 8, !tbaa !409
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 10, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !198
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN4llvm25UniformityInfoWrapperPass2IDE, ptr %i.c, align 8, !tbaa !412
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !413
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 1, ptr %i.e, align 1, !tbaa !414
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorINS_25UniformityInfoWrapperPassEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !415
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25UniformityInfoWrapperPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(161) initializes((160, 161)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.a, align 8, !tbaa !425
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm24DominatorTreeWrapperPass2IDE) #18 ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage23addRequiredTransitiveIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm20CycleInfoWrapperPass2IDE) #18 ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm30TargetTransformInfoWrapperPass2IDE) #18 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm25UniformityInfoWrapperPass13runOnFunctionERNS_8FunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::GenericUniformityInfo", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !427  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !427  ; 2 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !430
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm30TargetTransformInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !430
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm30TargetTransformInfoWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm30TargetTransformInfoWrapperPass6getTTIERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(140) %1) #18 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.l, align 8, !tbaa !227
  %i.m = tail call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo19hasBranchDivergenceEPKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %1) #18
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !205  ; 3 uses
  store ptr null, ptr %i.n, align 8, !tbaa !205
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEED2Ev.exit, label %_ZN4llvm36GenericUniformityAnalysisImplDeleterINS_29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEEEEclEPS5_.exit.i.i.i.i.i

_ZN4llvm36GenericUniformityAnalysisImplDeleterINS_29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZN4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1584) dereferenceable(1584) %i.o) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 1584) #21
  br label %_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEED2Ev.exit

bb.c:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !427  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !427  ; 3 uses
  %.not1114.i.i.i8 = icmp ne ptr %i.q, %i.s
  tail call void @llvm.assume(i1 %.not1114.i.i.i8)
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !430  ; 2 uses
  %.not.i3.i.i9 = icmp eq ptr %i.t, @_ZN4llvm20CycleInfoWrapperPass2IDE
  br i1 %.not.i3.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit.thread, label %.lr.ph.i.i.i10

_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit.thread: ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i10:                                   ; preds = %bb.c, %.lr.ph.i.i.i10
  %.sroa.08.015.i4.i.i11 = phi ptr [ %i.u, %.lr.ph.i.i.i10 ], [ %i.q, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i11, i64 16 ; 3 uses
  %.not11.i.i.i12 = icmp ne ptr %i.u, %i.s
  tail call void @llvm.assume(i1 %.not11.i.i.i12)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !430
  %.not.i.i.i13 = icmp eq ptr %i.v, @_ZN4llvm20CycleInfoWrapperPass2IDE
  br i1 %.not.i.i.i13, label %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i10

_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i10
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i11, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %.not.i3.i.i16 = icmp eq ptr %i.t, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i16, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit.thread, %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit
  %6 = phi ptr [ %5, %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit.thread ], [ %i.y, %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17
  %.sroa.08.015.i4.i.i18 = phi ptr [ %i.z, %.lr.ph.i.i.i17 ], [ %i.q, %.lr.ph.i.i.i17.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i18, i64 16 ; 4 uses
  %.not11.i.i.i19 = icmp ne ptr %i.z, %i.s
  tail call void @llvm.assume(i1 %.not11.i.i.i19)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !430
  %.not.i.i.i20 = icmp eq ptr %i.aa, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i20, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i17

_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i17, %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit
  %7 = phi ptr [ %i.y, %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit ], [ %6, %.lr.ph.i.i.i17 ]
  %.sroa.08.015.i.lcssa.i.i21 = phi ptr [ %i.q, %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit ], [ %i.z, %.lr.ph.i.i.i17 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i21, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEC1ERKNS_17DominatorTreeBaseINS_10BasicBlockELb0EEERKNS_16GenericCycleInfoIS3_EEPKNS_19TargetTransformInfoE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(204) %i.ad, ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull %i.k) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !205
  store ptr null, ptr %2, align 8, !tbaa !205
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !205 ; 3 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !205
  %.not.i.i.i.i.i22 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i22, label %_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEED2Ev.exit27, label %_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEaSEOS4_.exit24

_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEaSEOS4_.exit24: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit
  call void @_ZN4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1584) dereferenceable(1584) %i.ag) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 1584) #21
  %.pr = load ptr, ptr %2, align 8, !tbaa !205    ; 3 uses
  %.not.i.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i.i25, label %_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEED2Ev.exit27, label %_ZN4llvm36GenericUniformityAnalysisImplDeleterINS_29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEEEEclEPS5_.exit.i.i26

_ZN4llvm36GenericUniformityAnalysisImplDeleterINS_29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEEEEclEPS5_.exit.i.i26: ; preds = %_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEaSEOS4_.exit24
  call void @_ZN4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1584) dereferenceable(1584) %.pr) #18
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 1584) #21
  br label %_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEED2Ev.exit27

_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEED2Ev.exit27: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, %_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEaSEOS4_.exit24, %_ZN4llvm36GenericUniformityAnalysisImplDeleterINS_29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEEEEclEPS5_.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !205
  call void @_ZN4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEE10initializeEv(ptr noundef nonnull align 8 dereferenceable(1584) %i.ah)
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !205 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 240
  store i8 1, ptr %i.aj, align 8, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 552 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 560 ; 3 uses
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !206
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !206 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEED2Ev.exit27, %_ZN4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEE9pushUsersERKNS_11InstructionE.exit.i.i
  %i.ap = phi ptr [ %i.bc, %_ZN4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEE9pushUsersERKNS_11InstructionE.exit.i.i ], [ %i.an, %_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEED2Ev.exit27 ]
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !105 ; 3 uses
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !102
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !93
  %i.at = add i8 %i.as, -31
  %i.au = icmp ult i8 %i.at, 12
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  call void @_ZN4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEE24analyzeControlDivergenceERKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1584) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.ar)
  br label %_ZN4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEE9pushUsersERKNS_11InstructionE.exit.i.i, !llvm.loop !2

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.08.014.i.i.i.i = load ptr, ptr %i.av, align 8 ; 2 uses
  %.not1215.i.i.i.i = icmp eq ptr %.sroa.08.014.i.i.i.i, null
  br i1 %.not1215.i.i.i.i, label %_ZN4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEE9pushUsersERKNS_11InstructionE.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.g
  %.sroa.08.016.i.i.i.i = phi ptr [ %.sroa.08.0.i.i.i.i, %bb.g ], [ %.sroa.08.014.i.i.i.i, %bb.e ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.016.i.i.i.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !89 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !93
  %i.az = icmp ult i8 %i.ay, 30
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  call void @_ZN4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEE13markDivergentERKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1584) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.ax)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.08.016.i.i.i.i, i64 8
  %.sroa.08.0.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !85 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %.sroa.08.0.i.i.i.i, null
  br i1 %.not12.i.i.i.i, label %_ZN4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEE9pushUsersERKNS_11InstructionE.exit.i.i, label %.lr.ph.i.i.i.i

_ZN4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEE9pushUsersERKNS_11InstructionE.exit.i.i: ; preds = %bb.g, %bb.e, %bb.d
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !206
  %i.bc = load ptr, ptr %i.al, align 8, !tbaa !206 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEED2Ev.exit, label %.lr.ph.i.i

_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEED2Ev.exit: ; preds = %_ZN4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEE9pushUsersERKNS_11InstructionE.exit.i.i, %_ZN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEED2Ev.exit27, %bb.b, %_ZN4llvm36GenericUniformityAnalysisImplDeleterINS_29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEEEEclEPS5_.exit.i.i.i.i.i
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm30TargetTransformInfoWrapperPass6getTTIERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25UniformityInfoWrapperPass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 29
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.3, i64 noundef 29) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.d, ptr noundef nonnull align 1 dereferenceable(29) @.str.3, i64 29, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 29
  store ptr %i.k, ptr %i.c, align 8, !tbaa !149
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %1, %bb.c ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !227
  %i.n = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #18 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !150
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149  ; 3 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ugt i64 %i.p, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.o, i64 noundef %i.p) #18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !149
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.o, i64 %i.p, i1 false)
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !149
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.p ; 2 uses
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !149
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.d, %bb.e, %bb.f
  %i.ab = phi ptr [ %.pre, %bb.d ], [ %i.aa, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.y, %bb.d ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !150
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, 3
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.4, i64 noundef 3) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ab, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 3, i1 false)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !149
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 3
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !149
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

_ZN4llvm11raw_ostreamlsEPKc.exit5:                ; preds = %bb.g, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !205 ; 2 uses
  %.not.i6 = icmp eq ptr %i.an, null
  br i1 %.not.i6, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !149 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp ult i64 %i.as, 59
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.2, i64 noundef 59) #18 ; 0 uses
  br label %_ZNK4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEE5printERNS_11raw_ostreamE.exit

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %i.ap, ptr noundef nonnull align 1 dereferenceable(59) @.str.2, i64 59, i1 false)
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 59
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !149
  br label %_ZNK4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEE5printERNS_11raw_ostreamE.exit

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5
  tail call void @_ZNK4llvm29GenericUniformityAnalysisImplINS_17GenericSSAContextINS_8FunctionEEEE5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(1584) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %_ZNK4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEE5printERNS_11raw_ostreamE.exit

_ZNK4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEE5printERNS_11raw_ostreamE.exit: ; preds = %bb.j, %bb.k, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
