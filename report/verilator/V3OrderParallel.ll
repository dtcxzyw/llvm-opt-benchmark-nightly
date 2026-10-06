Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3OrderParallel?download=true
inline.NumInlined: 4778
inline.NumDeleted: 1900
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN11PropagateCpILN8GraphWay2enE1EE14cpHasIncreasedEP13V3GraphVertexm:bb.a
bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.g, align 8, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.044.054, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !111
  %.not.i20.i = icmp eq ptr %i.p, null
  br i1 %.not.i20.i, label %_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.i, label %_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.sink.split.i

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %i.p, null
  store ptr null, ptr %i.n, align 8, !tbaa !106
  br i1 %.not.i.i, label %_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.sink.split.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !106  ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !106
  store ptr %i.s, ptr %i.n, align 8, !tbaa !106
  %.not.i19.i = icmp eq ptr %i.s, null
  br i1 %.not.i19.i, label %_ZN11PairingHeapI7EdgeKeyE4Link4linkEPNS1_4NodeE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.n, ptr %i.t, align 8, !tbaa !110
  br label %_ZN11PairingHeapI7EdgeKeyE4Link4linkEPNS1_4NodeE.exit.i

_ZN11PairingHeapI7EdgeKeyE4Link4linkEPNS1_4NodeE.exit.i: ; preds = %bb.g, %bb.f
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !106  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !106
  store ptr %i.u, ptr %i.o, align 8, !tbaa !106
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.o, ptr %i.v, align 8, !tbaa !110
  br label %_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.sink.split.sink.split.i

_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.sink.split.sink.split.i: ; preds = %_ZN11PairingHeapI7EdgeKeyE4Link4linkEPNS1_4NodeE.exit.i, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.044.054, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110  ; 2 uses
  store ptr %i.o, ptr %i.x, align 8, !tbaa !111
  br label %_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.sink.split.i

