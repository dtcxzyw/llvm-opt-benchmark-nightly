Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LiveIntervals?download=true
inline.NumInlined: 3391
inline.NumDeleted: 1721
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm13LiveIntervals5printERNS_11raw_ostreamE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.as, ptr noundef nonnull align 1 dereferenceable(9) @.str.5, i64 9, i1 false)
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 9
  store ptr %i.az, ptr %i.c, align 8, !tbaa !92
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

_ZN4llvm11raw_ostreamlsEPKc.exit40:               ; preds = %bb.m, %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !82 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !83 ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %.idx = shl nuw nsw i64 %i.be, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx
  %.not3360 = icmp eq i32 %i.bd, 0
  br i1 %.not3360, label %._crit_edge63, label %.lr.ph62

bb.o:                                             ; preds = %.lr.ph58, %_ZN4llvm11raw_ostreamlsEc.exit45
  %.03056 = phi i32 [ 0, %.lr.ph58 ], [ %i.br, %_ZN4llvm11raw_ostreamlsEc.exit45 ] ; 2 uses
  %i.bg = and i32 %.03056, 2147483647             ; 2 uses
  %i.bh = load i32, ptr %i.w, align 8, !tbaa !83
  %i.bi = icmp ugt i32 %i.bh, %i.bg
  br i1 %i.bi, label %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit, label %_ZN4llvm11raw_ostreamlsEc.exit45

_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit: ; preds = %bb.o
  %i.bj = zext nneg i32 %i.bg to i64
  %i.bk = load ptr, ptr %i.x, align 8, !tbaa !82
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !108 ; 2 uses
  %.not52 = icmp eq ptr %i.bm, null
  br i1 %.not52, label %_ZN4llvm11raw_ostreamlsEc.exit45, label %_ZNK4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit

_ZNK4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit: ; preds = %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit
  call void @_ZNK4llvm12LiveInterval5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(120) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !92  ; 3 uses
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !91
  %.not.i43 = icmp ult ptr %i.bn, %i.bo
  br i1 %.not.i43, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit
  %i.bp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 10) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit45

bb.q:                                             ; preds = %_ZNK4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !92
  store i8 10, ptr %i.bn, align 1, !tbaa !106
  br label %_ZN4llvm11raw_ostreamlsEc.exit45

_ZN4llvm11raw_ostreamlsEc.exit45:                 ; preds = %bb.o, %bb.q, %bb.p, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit
  %i.br = add nuw i32 %.03056, 1                  ; 2 uses
  %.not32 = icmp eq i32 %i.br, %i.v
  br i1 %.not32, label %._crit_edge59, label %bb.o, !llvm.loop !459

._crit_edge63:                                    ; preds = %_ZN4llvm11raw_ostreamlsEc.exit51, %_ZN4llvm11raw_ostreamlsEPKc.exit40
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !92  ; 3 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !91
  %.not.i46 = icmp ult ptr %i.bs, %i.bt
  br i1 %.not.i46, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge63
  %i.bu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 10) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit48

bb.s:                                             ; preds = %._crit_edge63
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store ptr %i.bv, ptr %i.c, align 8, !tbaa !92
  store i8 10, ptr %i.bs, align 1, !tbaa !106
  br label %_ZN4llvm11raw_ostreamlsEc.exit48

_ZN4llvm11raw_ostreamlsEc.exit48:                 ; preds = %bb.r, %bb.s
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !92  ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = icmp ult i64 %i.ca, 36
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit48
  %i.cc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.6, i64 noundef 36) #19 ; 0 uses
  br label %_ZNK4llvm13LiveIntervals11printInstrsERNS_11raw_ostreamE.exit

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.bx, ptr noundef nonnull align 1 dereferenceable(36) @.str.6, i64 36, i1 false)
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  store ptr %i.ce, ptr %i.c, align 8, !tbaa !92
  br label %_ZNK4llvm13LiveIntervals11printInstrsERNS_11raw_ostreamE.exit

_ZNK4llvm13LiveIntervals11printInstrsERNS_11raw_ostreamE.exit: ; preds = %bb.t, %bb.u
  %i.cf = load ptr, ptr %0, align 8, !tbaa !109
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !80
  call void @_ZNK4llvm15MachineFunction5printERNS_11raw_ostreamEPKNS_11SlotIndexesE(ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.ch) #19
  ret void

.lr.ph62:                                         ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit40, %_ZN4llvm11raw_ostreamlsEc.exit51
  %.02961 = phi ptr [ %i.cm, %_ZN4llvm11raw_ostreamlsEc.exit51 ], [ %i.bb, %_ZN4llvm11raw_ostreamlsEPKc.exit40 ] ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %.02961, align 8, !tbaa !106
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !92  ; 3 uses
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !91
  %.not.i49 = icmp ult ptr %i.ci, %i.cj
  br i1 %.not.i49, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph62
  %i.ck = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 32) #19
  br label %_ZN4llvm11raw_ostreamlsEc.exit51

