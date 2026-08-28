Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGImpactCollisionAlgorithm?download=true
inline.NumInlined: 622
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN27btGImpactCollisionAlgorithm26convex_vs_convex_collisionEPK24btCollisionObjectWrapperS2_PK16btCollisionShapeS5_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(52) %i.b, i32 noundef %i.d, i32 noundef %i.f)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(52) %i.j, i32 noundef %i.l, i32 noundef %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %1, ptr %5, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.s, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !49
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !33
  store <2 x ptr> %i.u, ptr %i.t, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr null, ptr %i.w, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.y = load <2 x i32>, ptr %i.e, align 8, !tbaa !51
  %i.z = shufflevector <2 x i32> %i.y, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.z, ptr %i.x, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %2, ptr %6, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.ab, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ad = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !49
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !33
  store <2 x ptr> %i.ad, ptr %i.ac, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr null, ptr %i.af, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ah = load <2 x i32>, ptr %i.m, align 8, !tbaa !51
  %i.ai = shufflevector <2 x i32> %i.ah, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ai, ptr %i.ag, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.b, label %_ZN27btGImpactCollisionAlgorithm20checkConvexAlgorithmEPK24btCollisionObjectWrapperS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !11 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.c, label %_ZN27btGImpactCollisionAlgorithm12newAlgorithmEPK24btCollisionObjectWrapperS2_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef %i.v, ptr noundef %i.ae), !inline_history !52 ; 2 uses
  store ptr %i.at, ptr %i.al, align 8, !tbaa !11
  br label %_ZN27btGImpactCollisionAlgorithm12newAlgorithmEPK24btCollisionObjectWrapperS2_.exit.i

_ZN27btGImpactCollisionAlgorithm12newAlgorithmEPK24btCollisionObjectWrapperS2_.exit.i: ; preds = %bb.c, %bb.b
  %i.au = phi ptr [ %i.at, %bb.c ], [ %i.am, %bb.b ] ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %i.au, i32 noundef 1), !inline_history !53 ; 2 uses
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !23
  br label %_ZN27btGImpactCollisionAlgorithm20checkConvexAlgorithmEPK24btCollisionObjectWrapperS2_.exit

_ZN27btGImpactCollisionAlgorithm20checkConvexAlgorithmEPK24btCollisionObjectWrapperS2_.exit: ; preds = %bb.a, %_ZN27btGImpactCollisionAlgorithm12newAlgorithmEPK24btCollisionObjectWrapperS2_.exit.i
  %i.bd = phi ptr [ %i.ak, %bb.a ], [ %i.bc, %_ZN27btGImpactCollisionAlgorithm12newAlgorithmEPK24btCollisionObjectWrapperS2_.exit.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !46
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(49) %i.bf, ptr noundef %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm29gimpact_vs_gimpact_find_pairsERK11btTransformS2_PK23btGImpactShapeInterfaceS5_R9btPairSet(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(25) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %class.btAABB, align 4              ; 9 uses
  %7 = alloca %class.btAABB, align 4              ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %.not22 = icmp eq i32 %i.b, 0
  br i1 %.not22, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54
  %.not23 = icmp eq i32 %i.d, 0
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN21btGImpactQuantizedBvh14find_collisionEPKS_RK11btTransformS1_S4_R9btPairSet(ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull %i.c, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(25) %5)
  br label %bb.o

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.e = load ptr, ptr %3, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(184) %3) ; 2 uses
  %.not25 = icmp eq i32 %i.h, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.e

.loopexit:                                        ; preds = %_ZNK6btAABB13has_collisionERKS_.exit.thread, %bb.e
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !63

bb.e:                                             ; preds = %.lr.ph26, %.loopexit
  %.in = phi i32 [ %i.h, %.lr.ph26 ], [ %i.w, %.loopexit ]
  %i.w = add nsw i32 %.in, -1                     ; 5 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(184) %3, i32 noundef %i.w, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.i)
  %i.aa = load ptr, ptr %4, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(184) %4) ; 2 uses
  %.not2024 = icmp eq i32 %i.ad, 0
  br i1 %.not2024, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %_ZNK6btAABB13has_collisionERKS_.exit.thread
  %.in27 = phi i32 [ %i.ae, %_ZNK6btAABB13has_collisionERKS_.exit.thread ], [ %i.ad, %bb.e ]
  %i.ae = add nsw i32 %.in27, -1                  ; 3 uses
  %i.af = load ptr, ptr %4, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 240
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(184) %4, i32 noundef %i.w, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.j)
  %i.ai = load float, ptr %7, align 4, !tbaa !65
  %i.aj = load float, ptr %i.i, align 4, !tbaa !65
  %i.ak = fcmp ogt float %i.ai, %i.aj
  br i1 %i.ak, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.al = load float, ptr %i.j, align 4, !tbaa !65
  %i.am = load float, ptr %6, align 4, !tbaa !65
  %i.an = fcmp olt float %i.al, %i.am
  br i1 %i.an, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load float, ptr %i.k, align 4, !tbaa !65
  %i.ap = load float, ptr %i.l, align 4, !tbaa !65
  %i.aq = fcmp ogt float %i.ao, %i.ap
  br i1 %i.aq, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load float, ptr %i.m, align 4, !tbaa !65
  %i.as = load float, ptr %i.n, align 4, !tbaa !65
  %i.at = fcmp olt float %i.ar, %i.as
  br i1 %i.at, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load float, ptr %i.o, align 4, !tbaa !65
  %i.av = load float, ptr %i.p, align 4, !tbaa !65
  %i.aw = fcmp ogt float %i.au, %i.av
  br i1 %i.aw, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load float, ptr %i.q, align 4, !tbaa !65
  %i.ay = load float, ptr %i.r, align 4, !tbaa !65
  %8 = fcmp uge float %i.ax, %i.ay
  br i1 %8, label %_ZNK6btAABB13has_collisionERKS_.exit, label %_ZNK6btAABB13has_collisionERKS_.exit.thread