_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.sink.split.i: ; preds = %_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.sink.split.sink.split.i, %bb.d
  %.sink25.i = phi ptr [ %i.p, %bb.d ], [ %i.o, %_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.sink.split.sink.split.i ]
  %.sink.i = phi ptr [ %i.r, %bb.d ], [ %i.x, %_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.sink.split.sink.split.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sink25.i, i64 16
  store ptr %.sink.i, ptr %i.y, align 8, !tbaa !110
  br label %_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.i

_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.i: ; preds = %_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.sink.split.i, %bb.d
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !106  ; 2 uses
  store ptr %i.z, ptr %i.g, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.g, ptr %i.aa, align 8, !tbaa !110
  store ptr %i.g, ptr %i.k, align 8, !tbaa !106
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.044.054, i64 128
  store ptr %i.k, ptr %i.ab, align 8, !tbaa !110
  br label %_ZN11PairingHeapI7EdgeKeyE11increaseKeyImEEvPNS1_4NodeET_.exit

_ZN11PairingHeapI7EdgeKeyE11increaseKeyImEEvPNS1_4NodeET_.exit: ; preds = %_ZN11PairingHeapI7EdgeKeyE4Node11replaceWithEPS2_.exit.i, %bb.b, %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !55 ; 2 uses
  %.not = icmp ult i64 %i.ad, %2
  br i1 %.not, label %bb.h, label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit

bb.h:                                             ; preds = %_ZN11PairingHeapI7EdgeKeyE11increaseKeyImEEvPNS1_4NodeET_.exit
  %i.ae = sub nuw i64 %2, %i.ad                   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !118 ; 12 uses
  %.not37 = icmp eq ptr %i.ag, null
  br i1 %.not37, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !489
  %i.aj = icmp ugt i64 %i.ae, %i.ai
  br i1 %i.aj, label %bb.j, label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit

bb.j:                                             ; preds = %bb.i
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !489
  %i.ak = load ptr, ptr %0, align 8, !tbaa !490
  %i.al = icmp eq ptr %i.ag, %i.ak
  br i1 %i.al, label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !490 ; 7 uses
  %.not.i18.i38 = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !490 ; 4 uses
  br i1 %.not.i18.i38, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.ag, align 8, !tbaa !490
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !493 ; 2 uses
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !328
  %.not.i19.i43 = icmp eq ptr %i.ao, null
  br i1 %.not.i19.i43, label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i, label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.sink.split.i

bb.m:                                             ; preds = %bb.k
  %.not.i.i39 = icmp eq ptr %i.ao, null
  store ptr null, ptr %i.am, align 8, !tbaa !490
  br i1 %.not.i.i39, label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.sink.split.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !490 ; 3 uses
  store ptr null, ptr %i.an, align 8, !tbaa !490
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !490
  %.not.i20.i40 = icmp eq ptr %i.ar, null
  br i1 %.not.i20.i40, label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Link4linkEPNS5_4NodeE.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.am, ptr %i.as, align 8, !tbaa !493
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Link4linkEPNS5_4NodeE.exit.i

_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Link4linkEPNS5_4NodeE.exit.i: ; preds = %bb.o, %bb.n
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !490 ; 2 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !490
  store ptr %i.at, ptr %i.an, align 8, !tbaa !490
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.an, ptr %i.au, align 8, !tbaa !493
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.sink.split.sink.split.i

_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.sink.split.sink.split.i: ; preds = %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Link4linkEPNS5_4NodeE.exit.i, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !493 ; 2 uses
  store ptr %i.an, ptr %i.aw, align 8, !tbaa !328
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.sink.split.i

_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.sink.split.i: ; preds = %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.sink.split.sink.split.i, %bb.l
  %.sink25.i41 = phi ptr [ %i.ao, %bb.l ], [ %i.an, %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.sink.split.sink.split.i ]
  %.sink.i42 = phi ptr [ %i.aq, %bb.l ], [ %i.aw, %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.sink.split.sink.split.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink25.i41, i64 16
  store ptr %.sink.i42, ptr %i.ax, align 8, !tbaa !493
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i

_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i: ; preds = %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.sink.split.i, %bb.l
  %i.ay = load ptr, ptr %0, align 8, !tbaa !490   ; 2 uses
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !490
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit.sink.split.sink.split

.critedge:                                        ; preds = %bb.h
  %i.az = tail call noundef ptr @_ZN11PropagateCpILN8GraphWay2enE1EE9allocNodeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) ; 6 uses
  store ptr %i.az, ptr %i.af, align 8, !tbaa !118
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %i.f, ptr %i.ba, align 8, !tbaa !102
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %i.ae, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !55
  %i.bb = load ptr, ptr %0, align 8, !tbaa !490   ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !490
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit.sink.split, label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit.sink.split.sink.split

_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit.sink.split.sink.split: ; preds = %.critedge, %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i
  %.sink69 = phi ptr [ %i.ay, %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i ], [ %i.bb, %.critedge ]
  %.sink67 = phi ptr [ %i.ag, %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i ], [ %i.az, %.critedge ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink69, i64 16
  store ptr %.sink67, ptr %i.bc, align 8, !tbaa !493
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit.sink.split

_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit.sink.split: ; preds = %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit.sink.split.sink.split, %.critedge
  %.sink = phi ptr [ %i.az, %.critedge ], [ %.sink67, %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit.sink.split.sink.split ] ; 2 uses
  store ptr %.sink, ptr %0, align 8, !tbaa !490
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  store ptr %0, ptr %i.bd, align 8, !tbaa !493
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit

_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit: ; preds = %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE11increaseKeyImEEvPNS5_4NodeET_.exit.sink.split, %bb.i, %bb.j, %_ZN11PairingHeapI7EdgeKeyE11increaseKeyImEEvPNS1_4NodeET_.exit
  %.sroa.044.0 = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %.not51 = icmp eq ptr %.sroa.044.0, null
  br i1 %.not51, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11PropagateCpILN8GraphWay2enE0EE2goEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !484    ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.b, null
  br i1 %.not.i.i24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK10LogicMTask8stepCostEv.exit
  %i.f = phi ptr [ %i.b, %.lr.ph ], [ %i.bj, %_ZNK10LogicMTask8stepCostEv.exit ] ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !484
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit.thread, label %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit

_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit.thread: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !484
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !487
  br label %bb.c

_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit: ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !484
  %i.j = call noundef ptr @_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE6reduceEPNS5_4NodeE(ptr noundef nonnull %i.f) ; 10 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !484
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store ptr %0, ptr %i.k, align 8, !tbaa !487
  %.pr = load ptr, ptr %i.j, align 8, !tbaa !484  ; 3 uses
  %.not.i11.i = icmp eq ptr %.pr, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !484  ; 3 uses
  br i1 %.not.i11.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit.thread, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit
  %i.n = phi ptr [ %.pre, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit.thread ], [ %0, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit ] ; 2 uses
  %i.o = phi ptr [ %i.i, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit.thread ], [ %i.m, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit ] ; 3 uses
  %i.p = phi ptr [ %i.h, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit.thread ], [ %i.l, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit ]
  %.0.i23 = phi ptr [ %i.f, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit.thread ], [ %i.j, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit ] ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !484
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i23, i64 16
  store ptr %i.o, ptr %i.n, align 8, !tbaa !314
  %.not.i12.i = icmp eq ptr %i.o, null
  br i1 %.not.i12.i, label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.n, ptr %i.r, align 8, !tbaa !487
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i

_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i: ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.q, align 8, !tbaa !487
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE6removeEPNS5_4NodeE.exit

bb.e:                                             ; preds = %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE3maxEv.exit
  %.not.i.i17 = icmp eq ptr %i.m, null
  br i1 %.not.i.i17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.j, align 8, !tbaa !484
  store ptr %.pr, ptr %0, align 8, !tbaa !314
  %i.s = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  store ptr %0, ptr %i.s, align 8, !tbaa !487
  store ptr null, ptr %i.k, align 8, !tbaa !487
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE6removeEPNS5_4NodeE.exit

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %i.l, align 8, !tbaa !484
  %i.t = call noundef ptr @_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE6reduceEPNS5_4NodeE(ptr noundef nonnull %i.m) ; 4 uses
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !484  ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !484
  store ptr %i.u, ptr %i.t, align 8, !tbaa !484
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.t, ptr %i.v, align 8, !tbaa !487
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !487  ; 2 uses
  store ptr %i.t, ptr %i.w, align 8, !tbaa !314
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !487
  store ptr null, ptr %i.k, align 8, !tbaa !487
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE6removeEPNS5_4NodeE.exit

_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE6removeEPNS5_4NodeE.exit: ; preds = %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i, %bb.f, %bb.g
  %.0.i22 = phi ptr [ %.0.i23, %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i ], [ %i.j, %bb.f ], [ %i.j, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i22, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !494  ; 5 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !102
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i22, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !483
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !495
  store ptr %i.ac, ptr %.0.i22, align 8, !tbaa !496
  store ptr %.0.i22, ptr %i.c, align 8, !tbaa !495
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store ptr null, ptr %i.ad, align 8, !tbaa !118
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !55
  %i.ag = add i64 %i.af, %i.ab                    ; 3 uses
  %i.ah = load i8, ptr %i.d, align 8, !tbaa !311, !range !226, !noundef !227
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %bb.l, !prof !112

bb.h:                                             ; preds = %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE6removeEPNS5_4NodeE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  %i.ak = call noundef ptr @_ZNK11PairingHeapI7EdgeKeyE3maxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !392
  %.not = icmp eq i64 %i.am, %i.ag
  br i1 %.not, label %bb.j, label %bb.i, !prof !92

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.ao = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str, i32 noundef 938) ; 0 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() ; 2 uses
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.111, i64 noundef 37) ; 0 uses
  call void @_ZNK13V3GraphVertex15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr noundef nonnull align 8 dereferenceable(112) %i.ap)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = call { ptr, i8 } @_ZNSt3setIP10LogicMTaskSt4lessIS1_ESaIS1_EE6insertERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ar, 1
  %i.as = trunc i8 %.fca.1.extract to i1
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.k, !prof !92

