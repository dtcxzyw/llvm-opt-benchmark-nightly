Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVISelDAGToDAG?download=true
inline.NumInlined: 4777
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm17RISCVDAGToDAGISel18PostprocessISelDAGEv:bb.a
  store ptr %i.x, ptr %i.y, align 8, !tbaa !616
  br label %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit

_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit:       ; preds = %bb.a, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.v, ptr %i.u, align 8, !tbaa !616
  store ptr %i.r, ptr %i.v, align 8, !tbaa !447
  store i16 1, ptr %i.z, align 8, !tbaa !617
  store ptr %i.r, ptr %i.i, align 8, !tbaa !482
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !484 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 392 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 400
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !581
  %.not1415 = icmp eq ptr %i.ab, %i.ad
  br i1 %.not1415, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit, %bb.e
  %i.ae = phi ptr [ %i.as, %bb.e ], [ %i.aa, %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit ] ; 2 uses
  %.017 = phi i8 [ %.1, %bb.e ], [ 0, %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit ] ; 3 uses
  %.sroa.011.016 = phi ptr [ %i.af, %bb.e ], [ %i.ab, %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit ]
  %i.af = load ptr, ptr %.sroa.011.016, align 8, !tbaa !582 ; 5 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !467
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.e, label %bb.c, !llvm.loop !618

bb.c:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !490
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e, !llvm.loop !618