_ZNK6btAABB13has_collisionERKS_.exit:             ; preds = %bb.j
  %i.az = load i32, ptr %i.s, align 4, !tbaa !66  ; 7 uses
  %i.ba = load i32, ptr %i.t, align 8, !tbaa !70
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.k, label %_ZN9btPairSet9push_pairEii.exit

bb.k:                                             ; preds = %_ZNK6btAABB13has_collisionERKS_.exit
  %.not.i.i.i = icmp eq i32 %i.az, 0
  %i.bc = shl nsw i32 %i.az, 1
  %i.bd = select i1 %.not.i.i.i, i32 1, i32 %i.bc ; 4 uses
  %i.be = icmp slt i32 %i.az, %i.bd
  br i1 %i.be, label %bb.l, label %_ZN9btPairSet9push_pairEii.exit

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = sext i32 %i.bd to i64
  %i.bg = shl nsw i64 %i.bf, 3
  %i.bh = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bg, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.s, align 4, !tbaa !66
  br label %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.bi = phi i32 [ %.pre.i.i, %bb.m ], [ %i.az, %bb.l ] ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.bh, %bb.m ], [ null, %bb.l ] ; 12 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  %i.bk = load ptr, ptr %i.u, align 8, !tbaa !71  ; 13 uses
  br i1 %i.bj, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.bi to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.bi, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i
  %scevgep = getelementptr i8, ptr %.0.i.i.i.i, i64 -4
  %i.bl = shl nuw nsw i64 %wide.trip.count.i.i.i.i, 3 ; 4 uses
  %scevgep35 = getelementptr i8, ptr %scevgep, i64 %i.bl
  %scevgep36 = getelementptr i8, ptr %i.bk, i64 -4
  %scevgep37 = getelementptr i8, ptr %scevgep36, i64 %i.bl
  %scevgep38 = getelementptr i8, ptr %.0.i.i.i.i, i64 4
  %scevgep39 = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.bl
  %scevgep40 = getelementptr i8, ptr %i.bk, i64 4
  %scevgep41 = getelementptr i8, ptr %i.bk, i64 %i.bl
  %bound0 = icmp ult ptr %.0.i.i.i.i, %scevgep37
  %bound1 = icmp ult ptr %i.bk, %scevgep35
  %found.conflict = and i1 %bound0, %bound1
  %bound042 = icmp ult ptr %scevgep38, %scevgep41
  %bound143 = icmp ult ptr %scevgep40, %scevgep39
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bm = or disjoint i64 %index, 2               ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %index
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.bm
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %index
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  %wide.vec = load <4 x i32>, ptr %i.bp, align 4, !tbaa !51
  %wide.vec46 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !51
  store <4 x i32> %wide.vec, ptr %i.bn, align 4, !tbaa !51
  store <4 x i32> %wide.vec46, ptr %i.bo, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i.i.i.i.prol
  %i.bu = load <2 x i32>, ptr %i.bt, align 4, !tbaa !51
  store <2 x i32> %i.bu, ptr %i.bs, align 4, !tbaa !51
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !75

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.bv = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i.i.i.i
  %i.bz = load <2 x i32>, ptr %i.by, align 4, !tbaa !51
  store <2 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !51
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.i
  %i.cc = load <2 x i32>, ptr %i.cb, align 4, !tbaa !51
  store <2 x i32> %i.cc, ptr %i.ca, align 4, !tbaa !51
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.i.1
  %i.cf = load <2 x i32>, ptr %i.ce, align 4, !tbaa !51
  store <2 x i32> %i.cf, ptr %i.cd, align 4, !tbaa !51
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.i.2
  %i.ci = load <2 x i32>, ptr %i.ch, align 4, !tbaa !51
  store <2 x i32> %i.ci, ptr %i.cg, align 4, !tbaa !51
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !77

_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i

_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
  %i.cj = load i8, ptr %i.v, align 8, !tbaa !78, !range !79, !noundef !80
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.n, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bk)
  %.pre2.pre.pre.i.i = load i32, ptr %i.s, align 4, !tbaa !66
  br label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i: ; preds = %bb.n, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
  %.pre2.i.i = phi i32 [ %i.bi, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i ], [ %.pre2.pre.pre.i.i, %bb.n ], [ %i.bi, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i ]
  store i8 1, ptr %i.v, align 8, !tbaa !78
  store ptr %.0.i.i.i.i, ptr %i.u, align 8, !tbaa !71
  store i32 %i.bd, ptr %i.t, align 8, !tbaa !70
  br label %_ZN9btPairSet9push_pairEii.exit

