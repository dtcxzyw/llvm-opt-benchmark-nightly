Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btGImpactCollisionAlgorithm?download=true
inline.NumInlined: 560
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN27btGImpactCollisionAlgorithm29gimpact_vs_gimpact_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceS4_R9btPairSet:bb.a
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.k, label %_ZN9btPairSet9push_pairEii.exit

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i = icmp eq i32 %i.ba, 0
  %i.bd = shl nsw i32 %i.ba, 1
  %i.be = select i1 %.not.i.i.i, i32 1, i32 %i.bd ; 4 uses
  %i.bf = icmp slt i32 %i.ba, %i.be
  br i1 %i.bf, label %bb.l, label %_ZN9btPairSet9push_pairEii.exit

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = sext i32 %i.be to i64
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bh, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.s, align 4, !tbaa !54
  br label %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.bj = phi i32 [ %.pre.i.i, %bb.m ], [ %i.ba, %bb.l ] ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.bi, %bb.m ], [ null, %bb.l ] ; 12 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !56  ; 13 uses
  br i1 %i.bk, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.bj to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.bj, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i
  %scevgep = getelementptr i8, ptr %.0.i.i.i.i, i64 -4
  %i.bm = shl nuw nsw i64 %wide.trip.count.i.i.i.i, 3 ; 4 uses
  %scevgep35 = getelementptr i8, ptr %scevgep, i64 %i.bm
  %scevgep36 = getelementptr i8, ptr %i.bl, i64 -4
  %scevgep37 = getelementptr i8, ptr %scevgep36, i64 %i.bm
  %scevgep38 = getelementptr i8, ptr %.0.i.i.i.i, i64 4
  %scevgep39 = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.bm
  %scevgep40 = getelementptr i8, ptr %i.bl, i64 4
  %scevgep41 = getelementptr i8, ptr %i.bl, i64 %i.bm
  %bound0 = icmp ult ptr %.0.i.i.i.i, %scevgep37
  %bound1 = icmp ult ptr %i.bl, %scevgep35
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
  %i.bn = or disjoint i64 %index, 2               ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %index
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.bn
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %index
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bn
  %wide.vec = load <4 x i32>, ptr %i.bq, align 4, !tbaa !9
  %wide.vec46 = load <4 x i32>, ptr %i.br, align 4, !tbaa !9
  store <4 x i32> %wide.vec, ptr %i.bo, align 4, !tbaa !9
  store <4 x i32> %wide.vec46, ptr %i.bp, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !123

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
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i.i.prol
  %i.bv = load <2 x i32>, ptr %i.bu, align 4, !tbaa !9
  store <2 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !124

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.bw = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i.i
  %i.ca = load <2 x i32>, ptr %i.bz, align 4, !tbaa !9
  store <2 x i32> %i.ca, ptr %i.by, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.i.i
  %i.cd = load <2 x i32>, ptr %i.cc, align 4, !tbaa !9
  store <2 x i32> %i.cd, ptr %i.cb, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.i.i.1
  %i.cg = load <2 x i32>, ptr %i.cf, align 4, !tbaa !9
  store <2 x i32> %i.cg, ptr %i.ce, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.i.i.2
  %i.cj = load <2 x i32>, ptr %i.ci, align 4, !tbaa !9
  store <2 x i32> %i.cj, ptr %i.ch, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !125

_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i

_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
  %i.ck = load i8, ptr %i.v, align 8, !tbaa !60, !range !61, !noundef !62
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.n, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bl)
  %.pre2.pre.pre.i.i = load i32, ptr %i.s, align 4, !tbaa !54
  br label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i: ; preds = %bb.n, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
  %.pre2.i.i = phi i32 [ %i.bj, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i ], [ %.pre2.pre.pre.i.i, %bb.n ], [ %i.bj, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i ]
  store i8 1, ptr %i.v, align 8, !tbaa !60
  store ptr %.0.i.i.i.i, ptr %i.u, align 8, !tbaa !56
  store i32 %i.be, ptr %i.t, align 8, !tbaa !55
  br label %_ZN9btPairSet9push_pairEii.exit

_ZN9btPairSet9push_pairEii.exit:                  ; preds = %bb.j, %bb.k, %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i
  %i.cm = phi i32 [ %.pre2.i.i, %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i ], [ %i.ba, %bb.k ], [ %i.ba, %bb.j ] ; 2 uses
  %i.cn = load ptr, ptr %i.u, align 8, !tbaa !56
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  store i32 %i.w, ptr %i.cp, align 4, !tbaa !64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 %i.ae, ptr %i.cq, align 4, !tbaa !65
  %i.cr = add nsw i32 %i.cm, 1
  store i32 %i.cr, ptr %i.s, align 4, !tbaa !54
  br label %_ZNK6btAABB13has_collisionERKS_.exit.thread

_ZNK6btAABB13has_collisionERKS_.exit.thread:      ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %.lr.ph, %_ZN9btPairSet9push_pairEii.exit, %_ZNK6btAABB13has_collisionERKS_.exit
  %.not20 = icmp eq i32 %i.ae, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.c
  ret void
}