bb.d:                                             ; preds = %bb.c
  %i.an = call noundef zeroext i1 @_ZN4llvm17RISCVDAGToDAGISel15doPeepholeSExtWEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %i.ag)
  %i.ao = call noundef zeroext i1 @_ZN4llvm17RISCVDAGToDAGISel19doPeepholeMaskedRVVEPNS_13MachineSDNodeE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %i.ag)
  %i.ap = or i1 %i.an, %i.ao
  %i.aq = zext i1 %i.ap to i8
  %i.ar = or i8 %.017, %i.aq
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !484
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.c, %bb.d
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.ae, %bb.c ], [ %i.ae, %.lr.ph ] ; 5 uses
  %.1 = phi i8 [ %i.ar, %bb.d ], [ %.017, %bb.c ], [ %.017, %.lr.ph ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 400
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !581
  %.not14 = icmp eq ptr %i.af, %i.au
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e
  %.sroa.0.0.copyload.pre = load ptr, ptr %i.r, align 8, !tbaa !486 ; 2 uses
  %.sroa.2.0.copyload.pre = load i32, ptr %i.s, align 8, !tbaa !485 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.pre, null
  br i1 %.not.i, label %.thread.i, label %._crit_edge.thread

.thread.i:                                        ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 376
  store ptr null, ptr %i.av, align 8, !tbaa !486
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.as, i64 384
  store i32 %.sroa.2.0.copyload.pre, ptr %.sroa.5.0..sroa_idx4.i, align 8, !tbaa !485
  br label %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit

._crit_edge.thread:                               ; preds = %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit, %._crit_edge
  %.lcssa33 = phi ptr [ %i.as, %._crit_edge ], [ %i.aa, %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit ] ; 4 uses
  %.0.lcssa32 = phi i8 [ %.1, %._crit_edge ], [ 0, %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit ]
  %.sroa.0.0.copyload30 = phi ptr [ %.sroa.0.0.copyload.pre, %._crit_edge ], [ %.sroa.07.0.copyload, %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit ] ; 2 uses
  %.sroa.2.0.copyload29 = phi i32 [ %.sroa.2.0.copyload.pre, %._crit_edge ], [ %.sroa.28.0.copyload, %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit ]
  call void @_ZN4llvm14checkForCyclesEPKNS_6SDNodeEPKNS_12SelectionDAGEb(ptr noundef nonnull %.sroa.0.0.copyload30, ptr noundef nonnull align 8 dereferenceable(920) %.lcssa33, i1 noundef zeroext false) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %.lcssa33, i64 376
  store ptr %.sroa.0.0.copyload30, ptr %i.aw, align 8, !tbaa !486
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa33, i64 384
  store i32 %.sroa.2.0.copyload29, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !485
  call void @_ZN4llvm14checkForCyclesEPKNS_12SelectionDAGEb(ptr noundef nonnull align 8 dereferenceable(920) %.lcssa33, i1 noundef zeroext false) #26
  br label %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit

_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit: ; preds = %.thread.i, %._crit_edge.thread
  %.0.lcssa31 = phi i8 [ %.1, %.thread.i ], [ %.0.lcssa32, %._crit_edge.thread ]
  %i.ax = call noundef zeroext i1 @_ZN4llvm17RISCVDAGToDAGISel23doPeepholeNoRegPassThruEv(ptr noundef nonnull align 8 dereferenceable(960) %0)
  %i.ay = zext i1 %i.ax to i8
  %i.az = or i8 %.0.lcssa31, %i.ay
  %.not = icmp eq i8 %i.az, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !484
  call void @_ZN4llvm12SelectionDAG15RemoveDeadNodesEv(ptr noundef nonnull align 8 dereferenceable(920) %i.ba) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit
  call void @_ZN4llvm12HandleSDNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm17RISCVDAGToDAGISel15doPeepholeSExtWEPNS_6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !490
  %.not = icmp eq i32 %i.b, -13729
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !482  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.02.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !486
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !485
  %i.f = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.02.0.copyload, i32 %.sroa.23.0.copyload) #26
  br i1 %i.f, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !482  ; 2 uses
  %.sroa.020.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !486 ; 6 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !485
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !490  ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  switch i32 %i.i, label %bb.m [
    i32 -16023, label %bb.k
    i32 -16024, label %bb.k
    i32 -16020, label %bb.k
    i32 -16021, label %bb.k
    i32 -15144, label %bb.k
    i32 -13730, label %bb.k
    i32 -13729, label %bb.k
    i32 -15949, label %bb.k
    i32 -15043, label %bb.k
    i32 -15887, label %bb.k
    i32 -13726, label %.thread
    i32 -13728, label %bb.e
    i32 -15947, label %bb.f
    i32 -15020, label %bb.g
    i32 -15886, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  br label %.thread

bb.f:                                             ; preds = %bb.d
  br label %.thread

bb.g:                                             ; preds = %bb.d
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.g, %bb.f, %bb.e
  %.014.ph = phi i32 [ 13729, %bb.d ], [ 15042, %bb.g ], [ 15948, %bb.f ], [ 13728, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !482  ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.017.0.copyload31 = load ptr, ptr %i.m, align 8, !tbaa !486
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load i64, ptr %.sroa.6.0..sroa_idx32, align 8
  br label %.critedge

bb.h:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !482  ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.017.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !486 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.017.0.copyload, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !452  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !463  ; 3 uses
  %i.x = icmp ult i32 %i.w, 65
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr %i.u, align 8, !tbaa !465
  %i.z = icmp eq i32 %i.w, 0
  %i.aa = sub nuw nsw i32 64, %i.w
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = shl i64 %i.y, %i.ab
  %i.ad = ashr exact i64 %i.ac, %i.ab
  br i1 %i.z, label %.critedge, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !465
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !466
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi i64 [ %i.ad, %bb.i ], [ %i.af, %bb.j ]
  %i.ag = icmp ult i64 %.0.i.i.i, 32
  br i1 %i.ag, label %.critedge, label %bb.m

.critedge:                                        ; preds = %.thread, %bb.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.ah = phi i64 [ %i.n, %.thread ], [ %i.r, %bb.i ], [ %i.r, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ]
  %.sroa.017.0.copyload34 = phi ptr [ %.sroa.017.0.copyload31, %.thread ], [ %.sroa.017.0.copyload, %bb.i ], [ %.sroa.017.0.copyload, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ]
  %.01433 = phi i32 [ %.014.ph, %.thread ], [ 15886, %bb.i ], [ 15886, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !484
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !502
  store i64 %i.al, ptr %3, align 8, !tbaa !502
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !503
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !504
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !506 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.aq, align 8, !tbaa !477
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !479
  store ptr %.sroa.017.0.copyload34, ptr %4, align 8, !tbaa !486
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ah, ptr %.sroa.6.0..sroa_idx19, align 8
  %i.ar = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.aj, i32 noundef %.01433, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %2, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !484
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.as, ptr noundef nonnull %1, ptr noundef %i.ar) #26
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.ar) #26
  br label %bb.m

bb.k:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !506
  %i.av = zext i32 %.sroa.11.0.copyload to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.aw, align 8, !tbaa !477
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !479
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 7
  %i.ax = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.ax, i1 false
  br i1 %.not4.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !484
  tail call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.az, ptr noundef nonnull %1, ptr noundef nonnull %.sroa.020.0.copyload) #26
  tail call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef nonnull %.sroa.020.0.copyload) #26
  br label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.d, %bb.l, %bb.c, %.critedge, %bb.k, %bb.a, %bb.b
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %.critedge ], [ true, %bb.l ], [ false, %bb.d ], [ false, %bb.k ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm17RISCVDAGToDAGISel19doPeepholeMaskedRVVEPNS_13MachineSDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.289", align 8 ; 10 uses
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %4 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !490
  %i.c = xor i32 %i.b, -1
  %i.d = tail call noundef ptr @_ZN4llvm5RISCV19getMaskedPseudoInfoEj(i32 noundef %i.c) #26 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i8, ptr %i.e, align 2, !tbaa !619   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !482  ; 2 uses
  %i.i = zext i8 %i.f to i64
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.i
  %.sroa.026.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !486
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.026.0.copyload, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !490
  %i.m = add i32 %i.l, 8720
  %i.n = icmp ult i32 %i.m, 7
  br i1 %i.n, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !621  ; 2 uses
  %i.q = zext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !622
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !623  ; 2 uses
  %i.v = zext i16 %i.p to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.z = load i8, ptr %i.y, align 2, !tbaa !624   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !626
  %i.ac = zext i8 %i.z to i16
  %i.ad = icmp ugt i16 %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK4llvm11MCInstrDesc20getOperandConstraintEjNS_4MCOI17OperandConstraintE.exit.i, label %_ZN4llvm7RISCVIIL24isFirstDefTiedToFirstUseERKNS_11MCInstrDescE.exit

_ZNK4llvm11MCInstrDesc20getOperandConstraintEjNS_4MCOI17OperandConstraintE.exit.i: ; preds = %bb.c
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !627
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !628
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [6 x i8], ptr %i.ag, i64 %i.aj
  %i.al = zext i8 %i.z to i64
  %i.am = getelementptr inbounds nuw [6 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !629
  %i.ap = and i16 %i.ao, 241
  %i.aq = icmp ne i16 %i.ap, 1
  br label %_ZN4llvm7RISCVIIL24isFirstDefTiedToFirstUseERKNS_11MCInstrDescE.exit

_ZN4llvm7RISCVIIL24isFirstDefTiedToFirstUseERKNS_11MCInstrDescE.exit: ; preds = %bb.c, %_ZNK4llvm11MCInstrDesc20getOperandConstraintEjNS_4MCOI17OperandConstraintE.exit.i
  %not. = phi i1 [ true, %bb.c ], [ %i.aq, %_ZNK4llvm11MCInstrDesc20getOperandConstraintEjNS_4MCOI17OperandConstraintE.exit.i ]
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !490
  %i.as = xor i32 %i.ar, -1
  %i.at = zext i32 %i.as to i64
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.au ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !624 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !626
  %i.ba = zext i8 %i.ax to i16
  %i.bb = icmp ugt i16 %i.az, %i.ba
  br i1 %i.bb, label %_ZNK4llvm11MCInstrDesc20getOperandConstraintEjNS_4MCOI17OperandConstraintE.exit.i54, label %_ZN4llvm7RISCVIIL24isFirstDefTiedToFirstUseERKNS_11MCInstrDescE.exit55

_ZNK4llvm11MCInstrDesc20getOperandConstraintEjNS_4MCOI17OperandConstraintE.exit.i54: ; preds = %_ZN4llvm7RISCVIIL24isFirstDefTiedToFirstUseERKNS_11MCInstrDescE.exit
  %i.bc = load i32, ptr %i.av, align 8, !tbaa !627
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !628
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [6 x i8], ptr %i.be, i64 %i.bh
  %i.bj = zext i8 %i.ax to i64
  %i.bk = getelementptr inbounds nuw [6 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !629
  %i.bn = and i16 %i.bm, 241
  %i.bo = icmp eq i16 %i.bn, 1
  %i.bp = and i1 %not., %i.bo
  %i.bq = zext i1 %i.bp to i32
  br label %_ZN4llvm7RISCVIIL24isFirstDefTiedToFirstUseERKNS_11MCInstrDescE.exit55

_ZN4llvm7RISCVIIL24isFirstDefTiedToFirstUseERKNS_11MCInstrDescE.exit55: ; preds = %_ZN4llvm7RISCVIIL24isFirstDefTiedToFirstUseERKNS_11MCInstrDescE.exit, %_ZNK4llvm11MCInstrDesc20getOperandConstraintEjNS_4MCOI17OperandConstraintE.exit.i54
  %i.br = phi i32 [ 0, %_ZN4llvm7RISCVIIL24isFirstDefTiedToFirstUseERKNS_11MCInstrDescE.exit ], [ %i.bq, %_ZNK4llvm11MCInstrDesc20getOperandConstraintEjNS_4MCOI17OperandConstraintE.exit.i54 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bs, ptr %2, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !491
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.bu, align 4, !tbaa !492
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !631
  %i.bx = and i64 %i.bw, 16384
  %.not60 = icmp eq i64 %i.bx, 0
  br i1 %.not60, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm7RISCVIIL24isFirstDefTiedToFirstUseERKNS_11MCInstrDescE.exit55
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !631
  %i.ca = and i64 %i.bz, 16384
  %i.cb = icmp ne i64 %i.ca, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvm7RISCVIIL24isFirstDefTiedToFirstUseERKNS_11MCInstrDescE.exit55
  %i.cc = phi i1 [ false, %_ZN4llvm7RISCVIIL24isFirstDefTiedToFirstUseERKNS_11MCInstrDescE.exit55 ], [ %i.cb, %bb.d ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !617
  %i.cf = zext i16 %i.ce to i32                   ; 3 uses
  %.not5261 = icmp eq i32 %i.br, %i.cf
  br i1 %.not5261, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.cg = add nsw i32 %i.cf, -1                   ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.ch ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !483
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !506
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !449
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.co ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.cp, align 8, !tbaa !477
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 1
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !479
  %i.cq = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.cq, i1 false
  %.neg = sext i1 %.not4.i to i32
  %i.cr = add nsw i32 %i.cg, %.neg
  %i.cs = zext nneg i32 %i.br to i64
  %i.ct = zext i32 %i.cr to i64
  %i.cu = zext i8 %i.f to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
end_hunk_0
begin_hunk_1_@_ZN4llvm17RISCVDAGToDAGISel6SelectEPNS_6SDNodeE:bb.a
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i2570, i64 8
  %i.agd = load i32, ptr %i.agc, align 8, !tbaa !449
  %i.age = icmp ne i32 %i.agd, %.sroa.16.0.copyload ; 2 uses
  %i.agf = icmp ne i32 %.01224.i.i2571, 0
  %cond.i.i2573 = select i1 %i.age, i1 true, i1 %i.agf
  br i1 %cond.i.i2573, label %bb.fj, label %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit2578:           ; preds = %bb.fj
  %i.agg = icmp eq i32 %.214.i.i2572, 0
  br i1 %i.agg, label %bb.fk, label %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread

bb.fk:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit2578
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afx, i64 88
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !452 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 24 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agi, i64 32
  %i.agl = load i32, ptr %i.agk, align 8, !tbaa !463
  %i.agm = icmp ult i32 %i.agl, 65
  %i.agn = load ptr, ptr %i.agj, align 8
  %spec.select.i.i.i.i.i2579 = select i1 %i.agm, ptr %i.agj, ptr %i.agn
  %.0.i.i.i.i.i2580 = load i64, ptr %spec.select.i.i.i.i.i2579, align 8, !tbaa !465
  %i.ago = trunc i64 %.0.i.i.i.i.i2580 to i32     ; 5 uses
  %i.agp = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 656
  %i.agr = load i8, ptr %i.agq, align 8, !tbaa !237, !range !18, !noundef !19
  %i.ags = trunc nuw i8 %i.agr to i1
  %i.agt = select i1 %i.ags, i32 64, i32 32       ; 3 uses
  %.sroa.03385.0.copyload = load ptr, ptr %i.afv, align 8, !tbaa !486 ; 3 uses
  %.sroa.83389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.agu = load i64, ptr %.sroa.83389.0..sroa_idx, align 8
  %i.agv = icmp ugt i32 %i.ago, 32
  br i1 %i.agv, label %bb.fl, label %bb.fr

bb.fl:                                            ; preds = %bb.fk
  br i1 %i.afp, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.agw = icmp eq i32 %i.afo, 0
  %i.agx = sub nuw nsw i32 64, %i.afo
  %i.agy = zext nneg i32 %i.agx to i64            ; 2 uses
  %i.agz = shl i64 %i.aft, %i.agy
  %i.aha = ashr exact i64 %i.agz, %i.agy
  %.0.i.i.i.i2582 = select i1 %i.agw, i64 0, i64 %i.aha
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2583

bb.fn:                                            ; preds = %bb.fl
  %i.ahb = load i64, ptr %i.afq, align 8, !tbaa !466
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2583

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2583: ; preds = %bb.fm, %bb.fn
  %.0.i.i.i2581 = phi i64 [ %.0.i.i.i.i2582, %bb.fm ], [ %i.ahb, %bb.fn ]
  %i.ahc = add i64 %.0.i.i.i2581, 2048
  %i.ahd = icmp ult i64 %i.ahc, 4096
  br i1 %i.ahd, label %bb.fo, label %bb.fr

bb.fo:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2583
  %i.ahe = getelementptr inbounds nuw i8, ptr %.sroa.03385.0.copyload, i64 24
  %i.ahf = load i32, ptr %i.ahe, align 8, !tbaa !490
  %i.ahg = icmp eq i32 %i.ahf, 198
  br i1 %i.ahg, label %bb.fp, label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  %i.ahh = getelementptr inbounds nuw i8, ptr %.sroa.03385.0.copyload, i64 40
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !482
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 40
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !483 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 24
  %i.ahm = load i32, ptr %i.ahl, align 8, !tbaa !490
  switch i32 %i.ahm, label %bb.fr [
    i32 37, label %bb.fq
    i32 12, label %bb.fq
  ]

bb.fq:                                            ; preds = %bb.fp, %bb.fp
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahk, i64 88
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !452 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 24 ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.aho, i64 32
  %i.ahr = load i32, ptr %i.ahq, align 8, !tbaa !463
  %i.ahs = icmp ult i32 %i.ahr, 65
  %i.aht = load ptr, ptr %i.ahp, align 8
  %spec.select.i.i.i.i.i2585 = select i1 %i.ahs, ptr %i.ahp, ptr %i.aht
  %.0.i.i.i.i.i2586 = load i64, ptr %spec.select.i.i.i.i.i2585, align 8, !tbaa !465
  %i.ahu = icmp eq i64 %.0.i.i.i.i.i2586, 32
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fp, %bb.fq, %bb.fo, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2583, %bb.fk
  %i.ahv = phi i1 [ false, %bb.fp ], [ false, %bb.fo ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2583 ], [ false, %bb.fk ], [ %i.ahu, %bb.fq ] ; 2 uses
  %.not.i2587 = icmp eq i64 %.0.i.i.i2565, 0      ; 2 uses
  %i.ahw = add i64 %.0.i.i.i2565, 1
  %i.ahx = and i64 %i.ahw, %.0.i.i.i2565
  %i.ahy = icmp ne i64 %i.ahx, 0
  %.not4156 = or i1 %.not.i2587, %i.ahy
  %or.cond87 = or i1 %.not4156, %i.ahv
  br i1 %or.cond87, label %.critedge2328, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ahz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i2565, i1 false)
  %i.aia = trunc nuw nsw i64 %i.ahz to i32
  %.neg4157 = add nuw nsw i32 %i.aia, -64
  %i.aib = add nsw i32 %.neg4157, %i.agt          ; 3 uses
  %.not2272 = icmp ult i32 %i.aib, %i.ago
  br i1 %.not2272, label %bb.ft, label %_ZN4llvm16isShiftedMask_64Em.exit2589

bb.ft:                                            ; preds = %bb.fs
  %i.aic = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !484 ; 2 uses
  store ptr %.sroa.03385.0.copyload, ptr %95, align 8, !tbaa !486
  %.sroa.83389.0..sroa_idx3390 = getelementptr inbounds nuw i8, ptr %95, i64 8
  store i64 %i.agu, ptr %.sroa.83389.0..sroa_idx3390, align 8
  %i.aie = sub nuw i32 %i.ago, %i.aib
  %i.aif = zext i32 %i.aie to i64
  %i.aig = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aid, i64 noundef %i.aif, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract1145 = extractvalue { ptr, i32 } %i.aig, 0
  %.fca.1.extract1146 = extractvalue { ptr, i32 } %i.aig, 1
  store ptr %.fca.0.extract1145, ptr %96, align 8
  %.sroa.21148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %96, i64 8
  store i32 %.fca.1.extract1146, ptr %.sroa.21148.0..sroa_idx, align 8
  %i.aih = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.aid, i32 noundef 15915, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %95, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %96) #26
  %i.aii = load ptr, ptr %i.aic, align 8, !tbaa !484 ; 2 uses
  store ptr %i.aih, ptr %97, align 8, !tbaa !483
  %i.aij = getelementptr inbounds nuw i8, ptr %97, i64 8
  store i32 0, ptr %i.aij, align 8, !tbaa !449
  %i.aik = zext i32 %i.aib to i64
  %i.ail = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aii, i64 noundef %i.aik, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract1138 = extractvalue { ptr, i32 } %i.ail, 0
  %.fca.1.extract1139 = extractvalue { ptr, i32 } %i.ail, 1
  store ptr %.fca.0.extract1138, ptr %98, align 8
  %.sroa.21141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %98, i64 8
  store i32 %.fca.1.extract1139, ptr %.sroa.21141.0..sroa_idx, align 8
  %i.aim = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.aii, i32 noundef 15922, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %97, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %98) #26
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.aim)
  br label %.critedge2356

.critedge2328:                                    ; preds = %bb.fr
  br i1 %.not.i2587, label %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread.thread, label %_ZN4llvm16isShiftedMask_64Em.exit2589

_ZN4llvm16isShiftedMask_64Em.exit2589:            ; preds = %bb.fs, %.critedge2328
  %i.ain = add i64 %.0.i.i.i2565, -1
  %i.aio = or i64 %i.ain, %.0.i.i.i2565           ; 2 uses
  %i.aip = add i64 %i.aio, 1
  %i.aiq = and i64 %i.aip, %i.aio
  %i.air = icmp ne i64 %i.aiq, 0
  %or.cond90 = or i1 %i.air, %i.ahv
  br i1 %or.cond90, label %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread, label %bb.fu

bb.fu:                                            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit2589
  %i.ais = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i2565, i1 false)
  %i.ait = trunc nuw nsw i64 %i.ais to i32
  %i.aiu = sub nuw nsw i32 64, %i.ait             ; 2 uses
  %i.aiv = sub nsw i32 %i.agt, %i.aiu             ; 3 uses
  %i.aiw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i.i.i2565, i1 false) ; 3 uses
  %i.aix = icmp uge i32 %i.aiv, %i.ago
  %i.aiy = icmp eq i32 %i.agt, %i.aiu
  %or.cond92.not2276 = or i1 %i.aiy, %i.aix
  %i.aiz = icmp eq i64 %i.aiw, 0
  %or.cond94.not = or i1 %i.aiz, %or.cond92.not2276
  br i1 %or.cond94.not, label %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aja = trunc nuw nsw i64 %i.aiw to i32
  %i.ajb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !484 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %99, ptr noundef nonnull align 8 dereferenceable(16) %i.afv, i64 16, i1 false), !tbaa.struct !493
  %i.ajd = sub nuw i32 %i.ago, %i.aiv
  %i.aje = zext i32 %i.ajd to i64
  %i.ajf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ajc, i64 noundef %i.aje, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract1124 = extractvalue { ptr, i32 } %i.ajf, 0
  %.fca.1.extract1125 = extractvalue { ptr, i32 } %i.ajf, 1
  store ptr %.fca.0.extract1124, ptr %100, align 8
  %.sroa.21127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %100, i64 8
  store i32 %.fca.1.extract1125, ptr %.sroa.21127.0..sroa_idx, align 8
  %i.ajg = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ajc, i32 noundef 15915, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %99, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %100) #26
  %i.ajh = load ptr, ptr %i.ajb, align 8, !tbaa !484 ; 2 uses
  store ptr %i.ajg, ptr %101, align 8, !tbaa !483
  %i.aji = getelementptr inbounds nuw i8, ptr %101, i64 8
  store i32 0, ptr %i.aji, align 8, !tbaa !449
  %i.ajj = add nsw i32 %i.aiv, %i.aja
  %i.ajk = zext i32 %i.ajj to i64
  %i.ajl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ajh, i64 noundef %i.ajk, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract1117 = extractvalue { ptr, i32 } %i.ajl, 0
  %.fca.1.extract1118 = extractvalue { ptr, i32 } %i.ajl, 1
  store ptr %.fca.0.extract1117, ptr %102, align 8
  %.sroa.21120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %102, i64 8
  store i32 %.fca.1.extract1118, ptr %.sroa.21120.0..sroa_idx, align 8
  %i.ajm = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ajh, i32 noundef 15922, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %101, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %102) #26
  %i.ajn = load ptr, ptr %i.ajb, align 8, !tbaa !484 ; 2 uses
  store ptr %i.ajm, ptr %103, align 8, !tbaa !483
  %i.ajo = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i32 0, ptr %i.ajo, align 8, !tbaa !449
  %i.ajp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ajn, i64 noundef %i.aiw, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract1110 = extractvalue { ptr, i32 } %i.ajp, 0
  %.fca.1.extract1111 = extractvalue { ptr, i32 } %i.ajp, 1
  store ptr %.fca.0.extract1110, ptr %104, align 8
  %.sroa.21113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %104, i64 8
  store i32 %.fca.1.extract1111, ptr %.sroa.21113.0..sroa_idx, align 8
  %i.ajq = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ajn, i32 noundef 15885, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %103, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %104) #26
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.ajq)
  br label %.critedge2356