bb.k:                                             ; preds = %bb.j
  %i.at = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str, i32 noundef 943) ; 0 uses
  %i.au = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() ; 2 uses
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.112, i64 noundef 20) ; 0 uses
  call void @_ZNK13V3GraphVertex15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %.pre26, ptr noundef nonnull align 8 dereferenceable(112) %i.au)
  %.pre25 = load ptr, ptr %i.a, align 8, !tbaa !102
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE6removeEPNS5_4NodeE.exit
  %i.aw = phi ptr [ %.pre26, %bb.j ], [ %.pre25, %bb.k ], [ %i.z, %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE0EE10PendingKeyEE6removeEPNS5_4NodeE.exit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  store i64 %i.ag, ptr %i.ax, align 8, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !103 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZNK10LogicMTask8stepCostEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = uitofp i64 %i.az to double
  %i.bc = call double @log(double noundef %i.bb) #29
  %i.bd = fmul double %i.bc, 2.000000e+01
  %i.be = call double @llvm.ceil.f64(double %i.bd)
  %i.bf = fdiv double %i.be, 2.000000e+01
  %i.bg = call double @exp(double noundef %i.bf) #29
  %i.bh = fptoui double %i.bg to i64
  br label %_ZNK10LogicMTask8stepCostEv.exit

_ZNK10LogicMTask8stepCostEv.exit:                 ; preds = %bb.l, %bb.m
  %.0.i.i = phi i64 [ %i.bh, %bb.m ], [ 0, %bb.l ]
  %i.bi = add i64 %.0.i.i, %i.ag
  call void @_ZN11PropagateCpILN8GraphWay2enE0EE14cpHasIncreasedEP13V3GraphVertexm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %i.aw, i64 noundef %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.bj = load ptr, ptr %0, align 8, !tbaa !484   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %._crit_edge, label %bb.b, !llvm.loop !845

._crit_edge:                                      ; preds = %_ZNK10LogicMTask8stepCostEv.exit, %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !311, !range !226, !noundef !227
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZNSt3setIP10LogicMTaskSt4lessIS1_ESaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bn) #29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11PropagateCpILN8GraphWay2enE1EE2goEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !490    ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.b, null
  br i1 %.not.i.i24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK10LogicMTask8stepCostEv.exit
  %i.f = phi ptr [ %i.b, %.lr.ph ], [ %i.bj, %_ZNK10LogicMTask8stepCostEv.exit ] ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !490
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit.thread, label %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit

_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit.thread: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !490
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !493
  br label %bb.c

_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit: ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !490
  %i.j = call noundef ptr @_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE6reduceEPNS5_4NodeE(ptr noundef nonnull %i.f) ; 10 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !490
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store ptr %0, ptr %i.k, align 8, !tbaa !493
  %.pr = load ptr, ptr %i.j, align 8, !tbaa !490  ; 3 uses
  %.not.i11.i = icmp eq ptr %.pr, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !490  ; 3 uses
  br i1 %.not.i11.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit.thread, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit
  %i.n = phi ptr [ %.pre, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit.thread ], [ %0, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit ] ; 2 uses
  %i.o = phi ptr [ %i.i, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit.thread ], [ %i.m, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit ] ; 3 uses
  %i.p = phi ptr [ %i.h, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit.thread ], [ %i.l, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit ]
  %.0.i23 = phi ptr [ %i.f, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit.thread ], [ %i.j, %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit ] ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !490
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i23, i64 16
  store ptr %i.o, ptr %i.n, align 8, !tbaa !328
  %.not.i12.i = icmp eq ptr %i.o, null
  br i1 %.not.i12.i, label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.n, ptr %i.r, align 8, !tbaa !493
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i

_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i: ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.q, align 8, !tbaa !493
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE6removeEPNS5_4NodeE.exit

bb.e:                                             ; preds = %_ZNK11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE3maxEv.exit
  %.not.i.i17 = icmp eq ptr %i.m, null
  br i1 %.not.i.i17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.j, align 8, !tbaa !490
  store ptr %.pr, ptr %0, align 8, !tbaa !328
  %i.s = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  store ptr %0, ptr %i.s, align 8, !tbaa !493
  store ptr null, ptr %i.k, align 8, !tbaa !493
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE6removeEPNS5_4NodeE.exit

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %i.l, align 8, !tbaa !490
  %i.t = call noundef ptr @_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE6reduceEPNS5_4NodeE(ptr noundef nonnull %i.m) ; 4 uses
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !490  ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !490
  store ptr %i.u, ptr %i.t, align 8, !tbaa !490
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.t, ptr %i.v, align 8, !tbaa !493
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !493  ; 2 uses
  store ptr %i.t, ptr %i.w, align 8, !tbaa !328
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !493
  store ptr null, ptr %i.k, align 8, !tbaa !493
  br label %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE6removeEPNS5_4NodeE.exit