declare void @_ZN21btGImpactQuantizedBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet(ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm27gimpact_vs_shape_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceP16btCollisionShapeR20btAlignedObjectArrayIiE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(25) %5) local_unnamed_addr #6 align 2 {
bb.a:
  %6 = alloca %class.btAABB, align 4              ; 12 uses
  %7 = alloca %class.btTransform, align 16        ; 8 uses
  %8 = alloca %class.btAABB, align 4              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load float, ptr %i.e, align 4, !tbaa !50, !noalias !134 ; 3 uses
  %i.i = load float, ptr %i.f, align 4, !tbaa !50, !noalias !134 ; 3 uses
  %i.j = load float, ptr %i.g, align 4, !tbaa !50, !noalias !134 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.p = load <2 x float>, ptr %1, align 4, !tbaa !50, !noalias !134 ; 3 uses
  %i.q = load <2 x float>, ptr %i.c, align 4, !tbaa !50, !noalias !134 ; 3 uses
  %i.r = load <2 x float>, ptr %i.d, align 4, !tbaa !50, !noalias !134 ; 3 uses
  %i.s = load <3 x float>, ptr %i.k, align 4, !tbaa !50, !noalias !133
  %i.t = fneg <3 x float> %i.s                    ; 6 uses
  %i.u = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fmul <2 x float> %i.q, %i.u
  %i.w = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.w, <2 x float> %i.v)
  %i.y = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.y, <2 x float> %i.x)
  %i.aa = extractelement <3 x float> %i.t, i64 1
  %i.ab = fmul float %i.i, %i.aa
  %i.ac = extractelement <3 x float> %i.t, i64 0
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.h, float %i.ac, float %i.ab)
  %i.ae = extractelement <3 x float> %i.t, i64 2
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.ae, float %i.ad) ; 2 uses
  %.sroa.3.12.vec.insert.i3.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i3.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !66, !alias.scope !133
  %9 = load <3 x float>, ptr %i.o, align 4, !tbaa !50 ; 5 uses
  %i.ag = load float, ptr %i.o, align 4, !tbaa !50
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fmul <2 x float> %i.q, %10
  %i.ai = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.ai, <2 x float> %i.ah)
  %11 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %11, <2 x float> %i.aj)
  %13 = extractelement <3 x float> %9, i64 1
  %i.ak = fmul float %i.i, %13
  %i.al = tail call float @llvm.fmuladd.f32(float %i.h, float %i.ag, float %i.ak)
  %14 = extractelement <3 x float> %9, i64 2
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %14, float %i.al)
  %i.an = fadd <2 x float> %12, %i.z
  store <2 x float> %i.an, ptr %i.n, align 16, !tbaa !50
  %i.ao = fadd float %i.am, %i.af
  store float %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ax = load <2 x float>, ptr %2, align 4, !tbaa !50 ; 2 uses
  %i.ay = load <2 x float>, ptr %i.ap, align 4, !tbaa !50 ; 2 uses
  %i.az = load <2 x float>, ptr %i.aq, align 4, !tbaa !50 ; 2 uses
  %i.ba = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bc = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bd = insertelement <4 x float> %i.bc, float 1.000000e+00, i64 3
  %i.be = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bf = insertelement <4 x float> %i.be, float 0.000000e+00, i64 3
  %i.bg = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bi = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bj = insertelement <4 x float> %i.bi, float 0.000000e+00, i64 3
  %i.bk = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bm = load <2 x float>, ptr %i.as, align 4, !tbaa !50 ; 2 uses
  %i.bn = load float, ptr %i.av, align 4, !tbaa !50
  %i.bo = load <2 x float>, ptr %i.ar, align 4, !tbaa !50 ; 2 uses
  %i.bp = load float, ptr %i.au, align 4, !tbaa !50
  %i.bq = load <2 x float>, ptr %i.at, align 4, !tbaa !50 ; 2 uses
  %i.br = load float, ptr %i.aw, align 4, !tbaa !50
  %i.bs = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.bd, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bu = fmul <4 x float> %i.bb, %i.bt
  %i.bv = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bf, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.bh, <4 x float> %i.bu)
  %i.by = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.bj, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.bl, <4 x float> %i.bx)
  %i.cb = shufflevector <4 x float> %i.ba, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cc = shufflevector <2 x float> %i.ay, <2 x float> %i.bm, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float 1.000000e+00, i64 3 ; 2 uses
  %i.ce = fmul <4 x float> %i.cb, %i.cd
  %i.cf = shufflevector <2 x float> %i.ax, <2 x float> %i.bo, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float 0.000000e+00, i64 3 ; 2 uses
  %i.ch = shufflevector <4 x float> %i.bg, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.ch, <4 x float> %i.ce)
  %i.cj = shufflevector <2 x float> %i.az, <2 x float> %i.bq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ck = insertelement <4 x float> %i.cj, float 0.000000e+00, i64 3 ; 2 uses
  %i.cl = shufflevector <4 x float> %i.bk, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> %i.cl, <4 x float> %i.ci)
  store <4 x float> %i.ca, ptr %7, align 16, !tbaa !50
  store <4 x float> %i.cm, ptr %i.l, align 16, !tbaa !50
  %i.cn = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.i, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cp = insertelement <4 x float> %i.cd, float %i.bn, i64 2
  %i.cq = fmul <4 x float> %i.co, %i.cp
  %i.cr = insertelement <4 x float> %i.cg, float %i.bp, i64 2
  %i.cs = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.h, i64 0
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.ct, <4 x float> %i.cq)
  %i.cv = insertelement <4 x float> %i.ck, float %i.br, i64 2
  %i.cw = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.j, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.cx, <4 x float> %i.cu)
  store <4 x float> %i.cy, ptr %i.m, align 16, !tbaa !50
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.da = load ptr, ptr %4, align 8, !tbaa !11
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.cz)
  %i.dd = call noundef zeroext i1 @_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(25) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.df = load ptr, ptr %4, align 8, !tbaa !11
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.di = load ptr, ptr %3, align 8, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 144
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call noundef i32 %i.dk(ptr noundef nonnull align 8 dereferenceable(176) %3) ; 2 uses
  %.not15 = icmp eq i32 %i.dl, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNK6btAABB13has_collisionERKS_.exit.thread
  %.in = phi i32 [ %i.dl, %.lr.ph ], [ %i.dz, %_ZNK6btAABB13has_collisionERKS_.exit.thread ]
  %i.dz = add nsw i32 %.in, -1                    ; 4 uses
  %i.ea = load ptr, ptr %3, align 8, !tbaa !11
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 208
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(176) %3, i32 noundef %i.dz, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.dm)
  %i.ed = load float, ptr %6, align 4, !tbaa !50
  %i.ee = load float, ptr %i.dm, align 4, !tbaa !50
  %i.ef = fcmp ogt float %i.ed, %i.ee
  br i1 %i.ef, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eg = load float, ptr %i.de, align 4, !tbaa !50
  %i.eh = load float, ptr %8, align 4, !tbaa !50
  %i.ei = fcmp olt float %i.eg, %i.eh
  br i1 %i.ei, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ej = load float, ptr %i.dn, align 4, !tbaa !50
  %i.ek = load float, ptr %i.do, align 4, !tbaa !50
  %i.el = fcmp ogt float %i.ej, %i.ek
  br i1 %i.el, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.em = load float, ptr %i.dp, align 4, !tbaa !50
  %i.en = load float, ptr %i.dq, align 4, !tbaa !50
  %i.eo = fcmp olt float %i.em, %i.en
  br i1 %i.eo, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ep = load float, ptr %i.dr, align 4, !tbaa !50
  %i.eq = load float, ptr %i.ds, align 4, !tbaa !50
  %i.er = fcmp ogt float %i.ep, %i.eq
  br i1 %i.er, label %_ZNK6btAABB13has_collisionERKS_.exit.thread, label %_ZNK6btAABB13has_collisionERKS_.exit

_ZNK6btAABB13has_collisionERKS_.exit:             ; preds = %bb.h
  %i.es = load float, ptr %i.dt, align 4, !tbaa !50
  %i.et = load float, ptr %i.du, align 4, !tbaa !50
  %i.eu = fcmp uge float %i.es, %i.et
  br i1 %i.eu, label %bb.i, label %_ZNK6btAABB13has_collisionERKS_.exit.thread

bb.i:                                             ; preds = %_ZNK6btAABB13has_collisionERKS_.exit
  %i.ev = load i32, ptr %i.dv, align 4, !tbaa !70 ; 7 uses
  %i.ew = load i32, ptr %i.dw, align 8, !tbaa !71
  %i.ex = icmp eq i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.j, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %i.ev, 0
  %i.ey = shl nsw i32 %i.ev, 1
  %i.ez = select i1 %.not.i.i, i32 1, i32 %i.ey   ; 4 uses
  %i.fa = icmp slt i32 %i.ev, %i.ez
  br i1 %i.fa, label %bb.k, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fb = sext i32 %i.ez to i64
  %i.fc = shl nsw i64 %i.fb, 2
  %i.fd = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fc, i32 noundef 16)
  %.pre.i = load i32, ptr %i.dv, align 4, !tbaa !70
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.l, %bb.k
  %i.fe = phi i32 [ %.pre.i, %bb.l ], [ %i.ev, %bb.k ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.fd, %bb.l ], [ null, %bb.k ] ; 8 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  %i.fg = load ptr, ptr %i.dx, align 8, !tbaa !72 ; 9 uses
  br i1 %i.ff, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.fh = ptrtoaddr ptr %i.fg to i64
  %.0.i.i.i22 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.fe to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.fe, 8
  %i.fi = sub i64 %i.fh, %.0.i.i.i22
  %diff.check = icmp ugt i64 %i.fi, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %index ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load = load <4 x i32>, ptr %i.fk, align 4, !tbaa !9