_ZN9btPairSet9push_pairEii.exit:                  ; preds = %_ZNK6btAABB13has_collisionERKS_.exit, %bb.k, %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i
  %i.cl = phi i32 [ %.pre2.i.i, %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i ], [ %i.az, %bb.k ], [ %i.az, %_ZNK6btAABB13has_collisionERKS_.exit ] ; 2 uses
  %i.cm = load ptr, ptr %i.u, align 8, !tbaa !71
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  store i32 %i.w, ptr %i.co, align 4, !tbaa !81
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 %i.ae, ptr %i.cp, align 4, !tbaa !83
  %i.cq = add nsw i32 %i.cl, 1
  store i32 %i.cq, ptr %i.s, align 4, !tbaa !66
  br label %_ZNK6btAABB13has_collisionERKS_.exit.thread

_ZNK6btAABB13has_collisionERKS_.exit.thread:      ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %.lr.ph, %_ZN9btPairSet9push_pairEii.exit, %bb.j
  %.not20 = icmp eq i32 %i.ae, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph, !llvm.loop !84

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.c
  ret void
}

declare void @_ZN21btGImpactQuantizedBvh14find_collisionEPKS_RK11btTransformS1_S4_R9btPairSet(ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm27gimpact_vs_shape_find_pairsERK11btTransformS2_PK23btGImpactShapeInterfacePK16btCollisionShapeR20btAlignedObjectArrayIiE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(25) %5) local_unnamed_addr #8 align 2 {
bb.a:
  %6 = alloca %class.btAABB, align 4              ; 12 uses
  %7 = alloca %class.btTransform, align 16        ; 8 uses
  %8 = alloca %class.btAABB, align 4              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load float, ptr %i.e, align 4, !tbaa !65, !noalias !88 ; 3 uses
  %i.i = load float, ptr %i.f, align 4, !tbaa !65, !noalias !88 ; 3 uses
  %i.j = load float, ptr %i.g, align 4, !tbaa !65, !noalias !88 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load float, ptr %i.k, align 4, !tbaa !65, !noalias !85
  %i.m = fneg float %i.l                          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.o = load float, ptr %i.n, align 4, !tbaa !65, !noalias !85
  %i.p = fneg float %i.o                          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load float, ptr %i.q, align 4, !tbaa !65, !noalias !85
  %i.s = fneg float %i.r                          ; 2 uses
  %i.t = fmul float %i.i, %i.p
  %i.u = tail call float @llvm.fmuladd.f32(float %i.h, float %i.m, float %i.t)
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.s, float %i.u) ; 2 uses
  %.sroa.3.12.vec.insert.i3.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.v, i64 0
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i3.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !91, !alias.scope !85
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load float, ptr %i.z, align 4, !tbaa !65 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !65 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !65 ; 2 uses
  %i.af = fmul float %i.i, %i.ac
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.h, float %i.aa, float %i.af)
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.ae, float %i.ag)
  %i.ai = load <2 x float>, ptr %1, align 4, !tbaa !65, !noalias !88 ; 3 uses
  %i.aj = load <2 x float>, ptr %i.c, align 4, !tbaa !65, !noalias !88 ; 3 uses
  %i.ak = load <2 x float>, ptr %i.d, align 4, !tbaa !65, !noalias !88 ; 3 uses
  %i.al = insertelement <2 x float> poison, float %i.p, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.aj, %i.am
  %i.ao = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ap, <2 x float> %i.an)
  %i.ar = insertelement <2 x float> poison, float %i.s, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.as, <2 x float> %i.aq)
  %i.au = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.aj, %i.av
  %i.ax = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ay, <2 x float> %i.aw)
  %i.ba = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.bb, <2 x float> %i.az)
  %i.bd = fadd <2 x float> %i.bc, %i.at
  store <2 x float> %i.bd, ptr %i.y, align 16, !tbaa !65
  %i.be = fadd float %i.ah, %i.v
  store float %i.be, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bn = load <2 x float>, ptr %2, align 4, !tbaa !65 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bf, align 4, !tbaa !65 ; 2 uses
  %i.bp = load <2 x float>, ptr %i.bg, align 4, !tbaa !65 ; 2 uses
  %i.bq = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bs = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bt = insertelement <4 x float> %i.bs, float 1.000000e+00, i64 3
  %i.bu = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bv = insertelement <4 x float> %i.bu, float 0.000000e+00, i64 3
  %i.bw = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.by = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bz = insertelement <4 x float> %i.by, float 0.000000e+00, i64 3
  %i.ca = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.cc = load <2 x float>, ptr %i.bi, align 4, !tbaa !65 ; 2 uses
  %i.cd = load float, ptr %i.bl, align 4, !tbaa !65
  %i.ce = load <2 x float>, ptr %i.bh, align 4, !tbaa !65 ; 2 uses
  %i.cf = load float, ptr %i.bk, align 4, !tbaa !65
  %i.cg = load <2 x float>, ptr %i.bj, align 4, !tbaa !65 ; 2 uses
  %i.ch = load float, ptr %i.bm, align 4, !tbaa !65
  %i.ci = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x float> %i.bt, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ck = fmul <4 x float> %i.br, %i.cj
  %i.cl = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x float> %i.bv, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %i.bx, <4 x float> %i.ck)
  %i.co = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cp = shufflevector <4 x float> %i.bz, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cb, <4 x float> %i.cn)
  %i.cr = shufflevector <4 x float> %i.bq, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cs = shufflevector <2 x float> %i.bo, <2 x float> %i.cc, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ct = insertelement <4 x float> %i.cs, float 1.000000e+00, i64 3 ; 2 uses
  %i.cu = fmul <4 x float> %i.cr, %i.ct
  %i.cv = shufflevector <2 x float> %i.bn, <2 x float> %i.ce, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cw = insertelement <4 x float> %i.cv, float 0.000000e+00, i64 3 ; 2 uses
  %i.cx = shufflevector <4 x float> %i.bw, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.cx, <4 x float> %i.cu)
  %i.cz = shufflevector <2 x float> %i.bp, <2 x float> %i.cg, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.da = insertelement <4 x float> %i.cz, float 0.000000e+00, i64 3 ; 2 uses
  %i.db = shufflevector <4 x float> %i.ca, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %i.db, <4 x float> %i.cy)
  store <4 x float> %i.cq, ptr %7, align 16, !tbaa !65
  store <4 x float> %i.dc, ptr %i.w, align 16, !tbaa !65
  %i.dd = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.i, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.df = insertelement <4 x float> %i.ct, float %i.cd, i64 2
  %i.dg = fmul <4 x float> %i.de, %i.df
  %i.dh = insertelement <4 x float> %i.cw, float %i.cf, i64 2
  %i.di = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.h, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.dj, <4 x float> %i.dg)
  %i.dl = insertelement <4 x float> %i.da, float %i.ch, i64 2
  %i.dm = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.j, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dk)
  store <4 x float> %i.do, ptr %i.x, align 16, !tbaa !65
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dq = load ptr, ptr %4, align 8, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.dp)
  %i.dt = call noundef zeroext i1 @_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(25) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dv = load ptr, ptr %4, align 8, !tbaa !9
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.dy = load ptr, ptr %3, align 8, !tbaa !9
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 176
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call noundef i32 %i.ea(ptr noundef nonnull align 8 dereferenceable(184) %3) ; 2 uses
  %.not15 = icmp eq i32 %i.eb, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNK6btAABB13has_collisionERKS_.exit.thread
  %.in = phi i32 [ %i.eb, %.lr.ph ], [ %i.ep, %_ZNK6btAABB13has_collisionERKS_.exit.thread ]
  %i.ep = add nsw i32 %.in, -1                    ; 4 uses
  %i.eq = load ptr, ptr %3, align 8, !tbaa !9
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 240
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(184) %3, i32 noundef %i.ep, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.ec)
  %i.et = load float, ptr %6, align 4, !tbaa !65
  %i.eu = load float, ptr %i.ec, align 4, !tbaa !65
  %i.ev = fcmp ogt float %i.et, %i.eu
  br i1 %i.ev, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ew = load float, ptr %i.du, align 4, !tbaa !65
  %i.ex = load float, ptr %8, align 4, !tbaa !65
  %i.ey = fcmp olt float %i.ew, %i.ex
  br i1 %i.ey, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ez = load float, ptr %i.ed, align 4, !tbaa !65
  %i.fa = load float, ptr %i.ee, align 4, !tbaa !65
  %i.fb = fcmp ogt float %i.ez, %i.fa
  br i1 %i.fb, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fc = load float, ptr %i.ef, align 4, !tbaa !65
  %i.fd = load float, ptr %i.eg, align 4, !tbaa !65
  %i.fe = fcmp olt float %i.fc, %i.fd
  br i1 %i.fe, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ff = load float, ptr %i.eh, align 4, !tbaa !65
  %i.fg = load float, ptr %i.ei, align 4, !tbaa !65
  %i.fh = fcmp ogt float %i.ff, %i.fg
  br i1 %i.fh, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fi = load float, ptr %i.ej, align 4, !tbaa !65
  %i.fj = load float, ptr %i.ek, align 4, !tbaa !65
  %9 = fcmp uge float %i.fi, %i.fj
  br i1 %9, label %_ZNK6btAABB13has_collisionERKS_.exit, label %_ZNK6btAABB13has_collisionERKS_.exit.thread