_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE6removeEPNS5_4NodeE.exit: ; preds = %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i, %bb.f, %bb.g
  %.0.i22 = phi ptr [ %.0.i23, %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE4Node11replaceWithEPS6_.exit.i ], [ %i.j, %bb.f ], [ %i.j, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i22, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !497  ; 5 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !102
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i22, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !489
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !498
  store ptr %i.ac, ptr %.0.i22, align 8, !tbaa !499
  store ptr %.0.i22, ptr %i.c, align 8, !tbaa !498
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store ptr null, ptr %i.ad, align 8, !tbaa !118
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !55
  %i.ag = add i64 %i.af, %i.ab                    ; 3 uses
  %i.ah = load i8, ptr %i.d, align 8, !tbaa !325, !range !226, !noundef !227
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %bb.l, !prof !112

bb.h:                                             ; preds = %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE6removeEPNS5_4NodeE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.ak = call noundef ptr @_ZNK11PairingHeapI7EdgeKeyE3maxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !392
  %.not = icmp eq i64 %i.am, %i.ag
  br i1 %.not, label %bb.j, label %bb.i, !prof !92

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.ao = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str, i32 noundef 938) ; 0 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() ; 2 uses
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.111, i64 noundef 37) ; 0 uses
  call void @_ZNK13V3GraphVertex15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr noundef nonnull align 8 dereferenceable(112) %i.ap)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = call { ptr, i8 } @_ZNSt3setIP10LogicMTaskSt4lessIS1_ESaIS1_EE6insertERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ar, 1
  %i.as = trunc i8 %.fca.1.extract to i1
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.k, !prof !92