end_hunk_0
begin_hunk_1_@_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !86
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, -1
  %i.fo = icmp eq i64 %indvars.iv97, 0
  br i1 %i.fo, label %._crit_edge, label %.lr.ph.split.us

.split.us:                                        ; preds = %.invoke, %bb.r
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split83.us:                                      ; preds = %_ZN18GIM_ShapeRetriever13getChildShapeEi.exit.us
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %.split

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %5, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.t
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %bb.t ], [ %i.bw, %.lr.ph.split ] ; 3 uses
  %i.fr = load ptr, ptr %i.aq, align 8, !tbaa !72
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %indvars.iv94
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !9  ; 2 uses
  store i32 %i.ft, ptr %i.bg, align 8, !tbaa !28
  %i.fu = load ptr, ptr %i.bh, align 8, !tbaa !102 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !11
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = invoke noundef ptr %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i32 noundef %i.ft)
          to label %_ZN18GIM_ShapeRetriever13getChildShapeEi.exit.us85 unwind label %.split.split.us, !inline_history !1

_ZN18GIM_ShapeRetriever13getChildShapeEi.exit.us85: ; preds = %.lr.ph.split.split.us
  invoke void @_ZN27btGImpactCollisionAlgorithm24shape_vs_shape_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef %i.fx)
          to label %bb.t unwind label %.split.split.us

bb.t:                                             ; preds = %_ZN18GIM_ShapeRetriever13getChildShapeEi.exit.us85
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, -1
  %i.fy = icmp eq i64 %indvars.iv94, 0
  br i1 %i.fy, label %._crit_edge, label %.lr.ph.split.split.us

.split.split.us:                                  ; preds = %_ZN18GIM_ShapeRetriever13getChildShapeEi.exit.us85, %.lr.ph.split.split.us
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ %i.bw, %.lr.ph.split ] ; 3 uses
  %i.ga = load ptr, ptr %i.aq, align 8, !tbaa !72
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %indvars.iv
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !9  ; 2 uses
  store i32 %i.gc, ptr %i.bf, align 8, !tbaa !26
  %i.gd = load ptr, ptr %i.bh, align 8, !tbaa !102 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !11
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = invoke noundef ptr %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i32 noundef %i.gc)
          to label %_ZN18GIM_ShapeRetriever13getChildShapeEi.exit unwind label %.split.split, !inline_history !1

bb.u:                                             ; preds = %bb.z, %bb.m
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.n
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.w:                                             ; preds = %._crit_edge
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.split

_ZN18GIM_ShapeRetriever13getChildShapeEi.exit:    ; preds = %.lr.ph.split.split
  invoke void @_ZN27btGImpactCollisionAlgorithm24shape_vs_shape_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.gg, ptr noundef nonnull %4)
          to label %bb.x unwind label %.split.split

.split.split:                                     ; preds = %.lr.ph.split.split, %_ZN18GIM_ShapeRetriever13getChildShapeEi.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.x:                                             ; preds = %_ZN18GIM_ShapeRetriever13getChildShapeEi.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gl = icmp eq i64 %indvars.iv, 0
  br i1 %i.gl, label %._crit_edge, label %.lr.ph.split.split

._crit_edge:                                      ; preds = %bb.x, %bb.t, %bb.s, %bb.o
  %i.gm = load ptr, ptr %3, align 8, !tbaa !11
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 200
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %bb.y unwind label %bb.w

bb.y:                                             ; preds = %._crit_edge
  %i.gp = getelementptr inbounds nuw i8, ptr %9, i64 120
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.gp)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 8
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.gq)
          to label %_ZN18GIM_ShapeRetrieverD2Ev.exit unwind label %bb.u

bb.aa:                                            ; preds = %bb.y
  %i.gr = landingpad { ptr, i32 }
          cleanup
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 8
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.gs)
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #13
  unreachable

_ZN18GIM_ShapeRetrieverD2Ev.exit:                 ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.j, %_ZN18GIM_ShapeRetrieverD2Ev.exit
  %i.gv = load ptr, ptr %i.aq, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.gv, null
  %i.gw = load i8, ptr %i.ap, align 8, !range !61
  %i.gx = trunc nuw i8 %i.gw to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.gx, i1 false
  br i1 %or.cond.i.i, label %bb.ad, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gv)
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %_ZN20btAlignedObjectArrayIiED2Ev.exit, %bb.h, %bb.f, %bb.e
  ret void

.split:                                           ; preds = %.split.us, %.split.split.us, %.split.split, %bb.w, %.split83.us, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gi, %bb.v ], [ %i.gj, %bb.w ], [ %i.fq, %.split83.us ], [ %i.fp, %.split.us ], [ %i.gk, %.split.split ], [ %i.fz, %.split.split.us ]
  invoke void @_ZN18GIM_ShapeRetrieverD2Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %9)
          to label %.body unwind label %bb.ag

.body:                                            ; preds = %bb.aa, %bb.u, %.split
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.split ], [ %i.gh, %bb.u ], [ %i.gr, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.ae

bb.ae:                                            ; preds = %.body, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.av, %bb.k ]
  %i.gy = load ptr, ptr %i.aq, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i78 = icmp ne ptr %i.gy, null
  %i.gz = load i8, ptr %i.ap, align 8, !range !61
  %i.ha = trunc nuw i8 %i.gz to i1
  %or.cond.i.i79 = select i1 %.not.i.i.i78, i1 %i.ha, i1 false
  br i1 %or.cond.i.i79, label %bb.af, label %_ZN20btAlignedObjectArrayIiED2Ev.exit80

bb.af:                                            ; preds = %bb.ae
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gy)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit80 unwind label %bb.ag

_ZN20btAlignedObjectArrayIiED2Ev.exit80:          ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