_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread:    ; preds = %.lr.ph.i.i2569, %_ZN4llvm16isShiftedMask_64Em.exit2589, %bb.fu, %bb.fh, %bb.fi, %_ZNK4llvm7SDValue9hasOneUseEv.exit2578, %.critedge2325
  %.not.i2590 = icmp ne i64 %.0.i.i.i2565, 0
  %i.ajr = add i64 %.0.i.i.i2565, 1
  %i.ajs = and i64 %i.ajr, %.0.i.i.i2565
  %i.ajt = icmp eq i64 %i.ajs, 0
  %i.aju = and i1 %.not.i2590, %i.ajt
  br i1 %i.aju, label %bb.fw, label %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread.thread

bb.fw:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread
  br i1 %i.afp, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.ajv = icmp eq i32 %i.afo, 0
  %i.ajw = sub nuw nsw i32 64, %i.afo
  %i.ajx = zext nneg i32 %i.ajw to i64            ; 2 uses
  %i.ajy = shl i64 %i.aft, %i.ajx
  %i.ajz = ashr exact i64 %i.ajy, %i.ajx
  %.0.i.i.i.i2592 = select i1 %i.ajv, i64 0, i64 %i.ajz
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2593

bb.fy:                                            ; preds = %bb.fw
  %i.aka = load i64, ptr %i.afq, align 8, !tbaa !466
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2593

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2593: ; preds = %bb.fx, %bb.fy
  %.0.i.i.i2591 = phi i64 [ %.0.i.i.i.i2592, %bb.fx ], [ %i.aka, %bb.fy ]
  %i.akb = add i64 %.0.i.i.i2591, 2048
  %i.akc = icmp ult i64 %i.akb, 4096
  br i1 %i.akc, label %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread.thread, label %bb.fz

bb.fz:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2593
  switch i64 %.0.i.i.i2565, label %.split [
    i64 65535, label %bb.ga
    i64 4294967295, label %bb.gb
  ]

bb.ga:                                            ; preds = %bb.fz
  %i.akd = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 471
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !277, !range !18, !noundef !19
  %i.akg = trunc nuw i8 %i.akf to i1
  br i1 %i.akg, label %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread.thread, label %.split

.split:                                           ; preds = %bb.ga, %bb.fz
  %i.akh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i2565, i1 true)
  %i.aki = trunc nuw nsw i64 %i.akh to i32
  %i.akj = xor i32 %i.aki, 63
  br label %.split2189

bb.gb:                                            ; preds = %bb.fz
  %i.akk = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 470
  %i.akm = load i8, ptr %i.akl, align 2, !tbaa !251, !range !18, !noundef !19
  %i.akn = trunc nuw i8 %i.akm to i1
  br i1 %i.akn, label %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread.thread, label %.split2189

.split2189:                                       ; preds = %bb.gb, %.split
  %phi.call = phi i32 [ %i.akj, %.split ], [ 31, %bb.gb ]
  %i.ako = call noundef zeroext i1 @_ZN4llvm17RISCVDAGToDAGISel26tryUnsignedBitfieldExtractEPNS_6SDNodeERKNS_5SDLocENS_3MVTENS_7SDValueEjj(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.03553.0.copyload, i32 %.sroa.16.0.copyload, i32 noundef %phi.call, i32 noundef 0)
  br i1 %i.ako, label %.critedge2356, label %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread.thread: ; preds = %.critedge2328, %.split2189, %bb.gb, %bb.ga, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2593, %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread
  %i.akp = call noundef zeroext i1 @_ZN4llvm17RISCVDAGToDAGISel20tryShrinkShlLogicImmEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1)
  br i1 %i.akp, label %.critedge2356, label %.critedge2292

bb.gc:                                            ; preds = %bb.c
  %i.akq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !482 ; 3 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 40
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !483 ; 5 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 24
  %i.akv = load i32, ptr %i.aku, align 8, !tbaa !490
  switch i32 %i.akv, label %.critedge2292 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit2595
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit2595
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit2595: ; preds = %bb.gc, %bb.gc
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akt, i64 56
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !467 ; 2 uses
  %.not.i.i2596 = icmp eq ptr %i.akx, null
  br i1 %.not.i.i2596, label %.critedge2292, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit2595
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 32
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !468
  %i.ala = icmp eq ptr %i.akz, null
  br i1 %i.ala, label %bb.gd, label %.critedge2292

bb.gd:                                            ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %.sroa.03356.0.copyload = load ptr, ptr %i.akr, align 8, !tbaa !486 ; 4 uses
  %.sroa.113362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akr, i64 8
  %.sroa.113362.0.copyload = load i32, ptr %.sroa.113362.0..sroa_idx, align 8, !tbaa !485 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %.sroa.03356.0.copyload, i64 24
  %i.alc = load i32, ptr %i.alb, align 8, !tbaa !490
  %.not2266 = icmp eq i32 %i.alc, 193
  br i1 %.not2266, label %bb.ge, label %.critedge2292

bb.ge:                                            ; preds = %bb.gd
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.03356.0.copyload, i64 40 ; 2 uses
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !482
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 40
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !483 ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 24
  %i.ali = load i32, ptr %i.alh, align 8, !tbaa !490
  switch i32 %i.ali, label %.critedge2292 [
    i32 37, label %bb.gf
    i32 12, label %bb.gf
  ]

bb.gf:                                            ; preds = %bb.ge, %bb.ge
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alg, i64 88
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !452 ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 24 ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alk, i64 32
  %i.aln = load i32, ptr %i.alm, align 8, !tbaa !463
  %i.alo = icmp ult i32 %i.aln, 65
  %i.alp = load ptr, ptr %i.all, align 8
  %spec.select.i.i.i.i.i2598 = select i1 %i.alo, ptr %i.all, ptr %i.alp
  %.0.i.i.i.i.i2599 = load i64, ptr %spec.select.i.i.i.i.i2598, align 8, !tbaa !465 ; 7 uses
  %.not.i2600 = icmp ne i64 %.0.i.i.i.i.i2599, 0
  %i.alq = add i64 %.0.i.i.i.i.i2599, 1
  %i.alr = and i64 %i.alq, %.0.i.i.i.i.i2599
  %i.als = icmp eq i64 %i.alr, 0
  %i.alt = and i1 %.not.i2600, %i.als
  br i1 %i.alt, label %bb.gg, label %.critedge2292

bb.gg:                                            ; preds = %bb.gf
  %i.alu = add i64 %.0.i.i.i.i.i2599, 2048
  %i.alv = icmp ult i64 %i.alu, 4096
  br i1 %i.alv, label %.thread4002.a, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  switch i64 %.0.i.i.i.i.i2599, label %.thread4010 [
    i64 65535, label %bb.gi
    i64 4294967295, label %bb.gn
  ]

bb.gi:                                            ; preds = %bb.gh
  %i.alw = getelementptr inbounds nuw i8, ptr %i.p, i64 471
  %i.alx = load i8, ptr %i.alw, align 1, !tbaa !277, !range !18, !noundef !19
  %i.aly = getelementptr inbounds nuw i8, ptr %i.p, i64 620
  %i.alz = load i8, ptr %i.aly, align 4, !tbaa !304, !range !18, !noundef !19
  %i.ama = or i8 %i.alz, %i.alx
  %.not2267 = icmp eq i8 %i.ama, 0
  br i1 %.not2267, label %.thread4010, label %.thread4002.a

.thread4002.a:                                    ; preds = %bb.gg, %bb.gi
  %i.amb = getelementptr inbounds nuw i8, ptr %i.akt, i64 88
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !452 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 24 ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amc, i64 32
  %i.amf = load i32, ptr %i.ame, align 8, !tbaa !463 ; 3 uses
  %i.amg = icmp ult i32 %i.amf, 65
  br i1 %i.amg, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %.thread4002.a
  %i.amh = load i64, ptr %i.amd, align 8, !tbaa !465
  %i.ami = icmp eq i32 %i.amf, 0
  %i.amj = sub nuw nsw i32 64, %i.amf
  %i.amk = zext nneg i32 %i.amj to i64            ; 2 uses
  %i.aml = shl i64 %i.amh, %i.amk
  %i.amm = ashr exact i64 %i.aml, %i.amk
  %.0.i.i.i.i2602 = select i1 %i.ami, i64 0, i64 %i.amm
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2603

