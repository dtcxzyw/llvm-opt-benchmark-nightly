inline.NumInlined: 243
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12b3DynamicBvh6removeEP10b3DbvtNode:bb.a

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12b3DynamicBvh5writeEPNS_7IWriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.b3DbvtNodeEnumerator, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20b3DbvtNodeEnumerator, i64 16), ptr %2, align 8, !tbaa !84
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store i8 1, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store ptr null, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  store i32 0, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29   ; 2 uses
  %i.g = shl nsw i32 %i.f, 1                      ; 5 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE8allocateEi.exit.i, label %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE7reserveEi.exit

_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE8allocateEi.exit.i: ; preds = %bb.a
  %i.i = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
          to label %.noexc unwind label %bb.f     ; 9 uses

.noexc:                                           ; preds = %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE8allocateEi.exit.i
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %.split7.i, label %.split.i

.split.i:                                         ; preds = %.noexc
  %i.n = load i32, ptr %i.c, align 4, !tbaa !24   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  %.pre59 = load ptr, ptr %i.b, align 8, !tbaa !23 ; 11 uses
  br i1 %i.o, label %.lr.ph.i.i, label %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE4copyEiiPS2_.exit.i

.lr.ph.i.i:                                       ; preds = %.split.i
  %.pre5974 = ptrtoaddr ptr %.pre59 to i64
  %wide.trip.count.i.i = zext nneg i32 %i.n to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  %i.p = sub i64 %.pre5974, %i.l
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond76 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond76, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre59, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x ptr>, ptr %i.r, align 8, !tbaa !41
  %wide.load75 = load <2 x ptr>, ptr %i.s, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x ptr> %wide.load, ptr %i.q, align 8, !tbaa !41
  store <2 x ptr> %wide.load75, ptr %i.t, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE4copyEiiPS2_.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.prol
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre59, i64 %indvars.iv.i.i.prol
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41
  store ptr %i.x, ptr %i.v, align 8, !tbaa !41
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !87

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.y = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE4copyEiiPS2_.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.pre59, i64 %indvars.iv.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !41
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre59, i64 %indvars.iv.next.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !41
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre59, i64 %indvars.iv.next.i.i.1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !41
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.2
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre59, i64 %indvars.iv.next.i.i.2
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !41
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE4copyEiiPS2_.exit.i, label %scalar.ph, !llvm.loop !88

.split7.i:                                        ; preds = %.noexc
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
          to label %.noexc27 unwind label %bb.f

.noexc27:                                         ; preds = %.split7.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
          to label %.noexc28 unwind label %bb.f

.noexc28:                                         ; preds = %.noexc27
  store i32 0, ptr %i.c, align 4, !tbaa !24
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !23
  br label %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE4copyEiiPS2_.exit.i

_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE4copyEiiPS2_.exit.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc28, %.split.i
  %i.am = phi ptr [ %.pre, %.noexc28 ], [ %.pre59, %.split.i ], [ %.pre59, %middle.block ], [ %.pre59, %scalar.ph ], [ %.pre59, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i = phi i32 [ 0, %.noexc28 ], [ %i.g, %.split.i ], [ %i.g, %middle.block ], [ %i.g, %scalar.ph ], [ %i.g, %scalar.ph.prol.loopexit ]
  %.not.i10.i = icmp ne ptr %i.am, null
  %i.an = load i8, ptr %i.a, align 8, !range !33
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond = select i1 %.not.i10.i, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE10deallocateEv.exit.i

bb.b:                                             ; preds = %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE4copyEiiPS2_.exit.i
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.am)
          to label %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE10deallocateEv.exit.i unwind label %bb.f

_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE10deallocateEv.exit.i: ; preds = %bb.b, %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE4copyEiiPS2_.exit.i
  store i8 1, ptr %i.a, align 8, !tbaa !18
  store ptr %i.k, ptr %i.b, align 8, !tbaa !23
  store i32 %.0.i, ptr %i.d, align 8, !tbaa !25
  br label %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE7reserveEi.exit

_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE7reserveEi.exit: ; preds = %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE10deallocateEv.exit.i, %bb.a
  %i.ap = load ptr, ptr %0, align 8, !tbaa !31
  invoke void @_ZN12b3DynamicBvh9enumNodesEPK10b3DbvtNodeRNS_8ICollideE(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE7reserveEi.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !31
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !24
  %i.as = load ptr, ptr %1, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.aq, i32 noundef %i.ar)
          to label %.preheader unwind label %bb.f