bb.ag:                                            ; preds = %bb.af, %.split
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #13
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm37gimpacttrimeshpart_vs_plane_collisionEP17btCollisionObjectS1_P22btGImpactMeshShapePartP18btStaticPlaneShapeb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #6 align 2 {
bb.a:
  %6 = alloca %class.btTransform, align 8         ; 13 uses
  %7 = alloca %class.btVector4, align 8           ; 7 uses
  %8 = alloca %class.btAABB, align 4              ; 10 uses
  %9 = alloca %class.btVector3, align 8           ; 8 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %i.a, i64 16, i1 false), !tbaa.struct !86
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !86
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !86
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !86
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.9.16.copyload = load float, ptr %.sroa.9.16..sroa_idx, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.1032.32.copyload = load float, ptr %i.j, align 4
  %.sroa.12.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.12.32.copyload = load float, ptr %.sroa.12.32..sroa_idx, align 4
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.13.32.copyload = load float, ptr %.sroa.13.32..sroa_idx, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.1433.48.copyload = load float, ptr %i.k, align 4
  %.sroa.16.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  %.sroa.16.48.copyload = load float, ptr %.sroa.16.48..sroa_idx, align 4
  %.sroa.17.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.17.48.copyload = load float, ptr %.sroa.17.48..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.o = load <2 x float>, ptr %i.h, align 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx30, align 4
  %i.p = load <2 x float>, ptr %i.i, align 4
  %.sroa.8.16.copyload = load float, ptr %.sroa.8.16..sroa_idx, align 4
  %i.q = load float, ptr %i.m, align 4, !tbaa !50 ; 4 uses
  %i.r = load float, ptr %i.l, align 4, !tbaa !50 ; 3 uses
  %i.s = load float, ptr %i.n, align 4, !tbaa !50 ; 3 uses
  %11 = fmul float %.sroa.8.16.copyload, %i.q
  %12 = fmul float %.sroa.4.0.copyload, %i.q
  %13 = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %14 = insertelement <2 x float> poison, float %i.r, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x float> poison, float %12, i64 0
  %16 = insertelement <2 x float> %i.t, float %11, i64 1
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %15, <2 x float> %16)
  %i.v = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.w = insertelement <2 x float> %i.v, float %.sroa.9.16.copyload, i64 1
  %i.x = insertelement <2 x float> poison, float %i.s, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.y, <2 x float> %i.u) ; 4 uses
  store <2 x float> %i.z, ptr %7, align 8, !tbaa !50
  %i.aa = fmul float %.sroa.12.32.copyload, %i.q
  %i.ab = tail call float @llvm.fmuladd.f32(float %.sroa.1032.32.copyload, float %i.r, float %i.aa)
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.32.copyload, float %i.s, float %i.ab) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float %i.ac, ptr %i.ad, align 8, !tbaa !50
  %i.ae = fmul float %.sroa.16.48.copyload, %i.q
  %i.af = tail call float @llvm.fmuladd.f32(float %.sroa.1433.48.copyload, float %i.r, float %i.ae)
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %.sroa.17.48.copyload, float %i.s, float %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !165
  %i.aj = fadd float %i.ag, %i.ai                 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store float %i.aj, ptr %i.ak, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.al)
  %i.ap = load ptr, ptr %4, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef float %i.ar(ptr noundef nonnull align 8 dereferenceable(28) %4) ; 6 uses
  %i.at = load float, ptr %8, align 4, !tbaa !50
  %i.au = fsub float %i.at, %i.as                 ; 2 uses
  store float %i.au, ptr %8, align 4, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !50
  %i.ax = fsub float %i.aw, %i.as                 ; 2 uses
  store float %i.ax, ptr %i.av, align 4, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !50
  %i.ba = fsub float %i.az, %i.as                 ; 2 uses
  store float %i.ba, ptr %i.ay, align 4, !tbaa !50
  %i.bb = load float, ptr %i.al, align 4, !tbaa !50
  %i.bc = fadd float %i.as, %i.bb                 ; 3 uses
  store float %i.bc, ptr %i.al, align 4, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !50
  %i.bf = fadd float %i.as, %i.be                 ; 3 uses
  store float %i.bf, ptr %i.bd, align 4, !tbaa !50
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !50
  %i.bi = fadd float %i.as, %i.bh                 ; 3 uses
  store float %i.bi, ptr %i.bg, align 4, !tbaa !50
  %i.bj = fadd float %i.au, %i.bc
  %i.bk = fadd float %i.ax, %i.bf
  %i.bl = fadd float %i.ba, %i.bi
  %i.bm = fmul float %i.bj, 5.000000e-01          ; 2 uses
  %i.bn = fmul float %i.bk, 5.000000e-01          ; 2 uses
  %i.bo = fmul float %i.bl, 5.000000e-01          ; 2 uses
  %i.bp = fsub float %i.bc, %i.bm
  %i.bq = fsub float %i.bf, %i.bn
  %i.br = fsub float %i.bi, %i.bo
  %i.bs = extractelement <2 x float> %i.z, i64 1  ; 2 uses
  %i.bt = extractelement <2 x float> %i.z, i64 0
  %i.bu = call noundef float @llvm.fabs.f32(float %i.bt)
  %i.bv = call noundef float @llvm.fabs.f32(float %i.bs)
  %i.bw = call noundef float @llvm.fabs.f32(float %i.ac)
  %i.bx = fmul float %i.bq, %i.bv
  %i.by = fmul float %i.bn, %i.bs
  %i.bz = insertelement <2 x float> %i.z, float %i.bu, i64 1
  %i.ca = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bp, i64 1
  %i.cc = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.bx, i64 1
  %i.ce = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.cb, <2 x float> %i.cd)
  %i.cf = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.bw, i64 1
  %i.ch = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.br, i64 1
  %i.cj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ci, <2 x float> %i.ce) ; 2 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 0 ; 2 uses
  %i.cl = extractelement <2 x float> %i.cj, i64 1 ; 2 uses
  %i.cm = fsub float %i.ck, %i.cl
  %i.cn = fadd float %i.ck, %i.cl
  %i.co = fadd float %i.cn, f0x358637BD
  %i.cp = fcmp ule float %i.aj, %i.co
  %i.cq = fadd float %i.aj, f0x358637BD
  %i.cr = fcmp oge float %i.cq, %i.cm
  %.not = and i1 %i.cr, %i.cp
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.cs = load ptr, ptr %3, align 8, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 192
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(272) %3)
  %i.cv = load ptr, ptr %3, align 8, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef float %i.cx(ptr noundef nonnull align 8 dereferenceable(272) %3)
  %i.cz = load ptr, ptr %4, align 8, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = call noundef float %i.db(ptr noundef nonnull align 8 dereferenceable(28) %4)
  %i.dd = fadd float %i.cy, %i.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.df = load i32, ptr %i.de, align 8, !tbaa !171 ; 2 uses
  %.not2335 = icmp eq i32 %i.df, 0
  br i1 %.not2335, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 236
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 204 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.in = phi i32 [ %i.df, %.lr.ph ], [ %i.eb, %bb.k ]
  %i.eb = add nsw i32 %.in, -1                    ; 3 uses
  %i.ec = load i32, ptr %i.dg, align 4, !tbaa !172
  %i.ed = icmp eq i32 %i.ec, 1
  %i.ee = load ptr, ptr %i.dh, align 8, !tbaa !173
  %i.ef = load i32, ptr %i.di, align 8, !tbaa !174
  %i.eg = mul nsw i32 %i.ef, %i.eb
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 %i.eh ; 5 uses
  %i.ej = load float, ptr %i.dj, align 8, !tbaa !50 ; 2 uses
  br i1 %i.ed, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ek = load float, ptr %i.dk, align 4, !tbaa !50
  %i.el = load <2 x double>, ptr %i.ei, align 8, !tbaa !176
  %i.em = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.ek, i64 1
  %i.eo = fpext <2 x float> %i.en to <2 x double>
  %i.ep = fmul <2 x double> %i.el, %i.eo
  %i.eq = fptrunc <2 x double> %i.ep to <2 x float>
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.es = load double, ptr %i.er, align 8, !tbaa !176
  %i.et = load float, ptr %i.dm, align 8, !tbaa !50
  %i.eu = fpext float %i.et to double
  %i.ev = fmul double %i.es, %i.eu
  %i.ew = fptrunc double %i.ev to float
  br label %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit

bb.e:                                             ; preds = %bb.c
  %i.ex = load float, ptr %i.ei, align 4, !tbaa !50
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ez = load float, ptr %i.dk, align 4, !tbaa !50
  %i.fa = fmul float %i.ej, %i.ex                 ; 2 uses
  store float %i.fa, ptr %9, align 8, !tbaa !50
  %i.fb = load float, ptr %i.ey, align 4, !tbaa !50
  %i.fc = fmul float %i.fb, %i.ez                 ; 2 uses
  store float %i.fc, ptr %i.dl, align 4, !tbaa !50
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !50
  %i.ff = load float, ptr %i.dm, align 8, !tbaa !50
  %i.fg = fmul float %i.fe, %i.ff
  %i.fh = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.fc, i64 1
  br label %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit

_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i = phi float [ %i.ew, %bb.d ], [ %i.fg, %bb.e ] ; 2 uses
  %i.fj = phi <2 x float> [ %i.eq, %bb.d ], [ %i.fi, %bb.e ] ; 4 uses
  %i.fk = extractelement <2 x float> %i.fj, i64 1
  %i.fl = extractelement <2 x float> %i.fj, i64 0
  %i.fm = load <4 x float>, ptr %i.do, align 8
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fo = load float, ptr %i.dp, align 8, !tbaa !50
  %i.fp = load <2 x float>, ptr %6, align 8, !tbaa !50 ; 2 uses
  %i.fq = load <2 x float>, ptr %i.c, align 8, !tbaa !50 ; 2 uses
  %i.fr = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 1, i32 3>
  %i.fs = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = fmul <2 x float> %i.fr, %i.fs
  %i.fu = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 0, i32 2>
  %i.fv = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.fv, <2 x float> %i.ft)
  %i.fx = insertelement <2 x float> %i.fn, float %i.fo, i64 1
  %i.fy = insertelement <2 x float> poison, float %.sink.i.i, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fz, <2 x float> %i.fw)
  %i.gb = load <2 x float>, ptr %i.f, align 8, !tbaa !50
end_hunk_1
begin_hunk_2_@_ZN27btGImpactCollisionAlgorithm37gimpacttrimeshpart_vs_plane_collisionEP17btCollisionObjectS1_P22btGImpactMeshShapePartP18btStaticPlaneShapeb:bb.a
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(272) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm24gimpact_vs_compoundshapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP15btCompoundShapeb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load <4 x float>, ptr %i.a, align 4      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.d = load <4 x float>, ptr %i.c, align 4      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.sroa.1538.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.f = load <4 x float>, ptr %i.e, align 4      ; 5 uses
  %.sroa.1538.32.copyload = load float, ptr %.sroa.1538.32..sroa_idx, align 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.sroa.21.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = load <4 x float>, ptr %i.g, align 4      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !184  ; 2 uses
  %.not55 = icmp eq i32 %i.j, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  %.sroa.20.48.copyload = load float, ptr %.sroa.20.48..sroa_idx, align 4
  %.sroa.1027.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.1027.16.copyload = load float, ptr %.sroa.1027.16..sroa_idx, align 4 ; 2 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.516.0.copyload = load float, ptr %.sroa.516.0..sroa_idx, align 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = sext i32 %i.j to i64
  %i.m = extractelement <4 x float> %i.f, i64 0
  %i.n = extractelement <4 x float> %i.f, i64 2
  %i.o = extractelement <4 x float> %i.h, i64 2
  %i.p = shufflevector <4 x float> %i.b, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.q = shufflevector <4 x float> %i.b, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.r = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %.sroa.516.0.copyload, i64 0
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.t = shufflevector <4 x float> %i.d, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.u = shufflevector <4 x float> %i.d, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.v = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.1027.16.copyload, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = shufflevector <4 x float> %i.f, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.y = shufflevector <4 x float> %i.f, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.z = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.1538.32.copyload, i64 0
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ab = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ac = insertelement <2 x float> %i.ab, float %.sroa.20.48.copyload, i64 1
  %i.ad = shufflevector <4 x float> %i.b, <4 x float> %i.d, <2 x i32> <i32 2, i32 6>
  %i.ae = shufflevector <4 x float> %i.b, <4 x float> %i.d, <2 x i32> <i32 0, i32 4>
  %i.af = insertelement <2 x float> poison, float %.sroa.516.0.copyload, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %.sroa.1027.16.copyload, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !185
  %i.ai = getelementptr inbounds [88 x i8], ptr %i.ah, i64 %indvars.iv.next ; 11 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !188
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.au = load <3 x float>, ptr %i.at, align 8, !tbaa !50, !noalias !189 ; 5 uses
  %i.av = load float, ptr %i.at, align 8, !tbaa !50, !noalias !189
  %i.aw = shufflevector <3 x float> %i.au, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = fmul <2 x float> %i.ag, %i.aw
  %i.ay = shufflevector <3 x float> %i.au, <3 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ay, <2 x float> %i.ax)
  %i.ba = shufflevector <3 x float> %i.au, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ba, <2 x float> %i.az)
  %i.bc = fadd <2 x float> %i.ac, %i.bb
  %i.bd = extractelement <3 x float> %i.au, i64 1
  %i.be = fmul float %.sroa.1538.32.copyload, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.m, float %i.av, float %i.be)
  %i.bg = extractelement <3 x float> %i.au, i64 2
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.bg, float %i.bf)
  %i.bi = fadd float %i.o, %i.bh
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bi, i64 0
  %i.bj = load <2 x float>, ptr %i.ai, align 8, !tbaa !50, !noalias !190 ; 2 uses
  %i.bk = load <2 x float>, ptr %i.al, align 8, !tbaa !50, !noalias !190 ; 2 uses
  %i.bl = load <2 x float>, ptr %i.am, align 8, !tbaa !50, !noalias !190 ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bn = insertelement <4 x float> %i.bm, float 0.000000e+00, i64 3
  %i.bo = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bp = insertelement <4 x float> %i.bo, float 0.000000e+00, i64 3
  %i.bq = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.br = insertelement <4 x float> %i.bq, float 0.000000e+00, i64 3
  %i.bs = load <2 x float>, ptr %i.ao, align 4, !tbaa !50, !noalias !190 ; 2 uses
  %i.bt = load float, ptr %i.ar, align 8, !tbaa !50, !noalias !190
  %i.bu = load <2 x float>, ptr %i.an, align 4, !tbaa !50, !noalias !190 ; 2 uses
  %i.bv = load float, ptr %i.aq, align 8, !tbaa !50, !noalias !190
  %i.bw = load <2 x float>, ptr %i.ap, align 4, !tbaa !50, !noalias !190 ; 2 uses
  %i.bx = load float, ptr %i.as, align 8, !tbaa !50, !noalias !190
  %i.by = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.bn, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ca = fmul <4 x float> %i.bz, %i.s
  %i.cb = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x float> %i.bp, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.q, <4 x float> %i.ca)
  %i.ce = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x float> %i.br, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.p, <4 x float> %i.cd)
  %i.ch = shufflevector <2 x float> %i.bk, <2 x float> %i.bs, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ci = insertelement <4 x float> %i.ch, float 1.000000e+00, i64 3 ; 2 uses
  %i.cj = fmul <4 x float> %i.w, %i.ci
  %i.ck = shufflevector <2 x float> %i.bj, <2 x float> %i.bu, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cl = insertelement <4 x float> %i.ck, float 0.000000e+00, i64 3 ; 2 uses
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.u, <4 x float> %i.cj)
  %i.cn = shufflevector <2 x float> %i.bl, <2 x float> %i.bw, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.co = insertelement <4 x float> %i.cn, float 0.000000e+00, i64 3 ; 2 uses
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.t, <4 x float> %i.cm)
  store <4 x float> %i.cg, ptr %i.a, align 8
  store <4 x float> %i.cp, ptr %i.c, align 8
  %i.cq = insertelement <4 x float> %i.ci, float %i.bt, i64 2
  %i.cr = fmul <4 x float> %i.aa, %i.cq
  %i.cs = insertelement <4 x float> %i.cl, float %i.bv, i64 2
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %i.y, <4 x float> %i.cr)
  %i.cu = insertelement <4 x float> %i.co, float %i.bx, i64 2
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.x, <4 x float> %i.ct)
  store <4 x float> %i.cv, ptr %i.e, align 8
  store <2 x float> %i.bc, ptr %i.g, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.21.48..sroa_idx, align 8, !tbaa !66
  tail call void @_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %i.ak, i1 noundef zeroext %5)
  store <4 x float> %i.b, ptr %i.a, align 8
  store <4 x float> %i.d, ptr %i.c, align 8
  store <4 x float> %i.f, ptr %i.e, align 8
  store <4 x float> %i.h, ptr %i.g, align 8
  %.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm18gimpact_vs_concaveEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP14btConcaveShapeb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.btGImpactTriangleCallback, align 8 ; 13 uses
  %7 = alloca %class.btTransform, align 16        ; 9 uses
  %8 = alloca %class.btVector3, align 4           ; 5 uses
  %9 = alloca %class.btVector3, align 4           ; 5 uses
  %i.a = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV25btGImpactTriangleCallback, i64 16), ptr %6, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %2, ptr %i.d, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %3, ptr %i.e, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 %i.a, ptr %i.f, align 8, !tbaa !112
  %i.g = load ptr, ptr %4, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef float %i.i(ptr noundef nonnull align 8 dereferenceable(28) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 44
  store float %i.j, ptr %i.k, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.r = load float, ptr %i.o, align 4, !tbaa !50, !noalias !199 ; 2 uses
  %i.s = load float, ptr %i.p, align 4, !tbaa !50, !noalias !199 ; 2 uses
  %i.t = load float, ptr %i.q, align 4, !tbaa !50, !noalias !199 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.af = load <2 x float>, ptr %i.l, align 4, !tbaa !50, !noalias !199 ; 3 uses
  %i.ag = load <2 x float>, ptr %i.m, align 4, !tbaa !50, !noalias !199 ; 3 uses
  %i.ah = load <2 x float>, ptr %i.n, align 4, !tbaa !50, !noalias !199 ; 3 uses
  %i.ai = load <3 x float>, ptr %i.u, align 4, !tbaa !50, !noalias !200
  %i.aj = fneg <3 x float> %i.ai                  ; 5 uses
  %i.ak = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.al = fmul <2 x float> %i.ag, %i.ak
  %i.am = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.am, <2 x float> %i.al)
  %i.ao = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ao, <2 x float> %i.an)
  %10 = load <3 x float>, ptr %i.ae, align 4, !tbaa !50, !noalias !201 ; 5 uses
  %11 = load float, ptr %i.ae, align 4, !tbaa !50, !noalias !201
  %i.aq = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x float> %i.ag, %i.aq
  %i.as = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.as, <2 x float> %i.ar)
  %12 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %12, <2 x float> %i.at)
  %i.av = fadd <2 x float> %i.ap, %i.au
  %i.aw = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = shufflevector <3 x float> %i.aj, <3 x float> %10, <2 x i32> <i32 1, i32 4>
  %i.ay = fmul <2 x float> %i.ax, %13
  %i.az = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = insertelement <2 x float> %i.am, float %11, i64 1
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %14, <2 x float> %i.ay)
  %i.bc = insertelement <2 x float> poison, float %i.t, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = shufflevector <3 x float> %i.aj, <3 x float> %10, <2 x i32> <i32 2, i32 5>
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %15, <2 x float> %i.bb) ; 2 uses
  %shift = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.be, %shift
  %.sroa.3.12.vec.insert.i.i24 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.bf = load <2 x float>, ptr %i.v, align 4, !tbaa !50, !noalias !202 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.w, align 4, !tbaa !50, !noalias !202 ; 2 uses
  %i.bh = load <2 x float>, ptr %i.x, align 4, !tbaa !50, !noalias !202 ; 2 uses
  %i.bi = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bl = insertelement <4 x float> %i.bk, float 1.000000e+00, i64 3
  %i.bm = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bn = insertelement <4 x float> %i.bm, float 0.000000e+00, i64 3
  %i.bo = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bq = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.br = insertelement <4 x float> %i.bq, float 0.000000e+00, i64 3
  %i.bs = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bv = load <2 x float>, ptr %i.z, align 4, !tbaa !50, !noalias !202 ; 2 uses
  %i.bw = load float, ptr %i.ac, align 4, !tbaa !50, !noalias !202
  %i.bx = load <2 x float>, ptr %i.y, align 4, !tbaa !50, !noalias !202 ; 2 uses
  %i.by = load float, ptr %i.ab, align 4, !tbaa !50, !noalias !202
  %i.bz = load <2 x float>, ptr %i.aa, align 4, !tbaa !50, !noalias !202 ; 2 uses
  %i.ca = load float, ptr %i.ad, align 4, !tbaa !50, !noalias !202
  %i.cb = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x float> %i.bl, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cd = fmul <4 x float> %i.bj, %i.cc
  %i.ce = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x float> %i.bn, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.bp, <4 x float> %i.cd)
  %i.ch = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.br, <4 x float> %i.ch, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.bt, <4 x float> %i.cg)
  %i.ck = shufflevector <4 x float> %i.bi, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cl = shufflevector <2 x float> %i.bg, <2 x float> %i.bv, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cm = insertelement <4 x float> %i.cl, float 1.000000e+00, i64 3 ; 2 uses
  %i.cn = fmul <4 x float> %i.ck, %i.cm
  %i.co = shufflevector <2 x float> %i.bf, <2 x float> %i.bx, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float 0.000000e+00, i64 3 ; 2 uses
  %i.cq = shufflevector <4 x float> %i.bo, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cq, <4 x float> %i.cn)
  %i.cs = shufflevector <2 x float> %i.bh, <2 x float> %i.bz, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ct = insertelement <4 x float> %i.cs, float 0.000000e+00, i64 3 ; 2 uses
  %i.cu = shufflevector <4 x float> %i.bs, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.cu, <4 x float> %i.cr)
  store <4 x float> %i.cj, ptr %7, align 16
  store <4 x float> %i.cv, ptr %i.bu, align 16
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cx = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.s, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cz = insertelement <4 x float> %i.cm, float %i.bw, i64 2
  %i.da = fmul <4 x float> %i.cy, %i.cz
  %i.db = insertelement <4 x float> %i.cp, float %i.by, i64 2
  %i.dc = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.r, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.dd, <4 x float> %i.da)
  %i.df = insertelement <4 x float> %i.ct, float %i.ca, i64 2
  %i.dg = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.t, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.dh, <4 x float> %i.de)
  store <4 x float> %i.di, ptr %i.cw, align 16
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 48
  store <2 x float> %i.av, ptr %i.dj, align 16
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i24, ptr %.sroa.20.48..sroa_idx, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.dk = load ptr, ptr %3, align 8, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.dn = load ptr, ptr %4, align 8, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  %i.dp = load ptr, ptr %i.do, align 8
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull %6, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void