bb.k:                                             ; preds = %bb.j
  %i.at = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str, i32 noundef 943) ; 0 uses
  %i.au = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() ; 2 uses
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.112, i64 noundef 20) ; 0 uses
  call void @_ZNK13V3GraphVertex15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %.pre26, ptr noundef nonnull align 8 dereferenceable(112) %i.au)
  %.pre25 = load ptr, ptr %i.a, align 8, !tbaa !102
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE6removeEPNS5_4NodeE.exit
  %i.aw = phi ptr [ %.pre26, %bb.j ], [ %.pre25, %bb.k ], [ %i.z, %_ZN11PairingHeapIN11PropagateCpILN8GraphWay2enE1EE10PendingKeyEE6removeEPNS5_4NodeE.exit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  store i64 %i.ag, ptr %i.ax, align 8, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !103 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZNK10LogicMTask8stepCostEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = uitofp i64 %i.az to double
  %i.bc = call double @log(double noundef %i.bb) #29
  %i.bd = fmul double %i.bc, 2.000000e+01
  %i.be = call double @llvm.ceil.f64(double %i.bd)
  %i.bf = fdiv double %i.be, 2.000000e+01
  %i.bg = call double @exp(double noundef %i.bf) #29
  %i.bh = fptoui double %i.bg to i64
  br label %_ZNK10LogicMTask8stepCostEv.exit

_ZNK10LogicMTask8stepCostEv.exit:                 ; preds = %bb.l, %bb.m
  %.0.i.i = phi i64 [ %i.bh, %bb.m ], [ 0, %bb.l ]
  %i.bi = add i64 %.0.i.i, %i.ag
  call void @_ZN11PropagateCpILN8GraphWay2enE1EE14cpHasIncreasedEP13V3GraphVertexm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %i.aw, i64 noundef %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.bj = load ptr, ptr %0, align 8, !tbaa !490   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %._crit_edge, label %bb.b, !llvm.loop !846

._crit_edge:                                      ; preds = %_ZNK10LogicMTask8stepCostEv.exit, %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !325, !range !226, !noundef !227
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZNSt3setIP10LogicMTaskSt4lessIS1_ESaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bn) #29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11Contraction24siblingPairFromRelativesILN8GraphWay2enE1ELb0EEEvP13V3GraphVertex(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %3 = alloca %"struct.std::array.333", align 8   ; 11 uses
  %4 = alloca %"struct.std::array.418", align 16  ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 3 uses
  %.not.i37 = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.b, %i.d
  %i.f = select i1 %.not.i37, i1 %i.e, i1 false
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.038.0 = phi ptr [ %i.b, %bb.b ], [ %i.h, %bb.d ] ; 4 uses
  %.035 = phi i64 [ 0, %bb.b ], [ %i.x, %bb.d ]   ; 10 uses
  %.not = icmp eq ptr %.sroa.038.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !136  ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.i = select i1 %.not.i, ptr %.sroa.038.0, ptr %i.h
  tail call void @llvm.prefetch.p0(ptr nonnull %i.i, i32 1, i32 3, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61   ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.035
  store ptr %i.k, ptr %i.l, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.n = load i32, ptr %i.m, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.035 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.n, ptr %i.p, align 8, !tbaa !501
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.r = load i64, ptr %i.q, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.t = load i64, ptr %i.s, align 8, !tbaa !103
  %i.u = add i64 %i.t, %i.r
  store i64 %i.u, ptr %i.o, align 16, !tbaa !502
  %i.v = trunc nuw nsw i64 %.035 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i8 %i.v, ptr %i.w, align 4, !tbaa !848
  %i.x = add nuw nsw i64 %.035, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, 26
  br i1 %exitcond.not, label %.thread, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.y = icmp samesign ult i64 %.035, 7
  br i1 %i.y, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.z = and i64 %.035, 6                         ; 2 uses
  %.not.i.i = icmp eq i64 %.035, 0
  br i1 %.not.i.i, label %.loopexit, label %_ZSt4sortIPZN11Contraction24siblingPairFromRelativesILN8GraphWay2enE1ELb0EEEvP13V3GraphVertexE13SortingRecordEvT_S8_.exit

_ZSt4sortIPZN11Contraction24siblingPairFromRelativesILN8GraphWay2enE1ELb0EEEvP13V3GraphVertexE13SortingRecordEvT_S8_.exit: ; preds = %bb.f
  %.idx = shl nuw nsw i64 %.035, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.035, i1 true)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = xor i64 %i.ac, 126
  call void @_ZSt16__introsort_loopIPZN11Contraction24siblingPairFromRelativesILN8GraphWay2enE1ELb0EEEvP13V3GraphVertexE13SortingRecordlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr noundef nonnull %4, ptr noundef nonnull %i.aa, i64 noundef %i.ad)
  call void @_ZSt22__final_insertion_sortIPZN11Contraction24siblingPairFromRelativesILN8GraphWay2enE1ELb0EEEvP13V3GraphVertexE13SortingRecordN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SB_T0_(ptr noundef nonnull %4, ptr noundef nonnull %i.aa)
  %.not49 = icmp eq i64 %i.z, 0
  br i1 %.not49, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4sortIPZN11Contraction24siblingPairFromRelativesILN8GraphWay2enE1ELb0EEEvP13V3GraphVertexE13SortingRecordEvT_S8_.exit, %.lr.ph
  %.03448 = phi i64 [ %i.ap, %.lr.ph ], [ 0, %_ZSt4sortIPZN11Contraction24siblingPairFromRelativesILN8GraphWay2enE1ELb0EEEvP13V3GraphVertexE13SortingRecordEvT_S8_.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.03448 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !848
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !848
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !102
  call void @_ZN11Contraction13makeSiblingMCEP10LogicMTaskS1_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %i.aj, ptr noundef %i.ao)
  %i.ap = add nuw nsw i64 %.03448, 2              ; 2 uses
  %i.aq = icmp samesign ult i64 %i.ap, %i.z
  br i1 %i.aq, label %.lr.ph, label %.loopexit, !llvm.loop !847

.thread:                                          ; preds = %bb.d, %bb.e
  %.144 = phi i64 [ %.035, %bb.e ], [ 26, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.144
end_hunk_0
