inline.NumInlined: 326
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmf:bb.a
  br label %bb.i

bb.i:                                             ; preds = %_ZNK12btDbvtAabbMm7ContainERKS_.exit, %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit
  %.0 = phi i1 [ false, %_ZNK12btDbvtAabbMm7ContainERKS_.exit ], [ true, %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit ]
  ret i1 %.0
}

; Function Attrs: uwtable
define dso_local void @_ZN6btDbvt6removeEP10btDbvtNode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL10removeleafP6btDbvtP10btDbvtNode(ptr noundef %0, ptr noundef %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.c)
  store ptr %1, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !20
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK6btDbvt5writeEPNS_7IWriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.btDbvtNodeEnumerator, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20btDbvtNodeEnumerator, i64 16), ptr %2, align 8, !tbaa !77
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  store i8 1, ptr %i.a, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store ptr null, ptr %i.b, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 0, ptr %i.c, align 4, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20   ; 2 uses
  %i.g = shl nuw nsw i32 %i.f, 1                  ; 2 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i unwind label %bb.f ; 8 uses

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i: ; preds = %bb.b
  %i.l = load i32, ptr %i.c, align 4, !tbaa !83   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !82   ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.k to i64
  %wide.trip.count.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.q = sub i64 %i.o, %i.p
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond74 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond74, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x ptr>, ptr %i.s, align 8, !tbaa !34
  %wide.load72 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x ptr> %wide.load, ptr %i.r, align 8, !tbaa !34
  store <2 x ptr> %wide.load72, ptr %i.u, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.prol
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.prol
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  store ptr %i.y, ptr %i.w, align 8, !tbaa !34
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !86

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !34
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !34
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !34
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.2
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !34
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, label %scalar.ph, !llvm.loop !87

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i
  %.not.i5.i = icmp ne ptr %i.n, null
  %i.an = load i8, ptr %i.a, align 8, !range !24
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond = select i1 %.not.i5.i, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old = load i8, ptr %i.a, align 8, !tbaa !79, !range !24, !noundef !41
  %.old68 = trunc nuw i8 %.old to i1
  br i1 %.old68, label %bb.c, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i

bb.c:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.n)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i unwind label %bb.f

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i: ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, %bb.c, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i
  store i8 1, ptr %i.a, align 8, !tbaa !79
  store ptr %i.k, ptr %i.b, align 8, !tbaa !82
  store i32 %i.g, ptr %i.d, align 8, !tbaa !84
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i, %bb.a
  %i.ap = load ptr, ptr %0, align 8, !tbaa !22
  invoke void @_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !22
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !83
  %i.as = load ptr, ptr %1, align 8, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.aq, i32 noundef %i.ar)
          to label %.preheader unwind label %bb.f

.preheader:                                       ; preds = %bb.d
  %i.av = load i32, ptr %i.c, align 4, !tbaa !83  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %.preheader
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20btDbvtNodeEnumerator, i64 16), ptr %2, align 8, !tbaa !77
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.ax, null
  %i.ay = load i8, ptr %i.a, align 8, !range !24
  %i.az = trunc nuw i8 %i.ay to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.az, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN20btDbvtNodeEnumeratorD2Ev.exit

bb.e:                                             ; preds = %._crit_edge
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ax), !inline_history !88
  br label %_ZN20btDbvtNodeEnumeratorD2Ev.exit

_ZN20btDbvtNodeEnumeratorD2Ev.exit:               ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.d, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph:                                           ; preds = %.preheader, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.preheader ] ; 4 uses
  %i.bb = phi i32 [ %i.ch, %bb.p ], [ %i.av, %.preheader ] ; 10 uses
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !82  ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !44 ; 2 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit, label %3

3:                                                ; preds = %.lr.ph
  %4 = icmp sgt i32 %i.bb, 0
  br i1 %4, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit

.lr.ph.i:                                         ; preds = %3
  %wide.trip.count.i = zext nneg i32 %i.bb to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !34
  %i.bj = icmp eq ptr %i.bi, %i.bg
  br i1 %i.bj, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit, label %bb.g

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.g
  %i.bk = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit

bb.i:                                             ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit: ; preds = %bb.h, %._crit_edge.loopexit.split.loop.exit.i, %3, %.lr.ph
  %.023 = phi i32 [ -1, %.lr.ph ], [ %i.bb, %3 ], [ %i.bk, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.bb, %bb.h ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !25 ; 2 uses
  %.not50 = icmp eq ptr %i.bn, null
  br i1 %.not50, label %bb.o, label %5

5:                                                ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit
  %6 = icmp sgt i32 %i.bb, 0
  br i1 %6, label %.lr.ph.i29, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit43

.lr.ph.i29:                                       ; preds = %5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !34
  %wide.trip.count.i30 = zext nneg i32 %i.bb to i64 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i29
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i29 ], [ %indvars.iv.next.i32, %bb.k ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i31
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !34
  %i.bs = icmp eq ptr %i.br, %i.bp
  br i1 %i.bs, label %._crit_edge.loopexit.split.loop.exit.i34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i31, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, %wide.trip.count.i30
  br i1 %exitcond.not.i33, label %.lr.ph.i37, label %bb.j

._crit_edge.loopexit.split.loop.exit.i34:         ; preds = %bb.j
  %i.bt = trunc nuw nsw i64 %indvars.iv.i31 to i32
  br label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.k, %._crit_edge.loopexit.split.loop.exit.i34
  %.06.i28 = phi i32 [ %i.bt, %._crit_edge.loopexit.split.loop.exit.i34 ], [ %i.bb, %bb.k ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i37
  %indvars.iv.i39 = phi i64 [ 0, %.lr.ph.i37 ], [ %indvars.iv.next.i40, %bb.m ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i39
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !34
  %i.bw = icmp eq ptr %i.bv, %i.bn
  br i1 %i.bw, label %._crit_edge.loopexit.split.loop.exit.i42, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i39, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i30
  br i1 %exitcond.not.i41, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit43, label %bb.l

._crit_edge.loopexit.split.loop.exit.i42:         ; preds = %bb.l
  %i.bx = trunc nuw nsw i64 %indvars.iv.i39 to i32
  br label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit43

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit43: ; preds = %bb.m, %5, %._crit_edge.loopexit.split.loop.exit.i42
  %.06.i2849 = phi i32 [ %i.bb, %5 ], [ %.06.i28, %._crit_edge.loopexit.split.loop.exit.i42 ], [ %.06.i28, %bb.m ]
  %.06.i36 = phi i32 [ %i.bb, %5 ], [ %i.bx, %._crit_edge.loopexit.split.loop.exit.i42 ], [ %i.bb, %bb.m ]
  %i.by = load ptr, ptr %1, align 8, !tbaa !77
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.be, i32 noundef %i.cb, i32 noundef %.023, i32 noundef %.06.i2849, i32 noundef %.06.i36)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit43
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit
  %i.cd = load ptr, ptr %1, align 8, !tbaa !77
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = trunc nuw nsw i64 %indvars.iv to i32
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.be, i32 noundef %i.cg, i32 noundef %.023)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit43, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.c, align 4, !tbaa !83  ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

bb.q:                                             ; preds = %bb.i, %bb.n, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.f ], [ %i.cc, %bb.n ], [ %i.bl, %bb.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20btDbvtNodeEnumerator, i64 16), ptr %2, align 8, !tbaa !77
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %.not.i.i.i.i44 = icmp ne ptr %i.ck, null
  %i.cl = load i8, ptr %i.a, align 8, !range !24
  %i.cm = trunc nuw i8 %i.cl to i1
  %or.cond.i.i.i45 = select i1 %.not.i.i.i.i44, i1 %i.cm, i1 false
  br i1 %or.cond.i.i.i45, label %bb.r, label %_ZN20btDbvtNodeEnumeratorD2Ev.exit47