bb.w:                                             ; preds = %.lr.ph62
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store ptr %i.cl, ptr %i.c, align 8, !tbaa !92
  store i8 32, ptr %i.ci, align 1, !tbaa !106
  br label %_ZN4llvm11raw_ostreamlsEc.exit51

_ZN4llvm11raw_ostreamlsEc.exit51:                 ; preds = %bb.v, %bb.w
  %.0.i50 = phi ptr [ %i.ck, %bb.v ], [ %1, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.01.0.copyload, ptr %2, align 8
  call void @_ZNK4llvm9SlotIndex5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %.0.i50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cm = getelementptr inbounds nuw i8, ptr %.02961, i64 8 ; 2 uses
  %.not33 = icmp eq ptr %i.cm, %i.bf
  br i1 %.not33, label %._crit_edge63, label %.lr.ph62
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm38initializeLiveIntervalsWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %class.anon.524, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr @_ZL42initializeLiveIntervalsWrapperPassPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !99
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !462
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !99
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !99
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL42InitializeLiveIntervalsWrapperPassPassFlag, ptr noundef nonnull @__once_proxy) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #20
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !99
  store ptr null, ptr %i.c, align 8, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL42initializeLiveIntervalsWrapperPassPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 {
bb.a:
  tail call void @_ZN4llvm45initializeMachineDominatorTreeWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #19
  tail call void @_ZN4llvm36initializeSlotIndexesWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #19
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 9 uses
  store ptr @.str.8, ptr %i.a, align 8, !tbaa !111
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 22, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.9, ptr %i.b, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 13, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN4llvm24LiveIntervalsWrapperPass2IDE, ptr %i.c, align 8, !tbaa !465
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !466
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 1, ptr %i.e, align 1, !tbaa !467
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorINS_24LiveIntervalsWrapperPassEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !468
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm24LiveIntervalsWrapperPass20runOnMachineFunctionERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !470  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !470  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !473  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm22SlotIndexesWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_22SlotIndexesWrapperPassEEERT_v.exit.thread, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_22SlotIndexesWrapperPassEEERT_v.exit.thread: ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %4, ptr %5, align 8, !tbaa !477
  br label %.lr.ph.i.i.i4.preheader

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 3 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !473
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm22SlotIndexesWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_22SlotIndexesWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_22SlotIndexesWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.k, ptr %i.l, align 8, !tbaa !477
  %.not.i3.i.i3 = icmp eq ptr %i.f, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i3, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i4.preheader

.lr.ph.i.i.i4.preheader:                          ; preds = %_ZNK4llvm4Pass11getAnalysisINS_22SlotIndexesWrapperPassEEERT_v.exit.thread, %_ZNK4llvm4Pass11getAnalysisINS_22SlotIndexesWrapperPassEEERT_v.exit
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4.preheader, %.lr.ph.i.i.i4
  %.sroa.08.015.i4.i.i5 = phi ptr [ %i.m, %.lr.ph.i.i.i4 ], [ %i.c, %.lr.ph.i.i.i4.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i5, i64 16 ; 4 uses
  %.not11.i.i.i6 = icmp ne ptr %i.m, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i6)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !473
  %.not.i.i.i7 = icmp eq ptr %i.n, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i7, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i4

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i4, %_ZNK4llvm4Pass11getAnalysisINS_22SlotIndexesWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i8 = phi ptr [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_22SlotIndexesWrapperPassEEERT_v.exit ], [ %i.m, %.lr.ph.i.i.i4 ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i8, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.r, ptr %i.s, align 8, !tbaa !478
  tail call void @_ZN4llvm13LiveIntervals7analyzeERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(424) %i.o, ptr noundef nonnull align 8 dereferenceable(1065) %1)
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm13LiveIntervals7analyzeERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(424) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !109
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !573
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !574, !nonnull !85, !align !86 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(344) %i.e) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !103
  %i.k = load ptr, ptr %0, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !574, !nonnull !85, !align !86 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !129
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(344) %i.m) #19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !575
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !130
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN4llvm16LiveIntervalCalcESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.u = tail call noalias noundef nonnull dereferenceable(704) ptr @_Znwm(i64 noundef 704) #21, !noalias !576 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %i.u, i8 0, i64 704, i1 false), !noalias !576
  store ptr %i.w, ptr %i.v, align 8, !tbaa !82, !noalias !576
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  store i32 6, ptr %i.x, align 4, !tbaa !84, !noalias !576
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !noalias !576
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !82, !noalias !576
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !noalias !576
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 176
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !82, !noalias !576
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 188
  store i32 16, ptr %i.ae, align 4, !tbaa !84, !noalias !576
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !130 ; 9 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !130
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm16LiveIntervalCalcESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN4llvm11SmallVectorINS_13LiveRangeCalc11LiveInBlockELj16EED2Ev.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.ah) #19
  br label %_ZN4llvm11SmallVectorINS_13LiveRangeCalc11LiveInBlockELj16EED2Ev.exit.i.i.i.i.i.i