bb.gk:                                            ; preds = %.thread4002.a
  %i.amn = load ptr, ptr %i.amd, align 8, !tbaa !465
  %i.amo = load i64, ptr %i.amn, align 8, !tbaa !466
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2603

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2603: ; preds = %bb.gj, %bb.gk
  %.0.i.i.i2601 = phi i64 [ %.0.i.i.i.i2602, %bb.gj ], [ %i.amo, %bb.gk ]
  %i.amp = add i64 %.0.i.i.i2601, 2048
  %i.amq = icmp ult i64 %i.amp, 4096
  br i1 %i.amq, label %.critedge2292, label %bb.gl

bb.gl:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2603
  %i.amr = getelementptr inbounds nuw i8, ptr %.sroa.03356.0.copyload, i64 56
  %.sroa.018.022.i.i2604 = load ptr, ptr %i.amr, align 8, !tbaa !447 ; 2 uses
  %.not23.i.i2605 = icmp eq ptr %.sroa.018.022.i.i2604, null
  br i1 %.not23.i.i2605, label %.critedge2292, label %.lr.ph.i.i2606

bb.gm:                                            ; preds = %.lr.ph.i.i2606
  %.214.i.i2609 = select i1 %i.amv, i32 %.01224.i.i2608, i32 0 ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i2607, i64 32
  %.sroa.018.0.i.i2613 = load ptr, ptr %i.ams, align 8, !tbaa !447 ; 2 uses
  %.not.i.i2614 = icmp eq ptr %.sroa.018.0.i.i2613, null
  br i1 %.not.i.i2614, label %_ZNK4llvm7SDValue9hasOneUseEv.exit2615, label %.lr.ph.i.i2606

.lr.ph.i.i2606:                                   ; preds = %bb.gl, %bb.gm
  %.sroa.018.025.i.i2607 = phi ptr [ %.sroa.018.0.i.i2613, %bb.gm ], [ %.sroa.018.022.i.i2604, %bb.gl ] ; 2 uses
  %.01224.i.i2608 = phi i32 [ %.214.i.i2609, %bb.gm ], [ 1, %bb.gl ] ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i2607, i64 8
  %i.amu = load i32, ptr %i.amt, align 8, !tbaa !449
  %i.amv = icmp ne i32 %i.amu, %.sroa.113362.0.copyload ; 2 uses
  %i.amw = icmp ne i32 %.01224.i.i2608, 0
  %cond.i.i2610 = select i1 %i.amv, i1 true, i1 %i.amw
  br i1 %cond.i.i2610, label %bb.gm, label %.critedge2292

_ZNK4llvm7SDValue9hasOneUseEv.exit2615:           ; preds = %bb.gm
end_hunk_1
begin_hunk_2_@_ZN4llvm17RISCVDAGToDAGISel6SelectEPNS_6SDNodeE:bb.a
  %.sroa.0.0.i.i2789 = phi i16 [ %i.btu, %bb.mg ], [ %.sroa.0.0.copyload.i.i2787, %bb.mf ]
  %i.btv = zext i16 %.sroa.0.0.i.i2789 to i64
  %i.btw = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.btv
  %i.btx = getelementptr i8, ptr %i.btw, i64 -16
  %.sroa.0.0.copyload.i.i2790 = load i64, ptr %i.btx, align 16
  %i.bty = trunc i64 %.sroa.0.0.copyload.i.i2790 to i32
  %i.btz = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bty, i1 false)
  %i.bua = sub nsw i32 31, %i.btz                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #26
  %i.bub = getelementptr inbounds nuw i8, ptr %170, i64 16 ; 2 uses
  store ptr %i.bub, ptr %170, align 8, !tbaa !21
  %i.buc = getelementptr inbounds nuw i8, ptr %170, i64 8 ; 2 uses
  store i32 0, ptr %i.buc, align 8, !tbaa !491
  %i.bud = getelementptr inbounds nuw i8, ptr %170, i64 12
  store i32 8, ptr %i.bud, align 4, !tbaa !492
  %.sroa.2501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bpz, i64 88
  %.sroa.2501.0.copyload = load i32, ptr %.sroa.2501.0..sroa_idx, align 8, !tbaa !485
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %170, ptr nonnull %i.btn, i32 %.sroa.2501.0.copyload)
  call void @_ZN4llvm17RISCVDAGToDAGISel26addVectorLoadStoreOperandsEPNS_6SDNodeEjRKNS_5SDLocEjbbRNS_15SmallVectorImplINS_7SDValueEEEbPNS_3MVTE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bua, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef 3, i1 noundef zeroext %i.bth, i1 noundef zeroext %i.btk, ptr noundef nonnull align 8 dereferenceable(16) %170, i1 noundef zeroext false, ptr noundef null)
  %i.bue = call noundef zeroext i8 @_ZN4llvm19RISCVTargetLowering7getLMULENS_3MVTE(i16 %.sroa.0.0.copyload.i.i2787) #26
  %i.buf = trunc nsw i32 %i.bua to i8
  %i.bug = call noundef ptr @_ZN4llvm5RISCV12getVSEPseudoEhhhh(i8 noundef zeroext %i.bti, i8 noundef zeroext %i.btl, i8 noundef zeroext %i.buf, i8 noundef zeroext %i.bue) #26
  %i.buh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bui = load ptr, ptr %i.buh, align 8, !tbaa !484
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bug, i64 2
  %i.buk = load i16, ptr %i.buj, align 2, !tbaa !673
  %i.bul = zext i16 %i.buk to i32
  %i.bum = load ptr, ptr %i.z, align 8, !tbaa !506
  %i.bun = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.buo = load i16, ptr %i.bun, align 2, !tbaa !614
  %i.bup = zext i16 %i.buo to i32
  %i.buq = load ptr, ptr %170, align 8, !tbaa !21
  store ptr %i.buq, ptr %171, align 8, !tbaa !607
  %i.bur = getelementptr inbounds nuw i8, ptr %171, i64 8
  %i.bus = load i32, ptr %i.buc, align 8, !tbaa !491
  %i.but = zext i32 %i.bus to i64
  store i64 %i.but, ptr %i.bur, align 8, !tbaa !610
  %i.buu = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bui, i32 noundef %i.bul, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.bum, i32 %i.bup, ptr noundef nonnull byval(%"class.llvm::ArrayRef.277") align 8 %171) #26 ; 2 uses
  %i.buv = load ptr, ptr %i.buh, align 8, !tbaa !484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.buw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i2794 = load i64, ptr %i.buw, align 8
  %i.bux = and i64 %.0.copyload.i.i.i.i.i.i2794, -5
  %i.buy = inttoptr i64 %i.bux to ptr
  store ptr %i.buy, ptr %i.h, align 8, !tbaa !644
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.buv, ptr noundef %i.buu, ptr nonnull %i.h, i64 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.buu)
  %i.buz = load ptr, ptr %170, align 8, !tbaa !21 ; 2 uses
  %i.bva = icmp eq ptr %i.buz, %i.bub
  br i1 %i.bva, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2796, label %bb.mh

bb.mh:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2791
  call void @free(ptr noundef %i.buz) #26
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2796

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2796: ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2791, %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #26
  br label %.critedge2356

bb.mi:                                            ; preds = %bb.lp, %bb.lp
  tail call void @_ZN4llvm17RISCVDAGToDAGISel16selectSF_VC_X_SEEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1)
  br label %.critedge2356

switch.lookup4292:                                ; preds = %bb.lp, %bb.lp, %bb.lp, %bb.lp
  %switch.tableidx4291 = add i64 %.0.i.i.i.i2772, 4294955025
  %switch.offset = add nsw i32 %i.bqj, -10875
  %i.bvb = and i64 %switch.tableidx4291, 4294967295
  %switch.gep4293 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm17RISCVDAGToDAGISel6SelectEPNS_6SDNodeE.82, i64 %i.bvb
  %switch.load4294 = load i8, ptr %switch.gep4293, align 1
  %switch.ext4295 = zext i8 %switch.load4294 to i64
  %i.bvc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bvd = load ptr, ptr %i.bvc, align 8, !tbaa !484
  %i.bve = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bvd, i64 noundef %switch.ext4295, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %i.t, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract481 = extractvalue { ptr, i32 } %i.bve, 0
  %.fca.1.extract482 = extractvalue { ptr, i32 } %i.bve, 1
  %i.bvf = load ptr, ptr %i.bvc, align 8, !tbaa !484
  %i.bvg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bvf, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %i.t, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract473 = extractvalue { ptr, i32 } %i.bvg, 0
  %.fca.1.extract474 = extractvalue { ptr, i32 } %i.bvg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #26
  %i.bvh = load ptr, ptr %i.bpy, align 8, !tbaa !482 ; 4 uses
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvh, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %172, ptr noundef nonnull align 8 dereferenceable(12) %i.bvi, i64 12, i1 false), !tbaa.struct !493
  %i.bvj = getelementptr inbounds nuw i8, ptr %172, i64 16
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bvh, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bvj, ptr noundef nonnull align 8 dereferenceable(12) %i.bvk, i64 12, i1 false), !tbaa.struct !493
  %i.bvl = getelementptr inbounds nuw i8, ptr %172, i64 32
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvh, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bvl, ptr noundef nonnull align 8 dereferenceable(12) %i.bvm, i64 12, i1 false), !tbaa.struct !493
  %i.bvn = getelementptr inbounds nuw i8, ptr %172, i64 48
  store ptr %.fca.0.extract481, ptr %i.bvn, align 16, !tbaa !486
  %.sroa.4487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %172, i64 56
  store i32 %.fca.1.extract482, ptr %.sroa.4487.0..sroa_idx, align 8, !tbaa !485
  %i.bvo = getelementptr inbounds nuw i8, ptr %172, i64 64
  store ptr %.fca.0.extract473, ptr %i.bvo, align 16, !tbaa !486
  %.sroa.4479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %172, i64 72
  store i32 %.fca.1.extract474, ptr %.sroa.4479.0..sroa_idx, align 8, !tbaa !485
  %i.bvp = getelementptr inbounds nuw i8, ptr %172, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bvp, ptr noundef nonnull align 8 dereferenceable(12) %i.bvh, i64 12, i1 false), !tbaa.struct !493
  %i.bvq = load ptr, ptr %i.bvc, align 8, !tbaa !484
  %i.bvr = load ptr, ptr %i.z, align 8, !tbaa !506
  %i.bvs = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bvt = load i16, ptr %i.bvs, align 2, !tbaa !614
  %i.bvu = zext i16 %i.bvt to i32
  store ptr %172, ptr %173, align 8, !tbaa !607
  %i.bvv = getelementptr inbounds nuw i8, ptr %173, i64 8
  store i64 6, ptr %i.bvv, align 8, !tbaa !610
  %i.bvw = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bvq, i32 noundef %switch.offset, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.bvr, i32 %i.bvu, ptr noundef nonnull byval(%"class.llvm::ArrayRef.277") align 8 %173) #26 ; 2 uses
  %i.bvx = load ptr, ptr %i.bvc, align 8, !tbaa !484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.bvy = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i2799 = load i64, ptr %i.bvy, align 8
  %i.bvz = and i64 %.0.copyload.i.i.i.i.i.i2799, -5
  %i.bwa = inttoptr i64 %i.bvz to ptr
  store ptr %i.bwa, ptr %i.i, align 8, !tbaa !644
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bvx, ptr noundef %i.bvw, ptr nonnull %i.i, i64 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.bvw)
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #26
  br label %.critedge2356

