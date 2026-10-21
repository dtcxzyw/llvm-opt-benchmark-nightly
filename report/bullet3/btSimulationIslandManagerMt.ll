Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSimulationIslandManagerMt?download=true
inline.NumInlined: 320
inline.NumDeleted: 106
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN27btSimulationIslandManagerMt23addConstraintsToIslandsER20btAlignedObjectArrayIP17btTypedConstraintE:bb.a
_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i: ; preds = %bb.i, %bb.h
  %i.aw = phi i32 [ %.pre.i, %bb.i ], [ %i.am, %bb.h ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.av, %bb.i ], [ null, %bb.h ] ; 8 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.i12, i64 80 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !61 ; 9 uses
  br i1 %i.ax, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i
  %i.ba = ptrtoaddr ptr %i.az to i64
  %.0.i.i.i29 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.aw to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.aw, 4
  %i.bb = sub i64 %i.ba, %.0.i.i.i29
  %diff.check = icmp ugt i64 %i.bb, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !77
  %wide.load30 = load <2 x ptr>, ptr %i.be, align 8, !tbaa !77
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x ptr> %wide.load, ptr %i.bc, align 8, !tbaa !77
  store <2 x ptr> %wide.load30, ptr %i.bf, align 8, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i.i.i.prol
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !77
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !77
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !160

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.bk = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !77
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !77
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next.i.i.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !77
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !77
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next.i.i.i.1
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !77
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !77
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next.i.i.i.2
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !77
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !77
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !161

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i12, i64 88
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !78, !range !59, !noundef !60
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.j, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.az)
  %.pre2.pre.pre.i = load i32, ptr %i.al, align 4, !tbaa !52
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i: ; preds = %bb.j, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.aw, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.j ], [ %i.aw, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.1.i12, i64 88
  store i8 1, ptr %i.cb, align 8, !tbaa !78
  store ptr %.0.i.i.i, ptr %i.ay, align 8, !tbaa !61
  store i32 %i.ar, ptr %i.an, align 8, !tbaa !72
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit: ; preds = %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread, %bb.g, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i
  %i.cc = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i ], [ %i.am, %bb.g ], [ %i.am, %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.i12, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !61
  %i.cf = sext i32 %i.cc to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cf
  store ptr %i.k, ptr %i.cg, align 8, !tbaa !77
  %i.ch = add nsw i32 %i.cc, 1
  store i32 %i.ch, ptr %i.al, align 4, !tbaa !52
  %.pre = load i32, ptr %i.a, align 4, !tbaa !52
  br label %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread13

_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread13: ; preds = %bb.e, %.preheader.i, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit, %bb.b
  %i.ci = phi i32 [ %i.h, %bb.b ], [ %.pre, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit ], [ %i.h, %.preheader.i ], [ %i.h, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %bb.b, label %._crit_edge, !llvm.loop !162
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btSimulationIslandManagerMt12mergeIslandsEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.IslandBatchSizeSortPredicate, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE9quickSortI28IslandBatchSizeSortPredicateEEvRKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = add nsw i32 %i.b, -1
  call void @_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE17quickSortInternalI28IslandBatchSizeSortPredicateEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 0, i32 noundef %i.e)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !20
  br label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE9quickSortI28IslandBatchSizeSortPredicateEEvRKT_.exit

_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE9quickSortI28IslandBatchSizeSortPredicateEEvRKT_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge89

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE9quickSortI28IslandBatchSizeSortPredicateEEvRKT_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = load i32, ptr %i.j, align 8, !tbaa !35
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !52
  %i.t = shl nsw i32 %i.q, 3
  %i.u = add nsw i32 %i.t, %i.o
  %i.v = shl nsw i32 %i.s, 2
  %i.w = add nsw i32 %i.u, %i.v
  %.not = icmp slt i32 %i.w, %i.k
  br i1 %.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge89, label %bb.c, !llvm.loop !169

._crit_edge:                                      ; preds = %bb.c
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %.04883 = add nsw i32 %i.f, -1                  ; 2 uses
  %i.y = icmp sgt i32 %.04883, %i.x
  br i1 %i.y, label %.lr.ph88, label %._crit_edge89

.lr.ph88:                                         ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph88, %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE6resizeEiRKS2_.exit
  %indvars.iv98 = phi i64 [ %indvars.iv, %.lr.ph88 ], [ %indvars.iv.next99, %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE6resizeEiRKS2_.exit ] ; 3 uses
  %.04886 = phi i32 [ %.04883, %.lr.ph88 ], [ %i.be, %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE6resizeEiRKS2_.exit ]
  %.048.in85 = phi i32 [ %i.f, %.lr.ph88 ], [ %.044, %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE6resizeEiRKS2_.exit ] ; 2 uses
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !19  ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv98
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 16 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !54 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 36 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 68 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !52
  %i.am = load i32, ptr %i.aa, align 8, !tbaa !35
  %i.an = trunc nsw i64 %indvars.iv98 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.047 = phi i32 [ %i.ah, %bb.e ], [ %i.at, %bb.f ]
  %.046 = phi i32 [ %i.aj, %bb.e ], [ %i.aw, %bb.f ]
  %.045 = phi i32 [ %i.al, %bb.e ], [ %i.az, %bb.f ]
  %.044 = phi i32 [ %.04886, %bb.e ], [ %i.be, %bb.f ] ; 9 uses
  %i.ao = sext i32 %.044 to i64                   ; 4 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !54
  %i.at = add nsw i32 %i.as, %.047                ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !48
  %i.aw = add nsw i32 %i.av, %.046                ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 68
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !52
  %i.az = add nsw i32 %i.ay, %.045                ; 6 uses
  %i.ba = shl nsw i32 %i.aw, 3
  %i.bb = add nsw i32 %i.ba, %i.at
  %i.bc = shl nsw i32 %i.az, 2
  %i.bd = add nsw i32 %i.bb, %i.bc
  %.not54 = icmp slt i32 %i.bd, %i.am
  %i.be = add nsw i32 %.044, -1                   ; 4 uses
  %i.bf = icmp ne i32 %i.be, %i.an
  %or.cond.not = select i1 %.not54, i1 %i.bf, i1 false
  br i1 %or.cond.not, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !64
  %i.bi = icmp slt i32 %i.bh, %i.at
  br i1 %i.bi, label %bb.h, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE7reserveEi.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = sext i32 %i.at to i64
  %i.bk = shl nsw i64 %i.bj, 3
  %i.bl = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bk, i32 noundef 16)
  %.pre101 = load i32, ptr %i.ag, align 4, !tbaa !54
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i: ; preds = %bb.i, %bb.h
  %i.bm = phi i32 [ %.pre101, %bb.i ], [ %i.ah, %bb.h ] ; 3 uses
  %.0.i.i = phi ptr [ %i.bl, %bb.i ], [ null, %bb.h ] ; 8 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53 ; 9 uses
  br i1 %i.bn, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i
  %i.bq = ptrtoaddr ptr %i.bp to i64
  %.0.i.i158 = ptrtoaddr ptr %.0.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.bm to i64 ; 5 uses
  %min.iters.check161 = icmp ult i32 %i.bm, 4
  %i.br = sub i64 %i.bq, %.0.i.i158
  %diff.check159 = icmp ugt i64 %i.br, -32
  %or.cond = select i1 %min.iters.check161, i1 true, i1 %diff.check159
  br i1 %or.cond, label %scalar.ph160.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i
  %n.vec163 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next168, %vector.body164 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %index165 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index165 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load166 = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !67
  %wide.load167 = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !67
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <2 x ptr> %wide.load166, ptr %i.bs, align 8, !tbaa !67
  store <2 x ptr> %wide.load167, ptr %i.bv, align 8, !tbaa !67
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next168, %n.vec163
  br i1 %i.bw, label %middle.block169, label %vector.body164, !llvm.loop !170