_ZN4llvm11SmallVectorINS_13LiveRangeCalc11LiveInBlockELj16EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !82 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN4llvm10IndexedMapISt4pairIPNS_6VNInfoEPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEEENS_17MBB2NumberFunctorEED2Ev.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_13LiveRangeCalc11LiveInBlockELj16EED2Ev.exit.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.al) #19
  br label %_ZN4llvm10IndexedMapISt4pairIPNS_6VNInfoEPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEEENS_17MBB2NumberFunctorEED2Ev.exit.i.i.i.i.i.i

_ZN4llvm10IndexedMapISt4pairIPNS_6VNInfoEPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEEENS_17MBB2NumberFunctorEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZN4llvm11SmallVectorINS_13LiveRangeCalc11LiveInBlockELj16EED2Ev.exit.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  tail call void @_ZN4llvm8DenseMapIPNS_9LiveRangeESt4pairINS_9BitVectorES4_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ao) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !82 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNKSt14default_deleteIN4llvm16LiveIntervalCalcEEclEPS1_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10IndexedMapISt4pairIPNS_6VNInfoEPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEEENS_17MBB2NumberFunctorEED2Ev.exit.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.aq) #19
  br label %_ZNKSt14default_deleteIN4llvm16LiveIntervalCalcEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm16LiveIntervalCalcEEclEPS1_.exit.i.i.i.i: ; preds = %bb.f, %_ZN4llvm10IndexedMapISt4pairIPNS_6VNInfoEPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEEENS_17MBB2NumberFunctorEED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 704) #22
  br label %_ZNSt10unique_ptrIN4llvm16LiveIntervalCalcESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm16LiveIntervalCalcESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN4llvm16LiveIntervalCalcEEclEPS1_.exit.i.i.i.i, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !83 ; 5 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !131
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !83 ; 4 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp eq i32 %i.aw, %i.bb
  br i1 %i.bd, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4llvm16LiveIntervalCalcESt14default_deleteIS1_EED2Ev.exit
  %i.be = icmp ult i32 %i.aw, %i.bb
  br i1 %i.be, label %.sink.split.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = sub nuw nsw i64 %i.ax, %i.bc            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !84
  %.not.i.i.i.i.i = icmp ugt i32 %i.aw, %i.bh
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i, !prof !132

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.at, ptr noundef nonnull %i.ay, i64 noundef %i.ax, i64 noundef 8) #19
  %.pre.i.i.i = load i32, ptr %i.ba, align 8, !tbaa !83 ; 2 uses
  %.pre.i.i = zext i32 %.pre.i.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.pre-phi.i.i = phi i64 [ %i.bc, %bb.h ], [ %.pre.i.i, %bb.i ]
  %i.bi = phi i32 [ %i.bb, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !82
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.pre-phi.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bf, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bk, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i ] ; 2 uses
  store ptr %i.az, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !108
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPNS_12LiveIntervalEE6appendEmS2_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm15SmallVectorImplIPNS_12LiveIntervalEE6appendEmS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bn = trunc nuw i64 %i.bf to i32
  %i.bo = add i32 %i.bi, %i.bn
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.g, %_ZN4llvm15SmallVectorImplIPNS_12LiveIntervalEE6appendEmS2_.exit.i.i
  %.sink.i.i = phi i32 [ %i.bo, %_ZN4llvm15SmallVectorImplIPNS_12LiveIntervalEE6appendEmS2_.exit.i.i ], [ %i.aw, %bb.g ]
  store i32 %.sink.i.i, ptr %i.ba, align 8, !tbaa !83
  br label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit

_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit: ; preds = %_ZNSt10unique_ptrIN4llvm16LiveIntervalCalcESt14default_deleteIS1_EED2Ev.exit, %.sink.split.i.i
  tail call void @_ZN4llvm13LiveIntervals15computeVirtRegsEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  tail call void @_ZN4llvm13LiveIntervals15computeRegMasksEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  tail call void @_ZN4llvm13LiveIntervals21computeLiveInRegUnitsEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !129
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #19, !inline_history !577 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !97, !range !133, !noundef !85
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
end_hunk_0