bb.mj:                                            ; preds = %bb.lp, %bb.lp, %bb.lp, %bb.lp, %bb.lp, %bb.lp, %bb.lp, %bb.lp, %bb.lp
  switch i32 %i.bqj, label %bb.ms [
    i32 12215, label %bb.mr
    i32 12217, label %bb.mk
    i32 12218, label %bb.ml
    i32 12219, label %bb.mm
    i32 12214, label %bb.mn
    i32 12213, label %bb.mo
    i32 12212, label %bb.mp
    i32 12211, label %bb.mq
  ]

bb.mk:                                            ; preds = %bb.mj
  br label %bb.ms

bb.ml:                                            ; preds = %bb.mj
  br label %bb.ms

bb.mm:                                            ; preds = %bb.mj
  br label %bb.ms

bb.mn:                                            ; preds = %bb.mj
  br label %bb.ms

bb.mo:                                            ; preds = %bb.mj
  br label %bb.ms

bb.mp:                                            ; preds = %bb.mj
  br label %bb.ms

bb.mq:                                            ; preds = %bb.mj
  br label %bb.ms

bb.mr:                                            ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #26
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bpz, i64 120
  %i.bwc = load ptr, ptr %i.bwb, align 8, !tbaa !483
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bpz, i64 128
  %i.bwe = load i32, ptr %i.bwd, align 8, !tbaa !449
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwc, i64 48
  %i.bwg = load ptr, ptr %i.bwf, align 8, !tbaa !506
  %i.bwh = zext i32 %i.bwe to i64
  %i.bwi = getelementptr inbounds nuw [16 x i8], ptr %i.bwg, i64 %i.bwh ; 2 uses
  %.sroa.0.0.copyload.i.i2801 = load i16, ptr %i.bwi, align 8, !tbaa !477
  %.sroa.21.0..sroa_idx.i.i2802 = getelementptr inbounds nuw i8, ptr %i.bwi, i64 8
  %.sroa.21.0.copyload.i.i2803 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2802, align 8, !tbaa !479
  store i16 %.sroa.0.0.copyload.i.i2801, ptr %174, align 8
  %i.bwj = getelementptr inbounds nuw i8, ptr %174, i64 8
  store ptr %.sroa.21.0.copyload.i.i2803, ptr %i.bwj, align 8
  %i.bwk = call { i16, ptr } @_ZNK4llvm3EVT13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %174) ; 2 uses
  %i.bwl = extractvalue { i16, ptr } %i.bwk, 0
  %i.bwm = extractvalue { i16, ptr } %i.bwk, 1
  %.not.i.i2806 = icmp eq i16 %i.bwl, 12
  %i.bwn = icmp eq ptr %i.bwm, null
  %.not4.i2807 = select i1 %.not.i.i2806, i1 %i.bwn, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #26
  %.2357 = select i1 %.not4.i2807, i32 957, i32 956
  %.pre = load ptr, ptr %i.bpy, align 8, !tbaa !482
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mr, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mk, %bb.mj
  %i.bwo = phi ptr [ %i.bpz, %bb.mj ], [ %.pre, %bb.mr ], [ %i.bpz, %bb.mk ], [ %i.bpz, %bb.ml ], [ %i.bpz, %bb.mm ], [ %i.bpz, %bb.mn ], [ %i.bpz, %bb.mo ], [ %i.bpz, %bb.mp ], [ %i.bpz, %bb.mq ] ; 10 uses
  %.12188 = phi i32 [ 958, %bb.mj ], [ %.2357, %bb.mr ], [ 959, %bb.mk ], [ 960, %bb.ml ], [ 961, %bb.mm ], [ 955, %bb.mn ], [ 954, %bb.mo ], [ 953, %bb.mp ], [ 952, %bb.mq ]
  %.02186 = phi i1 [ false, %bb.mj ], [ true, %bb.mr ], [ false, %bb.mk ], [ false, %bb.ml ], [ false, %bb.mm ], [ true, %bb.mn ], [ true, %bb.mo ], [ true, %bb.mp ], [ true, %bb.mq ]
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwo, i64 80
  %i.bwq = load ptr, ptr %i.bwp, align 8, !tbaa !483
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwq, i64 88
  %i.bws = load ptr, ptr %i.bwr, align 8, !tbaa !452 ; 2 uses
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bws, i64 24 ; 2 uses
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bws, i64 32
  %i.bwv = load i32, ptr %i.bwu, align 8, !tbaa !463
  %i.bww = icmp ult i32 %i.bwv, 65
  %i.bwx = load ptr, ptr %i.bwt, align 8
  %spec.select.i.i.i.i2808 = select i1 %i.bww, ptr %i.bwt, ptr %i.bwx
  %.0.i.i.i.i2809 = load i64, ptr %spec.select.i.i.i.i2808, align 8, !tbaa !465
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwo, i64 120
  %.sroa.03057.0.copyload = load ptr, ptr %i.bwy, align 8, !tbaa !486 ; 2 uses
  %.sroa.53059.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bwo, i64 128
  %.sroa.53059.sroa.0.0.copyload = load i32, ptr %.sroa.53059.0..sroa_idx, align 8, !tbaa !485
  call void @llvm.lifetime.start.p0(ptr nonnull %175)
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwo, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %175, ptr noundef nonnull align 8 dereferenceable(16) %i.bwz, i64 16, i1 false), !tbaa.struct !493
  %i.bxa = getelementptr inbounds nuw i8, ptr %.sroa.03057.0.copyload, i64 48
  %i.bxb = load ptr, ptr %i.bxa, align 8, !tbaa !506
  %.sroa.0.0.copyload.i.i2810 = load i16, ptr %i.bxb, align 8, !tbaa !477 ; 3 uses
  %i.bxc = add i16 %.sroa.0.0.copyload.i.i2810, -19
  %spec.select.i.i.i2811 = icmp ult i16 %i.bxc, 197
  br i1 %spec.select.i.i.i2811, label %bb.mt, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2814

bb.mt:                                            ; preds = %bb.ms
  %i.bxd = zext nneg i16 %.sroa.0.0.copyload.i.i2810 to i64
  %i.bxe = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bxd
  %i.bxf = getelementptr i8, ptr %i.bxe, i64 -2
  %i.bxg = load i16, ptr %i.bxf, align 2, !tbaa !477
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2814

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2814:    ; preds = %bb.ms, %bb.mt
  %.sroa.0.0.i.i2812 = phi i16 [ %i.bxg, %bb.mt ], [ %.sroa.0.0.copyload.i.i2810, %bb.ms ]
  %i.bxh = zext i16 %.sroa.0.0.i.i2812 to i64
  %i.bxi = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bxh
  %i.bxj = getelementptr i8, ptr %i.bxi, i64 -16
  %.sroa.0.0.copyload.i.i2813 = load i64, ptr %i.bxj, align 16
  %i.bxk = trunc i64 %.sroa.0.0.copyload.i.i2813 to i32
  %i.bxl = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bxk, i1 false) ; 2 uses
  %i.bxm = sub nsw i32 31, %i.bxl
  call void @llvm.lifetime.start.p0(ptr nonnull %176)
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bwo, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %176, ptr noundef nonnull align 8 dereferenceable(16) %i.bxn, i64 16, i1 false), !tbaa.struct !493
  call void @llvm.lifetime.start.p0(ptr nonnull %177)
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bwo, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %177, ptr noundef nonnull align 8 dereferenceable(16) %i.bxo, i64 16, i1 false), !tbaa.struct !493
  call void @llvm.lifetime.start.p0(ptr nonnull %178)
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bwo, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %178, ptr noundef nonnull align 8 dereferenceable(16) %i.bxp, i64 16, i1 false), !tbaa.struct !493
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bwo, i64 320
  %.sroa.03052.0.copyload = load ptr, ptr %i.bxq, align 8, !tbaa !486 ; 2 uses
  %.sroa.53054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bwo, i64 328
  %i.bxr = load i64, ptr %.sroa.53054.0..sroa_idx, align 8
  %.sroa.53054.sroa.0.0.extract.trunc = trunc i64 %i.bxr to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %179)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %179, ptr noundef nonnull align 8 dereferenceable(16) %i.bwo, i64 16, i1 false), !tbaa.struct !493
  %i.bxs = icmp eq i32 %i.bqj, 12215
  %i.bxt = icmp eq i32 %i.bxl, 26
  %or.cond128 = and i1 %i.bxs, %i.bxt
  br i1 %or.cond128, label %bb.mu, label %bb.mw

bb.mu:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2814
  %i.bxu = getelementptr inbounds nuw i8, ptr %.sroa.03052.0.copyload, i64 88
  %i.bxv = load ptr, ptr %i.bxu, align 8, !tbaa !452 ; 2 uses
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxv, i64 24 ; 2 uses
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxv, i64 32
  %i.bxy = load i32, ptr %i.bxx, align 8, !tbaa !463
  %i.bxz = icmp ult i32 %i.bxy, 65
  %i.bya = load ptr, ptr %i.bxw, align 8
  %spec.select.i.i.i.i2815 = select i1 %i.bxz, ptr %i.bxw, ptr %i.bya
  %.0.i.i.i.i2816 = load i64, ptr %spec.select.i.i.i.i2815, align 8, !tbaa !465
  %i.byb = icmp eq i64 %.0.i.i.i.i2816, 2
  br i1 %i.byb, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  call void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef nonnull @.str.3) #29
  unreachable

bb.mw:                                            ; preds = %bb.mu, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2814
  call void @llvm.lifetime.start.p0(ptr nonnull %180) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63051)
  %i.byc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.byd = load ptr, ptr %i.byc, align 8, !tbaa !484
  %i.bye = trunc i64 %.0.i.i.i.i2809 to i32
  %i.byf = add i32 %i.bye, 20
  %i.byg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.byd, i32 %i.byf, i16 %i.t, ptr null) #26 ; 2 uses
  %.fca.0.extract454 = extractvalue { ptr, i32 } %i.byg, 0
  %.fca.1.extract455 = extractvalue { ptr, i32 } %i.byg, 1
  %.sroa.63051.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.63051, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.63051.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %175, i64 12, i1 false), !tbaa.struct !493
  %i.byh = getelementptr inbounds nuw i8, ptr %180, i64 16 ; 3 uses
  store ptr %i.byh, ptr %180, align 8, !tbaa !21
  %i.byi = getelementptr inbounds nuw i8, ptr %180, i64 8 ; 2 uses
  %i.byj = getelementptr inbounds nuw i8, ptr %180, i64 12
  store i32 10, ptr %i.byj, align 4, !tbaa !492
  store ptr %.fca.0.extract454, ptr %i.byh, align 8
  %.sroa.43049.0..sroa_idx = getelementptr inbounds nuw i8, ptr %180, i64 24
  store i32 %.fca.1.extract455, ptr %.sroa.43049.0..sroa_idx, align 8
  %.sroa.53050.sroa.3.0..sroa.53050.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %180, i64 32
  store ptr %.sroa.03057.0.copyload, ptr %.sroa.53050.sroa.3.0..sroa.53050.0..sroa_idx.sroa_idx, align 8
  %.sroa.53050.sroa.4.0..sroa.53050.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %180, i64 40
  store i32 %.sroa.53059.sroa.0.0.copyload, ptr %.sroa.53050.sroa.4.0..sroa.53050.0..sroa_idx.sroa_idx, align 8
  %.sroa.63051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %180, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.63051.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.63051, i64 16, i1 false)
  store i32 3, ptr %i.byi, align 8, !tbaa !491
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63051)
  br i1 %.02186, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %bb.mw
  %i.byk = load ptr, ptr %i.byc, align 8, !tbaa !484
  %i.byl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.byk, i64 noundef 7, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %i.t, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract447 = extractvalue { ptr, i32 } %i.byl, 0
  %.fca.1.extract448 = extractvalue { ptr, i32 } %i.byl, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %180, ptr %.fca.0.extract447, i32 %.fca.1.extract448)
  br label %bb.my