.preheader:                                       ; preds = %bb.c
  %i.av = load i32, ptr %i.c, align 4, !tbaa !24  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %.preheader
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20b3DbvtNodeEnumerator, i64 16), ptr %2, align 8, !tbaa !84
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.ax, null
  %i.ay = load i8, ptr %i.a, align 8, !range !33
  %i.az = trunc nuw i8 %i.ay to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.az, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZN20b3DbvtNodeEnumeratorD2Ev.exit

bb.d:                                             ; preds = %._crit_edge
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ax)
          to label %_ZN20b3DbvtNodeEnumeratorD2Ev.exit unwind label %bb.e, !inline_history !89

bb.e:                                             ; preds = %bb.d
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #17, !inline_history !89
  unreachable

_ZN20b3DbvtNodeEnumeratorD2Ev.exit:               ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.f:                                             ; preds = %bb.b, %.noexc27, %.split7.i, %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE8allocateEi.exit.i, %bb.c, %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE7reserveEi.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph:                                           ; preds = %.preheader, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.preheader ] ; 4 uses
  %i.bd = phi i32 [ %i.cj, %bb.p ], [ %i.av, %.preheader ] ; 5 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !23  ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !41 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !56 ; 2 uses
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE16findLinearSearchERKS2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %wide.trip.count.i = zext nneg i32 %i.bd to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.bl = icmp eq ptr %i.bk, %i.bi
  br i1 %i.bl, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE16findLinearSearchERKS2_.exit, label %bb.g, !llvm.loop !90

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.g
  %i.bm = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE16findLinearSearchERKS2_.exit

bb.i:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE16findLinearSearchERKS2_.exit: ; preds = %bb.h, %._crit_edge.loopexit.split.loop.exit.i, %.lr.ph
  %.0 = phi i32 [ -1, %.lr.ph ], [ %i.bm, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !34 ; 2 uses
  %.not50 = icmp eq ptr %i.bp, null
  br i1 %.not50, label %bb.o, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE16findLinearSearchERKS2_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !41
  %wide.trip.count.i32 = zext nneg i32 %i.bd to i64 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i31
  %indvars.iv.i33 = phi i64 [ 0, %.lr.ph.i31 ], [ %indvars.iv.next.i34, %bb.k ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i33
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !41
  %i.bu = icmp eq ptr %i.bt, %i.br
  br i1 %i.bu, label %._crit_edge.loopexit.split.loop.exit.i36, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next.i34, %wide.trip.count.i32
  br i1 %exitcond.not.i35, label %.lr.ph.i39, label %bb.j, !llvm.loop !90

._crit_edge.loopexit.split.loop.exit.i36:         ; preds = %bb.j
  %i.bv = trunc nuw nsw i64 %indvars.iv.i33 to i32
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %bb.k, %._crit_edge.loopexit.split.loop.exit.i36
  %.06.i30 = phi i32 [ %i.bv, %._crit_edge.loopexit.split.loop.exit.i36 ], [ %i.bd, %bb.k ]
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i39
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i39 ], [ %indvars.iv.next.i42, %bb.m ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i41
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !41
  %i.by = icmp eq ptr %i.bx, %i.bp
  br i1 %i.by, label %._crit_edge.loopexit.split.loop.exit.i44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i42 = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %exitcond.not.i43 = icmp eq i64 %indvars.iv.next.i42, %wide.trip.count.i32
  br i1 %exitcond.not.i43, label %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE16findLinearSearchERKS2_.exit45, label %bb.l, !llvm.loop !90

._crit_edge.loopexit.split.loop.exit.i44:         ; preds = %bb.l
  %i.bz = trunc nuw nsw i64 %indvars.iv.i41 to i32
  br label %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE16findLinearSearchERKS2_.exit45

_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE16findLinearSearchERKS2_.exit45: ; preds = %bb.m, %._crit_edge.loopexit.split.loop.exit.i44
  %.06.i38 = phi i32 [ %i.bz, %._crit_edge.loopexit.split.loop.exit.i44 ], [ %i.bd, %bb.m ]
  %i.ca = load ptr, ptr %1, align 8, !tbaa !84
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = trunc nuw nsw i64 %indvars.iv to i32
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bg, i32 noundef %i.cd, i32 noundef %.0, i32 noundef %.06.i30, i32 noundef %.06.i38)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE16findLinearSearchERKS2_.exit45
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE16findLinearSearchERKS2_.exit
  %i.cf = load ptr, ptr %1, align 8, !tbaa !84
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = trunc nuw nsw i64 %indvars.iv to i32
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bg, i32 noundef %i.ci, i32 noundef %.0)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE16findLinearSearchERKS2_.exit45, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = load i32, ptr %i.c, align 4, !tbaa !24  ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next, %i.ck
  br i1 %i.cl, label %.lr.ph, label %._crit_edge, !llvm.loop !91