_ZNK6btAABB13has_collisionERKS_.exit:             ; preds = %bb.i
  %i.fk = load i32, ptr %i.el, align 4, !tbaa !92 ; 7 uses
  %i.fl = load i32, ptr %i.em, align 8, !tbaa !96
  %i.fm = icmp eq i32 %i.fk, %i.fl
  br i1 %i.fm, label %bb.j, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.j:                                             ; preds = %_ZNK6btAABB13has_collisionERKS_.exit
  %.not.i.i = icmp eq i32 %i.fk, 0
  %i.fn = shl nsw i32 %i.fk, 1
  %i.fo = select i1 %.not.i.i, i32 1, i32 %i.fn   ; 4 uses
  %i.fp = icmp slt i32 %i.fk, %i.fo
  br i1 %i.fp, label %bb.k, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fq = sext i32 %i.fo to i64
  %i.fr = shl nsw i64 %i.fq, 2
  %i.fs = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fr, i32 noundef 16)
  %.pre.i = load i32, ptr %i.el, align 4, !tbaa !92
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.l, %bb.k
  %i.ft = phi i32 [ %.pre.i, %bb.l ], [ %i.fk, %bb.k ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.fs, %bb.l ], [ null, %bb.k ] ; 8 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  %i.fv = load ptr, ptr %i.en, align 8, !tbaa !97 ; 9 uses
  br i1 %i.fu, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.fw = ptrtoaddr ptr %i.fv to i64
  %.0.i.i.i22 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.ft to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ft, 8
  %i.fx = sub i64 %i.fw, %.0.i.i.i22
  %diff.check = icmp ugt i64 %i.fx, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %index ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load = load <4 x i32>, ptr %i.fz, align 4, !tbaa !51
  %wide.load23 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !51
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store <4 x i32> %wide.load, ptr %i.fy, align 4, !tbaa !51
  store <4 x i32> %wide.load23, ptr %i.gb, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.i.i.i.prol
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !51
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !51
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !99

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.gg = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.gh = icmp ugt i64 %i.gg, -4
  br i1 %i.gh, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.i.i.i
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !51
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !51
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next.i.i.i
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !51
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !51
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next.i.i.i.1
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !51
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !51
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next.i.i.i.2
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !51
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !51
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph, !llvm.loop !100

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.gu = load i8, ptr %i.eo, align 8, !tbaa !101, !range !79, !noundef !80
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fv)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  %.pre2.pre.i = load i32, ptr %i.el, align 4, !tbaa !92
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.n, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.pre2.i = phi i32 [ %.pre2.pre.i, %bb.n ], [ %i.ft, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ]
  store i8 1, ptr %i.eo, align 8, !tbaa !101
  store ptr %.0.i.i.i, ptr %i.en, align 8, !tbaa !97
  store i32 %i.fo, ptr %i.em, align 8, !tbaa !96
  br label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