bb.my:                                            ; preds = %bb.mx, %bb.mw
  call void @llvm.lifetime.start.p0(ptr nonnull %181) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %181, ptr noundef nonnull align 8 dereferenceable(12) %176, i64 12, i1 false), !tbaa.struct !493
  %i.bym = getelementptr inbounds nuw i8, ptr %181, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bym, ptr noundef nonnull align 8 dereferenceable(12) %177, i64 12, i1 false), !tbaa.struct !493
  %i.byn = getelementptr inbounds nuw i8, ptr %181, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.byn, ptr noundef nonnull align 8 dereferenceable(12) %178, i64 12, i1 false), !tbaa.struct !493
  %i.byo = getelementptr inbounds nuw i8, ptr %181, i64 48
  %i.byp = load ptr, ptr %i.byc, align 8, !tbaa !484
  %i.byq = zext i32 %i.bxm to i64
  %i.byr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.byp, i64 noundef %i.byq, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %i.t, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract440 = extractvalue { ptr, i32 } %i.byr, 0
  %.fca.1.extract441 = extractvalue { ptr, i32 } %i.byr, 1
  store ptr %.fca.0.extract440, ptr %i.byo, align 8
  %.sroa.2443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %181, i64 56
  store i32 %.fca.1.extract441, ptr %.sroa.2443.0..sroa_idx, align 8
  %i.bys = getelementptr inbounds nuw i8, ptr %181, i64 64
  store ptr %.sroa.03052.0.copyload, ptr %i.bys, align 8, !tbaa !486
  %.sroa.53054.0..sroa_idx3055 = getelementptr inbounds nuw i8, ptr %181, i64 72
  store i32 %.sroa.53054.sroa.0.0.extract.trunc, ptr %.sroa.53054.0..sroa_idx3055, align 8, !tbaa !485
  %i.byt = getelementptr inbounds nuw i8, ptr %181, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.byt, ptr noundef nonnull align 8 dereferenceable(12) %179, i64 12, i1 false), !tbaa.struct !493
  call void @_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendESt16initializer_listIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %180, ptr nonnull %181, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #26
  %i.byu = load ptr, ptr %i.byc, align 8, !tbaa !484
  %i.byv = load ptr, ptr %i.z, align 8, !tbaa !506
  %i.byw = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.byx = load i16, ptr %i.byw, align 2, !tbaa !614
  %i.byy = zext i16 %i.byx to i32
  %i.byz = load ptr, ptr %180, align 8, !tbaa !21
  store ptr %i.byz, ptr %182, align 8, !tbaa !607
  %i.bza = getelementptr inbounds nuw i8, ptr %182, i64 8
  %i.bzb = load i32, ptr %i.byi, align 8, !tbaa !491
  %i.bzc = zext i32 %i.bzb to i64
  store i64 %i.bzc, ptr %i.bza, align 8, !tbaa !610
  %i.bzd = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.byu, i32 noundef %.12188, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.byv, i32 %i.byy, ptr noundef nonnull byval(%"class.llvm::ArrayRef.277") align 8 %182) #26
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.bzd)
  %i.bze = load ptr, ptr %180, align 8, !tbaa !21 ; 2 uses
  %i.bzf = icmp eq ptr %i.bze, %i.byh
  br i1 %i.bzf, label %_ZN4llvm11SmallVectorINS_7SDValueELj10EED2Ev.exit, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  call void @free(ptr noundef %i.bze) #26
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj10EED2Ev.exit: ; preds = %bb.my, %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %179)
  call void @llvm.lifetime.end.p0(ptr nonnull %178)
  call void @llvm.lifetime.end.p0(ptr nonnull %177)
  call void @llvm.lifetime.end.p0(ptr nonnull %176)
  call void @llvm.lifetime.end.p0(ptr nonnull %175)
  br label %.critedge2356

bb.na:                                            ; preds = %bb.lp
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bpz, i64 80
  %i.bzh = load ptr, ptr %i.bzg, align 8, !tbaa !483
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzh, i64 88
  %i.bzj = load ptr, ptr %i.bzi, align 8, !tbaa !452 ; 2 uses
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bzj, i64 24 ; 2 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzj, i64 32
  %i.bzm = load i32, ptr %i.bzl, align 8, !tbaa !463
  %i.bzn = icmp ult i32 %i.bzm, 65
  %i.bzo = load ptr, ptr %i.bzk, align 8
  %spec.select.i.i.i.i2819 = select i1 %i.bzn, ptr %i.bzk, ptr %i.bzo
  %.0.i.i.i.i2820 = load i64, ptr %spec.select.i.i.i.i2819, align 8, !tbaa !465
  call void @llvm.lifetime.start.p0(ptr nonnull %183)
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bpz, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %183, ptr noundef nonnull align 8 dereferenceable(16) %i.bzp, i64 16, i1 false), !tbaa.struct !493
  call void @llvm.lifetime.start.p0(ptr nonnull %184)
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bpz, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %184, ptr noundef nonnull align 8 dereferenceable(16) %i.bzq, i64 16, i1 false), !tbaa.struct !493
  call void @llvm.lifetime.start.p0(ptr nonnull %185)
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.bpz, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %185, ptr noundef nonnull align 8 dereferenceable(16) %i.bzr, i64 16, i1 false), !tbaa.struct !493
  call void @llvm.lifetime.start.p0(ptr nonnull %186)
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bpz, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %186, ptr noundef nonnull align 8 dereferenceable(16) %i.bzs, i64 16, i1 false), !tbaa.struct !493
  call void @llvm.lifetime.start.p0(ptr nonnull %187)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %187, ptr noundef nonnull align 8 dereferenceable(16) %i.bpz, i64 16, i1 false), !tbaa.struct !493
  %i.bzt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bzu = load ptr, ptr %i.bzt, align 8, !tbaa !484 ; 2 uses
  %i.bzv = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bzw = load i16, ptr %i.bzv, align 2, !tbaa !614
  %i.bzx = zext i16 %i.bzw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %189) #26
  %i.bzy = trunc i64 %.0.i.i.i.i2820 to i32
  %i.bzz = add i32 %i.bzy, 20
  %i.caa = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.bzu, i32 %i.bzz, i16 %i.t, ptr null) #26 ; 2 uses
  %.fca.0.extract425 = extractvalue { ptr, i32 } %i.caa, 0
  %.fca.1.extract426 = extractvalue { ptr, i32 } %i.caa, 1
  store ptr %.fca.0.extract425, ptr %189, align 8
  %.sroa.2428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %189, i64 8
  store i32 %.fca.1.extract426, ptr %.sroa.2428.0..sroa_idx, align 8
  %i.cab = getelementptr inbounds nuw i8, ptr %189, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cab, ptr noundef nonnull align 8 dereferenceable(12) %183, i64 12, i1 false), !tbaa.struct !493
  %i.cac = getelementptr inbounds nuw i8, ptr %189, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cac, ptr noundef nonnull align 8 dereferenceable(12) %184, i64 12, i1 false), !tbaa.struct !493
  %i.cad = getelementptr inbounds nuw i8, ptr %189, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cad, ptr noundef nonnull align 8 dereferenceable(12) %185, i64 12, i1 false), !tbaa.struct !493
  %i.cae = getelementptr inbounds nuw i8, ptr %189, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cae, ptr noundef nonnull align 8 dereferenceable(12) %186, i64 12, i1 false), !tbaa.struct !493
  %i.caf = getelementptr inbounds nuw i8, ptr %189, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.caf, ptr noundef nonnull align 8 dereferenceable(12) %187, i64 12, i1 false), !tbaa.struct !493
  store ptr %189, ptr %188, align 8, !tbaa !607
  %i.cag = getelementptr inbounds nuw i8, ptr %188, i64 8
  store i64 6, ptr %i.cag, align 8, !tbaa !610
  %i.cah = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bzu, i32 noundef 1444, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr nonnull %i.aa, i32 %i.bzx, ptr noundef nonnull byval(%"class.llvm::ArrayRef.277") align 8 %188) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #26
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.cah)
  call void @llvm.lifetime.end.p0(ptr nonnull %187)
  call void @llvm.lifetime.end.p0(ptr nonnull %186)
  call void @llvm.lifetime.end.p0(ptr nonnull %185)
  call void @llvm.lifetime.end.p0(ptr nonnull %184)
  call void @llvm.lifetime.end.p0(ptr nonnull %183)
  br label %.critedge2356

bb.nb:                                            ; preds = %bb.c
  %i.cai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.caj = load ptr, ptr %i.cai, align 8, !tbaa !482 ; 2 uses
  %i.cak = load ptr, ptr %i.caj, align 8, !tbaa !483 ; 5 uses
  %i.cal = getelementptr inbounds nuw i8, ptr %i.caj, i64 8
  %i.cam = load i32, ptr %i.cal, align 8, !tbaa !449 ; 3 uses
  %i.can = getelementptr inbounds nuw i8, ptr %i.cak, i64 48
  %i.cao = load ptr, ptr %i.can, align 8, !tbaa !506
  %i.cap = zext i32 %i.cam to i64
  %i.caq = getelementptr inbounds nuw [16 x i8], ptr %i.cao, i64 %i.cap
  %.sroa.0.0.copyload.i.i.i2824 = load i16, ptr %i.caq, align 8, !tbaa !477 ; 6 uses
  %i.car = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i2825 = icmp ult i16 %i.car, 53
  br i1 %spec.select.i2825, label %bb.nc, label %bb.nd

bb.nc:                                            ; preds = %bb.nb
  %i.cas = add i16 %.sroa.0.0.copyload.i.i.i2824, -163
  %spec.select.i2826 = icmp ult i16 %i.cas, 53
  br i1 %spec.select.i2826, label %bb.ne, label %.thread4048

bb.nd:                                            ; preds = %bb.nb
  %i.cat = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i2827 = icmp ult i16 %i.cat, 144
  %i.cau = add i16 %.sroa.0.0.copyload.i.i.i2824, -19
  %spec.select.i2828 = icmp ult i16 %i.cau, 144
  %or.cond4141 = select i1 %spec.select.i2827, i1 %spec.select.i2828, i1 false
  br i1 %or.cond4141, label %bb.ne, label %.thread4048

bb.ne:                                            ; preds = %bb.nd, %bb.nc
  %i.cav = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.caw = load ptr, ptr %i.cav, align 8, !tbaa !484
  tail call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.caw, ptr nonnull %1, i32 0, ptr nonnull %i.cak, i32 %i.cam) #26
  tail call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef nonnull %i.cak) #26
  %i.cax = load ptr, ptr %i.cav, align 8, !tbaa !484
  tail call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.cax, ptr noundef nonnull %1) #26
  br label %.critedge2356

.thread4048:                                      ; preds = %bb.nc, %bb.nd
  %i.cay = getelementptr inbounds nuw i8, ptr %i.p, i64 408
  %i.caz = load i8, ptr %i.cay, align 8, !tbaa !236, !range !18, !noundef !19
  %i.cba = trunc nuw i8 %i.caz to i1
  br i1 %i.cba, label %bb.nf, label %.critedge2292