middle.block169:                                  ; preds = %vector.body164
  %cmp.n170 = icmp eq i64 %n.vec163, %wide.trip.count.i.i
  br i1 %cmp.n170, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i, label %scalar.ph160.preheader

scalar.ph160.preheader:                           ; preds = %.lr.ph.i.i, %middle.block169
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec163, %middle.block169 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph160.prol.loopexit, label %scalar.ph160.prol

scalar.ph160.prol:                                ; preds = %scalar.ph160.preheader, %scalar.ph160.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph160.prol ], [ %indvars.iv.i.i.ph, %scalar.ph160.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph160.prol ], [ 0, %scalar.ph160.preheader ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv.i.i.prol
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i.i.prol
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !67
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !67
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph160.prol.loopexit, label %scalar.ph160.prol, !llvm.loop !171

scalar.ph160.prol.loopexit:                       ; preds = %scalar.ph160.prol, %scalar.ph160.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph160.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph160.prol ]
  %i.ca = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i, label %scalar.ph160

scalar.ph160:                                     ; preds = %scalar.ph160.prol.loopexit, %scalar.ph160
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph160 ], [ %indvars.iv.i.i.unr, %scalar.ph160.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv.i.i
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i.i
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !67
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !67
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv.next.i.i
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !67
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !67
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv.next.i.i.1
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i.1
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !67
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !67
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv.next.i.i.2
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i.2
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !67
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !67
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i, label %scalar.ph160, !llvm.loop !172

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i: ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i
  %.not.i5.i = icmp eq ptr %i.bp, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i: ; preds = %scalar.ph160.prol.loopexit, %scalar.ph160, %middle.block169, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !71, !range !59, !noundef !60
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.j, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bp)
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i: ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i, %bb.j, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i8 1, ptr %i.cr, align 8, !tbaa !71
  store ptr %.0.i.i, ptr %i.bo, align 8, !tbaa !53
  store i32 %i.at, ptr %i.bg, align 8, !tbaa !64
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE7reserveEi.exit