_ZN20btAlignedObjectArrayIiE9push_backERKi.exit:  ; preds = %_ZNK6btAABB13has_collisionERKS_.exit, %bb.j, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.gw = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.fk, %bb.j ], [ %i.fk, %_ZNK6btAABB13has_collisionERKS_.exit ]
  %i.gx = load ptr, ptr %i.en, align 8, !tbaa !97
  %i.gy = sext i32 %i.gw to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.gy
  store i32 %i.ep, ptr %i.gz, align 4, !tbaa !51
  %i.ha = load i32, ptr %i.el, align 4, !tbaa !92
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.el, align 4, !tbaa !92
  br label %_ZNK6btAABB13has_collisionERKS_.exit.thread

_ZNK6btAABB13has_collisionERKS_.exit.thread:      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.d, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit, %bb.i
  %.not = icmp eq i32 %i.ep, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !102

._crit_edge:                                      ; preds = %_ZNK6btAABB13has_collisionERKS_.exit.thread, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void
}

declare noundef zeroext i1 @_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 4 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm21collide_gjk_trianglesEPK24btCollisionObjectWrapperS2_PK22btGImpactMeshShapePartS5_PKii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.btTriangleShapeEx, align 8   ; 12 uses
  %8 = alloca %class.btTriangleShapeEx, align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
  %.ptr5.i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.ptr5.i.i, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 264) (i8, ptr @_ZTV17btTriangleShapeEx, i64 16), ptr %7, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  invoke void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %8)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %.ptr5.i.i21 = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.ptr5.i.i21, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 264) (i8, ptr @_ZTV17btTriangleShapeEx, i64 16), ptr %8, align 8, !tbaa !9
  %i.c = load ptr, ptr %3, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(280) %3)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(280) %4)
          to label %.preheader unwind label %bb.j

.preheader:                                       ; preds = %bb.c
  %.not22 = icmp eq i32 %6, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %.in = phi i32 [ %6, %.lr.ph ], [ %i.k, %bb.k ]
  %.023 = phi ptr [ %5, %.lr.ph ], [ %i.o, %bb.k ] ; 3 uses
  %i.k = add nsw i32 %.in, -1                     ; 2 uses
  %i.l = load i32, ptr %.023, align 4, !tbaa !51  ; 2 uses
  store i32 %i.l, ptr %i.i, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %.023, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !51
  store i32 %i.n, ptr %i.j, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.p = load ptr, ptr %3, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(280) %3, i32 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.j, align 8, !tbaa !32
  %i.t = load ptr, ptr %4, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(280) %4, i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(128) %8)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.w = invoke noundef zeroext i1 @_ZN17btTriangleShapeEx25overlap_test_conservativeERKS_(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(128) %8)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %bb.f
  br i1 %i.w, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN27btGImpactCollisionAlgorithm26convex_vs_convex_collisionEPK24btCollisionObjectWrapperS2_PK16btCollisionShapeS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8)
          to label %bb.k unwind label %.loopexit

bb.i:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.f, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.h, %bb.g
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.k, %.preheader
  %i.z = load ptr, ptr %3, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(280) %3)
          to label %bb.l unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %4, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(280) %4)
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret void

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn = phi { ptr, i32 } [ %i.y, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %8) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.x, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  resume { ptr, i32 } %.pn.pn
}