bb.nf:                                            ; preds = %.thread4048
  %i.cbb = icmp eq i16 %.sroa.0.0.copyload.i.i, 7
  br i1 %i.cbb, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  switch i16 %.sroa.0.0.copyload.i.i.i2824, label %.critedge2292 [
    i16 43, label %.critedge2395
    i16 56, label %.critedge2395
  ]

bb.nh:                                            ; preds = %bb.nf
  %i.cbc = icmp eq i16 %.sroa.0.0.copyload.i.i.i2824, 7
  br i1 %i.cbc, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  switch i16 %.sroa.0.0.copyload.i.i, label %.critedge2292 [
    i16 43, label %.critedge2395
    i16 56, label %.critedge2395
  ]

bb.nj:                                            ; preds = %bb.nh
  %i.cbd = icmp eq i16 %.sroa.0.0.copyload.i.i, 8
  br i1 %i.cbd, label %bb.nk, label %.thread4053

bb.nk:                                            ; preds = %bb.nj
  switch i16 %.sroa.0.0.copyload.i.i.i2824, label %.critedge2292 [
    i16 47, label %.critedge2395
    i16 58, label %.critedge2395
    i16 71, label %.critedge2395
  ]

.thread4053:                                      ; preds = %bb.nj
  %i.cbe = icmp eq i16 %.sroa.0.0.copyload.i.i.i2824, 8
  br i1 %i.cbe, label %bb.nl, label %.critedge2292

bb.nl:                                            ; preds = %.thread4053
  switch i16 %.sroa.0.0.copyload.i.i, label %.critedge2292 [
    i16 47, label %.critedge2395
    i16 58, label %.critedge2395
    i16 71, label %.critedge2395
  ]

.critedge2395:                                    ; preds = %bb.nl, %bb.nl, %bb.nl, %bb.ni, %bb.ni, %bb.nk, %bb.nk, %bb.nk, %bb.ng, %bb.ng
  %i.cbf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cbg = load ptr, ptr %i.cbf, align 8, !tbaa !484
  tail call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.cbg, ptr nonnull %1, i32 0, ptr nonnull %i.cak, i32 %i.cam) #26
  tail call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef nonnull %i.cak) #26
  %i.cbh = load ptr, ptr %i.cbf, align 8, !tbaa !484
  tail call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.cbh, ptr noundef nonnull %1) #26
  br label %.critedge2356

bb.nm:                                            ; preds = %bb.c
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.p, i64 408
  %i.cbj = load i8, ptr %i.cbi, align 8, !tbaa !236, !range !18, !noundef !19
  %i.cbk = trunc nuw i8 %i.cbj to i1
  br i1 %i.cbk, label %bb.nn, label %.critedge2292

bb.nn:                                            ; preds = %bb.nm
  %i.cbl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cbm = load ptr, ptr %i.cbl, align 8, !tbaa !482
end_hunk_2
begin_hunk_3_@_ZN4llvm17RISCVDAGToDAGISel6SelectEPNS_6SDNodeE:bb.a
bb.py:                                            ; preds = %bb.c, %bb.c
  %i.cnv = icmp eq i32 %i.l, 601
  %i.cnw = select i1 %i.cnv, i32 678, i32 680
  %i.cnx = load i16, ptr getelementptr inbounds nuw (i8, ptr @PreferredLandingPadLabel, i64 8), align 8, !tbaa !774
  %.not4160 = icmp eq i16 %i.cnx, 0
  br i1 %.not4160, label %bb.qb, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.cny = load i32, ptr getelementptr inbounds nuw (i8, ptr @PreferredLandingPadLabel, i64 120), align 8, !tbaa !783 ; 2 uses
  %i.cnz = zext nneg i32 %i.cny to i64
  %i.coa = icmp ult i32 %i.cny, 1048576
  br i1 %i.coa, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.4, i1 noundef zeroext true) #29
  unreachable

bb.qb:                                            ; preds = %bb.pz, %bb.py
  %.02144 = phi i64 [ 0, %bb.py ], [ %i.cnz, %bb.pz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %212) #26
  %i.cob = getelementptr inbounds nuw i8, ptr %212, i64 16 ; 2 uses
  store ptr %i.cob, ptr %212, align 8, !tbaa !21
  %i.coc = getelementptr inbounds nuw i8, ptr %212, i64 8 ; 5 uses
  store i32 0, ptr %i.coc, align 8, !tbaa !491
  %i.cod = getelementptr inbounds nuw i8, ptr %212, i64 12 ; 2 uses
  store i32 8, ptr %i.cod, align 4, !tbaa !492
  %i.coe = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.cof = load ptr, ptr %i.coe, align 8, !tbaa !482 ; 2 uses
  %i.cog = getelementptr inbounds nuw i8, ptr %i.cof, i64 40
  %.sroa.0175.0.copyload = load ptr, ptr %i.cog, align 8, !tbaa !486
  %.sroa.2176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cof, i64 48
  %.sroa.2176.0.copyload = load i32, ptr %.sroa.2176.0..sroa_idx, align 8, !tbaa !485
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %212, ptr %.sroa.0175.0.copyload, i32 %.sroa.2176.0.copyload)
  %i.coh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.coi = load ptr, ptr %i.coh, align 8, !tbaa !484
  %i.coj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.coi, i64 noundef %.02144, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %i.t, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.coj, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.coj, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %212, ptr %.fca.0.extract, i32 %.fca.1.extract)
  %i.cok = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.col = load i16, ptr %i.cok, align 8, !tbaa !617
  %i.com = zext i16 %i.col to i32                 ; 2 uses
  %i.con = call noundef ptr @_ZNK4llvm6SDNode12getGluedNodeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %.not2249 = icmp eq ptr %i.con, null            ; 2 uses
  %i.coo = add nsw i32 %i.com, -1                 ; 2 uses
  %i.cop = select i1 %.not2249, i32 %i.com, i32 %i.coo ; 2 uses
  %.not22504178 = icmp eq i32 %i.cop, 2
  br i1 %.not22504178, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, %bb.qb
  %i.coq = load ptr, ptr %i.coe, align 8, !tbaa !482 ; 2 uses
  %.sroa.0155.0.copyload = load ptr, ptr %i.coq, align 8, !tbaa !486
  %.sroa.2156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.coq, i64 8
  %.sroa.2156.0.copyload = load i32, ptr %.sroa.2156.0..sroa_idx, align 8, !tbaa !485
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %212, ptr %.sroa.0155.0.copyload, i32 %.sroa.2156.0.copyload)
  br i1 %.not2249, label %bb.qf, label %bb.qe

.lr.ph:                                           ; preds = %bb.qb, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.021394179 = phi i32 [ %i.cpb, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ 2, %bb.qb ] ; 2 uses
  %i.cor = load ptr, ptr %i.coe, align 8, !tbaa !482
  %i.cos = zext i32 %.021394179 to i64
  %i.cot = getelementptr inbounds nuw [40 x i8], ptr %i.cor, i64 %i.cos ; 2 uses
  %.sroa.0158.0.copyload = load ptr, ptr %i.cot, align 8, !tbaa !486 ; 2 uses
  %.sroa.2159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cot, i64 8
  %.sroa.2159.0.copyload = load i32, ptr %.sroa.2159.0..sroa_idx, align 8, !tbaa !485 ; 2 uses
  %i.cou = load i32, ptr %i.coc, align 8, !tbaa !491 ; 2 uses
  %i.cov = load i32, ptr %i.cod, align 4, !tbaa !492
  %.not.i2888 = icmp ult i32 %i.cou, %i.cov
  br i1 %.not.i2888, label %bb.qd, label %bb.qc, !prof !638

bb.qc:                                            ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %212, ptr %.sroa.0158.0.copyload, i32 %.sroa.2159.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.qd:                                            ; preds = %.lr.ph
  %i.cow = zext i32 %i.cou to i64
  %i.cox = load ptr, ptr %212, align 8, !tbaa !21
  %i.coy = getelementptr inbounds nuw [16 x i8], ptr %i.cox, i64 %i.cow ; 2 uses
  store ptr %.sroa.0158.0.copyload, ptr %i.coy, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.coy, i64 8
  store i32 %.sroa.2159.0.copyload, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.coz = load i32, ptr %i.coc, align 8, !tbaa !491
  %i.cpa = add i32 %i.coz, 1
  store i32 %i.cpa, ptr %i.coc, align 8, !tbaa !491
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.qc, %bb.qd
  %i.cpb = add i32 %.021394179, 1                 ; 2 uses
  %.not2250 = icmp eq i32 %i.cpb, %i.cop
  br i1 %.not2250, label %._crit_edge, label %.lr.ph, !llvm.loop !789

bb.qe:                                            ; preds = %._crit_edge
  %i.cpc = load ptr, ptr %i.coe, align 8, !tbaa !482
  %i.cpd = zext i32 %i.coo to i64
  %i.cpe = getelementptr inbounds nuw [40 x i8], ptr %i.cpc, i64 %i.cpd ; 2 uses
  %.sroa.0153.0.copyload = load ptr, ptr %i.cpe, align 8, !tbaa !486
  %.sroa.2154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cpe, i64 8
  %.sroa.2154.0.copyload = load i32, ptr %.sroa.2154.0..sroa_idx, align 8, !tbaa !485
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %212, ptr %.sroa.0153.0.copyload, i32 %.sroa.2154.0.copyload)
  br label %bb.qf

bb.qf:                                            ; preds = %bb.qe, %._crit_edge
  %i.cpf = load ptr, ptr %i.coh, align 8, !tbaa !484
  %i.cpg = load ptr, ptr %i.z, align 8, !tbaa !506
  %i.cph = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.cpi = load i16, ptr %i.cph, align 2, !tbaa !614
  %i.cpj = zext i16 %i.cpi to i32
  %i.cpk = load ptr, ptr %212, align 8, !tbaa !21
  store ptr %i.cpk, ptr %213, align 8, !tbaa !607
  %i.cpl = getelementptr inbounds nuw i8, ptr %213, i64 8
  %i.cpm = load i32, ptr %i.coc, align 8, !tbaa !491
  %i.cpn = zext i32 %i.cpm to i64
  store i64 %i.cpn, ptr %i.cpl, align 8, !tbaa !610
  %i.cpo = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cpf, i32 noundef %i.cnw, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.cpg, i32 %i.cpj, ptr noundef nonnull byval(%"class.llvm::ArrayRef.277") align 8 %213) #26
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.cpo)
  %i.cpp = load ptr, ptr %212, align 8, !tbaa !21 ; 2 uses
  %i.cpq = icmp eq ptr %i.cpp, %i.cob
  br i1 %i.cpq, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2891, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  call void @free(ptr noundef %i.cpp) #26
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2891

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2891: ; preds = %bb.qf, %bb.qg
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #26
  br label %.critedge2356