bb.r:                                             ; preds = %bb.q
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ck)
          to label %_ZN20btDbvtNodeEnumeratorD2Ev.exit47 unwind label %bb.s, !inline_history !88

_ZN20btDbvtNodeEnumeratorD2Ev.exit47:             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn.pn

bb.s:                                             ; preds = %bb.r
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #16
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.f = phi ptr [ %i.m, %tailrecurse ], [ %i.d, %bb.a ]
  %.tr9 = phi ptr [ %i.i, %tailrecurse ], [ %0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.tr9, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  tail call void @_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE(ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !25   ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN20btDbvtNodeEnumeratorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20btDbvtNodeEnumerator, i64 16), ptr %0, align 8, !tbaa !77
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !24
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK6btDbvt5cloneERS_PNS_6ICloneE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL17recursedeletenodeP6btDbvtP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.c)
  store ptr null, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -1, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !24
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.i, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %_ZN6btDbvt5clearEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.f)
  br label %_ZN6btDbvt5clearEv.exit

_ZN6btDbvt5clearEv.exit:                          ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 1, ptr %i.g, align 8, !tbaa !8
  store ptr null, ptr %i.e, align 8, !tbaa !14
  store i32 0, ptr %i.j, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.l, align 8, !tbaa !21
  %i.m = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6btDbvt5clearEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !20   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit, label %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit.thread

_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit.thread: ; preds = %bb.e
  %i.q = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 16, i32 noundef 16)
  br label %_ZNK20btAlignedObjectArrayIN6btDbvt7sStkCLNEE4copyEiiPS1_.exit.i.i

_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit: ; preds = %bb.e
  %i.r = zext nneg i32 %i.o to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.s, i32 noundef 16)
  %i.u = load ptr, ptr %0, align 8, !tbaa !22
  br label %_ZNK20btAlignedObjectArrayIN6btDbvt7sStkCLNEE4copyEiiPS1_.exit.i.i

_ZNK20btAlignedObjectArrayIN6btDbvt7sStkCLNEE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit.thread, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit
  %i.v = phi ptr [ %i.u, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit ], [ %i.m, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit.thread ]
  %.sroa.24.3 = phi i32 [ %i.o, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit ], [ 1, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit.thread ]
  %.sroa.3396.4 = phi ptr [ %i.t, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit ], [ %i.q, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit.thread ] ; 3 uses
  store ptr %i.v, ptr %.sroa.3396.4, align 8, !tbaa !34
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3396.4, i64 8
  store ptr null, ptr %.sroa.576.0..sroa_idx, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %_ZNK20btAlignedObjectArrayIN6btDbvt7sStkCLNEE4copyEiiPS1_.exit.i.i
  %.sroa.3.0 = phi i32 [ 1, %_ZNK20btAlignedObjectArrayIN6btDbvt7sStkCLNEE4copyEiiPS1_.exit.i.i ], [ %.sroa.3.1, %bb.y ] ; 10 uses
  %.sroa.24.0 = phi i32 [ %.sroa.24.3, %_ZNK20btAlignedObjectArrayIN6btDbvt7sStkCLNEE4copyEiiPS1_.exit.i.i ], [ %.sroa.24.1, %bb.y ] ; 8 uses
  %.sroa.3396.0 = phi ptr [ %.sroa.3396.4, %_ZNK20btAlignedObjectArrayIN6btDbvt7sStkCLNEE4copyEiiPS1_.exit.i.i ], [ %.sroa.3396.1, %bb.y ] ; 10 uses
  %i.w = add nsw i32 %.sroa.3.0, -1               ; 4 uses
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.3396.0, i64 %i.x ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !34 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !34 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.b, align 8, !tbaa !23
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 56, i32 noundef 16)
          to label %.noexc31 unwind label %bb.k   ; 2 uses

.noexc31:                                         ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i8 0, i64 56, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.noexc31, %bb.g
end_hunk_0