bb.e:                                             ; preds = %bb.a
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.dr, %bb.f ], [ %i.dq, %bb.e ]
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.g
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #13
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(64) initializes((32, 64)) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN27btGImpactCollisionAlgorithm23destroyContactManifoldsEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.b), !inline_history !203
  store ptr null, ptr %i.a, align 8, !tbaa !21
  br label %_ZN27btGImpactCollisionAlgorithm23destroyContactManifoldsEv.exit.i

_ZN27btGImpactCollisionAlgorithm23destroyContactManifoldsEv.exit.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN27btGImpactCollisionAlgorithm10clearCacheEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN27btGImpactCollisionAlgorithm23destroyContactManifoldsEv.exit.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j), !inline_history !204
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.o), !inline_history !204
  store ptr null, ptr %i.i, align 8, !tbaa !23
  br label %_ZN27btGImpactCollisionAlgorithm10clearCacheEv.exit

_ZN27btGImpactCollisionAlgorithm10clearCacheEv.exit: ; preds = %_ZN27btGImpactCollisionAlgorithm23destroyContactManifoldsEv.exit.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 -1, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.t, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !75
  %i.z = icmp eq i32 %i.y, 25
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !75
  %i.ae = icmp eq i32 %i.ad, 25                   ; 2 uses
  br i1 %i.z, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN27btGImpactCollisionAlgorithm10clearCacheEv.exit
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ab)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ab, i1 noundef zeroext false)
  br label %bb.i