declare noundef zeroext i1 @_ZN17btTriangleShapeEx25overlap_test_conservativeERKS_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm21collide_sat_trianglesEPK24btCollisionObjectWrapperS2_PK22btGImpactMeshShapePartS5_PKii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #8 align 2 {
bb.a:
  %7 = alloca %class.btPrimitiveTriangle, align 8 ; 20 uses
  %8 = alloca %class.btPrimitiveTriangle, align 8 ; 15 uses
  %9 = alloca %struct.GIM_TRIANGLE_CONTACT, align 4 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106, !nonnull !80, !align !107 ; 8 uses
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.1670.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.2680.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.3287.48.copyload = load float, ptr %i.e, align 4 ; 2 uses
  %.sroa.3690.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.f = load <2 x float>, ptr %i.b, align 4      ; 3 uses
  %i.g = load <2 x float>, ptr %i.c, align 4      ; 3 uses
  %i.h = load <2 x float>, ptr %.sroa.660.0..sroa_idx, align 4 ; 3 uses
  %i.i = load <2 x float>, ptr %.sroa.1670.16..sroa_idx, align 4 ; 3 uses
  %i.j = load <2 x float>, ptr %i.d, align 4      ; 5 uses
  %i.k = load <2 x float>, ptr %.sroa.3690.48..sroa_idx, align 4 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !106, !nonnull !80, !align !107 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.16.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.26.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.q = load <2 x float>, ptr %i.m, align 4      ; 2 uses
  %i.r = load <2 x float>, ptr %i.n, align 4      ; 3 uses
  %i.s = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 4 uses
  %i.t = load <2 x float>, ptr %.sroa.16.16..sroa_idx, align 4 ; 4 uses
  %i.u = load <2 x float>, ptr %i.o, align 4      ; 3 uses
  %i.v = load <2 x float>, ptr %.sroa.2680.32..sroa_idx, align 4 ; 4 uses
  %i.w = load <2 x float>, ptr %.sroa.26.32..sroa_idx, align 4 ; 4 uses
  %.sroa.3250.48.copyload = load float, ptr %i.p, align 4
  %i.x = load <3 x float>, ptr %i.p, align 4      ; 3 uses
  %i.y = shufflevector <3 x float> %i.x, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 0> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 64
  store float f0x3C23D70A, ptr %i.z, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 64
  store float f0x3C23D70A, ptr %i.aa, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