bb.q:                                             ; preds = %bb.i, %bb.n, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.f ], [ %i.ce, %bb.n ], [ %i.bn, %bb.i ]
  call void @_ZN20b3DbvtNodeEnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12b3DynamicBvh9enumNodesEPK10b3DbvtNodeRNS_8ICollideE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.f = phi ptr [ %i.m, %tailrecurse ], [ %i.d, %bb.a ]
  %.tr9 = phi ptr [ %i.i, %tailrecurse ], [ %0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.tr9, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  tail call void @_ZN12b3DynamicBvh9enumNodesEPK10b3DbvtNodeRNS_8ICollideE(ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !34   ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3DbvtNodeEnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20b3DbvtNodeEnumerator, i64 16), ptr %0, align 8, !tbaa !84
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !33
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #17
  unreachable

_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12b3DynamicBvh5cloneERS_PNS_6ICloneE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.b3AlignedObjectArray.5, align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL19b3RecurseDeleteNodeP12b3DynamicBvhP10b3DbvtNode(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef %i.c)
  store ptr null, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -1, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !33
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.i, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %_ZN12b3DynamicBvh5clearEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.f)
  br label %_ZN12b3DynamicBvh5clearEv.exit

_ZN12b3DynamicBvh5clearEv.exit:                   ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 1, ptr %i.g, align 8, !tbaa !9
  store ptr null, ptr %i.e, align 8, !tbaa !15
  store i32 0, ptr %i.j, align 4, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.l, align 8, !tbaa !30
  %i.m = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %_ZN12b3DynamicBvh5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  store i8 1, ptr %i.n, align 8, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 10 uses
  store i32 0, ptr %i.p, align 4, !tbaa !97
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.q, align 8, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !29   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i, label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i: ; preds = %bb.e
  %i.u = zext nneg i32 %i.s to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.v, i32 noundef 16)
          to label %.noexc unwind label %bb.k     ; 3 uses

.noexc:                                           ; preds = %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.split7.i, label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit

.split7.i:                                        ; preds = %.noexc
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
          to label %.noexc24 unwind label %bb.k

.noexc24:                                         ; preds = %.split7.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
          to label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit.thread120 unwind label %bb.k

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit.thread120: ; preds = %.noexc24
  store i32 0, ptr %i.p, align 4, !tbaa !97
  %.pre.pre122 = load ptr, ptr %0, align 8, !tbaa !31
  store i8 1, ptr %i.n, align 8, !tbaa !92
  store ptr %i.w, ptr %i.o, align 8, !tbaa !96
  store i32 0, ptr %i.q, align 8, !tbaa !98
  br label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit: ; preds = %.noexc
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i: ; preds = %bb.e, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit.thread120
  %i.y = phi ptr [ %.pre.pre122, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit.thread120 ], [ %i.m, %bb.e ] ; 2 uses
  %i.z = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef 16, i32 noundef 16)
          to label %.noexc29 unwind label %bb.l   ; 3 uses

.noexc29:                                         ; preds = %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i

.split7.i.i:                                      ; preds = %.noexc29
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
          to label %.noexc30 unwind label %bb.l

.noexc30:                                         ; preds = %.split7.i.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
          to label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i unwind label %bb.l

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i: ; preds = %.noexc29, %.noexc30, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit
  %.sink123 = phi ptr [ %i.w, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit ], [ %i.z, %.noexc30 ], [ %i.z, %.noexc29 ] ; 5 uses
  %.sink = phi i32 [ %i.s, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit ], [ 0, %.noexc30 ], [ 1, %.noexc29 ] ; 3 uses
  %i.ab = phi ptr [ %.pre.pre, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit ], [ %i.y, %.noexc30 ], [ %i.y, %.noexc29 ]
end_hunk_0