_ZN20btAlignedObjectArrayIP17btCollisionObjectE7reserveEi.exit: ; preds = %bb.g, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !65
  %i.cu = icmp slt i32 %i.ct, %i.aw
  br i1 %i.cu, label %bb.k, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE7reserveEi.exit

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE7reserveEi.exit
  %.not.i.i57 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i57, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = sext i32 %i.aw to i64
  %i.cw = shl nsw i64 %i.cv, 3
  %i.cx = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cw, i32 noundef 16)
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i58 = phi ptr [ %i.cx, %bb.l ], [ null, %bb.k ] ; 8 uses
  %i.cy = load i32, ptr %i.ai, align 4, !tbaa !48 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !62 ; 9 uses
  br i1 %i.cz, label %.lr.ph.i.i60, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i

.lr.ph.i.i60:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i
  %i.dc = ptrtoaddr ptr %i.db to i64
  %.0.i.i58143 = ptrtoaddr ptr %.0.i.i58 to i64
  %wide.trip.count.i.i61 = zext nneg i32 %i.cy to i64 ; 5 uses
  %min.iters.check146 = icmp ult i32 %i.cy, 4
  %i.dd = sub i64 %i.dc, %.0.i.i58143
  %diff.check144 = icmp ugt i64 %i.dd, -32
  %or.cond172 = select i1 %min.iters.check146, i1 true, i1 %diff.check144
  br i1 %or.cond172, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %.lr.ph.i.i60
  %n.vec148 = and i64 %wide.trip.count.i.i61, 2147483644 ; 3 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next153, %vector.body149 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i58, i64 %index150 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index150 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load151 = load <2 x ptr>, ptr %i.df, align 8, !tbaa !74
  %wide.load152 = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !74
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x ptr> %wide.load151, ptr %i.de, align 8, !tbaa !74
  store <2 x ptr> %wide.load152, ptr %i.dh, align 8, !tbaa !74
  %index.next153 = add nuw i64 %index150, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next153, %n.vec148
  br i1 %i.di, label %middle.block154, label %vector.body149, !llvm.loop !173

middle.block154:                                  ; preds = %vector.body149
  %cmp.n155 = icmp eq i64 %n.vec148, %wide.trip.count.i.i61
  br i1 %cmp.n155, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i, label %scalar.ph145.preheader

scalar.ph145.preheader:                           ; preds = %.lr.ph.i.i60, %middle.block154
  %indvars.iv.i.i62.ph = phi i64 [ 0, %.lr.ph.i.i60 ], [ %n.vec148, %middle.block154 ] ; 3 uses
  %xtraiter179 = and i64 %wide.trip.count.i.i61, 3 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %scalar.ph145.prol.loopexit, label %scalar.ph145.prol

