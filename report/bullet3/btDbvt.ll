inline.NumInlined: 281
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmf:bb.a
; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6btDbvt6removeEP10btDbvtNode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL10removeleafP6btDbvtP10btDbvtNode(ptr noundef %0, ptr noundef %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.c)
  store ptr %1, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6btDbvt5writeEPNS_7IWriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.btDbvtNodeEnumerator, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV20btDbvtNodeEnumerator, i64 16), ptr %2, align 8, !tbaa !78
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  store i8 1, ptr %i.a, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 0, ptr %i.c, align 4, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21   ; 2 uses
  %i.g = shl nuw nsw i32 %i.f, 1                  ; 2 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i unwind label %bb.g ; 8 uses

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i: ; preds = %bb.b
  %i.l = load i32, ptr %i.c, align 4, !tbaa !84   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !83   ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.k to i64
  %wide.trip.count.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.q = sub i64 %i.o, %i.p
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond70 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond70, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x ptr>, ptr %i.s, align 8, !tbaa !35
  %wide.load68 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x ptr> %wide.load, ptr %i.r, align 8, !tbaa !35
  store <2 x ptr> %wide.load68, ptr %i.u, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !86

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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  store ptr %i.y, ptr %i.w, align 8, !tbaa !35
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !87

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !35
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !35
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !35
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.2
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !35
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !35
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, label %scalar.ph, !llvm.loop !88

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i
  %.not.i5.i = icmp ne ptr %i.n, null
  %i.an = load i8, ptr %i.a, align 8, !range !25
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond = select i1 %.not.i5.i, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old = load i8, ptr %i.a, align 8, !tbaa !80, !range !25, !noundef !43
  %.old64 = trunc nuw i8 %.old to i1
  br i1 %.old64, label %bb.c, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i

bb.c:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.n)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i unwind label %bb.g

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i: ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, %bb.c, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i
  store i8 1, ptr %i.a, align 8, !tbaa !80
  store ptr %i.k, ptr %i.b, align 8, !tbaa !83
  store i32 %i.g, ptr %i.d, align 8, !tbaa !85
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i, %bb.a
  %i.ap = load ptr, ptr %0, align 8, !tbaa !23
  invoke void @_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !23
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !84
  %i.as = load ptr, ptr %1, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.aq, i32 noundef %i.ar)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %bb.d
  %i.av = load i32, ptr %i.c, align 4, !tbaa !84  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %.preheader
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV20btDbvtNodeEnumerator, i64 16), ptr %2, align 8, !tbaa !78
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !83  ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.ax, null
  %i.ay = load i8, ptr %i.a, align 8, !range !25
  %i.az = trunc nuw i8 %i.ay to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.az, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN20btDbvtNodeEnumeratorD2Ev.exit

bb.e:                                             ; preds = %._crit_edge
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ax)
          to label %_ZN20btDbvtNodeEnumeratorD2Ev.exit unwind label %bb.f, !inline_history !89

bb.f:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #17, !inline_history !89
  unreachable

_ZN20btDbvtNodeEnumeratorD2Ev.exit:               ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.d, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.preheader ] ; 4 uses
  %i.bd = phi i32 [ %i.cj, %bb.q ], [ %i.av, %.preheader ] ; 10 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !83  ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !35 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit, label %3

3:                                                ; preds = %.lr.ph
  %4 = icmp sgt i32 %i.bd, 0
  br i1 %4, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit

.lr.ph.i:                                         ; preds = %3
  %wide.trip.count.i = zext nneg i32 %i.bd to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !35
  %i.bl = icmp eq ptr %i.bk, %i.bi
  br i1 %i.bl, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit, label %bb.h, !llvm.loop !90

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.h
  %i.bm = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit

bb.j:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit: ; preds = %bb.i, %._crit_edge.loopexit.split.loop.exit.i, %3, %.lr.ph
  %.0 = phi i32 [ -1, %.lr.ph ], [ %i.bd, %3 ], [ %i.bm, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.bd, %bb.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !26 ; 2 uses
  %.not46 = icmp eq ptr %i.bp, null
  br i1 %.not46, label %bb.p, label %5

5:                                                ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit
  %6 = icmp sgt i32 %i.bd, 0
  br i1 %6, label %.lr.ph.i29, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit43

.lr.ph.i29:                                       ; preds = %5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !35
  %wide.trip.count.i30 = zext nneg i32 %i.bd to i64 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i29
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i29 ], [ %indvars.iv.next.i32, %bb.l ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i31
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !35
  %i.bu = icmp eq ptr %i.bt, %i.br
  br i1 %i.bu, label %._crit_edge.loopexit.split.loop.exit.i34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i31, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, %wide.trip.count.i30
  br i1 %exitcond.not.i33, label %.lr.ph.i37, label %bb.k, !llvm.loop !90

._crit_edge.loopexit.split.loop.exit.i34:         ; preds = %bb.k
  %i.bv = trunc nuw nsw i64 %indvars.iv.i31 to i32
  br label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.l, %._crit_edge.loopexit.split.loop.exit.i34
  %.06.i28 = phi i32 [ %i.bv, %._crit_edge.loopexit.split.loop.exit.i34 ], [ %i.bd, %bb.l ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i37
  %indvars.iv.i39 = phi i64 [ 0, %.lr.ph.i37 ], [ %indvars.iv.next.i40, %bb.n ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i39
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !35
  %i.by = icmp eq ptr %i.bx, %i.bp
  br i1 %i.by, label %._crit_edge.loopexit.split.loop.exit.i42, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i39, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i30
  br i1 %exitcond.not.i41, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit43, label %bb.m, !llvm.loop !90

._crit_edge.loopexit.split.loop.exit.i42:         ; preds = %bb.m
  %i.bz = trunc nuw nsw i64 %indvars.iv.i39 to i32
  br label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit43

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit43: ; preds = %bb.n, %5, %._crit_edge.loopexit.split.loop.exit.i42
  %.06.i2845 = phi i32 [ %i.bd, %5 ], [ %.06.i28, %._crit_edge.loopexit.split.loop.exit.i42 ], [ %.06.i28, %bb.n ]
  %.06.i36 = phi i32 [ %i.bd, %5 ], [ %i.bz, %._crit_edge.loopexit.split.loop.exit.i42 ], [ %i.bd, %bb.n ]
  %i.ca = load ptr, ptr %1, align 8, !tbaa !78
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = trunc nuw nsw i64 %indvars.iv to i32
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bg, i32 noundef %i.cd, i32 noundef %.0, i32 noundef %.06.i2845, i32 noundef %.06.i36)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit43
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit
  %i.cf = load ptr, ptr %1, align 8, !tbaa !78
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = trunc nuw nsw i64 %indvars.iv to i32
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bg, i32 noundef %i.ci, i32 noundef %.0)
          to label %bb.q unwind label %bb.j

bb.q:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit43, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = load i32, ptr %i.c, align 4, !tbaa !84  ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next, %i.ck
  br i1 %i.cl, label %.lr.ph, label %._crit_edge, !llvm.loop !91

bb.r:                                             ; preds = %bb.j, %bb.o, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.g ], [ %i.ce, %bb.o ], [ %i.bn, %bb.j ]
  call void @_ZN20btDbvtNodeEnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.f = phi ptr [ %i.m, %tailrecurse ], [ %i.d, %bb.a ]
  %.tr9 = phi ptr [ %i.i, %tailrecurse ], [ %0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.tr9, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  tail call void @_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE(ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !26   ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btDbvtNodeEnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV20btDbvtNodeEnumerator, i64 16), ptr %0, align 8, !tbaa !78
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !25
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #17
  unreachable

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6btDbvt5cloneERS_PNS_6ICloneE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btAlignedObjectArray.5, align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL17recursedeletenodeP6btDbvtP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.c)
  store ptr null, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -1, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !25
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.i, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %_ZN6btDbvt5clearEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.f)
  br label %_ZN6btDbvt5clearEv.exit

_ZN6btDbvt5clearEv.exit:                          ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 1, ptr %i.g, align 8, !tbaa !9
  store ptr null, ptr %i.e, align 8, !tbaa !15
  store i32 0, ptr %i.j, align 4, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.l, align 8, !tbaa !22
  %i.m = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %_ZN6btDbvt5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store i8 1, ptr %i.n, align 8, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr null, ptr %i.o, align 8, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 7 uses
  store i32 0, ptr %i.p, align 4, !tbaa !97
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.q, align 8, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i32 %i.s to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.v, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit unwind label %bb.m

_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit: ; preds = %bb.f
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 16, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE10deallocateEv.exit.i.i unwind label %bb.n

_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE10deallocateEv.exit.i.i: ; preds = %bb.g, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit
  %.sink100 = phi ptr [ %i.w, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit ], [ %i.x, %bb.g ] ; 5 uses
  %.sink = phi i32 [ %i.s, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit ], [ 1, %bb.g ] ; 3 uses
  %i.y = phi ptr [ %.pre.pre, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit ], [ %i.m, %bb.g ]
  store i8 1, ptr %i.n, align 8, !tbaa !92
  store ptr %.sink100, ptr %i.o, align 8, !tbaa !96
  store i32 %.sink, ptr %i.q, align 8, !tbaa !98
  store ptr %i.y, ptr %.sink100, align 8, !tbaa !35
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink100, i64 8
  store ptr null, ptr %.sroa.572.0..sroa_idx, align 8, !tbaa !35
  store i32 1, ptr %i.p, align 4, !tbaa !97
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE10deallocateEv.exit.i.i
  %i.z = phi ptr [ %i.cv, %thread-pre-split ], [ %.sink100, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE10deallocateEv.exit.i.i ] ; 3 uses
  %i.aa = phi i32 [ %i.cw, %thread-pre-split ], [ %.sink, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE10deallocateEv.exit.i.i ] ; 3 uses
  %i.ab = phi i32 [ %i.cx, %thread-pre-split ], [ %.sink, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE10deallocateEv.exit.i.i ] ; 9 uses
  %i.ac = phi ptr [ %i.cy, %thread-pre-split ], [ %.sink100, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE10deallocateEv.exit.i.i ] ; 8 uses
  %i.ad = phi i32 [ %i.cz, %thread-pre-split ], [ 1, %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE10deallocateEv.exit.i.i ]
  %i.ae = add nsw i32 %i.ad, -1                   ; 6 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.af ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !35 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.b, align 8, !tbaa !24
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ak = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 56, i32 noundef 16)
end_hunk_0