bb.qh:                                            ; preds = %bb.c
  %i.cpr = getelementptr inbounds nuw i8, ptr %i.p, i64 591
  %i.cps = load i8, ptr %i.cpr, align 1, !tbaa !429, !range !18, !noundef !19
  %i.cpt = trunc nuw i8 %i.cps to i1
  br i1 %i.cpt, label %.critedge2292, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.cpu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cpv = load ptr, ptr %i.cpu, align 8, !tbaa !482
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.cpv, i64 120
  %i.cpx = load ptr, ptr %i.cpw, align 8, !tbaa !483
  %i.cpy = getelementptr inbounds nuw i8, ptr %i.cpx, i64 88
  %i.cpz = load ptr, ptr %i.cpy, align 8, !tbaa !452 ; 2 uses
  %i.cqa = getelementptr inbounds nuw i8, ptr %i.cpz, i64 24 ; 2 uses
  %i.cqb = getelementptr inbounds nuw i8, ptr %i.cpz, i64 32
  %i.cqc = load i32, ptr %i.cqb, align 8, !tbaa !463
  %i.cqd = icmp ult i32 %i.cqc, 65
  %i.cqe = load ptr, ptr %i.cqa, align 8
  %spec.select.i.i.i.i2892 = select i1 %i.cqd, ptr %i.cqa, ptr %i.cqe
  %.0.i.i.i.i2893 = load i64, ptr %spec.select.i.i.i.i2892, align 8, !tbaa !465
  %i.cqf = trunc i64 %.0.i.i.i.i2893 to i32       ; 2 uses
  %i.cqg = icmp ugt i32 %i.cqf, 2
  br i1 %i.cqg, label %.critedge2292, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.cqh = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i2894 = load i64, ptr %i.cqh, align 8
  %i.cqi = and i64 %.0.copyload.i.i.i.i.i.i2894, -5
  %i.cqj = inttoptr i64 %i.cqi to ptr
  %i.cqk = getelementptr inbounds nuw i8, ptr %i.cqj, i64 32 ; 4 uses
  %i.cql = load i16, ptr %i.cqk, align 2, !tbaa !790 ; 3 uses
  %i.cqm = or i16 %i.cql, 8
  store i16 %i.cqm, ptr %i.cqk, align 2, !tbaa !790
  switch i32 %i.cqf, label %default.unreachable4255 [
    i32 0, label %bb.qk
    i32 1, label %.thread4116
    i32 2, label %.critedge2292
  ]

.thread4116:                                      ; preds = %bb.qj
  %i.cqn = or i16 %i.cql, 72
  store i16 %i.cqn, ptr %i.cqk, align 2, !tbaa !790
  br label %.critedge2292

default.unreachable4255:                          ; preds = %bb.qj
  unreachable

bb.qk:                                            ; preds = %bb.qj
  %i.cqo = or i16 %i.cql, 200
  store i16 %i.cqo, ptr %i.cqk, align 2, !tbaa !790
  br label %.critedge2292

.critedge2373:                                    ; preds = %bb.ot
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #26
  br label %.critedge2292

.critedge2375:                                    ; preds = %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #26
  br label %.critedge2292

.critedge2292.critedge2397:                       ; preds = %bb.pn, %bb.po, %bb.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #26
  br label %.critedge2292

.critedge2292.critedge2399:                       ; preds = %bb.pt, %bb.pq
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #26
  br label %.critedge2292

.critedge2292:                                    ; preds = %.lr.ph.i.i2606, %.lr.ph.i.i2621, %.lr.ph.i.i2476, %.lr.ph.i.i2455, %.lr.ph.i.i2441, %.lr.ph.i.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit2649.thread, %bb.nl, %bb.ni, %bb.c, %bb.on, %bb.nk, %bb.ng, %bb.ge, %bb.bv, %bb.bn, %.thread4053, %bb.qj, %bb.oo, %bb.nn, %bb.jl, %bb.im, %bb.gr, %bb.gl, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit2595, %bb.gc, %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread.thread, %bb.de, %bb.cw, %bb.cu, %bb.cm, %bb.cl, %bb.cd, %bb.bu, %bb.bo, %bb.bl, %bb.bk, %bb.pl, %bb.pk, %.thread4010, %bb.gd, %bb.gf, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2603, %_ZNK4llvm7SDValue9hasOneUseEv.exit2615, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit2618, %_ZNK4llvm7SDValue9hasOneUseEv.exit2630, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit2452, %_ZNK4llvm7SDValue9hasOneUseEv.exit2464, %_ZNK4llvm8TypeSizecvmEv.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit2417, %_ZN4llvm16isShiftedMask_64Em.exit2424.thread, %bb.ca, %_ZNK4llvm7SDValue9hasOneUseEv.exit2450, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %_ZN4llvm16isShiftedMask_64Em.exit, %bb.bs, %bb.br, %bb.ct, %_ZNK4llvm7SDValue9hasOneUseEv.exit2485, %bb.da, %_ZNK4llvm8TypeSizecvmEv.exit2501, %.thread4116, %bb.op, %.thread4048, %bb.jg, %bb.ih, %bb.df, %.critedge2292.critedge2399, %.critedge2292.critedge2397, %_ZN4llvm5APIntD2Ev.exit2846, %bb.ig, %bb.pj, %bb.hf, %_ZNK4llvm6SDNode9hasOneUseEv.exit, %bb.qi, %bb.qk, %.critedge2375, %.critedge2373, %bb.lp, %bb.kl, %bb.qh, %bb.oy, %bb.om, %bb.nm, %bb.hd, %bb.he, %bb.dd, %bb.dc, %bb.be, %bb.aw
  call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN4llvm17RISCVDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12MatcherTable, i32 noundef 1209895, ptr noundef nonnull @_ZZN4llvm17RISCVDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12OperandLists) #26
  br label %.critedge2356

.critedge2356:                                    ; preds = %bb.jf, %bb.je, %bb.jc, %bb.ft, %bb.fv, %bb.ex, %bb.ee, %bb.dp, %.critedge53, %bb.dz, %bb.du, %bb.ej, %bb.ef, %bb.ei, %bb.et, %bb.eq, %bb.fd, %bb.fa, %bb.fg, %_ZNK4llvm7SDValue9hasOneUseEv.exit2578.thread.thread, %.split2189, %bb.ne, %.critedge2395, %bb.ph, %bb.ox, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit2714, %bb.gt, %bb.cc, %bb.cg, %bb.ch, %bb.ci, %.critedge2295, %bb.bq, %bb.bt, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, %_ZN4llvm5APIntD2Ev.exit2845, %bb.hr, %_ZN4llvm5APIntD2Ev.exit2838, %bb.cs, %bb.na, %bb.lq, %bb.lr, %bb.ls, %bb.lt, %bb.lu, %bb.lv, %bb.lw, %bb.lx, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2786, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2796, %bb.mi, %switch.lookup4292, %_ZN4llvm11SmallVectorINS_7SDValueELj10EED2Ev.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2770, %bb.km, %bb.kn, %bb.ko, %bb.kp, %bb.kq, %bb.kr, %bb.ks, %bb.kt, %bb.ku, %bb.kv, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2752, %_ZN4llvm11SmallVectorINS_7SDValueELj7EED2Ev.exit, %.critedge2371, %.critedge2367, %bb.kj, %bb.kk, %bb.hy, %bb.hc, %bb.dd, %bb.dc, %bb.db, %bb.ck, %bb.cj, %bb.e, %.critedge, %.critedge2292, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2891, %bb.if, %bb.hx, %bb.hs, %bb.hb, %bb.gy, %bb.bj, %bb.bd, %bb.ax, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.ql

bb.ql:                                            ; preds = %.critedge2356, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4llvm12SelectionDAG14getCopyFromRegENS_7SDValueERKNS_5SDLocENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 %4, ptr noundef byval(%"struct.llvm::EVT") align 8 %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %6 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %7 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %.sroa.011.0.copyload = load i16, ptr %5, align 8, !tbaa !477 ; 2 uses
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.213.0.copyload = load ptr, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !479 ; 2 uses
  %i.a = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 %.sroa.011.0.copyload, ptr %.sroa.213.0.copyload, i16 1, ptr null) #26 ; 2 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  %i.c = extractvalue { ptr, i32 } %i.a, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %1, ptr %6, align 16, !tbaa !486
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %2, ptr %.sroa.218.0..sroa_idx, align 8, !tbaa !485
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 %4, i16 %.sroa.011.0.copyload, ptr %.sroa.213.0.copyload) #26 ; 2 uses
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.e, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.e, 1
  store ptr %.fca.0.extract3, ptr %i.d, align 16
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.fca.1.extract4, ptr %.sroa.26.0..sroa_idx, align 8
  store ptr %6, ptr %7, align 8, !tbaa !607
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.f, align 8, !tbaa !610
  %i.g = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.b, i32 %i.c, ptr noundef nonnull byval(%"class.llvm::ArrayRef.277") align 8 %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret { ptr, i32 } %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL9selectImmPN4llvm12SelectionDAGERKNS_5SDLocENS_3MVTElRKNS_14RISCVSubtargetE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(519768) %4) unnamed_addr #3 {
bb.a:
  %5 = alloca %"class.llvm::SmallVector.475", align 8 ; 7 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.llvm::SmallVector.475", align 8 ; 10 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN4llvm11RISCVMatInt15generateInstSeqElRKNS_15MCSubtargetInfoE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.475") align 8 %5, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(320) %4) #26
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !491  ; 2 uses
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL15UsePseudoMovImm, i64 120), align 8, !tbaa !792, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.h, 0
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.h, 1
  store ptr %.fca.0.extract20, ptr %6, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract21, ptr %.sroa.223.0..sroa_idx, align 8
  %i.i = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 810, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #26
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.j = icmp ugt i32 %i.d, 3
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN4llvm11RISCVMatInt21generateTwoRegInstSeqElRKNS_15MCSubtargetInfoERjS4_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.475") align 8 %7, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(320) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #26
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !491  ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = zext i32 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, 2
  %i.o = load i32, ptr %i.c, align 8, !tbaa !491
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %i.n, %i.p
  br i1 %i.q, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.f
  %i.r = call fastcc { ptr, i32 } @_ZL12selectImmSeqPN4llvm12SelectionDAGERKNS_5SDLocENS_3MVTERNS_11SmallVectorINS_11RISCVMatInt4InstELj8EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, ptr noundef nonnull align 8 dereferenceable(80) %7) ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.r, 0 ; 2 uses
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.r, 1 ; 2 uses
  store ptr %.fca.0.extract9, ptr %8, align 8, !tbaa !486
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract10, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !485
  %i.s = load i32, ptr %i.a, align 4, !tbaa !485
  %i.t = zext i32 %i.s to i64
  %i.u = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.u, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.u, 1
  store ptr %.fca.0.extract3, ptr %9, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract4, ptr %.sroa.26.0..sroa_idx, align 8
  %i.v = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 15885, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #26
  %i.w = load i32, ptr %i.b, align 4, !tbaa !485
  store ptr %.fca.0.extract9, ptr %10, align 8, !tbaa !486
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract10, ptr %.sroa.5.0..sroa_idx16, align 8, !tbaa !485
  store ptr %i.v, ptr %11, align 8, !tbaa !486
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !485
  %i.x = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #26
  %i.y = load ptr, ptr %7, align 8, !tbaa !21     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.y) #26
  br label %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.ab = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit51, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.ab) #26
  br label %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit51

_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit51: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

.thread:                                          ; preds = %bb.b, %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit51, %bb.d
  %i.ae = call fastcc { ptr, i32 } @_ZL12selectImmSeqPN4llvm12SelectionDAGERKNS_5SDLocENS_3MVTERNS_11SmallVectorINS_11RISCVMatInt4InstELj8EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, ptr noundef nonnull align 8 dereferenceable(80) %5) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ae, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit, %.thread, %bb.c
  %.sroa.063.0 = phi ptr [ %i.i, %bb.c ], [ %.fca.0.extract, %.thread ], [ %i.x, %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit ]
  %.sroa.464.0 = phi i32 [ 0, %bb.c ], [ %.fca.1.extract, %.thread ], [ 0, %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit ]
  %i.af = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit52, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.af) #26
  br label %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit52

_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit52: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.063.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.464.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm7APFloat14bitcastToAPIntEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !465
  %.not = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_S4_NS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.277") align 8) local_unnamed_addr #4

end_hunk_3