scalar.ph145.prol:                                ; preds = %scalar.ph145.preheader, %scalar.ph145.prol
  %indvars.iv.i.i62.prol = phi i64 [ %indvars.iv.next.i.i63.prol, %scalar.ph145.prol ], [ %indvars.iv.i.i62.ph, %scalar.ph145.preheader ] ; 3 uses
  %prol.iter181 = phi i64 [ %prol.iter181.next, %scalar.ph145.prol ], [ 0, %scalar.ph145.preheader ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i58, i64 %indvars.iv.i.i62.prol
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i.i62.prol
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !74
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !74
  %indvars.iv.next.i.i63.prol = add nuw nsw i64 %indvars.iv.i.i62.prol, 1 ; 2 uses
  %prol.iter181.next = add i64 %prol.iter181, 1   ; 2 uses
  %prol.iter181.cmp.not = icmp eq i64 %prol.iter181.next, %xtraiter179
  br i1 %prol.iter181.cmp.not, label %scalar.ph145.prol.loopexit, label %scalar.ph145.prol, !llvm.loop !174

scalar.ph145.prol.loopexit:                       ; preds = %scalar.ph145.prol, %scalar.ph145.preheader
  %indvars.iv.i.i62.unr = phi i64 [ %indvars.iv.i.i62.ph, %scalar.ph145.preheader ], [ %indvars.iv.next.i.i63.prol, %scalar.ph145.prol ]
  %i.dm = sub nsw i64 %indvars.iv.i.i62.ph, %wide.trip.count.i.i61
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i, label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.prol.loopexit, %scalar.ph145
  %indvars.iv.i.i62 = phi i64 [ %indvars.iv.next.i.i63.3, %scalar.ph145 ], [ %indvars.iv.i.i62.unr, %scalar.ph145.prol.loopexit ] ; 6 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i58, i64 %indvars.iv.i.i62
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i.i62
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !74
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !74
  %indvars.iv.next.i.i63 = add nuw nsw i64 %indvars.iv.i.i62, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i58, i64 %indvars.iv.next.i.i63
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next.i.i63
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !74
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !74
  %indvars.iv.next.i.i63.1 = add nuw nsw i64 %indvars.iv.i.i62, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i58, i64 %indvars.iv.next.i.i63.1
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next.i.i63.1
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !74
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !74
  %indvars.iv.next.i.i63.2 = add nuw nsw i64 %indvars.iv.i.i62, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i58, i64 %indvars.iv.next.i.i63.2
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next.i.i63.2
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !74
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !74
  %indvars.iv.next.i.i63.3 = add nuw nsw i64 %indvars.iv.i.i62, 4 ; 2 uses
  %exitcond.not.i.i64.3 = icmp eq i64 %indvars.iv.next.i.i63.3, %wide.trip.count.i.i61
  br i1 %exitcond.not.i.i64.3, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i, label %scalar.ph145, !llvm.loop !175

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i: ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i
  %.not.i5.i59 = icmp eq ptr %i.db, null
  br i1 %.not.i5.i59, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i: ; preds = %scalar.ph145.prol.loopexit, %scalar.ph145, %middle.block154, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !75, !range !59, !noundef !60
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.m, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i

bb.m:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.db)
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i: ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i, %bb.m, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store i8 1, ptr %i.ed, align 8, !tbaa !75
  store ptr %.0.i.i58, ptr %i.da, align 8, !tbaa !62
  store i32 %i.aw, ptr %i.cs, align 8, !tbaa !65
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE7reserveEi.exit

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE7reserveEi.exit: ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE7reserveEi.exit, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.af, i64 72 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !72
  %i.eg = icmp slt i32 %i.ef, %i.az
  br i1 %i.eg, label %bb.n, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE7reserveEi.exit

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE7reserveEi.exit
  %.not.i.i65 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i65, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eh = sext i32 %i.az to i64
  %i.ei = shl nsw i64 %i.eh, 3
  %i.ej = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ei, i32 noundef 16)
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i

_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i: ; preds = %bb.o, %bb.n
  %.0.i.i66 = phi ptr [ %i.ej, %bb.o ], [ null, %bb.n ] ; 8 uses
  %i.ek = load i32, ptr %i.ak, align 4, !tbaa !52 ; 3 uses
  %i.el = icmp sgt i32 %i.ek, 0
  %i.em = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !61 ; 9 uses
  br i1 %i.el, label %.lr.ph.i.i68, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i