end_hunk_0
begin_hunk_1_@_ZNK15btTriangleShape8isInsideERK9btVector3f:bb.a
  %i.ac = fmul <2 x float> %i.p, %i.aa
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.w, <2 x float> %i.ab) ; 4 uses
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.x, <2 x float> %i.ac) ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ad, %i.ad
  %i.af = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ag = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.af)
  %i.ai = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ah)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = fmul <2 x float> %i.ad, %i.am           ; 6 uses
  %i.ao = fmul <2 x float> %i.ae, %i.am           ; 3 uses
  %i.ap = load <2 x float>, ptr %1, align 4, !tbaa !65 ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> %i.j, <2 x i32> <i32 1, i32 3>
  %i.ar = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.as = fmul <2 x float> %i.aq, %i.ar
  %i.at = shufflevector <2 x float> %i.ap, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.au = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.au, <2 x float> %i.as)
  %i.aw = shufflevector <2 x float> %i.i, <2 x float> %i.o, <2 x i32> <i32 0, i32 3>
  %i.ax = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ax, <2 x float> %i.av) ; 2 uses
  %shift = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop54 = fsub <2 x float> %i.ay, %shift
  %i.az = extractelement <2 x float> %foldExtExtBinop54, i64 0 ; 2 uses
  %i.ba = fneg float %2                           ; 4 uses
  %i.bb = fcmp ult float %i.az, %i.ba
  %i.bc = fcmp ugt float %i.az, %2
  %or.cond = or i1 %i.bb, %i.bc
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bf = extractelement <2 x float> %i.an, i64 1
  %i.bg = fneg float %i.bf                        ; 3 uses
  %i.bh = fneg <2 x float> %i.ao                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bi = load ptr, ptr %0, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 216
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.bl = load float, ptr %i.be, align 8, !tbaa !65
  %i.bm = load float, ptr %i.g, align 4, !tbaa !65
  %i.bn = load <2 x float>, ptr %3, align 8, !tbaa !65 ; 4 uses
  %i.bo = extractelement <2 x float> %i.ao, i64 0 ; 3 uses
  %i.bp = load <2 x float>, ptr %4, align 8, !tbaa !65 ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bd, align 4, !tbaa !65 ; 3 uses
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bs = insertelement <2 x float> %i.br, float %i.bl, i64 0
  %i.bt = shufflevector <2 x float> %i.bq, <2 x float> %i.bn, <2 x i32> <i32 1, i32 2>
  %i.bu = fsub <2 x float> %i.bs, %i.bt           ; 2 uses
  %i.bv = extractelement <2 x float> %i.bu, i64 0
  %i.bw = fmul float %i.bv, %i.bg
  %i.bx = shufflevector <2 x float> %i.bn, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.by = fsub <2 x float> %i.bp, %i.bx           ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 1
  %i.ca = call float @llvm.fmuladd.f32(float %i.bz, float %i.bo, float %i.bw) ; 3 uses
  %i.cb = fmul <2 x float> %i.by, %i.bh
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.an, <2 x float> %i.cb) ; 4 uses
  %foldExtExtBinop56 = fmul <2 x float> %i.cc, %i.cc
  %i.cd = extractelement <2 x float> %foldExtExtBinop56, i64 0
  %i.ce = call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.cd)
  %i.cf = extractelement <2 x float> %i.cc, i64 1 ; 2 uses
  %i.cg = call noundef float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.ce)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.cg)
  %i.ch = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ci = fmul float %i.ca, %i.ch
  %i.cj = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x float> %i.cc, %i.ck           ; 2 uses
  %i.cm = load <2 x float>, ptr %1, align 4, !tbaa !65 ; 2 uses
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.co = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.cn, %i.co
  %i.cq = shufflevector <2 x float> %i.cm, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.cr = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cs, <2 x float> %i.cp)
  %i.cu = insertelement <2 x float> %i.bq, float %i.bm, i64 0
  %i.cv = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cv, <2 x float> %i.ct) ; 2 uses
  %shift58 = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fsub <2 x float> %i.cw, %shift58
  %i.cx = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.cy = fcmp uge float %i.cx, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %i.cy, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.cz = load ptr, ptr %0, align 8, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 216
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.dc = load float, ptr %i.be, align 8, !tbaa !65
  %i.dd = load float, ptr %i.g, align 4, !tbaa !65
  %i.de = load <2 x float>, ptr %3, align 8, !tbaa !65 ; 4 uses
  %i.df = load <2 x float>, ptr %4, align 8, !tbaa !65 ; 2 uses
  %i.dg = load <2 x float>, ptr %i.bd, align 4, !tbaa !65 ; 3 uses
  %i.dh = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.di = insertelement <2 x float> %i.dh, float %i.dc, i64 0
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> %i.de, <2 x i32> <i32 1, i32 2>
  %i.dk = fsub <2 x float> %i.di, %i.dj           ; 2 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 0
  %i.dm = fmul float %i.dl, %i.bg
  %i.dn = shufflevector <2 x float> %i.de, <2 x float> %i.dg, <2 x i32> <i32 0, i32 2>
  %i.do = fsub <2 x float> %i.df, %i.dn           ; 2 uses
  %i.dp = extractelement <2 x float> %i.do, i64 1
  %i.dq = call float @llvm.fmuladd.f32(float %i.dp, float %i.bo, float %i.dm) ; 3 uses
  %i.dr = fmul <2 x float> %i.do, %i.bh
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.an, <2 x float> %i.dr) ; 4 uses
  %foldExtExtBinop61 = fmul <2 x float> %i.ds, %i.ds
  %i.dt = extractelement <2 x float> %foldExtExtBinop61, i64 0
  %i.du = call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.dt)
  %i.dv = extractelement <2 x float> %i.ds, i64 1 ; 2 uses
  %i.dw = call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.du)
  %sqrt.i.i.1 = call noundef float @llvm.sqrt.f32(float %i.dw)
  %i.dx = fdiv float 1.000000e+00, %sqrt.i.i.1    ; 2 uses
  %i.dy = fmul float %i.dq, %i.dx
  %i.dz = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.ds, %i.ea           ; 2 uses
  %i.ec = load <2 x float>, ptr %1, align 4, !tbaa !65 ; 2 uses
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> %i.de, <2 x i32> <i32 1, i32 3>
  %i.ee = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x float> %i.ed, %i.ee
  %i.eg = shufflevector <2 x float> %i.ec, <2 x float> %i.de, <2 x i32> <i32 0, i32 2>
  %i.eh = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.ei, <2 x float> %i.ef)
  %i.ek = insertelement <2 x float> %i.dg, float %i.dd, i64 0
  %i.el = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.em = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.el, <2 x float> %i.ej) ; 2 uses
  %shift63 = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop64 = fsub <2 x float> %i.em, %shift63
  %i.en = extractelement <2 x float> %foldExtExtBinop64, i64 0
  %i.eo = fcmp uge float %i.en, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %i.eo, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ep = load ptr, ptr %0, align 8, !tbaa !9
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 216
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.es = load float, ptr %i.be, align 8, !tbaa !65
  %i.et = load float, ptr %i.g, align 4, !tbaa !65
  %i.eu = load <2 x float>, ptr %3, align 8, !tbaa !65 ; 4 uses
  %i.ev = load <2 x float>, ptr %4, align 8, !tbaa !65 ; 2 uses
  %i.ew = load <2 x float>, ptr %i.bd, align 4, !tbaa !65 ; 3 uses
  %i.ex = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ey = insertelement <2 x float> %i.ex, float %i.es, i64 0
  %i.ez = shufflevector <2 x float> %i.ew, <2 x float> %i.eu, <2 x i32> <i32 1, i32 2>
  %i.fa = fsub <2 x float> %i.ey, %i.ez           ; 2 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 0
  %i.fc = fmul float %i.fb, %i.bg
  %i.fd = shufflevector <2 x float> %i.eu, <2 x float> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.fe = fsub <2 x float> %i.ev, %i.fd           ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 1
  %i.fg = call float @llvm.fmuladd.f32(float %i.ff, float %i.bo, float %i.fc) ; 3 uses
  %i.fh = fmul <2 x float> %i.fe, %i.bh
  %i.fi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.an, <2 x float> %i.fh) ; 4 uses
  %foldExtExtBinop66 = fmul <2 x float> %i.fi, %i.fi
  %i.fj = extractelement <2 x float> %foldExtExtBinop66, i64 0
  %i.fk = call float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.fj)
  %i.fl = extractelement <2 x float> %i.fi, i64 1 ; 2 uses
  %i.fm = call noundef float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.fk)
  %sqrt.i.i.2 = call noundef float @llvm.sqrt.f32(float %i.fm)
  %i.fn = fdiv float 1.000000e+00, %sqrt.i.i.2    ; 2 uses
  %i.fo = fmul float %i.fg, %i.fn
  %i.fp = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x float> %i.fi, %i.fq           ; 2 uses
  %i.fs = load <2 x float>, ptr %1, align 4, !tbaa !65 ; 2 uses
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> %i.eu, <2 x i32> <i32 1, i32 3>
  %i.fu = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = fmul <2 x float> %i.ft, %i.fu
  %i.fw = shufflevector <2 x float> %i.fs, <2 x float> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.fx = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fy, <2 x float> %i.fv)
  %i.ga = insertelement <2 x float> %i.ew, float %i.et, i64 0
  %i.gb = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gb, <2 x float> %i.fz) ; 2 uses
  %shift68 = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop69 = fsub <2 x float> %i.gc, %shift68
  %i.gd = extractelement <2 x float> %foldExtExtBinop69, i64 0
  %i.ge = fcmp uge float %i.gd, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %.preheader ], [ %i.ge, %bb.c ], [ false, %bb.b ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load float, ptr %i.b, align 8, !tbaa !65
  %i.d = load float, ptr %i.a, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load float, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !65 ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !65 ; 3 uses
  %i.l = fsub <2 x float> %i.j, %i.k              ; 2 uses
  %i.m = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = insertelement <2 x float> %i.m, float %i.c, i64 1
  %i.o = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %i.d, i64 1 ; 2 uses
  %i.q = fsub <2 x float> %i.n, %i.p              ; 2 uses
  %i.r = load <2 x float>, ptr %i.i, align 4, !tbaa !65 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.h, i64 1
  %i.u = fsub <2 x float> %i.t, %i.p              ; 2 uses
  %i.v = fsub <2 x float> %i.r, %i.k              ; 2 uses
  %i.w = fneg <2 x float> %i.v
  %i.x = fmul <2 x float> %i.q, %i.w
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.u, <2 x float> %i.x) ; 4 uses
  %i.z = extractelement <2 x float> %i.u, i64 1
  %i.aa = fneg float %i.z
  %i.ab = extractelement <2 x float> %i.l, i64 0
  %i.ac = fmul float %i.ab, %i.aa
  %i.ad = extractelement <2 x float> %i.q, i64 1
  %i.ae = extractelement <2 x float> %i.v, i64 0
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ae, float %i.ac) ; 4 uses
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !91
  %foldExtExtBinop = fmul <2 x float> %i.y, %i.y
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ah = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ag)
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.y, %i.am
  store <2 x float> %i.an, ptr %2, align 4, !tbaa !65
  %i.ao = fmul float %i.af, %i.ak
  store float %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !128
  ret void
}