bb.g:                                             ; preds = %_ZN27btGImpactCollisionAlgorithm10clearCacheEv.exit
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.w, i1 noundef zeroext true)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f
end_hunk_2
begin_hunk_3_@_ZNK17btTriangleShapeEx7getAabbERK11btTransformR9btVector3S4_:bb.a
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bo, <2 x float> %i.bl)
  %i.bq = fadd <2 x float> %i.s, %i.bp            ; 6 uses
  %i.br = extractelement <3 x float> %i.bg, i64 1
  %i.bs = fmul float %i.w, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.u, float %i.bh, float %i.bs)
  %i.bu = extractelement <3 x float> %i.bg, i64 2
  %i.bv = tail call noundef float @llvm.fmuladd.f32(float %i.ab, float %i.bu, float %i.bt)
  %i.bw = fadd float %i.af, %i.bv                 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load float, ptr %i.bx, align 8, !tbaa !114 ; 6 uses
  %i.bz = extractelement <2 x float> %i.ay, i64 0 ; 4 uses
  %i.ca = extractelement <2 x float> %i.bq, i64 0 ; 4 uses
  %i.cb = fcmp ogt float %i.bz, %i.ca
  br i1 %i.cb, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.cc = extractelement <2 x float> %i.ao, i64 0
  %i.cd = fcmp ogt float %i.cc, %i.ca
  %.sroa.017.0.vec.extract82 = extractelement <2 x float> %i.bq, i64 0
  br i1 %i.cd, label %bb.d, label %bb.c

.thread.i:                                        ; preds = %bb.a
  %i.ce = extractelement <2 x float> %i.ao, i64 0
  %i.cf = fcmp ogt float %i.ce, %i.bz
  %.sroa.028.0.vec.extract88 = extractelement <2 x float> %i.ay, i64 0
  br i1 %i.cf, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread.i, %bb.b
  %.sroa.040.0.vec.extract94 = extractelement <2 x float> %i.ao, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread.i, %bb.b
  %.in67.i.sroa.speculated = phi float [ %.sroa.040.0.vec.extract94, %bb.c ], [ %.sroa.017.0.vec.extract82, %bb.b ], [ %.sroa.028.0.vec.extract88, %.thread.i ]
  %i.cg = extractelement <2 x float> %i.ay, i64 1 ; 4 uses
  %i.ch = extractelement <2 x float> %i.bq, i64 1 ; 4 uses
  %i.ci = fcmp ogt float %i.cg, %i.ch
  br i1 %i.ci, label %bb.e, label %.thread83.i

bb.e:                                             ; preds = %bb.d
  %i.cj = extractelement <2 x float> %i.ao, i64 1
  %i.ck = fcmp ogt float %i.cj, %i.ch
  %.sroa.017.4.vec.extract = extractelement <2 x float> %i.bq, i64 1
  br i1 %i.ck, label %bb.g, label %bb.f

.thread83.i:                                      ; preds = %bb.d
  %i.cl = extractelement <2 x float> %i.ao, i64 1
  %i.cm = fcmp ogt float %i.cl, %i.cg
  %.sroa.028.4.vec.extract90 = extractelement <2 x float> %i.ay, i64 1
  br i1 %i.cm, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread83.i, %bb.e
  %.sroa.040.4.vec.extract96 = extractelement <2 x float> %i.ao, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread83.i, %bb.e
  %.in69.i.sroa.speculated = phi float [ %.sroa.040.4.vec.extract96, %bb.f ], [ %.sroa.017.4.vec.extract, %bb.e ], [ %.sroa.028.4.vec.extract90, %.thread83.i ]
  %i.cn = fcmp ogt float %i.be, %i.bw
  br i1 %i.cn, label %bb.h, label %.thread87.i

bb.h:                                             ; preds = %bb.g
  %i.co = fcmp ogt float %i.ag, %i.bw
  br i1 %i.co, label %bb.j, label %bb.i

.thread87.i:                                      ; preds = %bb.g
  %i.cp = fcmp ogt float %i.ag, %i.be
  br i1 %i.cp, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread87.i, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread87.i, %bb.h
  %.in72.i.sroa.speculated = phi float [ %i.ag, %bb.i ], [ %i.bw, %bb.h ], [ %i.be, %.thread87.i ]
  %i.cq = fcmp olt float %i.bz, %i.ca
  br i1 %i.cq, label %bb.k, label %.thread91.i

bb.k:                                             ; preds = %bb.j
  %i.cr = extractelement <2 x float> %i.ao, i64 0
  %i.cs = fcmp olt float %i.cr, %i.ca
  %.sroa.017.0.vec.extract = extractelement <2 x float> %i.bq, i64 0
  br i1 %i.cs, label %bb.m, label %bb.l

.thread91.i:                                      ; preds = %bb.j
  %i.ct = extractelement <2 x float> %i.ao, i64 0
  %i.cu = fcmp olt float %i.ct, %i.bz
  %.sroa.028.0.vec.extract = extractelement <2 x float> %i.ay, i64 0
  br i1 %i.cu, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread91.i, %bb.k
  %.sroa.040.0.vec.extract = extractelement <2 x float> %i.ao, i64 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread91.i, %bb.k
  %.in74.i.sroa.speculated = phi float [ %.sroa.040.0.vec.extract, %bb.l ], [ %.sroa.017.0.vec.extract, %bb.k ], [ %.sroa.028.0.vec.extract, %.thread91.i ]
  %i.cv = fcmp olt float %i.cg, %i.ch
  br i1 %i.cv, label %bb.n, label %.thread94.i

bb.n:                                             ; preds = %bb.m
  %i.cw = extractelement <2 x float> %i.ao, i64 1
  %i.cx = fcmp olt float %i.cw, %i.ch
  %.sroa.017.4.vec.extract84 = extractelement <2 x float> %i.bq, i64 1
  br i1 %i.cx, label %bb.p, label %bb.o

.thread94.i:                                      ; preds = %bb.m
  %i.cy = extractelement <2 x float> %i.ao, i64 1
  %i.cz = fcmp olt float %i.cy, %i.cg
  %.sroa.028.4.vec.extract = extractelement <2 x float> %i.ay, i64 1
  br i1 %i.cz, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread94.i, %bb.n
  %.sroa.040.4.vec.extract = extractelement <2 x float> %i.ao, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread94.i, %bb.n
  %.in77.i.sroa.speculated = phi float [ %.sroa.040.4.vec.extract, %bb.o ], [ %.sroa.017.4.vec.extract84, %bb.n ], [ %.sroa.028.4.vec.extract, %.thread94.i ]
  %i.da = fcmp olt float %i.be, %i.bw
  br i1 %i.da, label %bb.q, label %.thread98.i