.lr.ph.i.i68:                                     ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i
  %i.eo = ptrtoaddr ptr %i.en to i64
  %.0.i.i66128 = ptrtoaddr ptr %.0.i.i66 to i64
  %wide.trip.count.i.i69 = zext nneg i32 %i.ek to i64 ; 5 uses
  %min.iters.check131 = icmp ult i32 %i.ek, 4
  %i.ep = sub i64 %i.eo, %.0.i.i66128
  %diff.check129 = icmp ugt i64 %i.ep, -32
  %or.cond173 = select i1 %min.iters.check131, i1 true, i1 %diff.check129
  br i1 %or.cond173, label %scalar.ph130.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph.i.i68
  %n.vec133 = and i64 %wide.trip.count.i.i69, 2147483644 ; 3 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body134 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i66, i64 %index135 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %index135 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load136 = load <2 x ptr>, ptr %i.er, align 8, !tbaa !77
  %wide.load137 = load <2 x ptr>, ptr %i.es, align 8, !tbaa !77
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <2 x ptr> %wide.load136, ptr %i.eq, align 8, !tbaa !77
  store <2 x ptr> %wide.load137, ptr %i.et, align 8, !tbaa !77
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.eu, label %middle.block139, label %vector.body134, !llvm.loop !176

middle.block139:                                  ; preds = %vector.body134
  %cmp.n140 = icmp eq i64 %n.vec133, %wide.trip.count.i.i69
  br i1 %cmp.n140, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i, label %scalar.ph130.preheader

scalar.ph130.preheader:                           ; preds = %.lr.ph.i.i68, %middle.block139
  %indvars.iv.i.i70.ph = phi i64 [ 0, %.lr.ph.i.i68 ], [ %n.vec133, %middle.block139 ] ; 3 uses
  %xtraiter182 = and i64 %wide.trip.count.i.i69, 3 ; 2 uses
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol

scalar.ph130.prol:                                ; preds = %scalar.ph130.preheader, %scalar.ph130.prol
  %indvars.iv.i.i70.prol = phi i64 [ %indvars.iv.next.i.i71.prol, %scalar.ph130.prol ], [ %indvars.iv.i.i70.ph, %scalar.ph130.preheader ] ; 3 uses
  %prol.iter184 = phi i64 [ %prol.iter184.next, %scalar.ph130.prol ], [ 0, %scalar.ph130.preheader ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i66, i64 %indvars.iv.i.i70.prol
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i.i70.prol
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !77
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !77
  %indvars.iv.next.i.i71.prol = add nuw nsw i64 %indvars.iv.i.i70.prol, 1 ; 2 uses
  %prol.iter184.next = add i64 %prol.iter184, 1   ; 2 uses
  %prol.iter184.cmp.not = icmp eq i64 %prol.iter184.next, %xtraiter182
  br i1 %prol.iter184.cmp.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol, !llvm.loop !177

scalar.ph130.prol.loopexit:                       ; preds = %scalar.ph130.prol, %scalar.ph130.preheader
  %indvars.iv.i.i70.unr = phi i64 [ %indvars.iv.i.i70.ph, %scalar.ph130.preheader ], [ %indvars.iv.next.i.i71.prol, %scalar.ph130.prol ]
  %i.ey = sub nsw i64 %indvars.iv.i.i70.ph, %wide.trip.count.i.i69
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i, label %scalar.ph130

scalar.ph130:                                     ; preds = %scalar.ph130.prol.loopexit, %scalar.ph130
  %indvars.iv.i.i70 = phi i64 [ %indvars.iv.next.i.i71.3, %scalar.ph130 ], [ %indvars.iv.i.i70.unr, %scalar.ph130.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i66, i64 %indvars.iv.i.i70
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i.i70
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !77
  store ptr %i.fc, ptr %i.fa, align 8, !tbaa !77
  %indvars.iv.next.i.i71 = add nuw nsw i64 %indvars.iv.i.i70, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i66, i64 %indvars.iv.next.i.i71
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next.i.i71
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !77
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !77
  %indvars.iv.next.i.i71.1 = add nuw nsw i64 %indvars.iv.i.i70, 2 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i66, i64 %indvars.iv.next.i.i71.1
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next.i.i71.1
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !77
  store ptr %i.fi, ptr %i.fg, align 8, !tbaa !77
  %indvars.iv.next.i.i71.2 = add nuw nsw i64 %indvars.iv.i.i70, 3 ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i66, i64 %indvars.iv.next.i.i71.2
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next.i.i71.2
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !77
  store ptr %i.fl, ptr %i.fj, align 8, !tbaa !77
  %indvars.iv.next.i.i71.3 = add nuw nsw i64 %indvars.iv.i.i70, 4 ; 2 uses
  %exitcond.not.i.i72.3 = icmp eq i64 %indvars.iv.next.i.i71.3, %wide.trip.count.i.i69
  br i1 %exitcond.not.i.i72.3, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i, label %scalar.ph130, !llvm.loop !178

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i: ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i
  %.not.i5.i67 = icmp eq ptr %i.en, null
  br i1 %.not.i5.i67, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i: ; preds = %scalar.ph130.prol.loopexit, %scalar.ph130, %middle.block139, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !78, !range !59, !noundef !60
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.p, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i

bb.p:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.en)
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i

_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i: ; preds = %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i, %bb.p, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store i8 1, ptr %i.fp, align 8, !tbaa !78
  store ptr %.0.i.i66, ptr %i.em, align 8, !tbaa !61
  store i32 %i.az, ptr %i.ee, align 8, !tbaa !72
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE7reserveEi.exit

_ZN20btAlignedObjectArrayIP17btTypedConstraintE7reserveEi.exit: ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE7reserveEi.exit, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i
  %.not55.not79 = icmp slt i32 %.044, %.048.in85
  br i1 %.not55.not79, label %.lr.ph81, label %._crit_edge82

._crit_edge82:                                    ; preds = %.lr.ph81, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE7reserveEi.exit
  %i.fq = load i32, ptr %i.a, align 4, !tbaa !20  ; 3 uses
  %i.fr = icmp sgt i32 %.044, %i.fq
  br i1 %i.fr, label %bb.q, label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE6resizeEiRKS2_.exit

bb.q:                                             ; preds = %._crit_edge82
  %i.fs = load i32, ptr %i.ab, align 8, !tbaa !21
  %i.ft = icmp slt i32 %i.fs, %.044
  br i1 %i.ft, label %bb.r, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.q
  %.pre102 = load ptr, ptr %i.z, align 8, !tbaa !19
  br label %.lr.ph.i

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i = icmp eq i32 %.044, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE8allocateEi.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fu = shl nsw i64 %i.ao, 3
  %i.fv = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fu, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !20
  br label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE8allocateEi.exit.i.i: ; preds = %bb.s, %bb.r
  %i.fw = phi i32 [ %.pre.i, %bb.s ], [ %i.fq, %bb.r ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.fv, %bb.s ], [ null, %bb.r ] ; 9 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  %i.fy = load ptr, ptr %i.z, align 8, !tbaa !19  ; 9 uses
  br i1 %i.fx, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE8allocateEi.exit.i.i
  %i.fz = ptrtoaddr ptr %i.fy to i64
  %.0.i.i.i125 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.fw to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.fw, 4
  %i.ga = sub i64 %i.fz, %.0.i.i.i125
  %diff.check = icmp ugt i64 %i.ga, -32
  %or.cond174 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond174, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %index ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load = load <2 x ptr>, ptr %i.gc, align 8, !tbaa !47
  %wide.load126 = load <2 x ptr>, ptr %i.gd, align 8, !tbaa !47
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <2 x ptr> %wide.load, ptr %i.gb, align 8, !tbaa !47
  store <2 x ptr> %wide.load126, ptr %i.ge, align 8, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter185 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter187 = phi i64 [ %prol.iter187.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.i.i.i.prol
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !47
  store ptr %i.gi, ptr %i.gg, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter187.next = add i64 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i64 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !180

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.gj = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.gk = icmp ugt i64 %i.gj, -4
  br i1 %i.gk, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.i.i.i
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !47
  store ptr %i.gn, ptr %i.gl, align 8, !tbaa !47
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.next.i.i.i
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !47
  store ptr %i.gq, ptr %i.go, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.next.i.i.i.1
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !47
  store ptr %i.gt, ptr %i.gr, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.next.i.i.i.2
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !47
  store ptr %i.gw, ptr %i.gu, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph, !llvm.loop !181

_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.i.i
  %i.gx = load i8, ptr %i.ac, align 8, !tbaa !18, !range !59, !noundef !60
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.t, label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i

bb.t:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fy)
  br label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i: ; preds = %bb.t, %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.i.i
  store i8 1, ptr %i.ac, align 8, !tbaa !18
  store ptr %.0.i.i.i, ptr %i.z, align 8, !tbaa !19
  store i32 %.044, ptr %i.ab, align 8, !tbaa !21
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i
  %i.gz = phi ptr [ %.pre102, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i ]
  %i.ha = sext i32 %i.fq to i64                   ; 2 uses
  %i.hb = shl nsw i64 %i.ha, 3
  %scevgep = getelementptr i8, ptr %i.gz, i64 %i.hb
  %i.hc = sub nsw i64 %i.ao, %i.ha
  %i.hd = shl nsw i64 %i.hc, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.hd, i1 false), !tbaa !47
  br label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE6resizeEiRKS2_.exit