declare void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

declare noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #5

declare void @_ZN16btBU_Simplex1to4C2Ev(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btTetrahedronShapeExD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #16
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN16btBU_Simplex1to4dlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #17
  unreachable

_ZN16btBU_Simplex1to4dlEPv.exit:                  ; preds = %bb.a
  ret void
}

declare void @_ZNK16btBU_Simplex1to47getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZN34btPolyhedralConvexAabbCachingShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(113), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(80), float noundef, ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16btBU_Simplex1to47getNameEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr @.str.2
}

declare { <2 x float>, <2 x float> } @_ZNK23btPolyhedralConvexShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK23btPolyhedralConvexShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

declare noundef i32 @_ZNK16btBU_Simplex1to414getNumVerticesEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

declare noundef i32 @_ZNK16btBU_Simplex1to411getNumEdgesEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

declare void @_ZNK16btBU_Simplex1to47getEdgeEiR9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK16btBU_Simplex1to49getVertexEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZNK16btBU_Simplex1to412getNumPlanesEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

declare void @_ZNK16btBU_Simplex1to48getPlaneER9btVector3S1_i(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK16btBU_Simplex1to48isInsideERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 4 dereferenceable(16), float noundef) unnamed_addr #1

declare noundef i32 @_ZNK16btBU_Simplex1to48getIndexEi(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN18GIM_ShapeRetriever19ChildShapeRetriever13getChildShapeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !139  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(184) %i.c, i32 noundef %1)
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN18GIM_ShapeRetriever22TriangleShapeRetriever13getChildShapeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !139  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(184) %i.c, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18GIM_ShapeRetriever22TriangleShapeRetrieverD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN18GIM_ShapeRetriever19TetraShapeRetriever13getChildShapeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !139  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(184) %i.c, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(184) %i.d)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18GIM_ShapeRetriever19TetraShapeRetrieverD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}
end_hunk_1