bb.q:                                             ; preds = %bb.p
  %i.db = fcmp olt float %i.ag, %i.bw
  br i1 %i.db, label %_ZN6btAABBC2ERK9btVector3S2_S2_f.exit, label %bb.r

.thread98.i:                                      ; preds = %bb.p
  %i.dc = fcmp olt float %i.ag, %i.be
  br i1 %i.dc, label %_ZN6btAABBC2ERK9btVector3S2_S2_f.exit, label %bb.r

bb.r:                                             ; preds = %.thread98.i, %bb.q
  br label %_ZN6btAABBC2ERK9btVector3S2_S2_f.exit

_ZN6btAABBC2ERK9btVector3S2_S2_f.exit:            ; preds = %bb.q, %.thread98.i, %bb.r
  %.in80.i.sroa.speculated = phi float [ %i.ag, %bb.r ], [ %i.bw, %bb.q ], [ %i.be, %.thread98.i ]
  %i.dd = fsub float %.in67.i.sroa.speculated, %i.by
  %i.de = fsub float %.in69.i.sroa.speculated, %i.by
  %i.df = fsub float %.in72.i.sroa.speculated, %i.by
  %i.dg = fadd float %i.by, %.in74.i.sroa.speculated
  %i.dh = fadd float %i.by, %.in77.i.sroa.speculated
  %i.di = fadd float %i.by, %.in80.i.sroa.speculated
  store float %i.dd, ptr %2, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.de, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.df, ptr %.sroa.7.0..sroa_idx, align 4
  store float %i.dg, ptr %3, align 4
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.dh, ptr %.sroa.12.16..sroa_idx, align 4
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.di, ptr %.sroa.14.16..sroa_idx, align 4
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(112) %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15btTriangleShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConvexInternalShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(64) %0, float noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %1, ptr %i.a, align 8, !tbaa !114
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load float, ptr %i.a, align 8, !tbaa !114
  ret float %i.b
}

declare { <2 x float>, <2 x float> } @_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load <4 x float>, ptr %i.d, align 8
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load float, ptr %i.h, align 8, !tbaa !50
  %i.j = load <2 x float>, ptr %i.a, align 8, !tbaa !50
  %i.k = load float, ptr %2, align 4, !tbaa !50
  %i.l = load float, ptr %i.b, align 4, !tbaa !50 ; 3 uses
  %i.m = load float, ptr %1, align 4, !tbaa !50   ; 2 uses
  %4 = load float, ptr %i.c, align 4, !tbaa !50   ; 2 uses
  %5 = load <2 x float>, ptr %i.g, align 8, !tbaa !50
  %6 = load float, ptr %3, align 4, !tbaa !50
  %7 = fmul float %i.l, %6
  %8 = fmul float %i.l, %i.k
  %i.n = insertelement <2 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <2 x float> %i.j, <2 x float> %5, <2 x i32> <i32 0, i32 2>
  %9 = insertelement <2 x float> poison, float %8, i64 0
  %10 = insertelement <2 x float> %9, float %7, i64 1
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.p, <2 x float> %10)
  %i.r = insertelement <2 x float> poison, float %4, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x float> %i.f, float %i.i, i64 1
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.t, <2 x float> %i.q) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = load float, ptr %i.v, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.y = load float, ptr %i.x, align 4, !tbaa !50
  %i.z = fmul float %i.l, %i.y
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.m, float %i.w, float %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !50
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %4, float %i.ac, float %i.aa)
  %i.ae = extractelement <2 x float> %i.u, i64 0  ; 2 uses
  %i.af = extractelement <2 x float> %i.u, i64 1  ; 2 uses
  %i.ag = fcmp olt float %i.ae, %i.af             ; 2 uses
  %..i = select i1 %i.ag, float %i.af, float %i.ae
  %i.ah = fcmp olt float %..i, %i.ad
  %i.ai = zext i1 %i.ag to i64
  %i.aj = select i1 %i.ah, i64 2, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ak, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !66
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load float, ptr %i.d, align 8, !tbaa !50
  %i.o = load float, ptr %i.g, align 8, !tbaa !50
  %i.p = load <2 x float>, ptr %i.b, align 8, !tbaa !50
  %i.q = load float, ptr %i.c, align 4, !tbaa !50
  %i.r = load float, ptr %i.l, align 4, !tbaa !50 ; 3 uses
  %i.s = load float, ptr %i.k, align 4, !tbaa !50 ; 2 uses
  %i.t = load float, ptr %i.m, align 4, !tbaa !50 ; 2 uses
  %i.u = load <2 x float>, ptr %i.e, align 8, !tbaa !50
  %i.v = load float, ptr %i.f, align 4, !tbaa !50
  %i.w = fmul float %i.r, %i.v
  %i.x = fmul float %i.r, %i.q
  %i.y = insertelement <2 x float> poison, float %i.s, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = shufflevector <2 x float> %i.p, <2 x float> %i.u, <2 x i32> <i32 0, i32 2>
  %i.ab = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.w, i64 1
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.aa, <2 x float> %i.ac)
  %i.ae = insertelement <2 x float> poison, float %i.t, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.o, i64 1
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ah, <2 x float> %i.ad) ; 2 uses
  %i.aj = load float, ptr %i.h, align 8, !tbaa !50
  %i.ak = load float, ptr %i.i, align 4, !tbaa !50
  %i.al = fmul float %i.r, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.s, float %i.aj, float %i.al)
  %i.an = load float, ptr %i.j, align 8, !tbaa !50
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.an, float %i.am)
  %i.ap = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.aq = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  %i.ar = fcmp olt float %i.ap, %i.aq             ; 2 uses
  %..i = select i1 %i.ar, float %i.aq, float %i.ap
  %i.as = fcmp olt float %..i, %i.ao
  %i.at = zext i1 %i.ar to i64
  %i.au = select i1 %i.as, i64 2, i64 %i.at
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.au
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load float, ptr %i.b, align 8, !tbaa !50
  %i.d = load float, ptr %i.a, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load float, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !50 ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !50 ; 3 uses
  %i.l = fsub <2 x float> %i.j, %i.k              ; 2 uses
  %i.m = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = insertelement <2 x float> %i.m, float %i.c, i64 1
  %i.o = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %i.d, i64 1 ; 2 uses
  %i.q = fsub <2 x float> %i.n, %i.p              ; 2 uses
  %i.r = load <2 x float>, ptr %i.i, align 4, !tbaa !50 ; 2 uses
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
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %foldExtExtBinop = fmul <2 x float> %i.y, %i.y
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ah = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ag)
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.y, %i.am            ; 2 uses
  store <2 x float> %i.an, ptr %2, align 4, !tbaa !50
  %i.ao = fmul float %i.af, %i.ak                 ; 2 uses
  store float %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !50
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = fneg <2 x float> %i.an
  store <2 x float> %i.ap, ptr %2, align 4, !tbaa !50
  %i.aq = fneg float %i.ao
  store float %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape14getNumVerticesEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape11getNumEdgesEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.d = add nsw i32 %1, 1
  %i.e = srem i32 %i.d, 3
  %i.f = load ptr, ptr %0, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape9getVertexEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !86
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape12getNumPlanesEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
end_hunk_3