_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE6resizeEiRKS2_.exit: ; preds = %.lr.ph.i, %._crit_edge82
  store i32 %.044, ptr %i.a, align 4, !tbaa !20
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.he = sext i32 %i.be to i64
  %i.hf = icmp slt i64 %indvars.iv.next99, %i.he
  br i1 %i.hf, label %bb.e, label %._crit_edge89, !llvm.loop !182

.lr.ph81:                                         ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE7reserveEi.exit, %.lr.ph81
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.lr.ph81 ], [ %i.ao, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE7reserveEi.exit ] ; 2 uses
  %i.hg = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %indvars.iv94
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !47
  call void @_ZN27btSimulationIslandManagerMt6Island6appendERKS0_(ptr noundef nonnull align 8 dereferenceable(101) %i.af, ptr noundef nonnull align 8 dereferenceable(101) %i.hi)
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next95 to i32
  %exitcond97.not = icmp eq i32 %.048.in85, %lftr.wideiv
  br i1 %exitcond97.not, label %._crit_edge82, label %.lr.ph81, !llvm.loop !183

._crit_edge89:                                    ; preds = %bb.d, %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE6resizeEiRKS2_.exit, %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE9quickSortI28IslandBatchSizeSortPredicateEEvRKT_.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btSimulationIslandManagerMt11solveIslandEP18btConstraintSolverRNS_6IslandERKNS_12SolverParamsE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(101) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not, ptr null, ptr %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52   ; 2 uses
  %.not14 = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = select i1 %.not14, ptr null, ptr %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.u = load ptr, ptr %0, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef float %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.l, i32 noundef %i.n, ptr noundef %i.e, i32 noundef %i.b, ptr noundef %i.j, i32 noundef %i.g, ptr noundef nonnull align 4 dereferenceable(128) %i.p, ptr noundef %i.r, ptr noundef %i.t) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btSimulationIslandManagerMt20serialIslandDispatchEP20btAlignedObjectArrayIPNS_6IslandEERKNS_12SolverParamsE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN27btSimulationIslandManagerMt11solveIslandEP18btConstraintSolverRNS_6IslandERKNS_12SolverParamsE.exit, %bb.c
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.d:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %.lr.ph, %_ZN27btSimulationIslandManagerMt11solveIslandEP18btConstraintSolverRNS_6IslandERKNS_12SolverParamsE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN27btSimulationIslandManagerMt11solveIslandEP18btConstraintSolverRNS_6IslandERKNS_12SolverParamsE.exit ] ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !48   ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i, ptr null, ptr %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !52   ; 2 uses
  %.not14.i = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %.not14.i, ptr null, ptr %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !54
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef float %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.aa, i32 noundef %i.ac, ptr noundef %i.t, i32 noundef %i.q, ptr noundef %i.y, i32 noundef %i.v, ptr noundef nonnull align 4 dereferenceable(128) %i.ad, ptr noundef %i.ae, ptr noundef %i.af)
          to label %_ZN27btSimulationIslandManagerMt11solveIslandEP18btConstraintSolverRNS_6IslandERKNS_12SolverParamsE.exit unwind label %bb.d, !inline_history !58 ; 0 uses

_ZN27btSimulationIslandManagerMt11solveIslandEP18btConstraintSolverRNS_6IslandERKNS_12SolverParamsE.exit: ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %i.e, align 4, !tbaa !20
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.e, label %._crit_edge, !llvm.loop !184
}

declare void @_Z13btParallelForiiiRK18btIParallelForBody(i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18btIParallelForBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btSimulationIslandManagerMt22buildAndProcessIslandsEP12btDispatcherP16btCollisionWorldR20btAlignedObjectArrayIP17btTypedConstraintERKNS_12SolverParamsE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull @.str.3)
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1, ptr noundef nonnull %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i8, ptr %i.d, align 8, !tbaa !186, !range !59, !noundef !60
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %1, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.preheader:                                       ; preds = %bb.d
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !52   ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.p, label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 840
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !100  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 848
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101  ; 5 uses
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %i.y = load i32, ptr %i.x, align 8, !tbaa !97
  %.not55 = icmp eq i32 %i.y, 2
  br i1 %.not55, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.not56 = icmp eq ptr %i.w, null
  br i1 %.not56, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
