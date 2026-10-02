Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btBox2dBox2dCollisionAlgorithm?download=true
inline.NumInlined: 163
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@llvm.memcpy.p0.p0.i64
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN30btBox2dBox2dCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !27
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !60   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !61
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.k = shl nsw i32 %i.g, 1
  %i.l = select i1 %.not.i.i, i32 1, i32 %i.k     ; 4 uses
  %i.m = icmp slt i32 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !60
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %.pre.i, %bb.e ], [ %i.g, %bb.d ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ] ; 8 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62   ; 9 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %i.u = ptrtoaddr ptr %i.t to i64
  %.0.i.i.i8 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.v = sub i64 %i.u, %.0.i.i.i8
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond10 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond10, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !tbaa !63
  %wide.load9 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x ptr> %wide.load, ptr %i.w, align 8, !tbaa !63
  store <2 x ptr> %wide.load9, ptr %i.z, align 8, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.prol
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !63
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !54

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !63
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !63
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !63
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !63
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.2
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !63
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !63
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !55

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i8, ptr %i.as, align 8, !tbaa !67, !range !27, !noundef !28
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.t)
  %.pre2.pre.pre.i = load i32, ptr %i.f, align 4, !tbaa !60
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.f ], [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.av, align 8, !tbaa !67
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !62
  store i32 %i.l, ptr %i.h, align 8, !tbaa !61
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !63
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
  %i.aw = phi ptr [ %.pre, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.ax = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.g, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !62
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  store ptr %i.aw, ptr %i.bb, align 8, !tbaa !63
  %i.bc = add nsw i32 %i.ax, 1
  store i32 %i.bc, ptr %i.f, align 4, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit, %bb.a
  ret void
}

declare void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef float @_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.c ; 3 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !31 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !31 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !31 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !31 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load float, ptr %i.o, align 4, !tbaa !31 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load float, ptr %i.s, align 4, !tbaa !31 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ac = load float, ptr %i.z, align 4, !tbaa !31, !noalias !73 ; 2 uses
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !31, !noalias !73 ; 2 uses
  %i.ae = load float, ptr %i.ab, align 4, !tbaa !31, !noalias !73 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ag = load float, ptr %i.af, align 4, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.am = load float, ptr %i.al, align 4, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.c ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load float, ptr %i.au, align 4, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.az = load float, ptr %i.ay, align 4, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bb = load <4 x float>, ptr %i.ba, align 4
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.be = load float, ptr %i.bd, align 4, !tbaa !31
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !31
  %i.bh = load <2 x float>, ptr %i.q, align 4, !tbaa !31 ; 3 uses
  %i.bi = load float, ptr %i.r, align 4, !tbaa !31
  %i.bj = fmul float %i.h, %i.bi
  %i.bk = extractelement <2 x float> %i.bh, i64 0
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.e, float %i.bj)
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.l, float %i.bl) ; 3 uses
  %i.bn = load <2 x float>, ptr %i.v, align 4, !tbaa !31, !noalias !73 ; 3 uses
  %i.bo = load float, ptr %i.y, align 4, !tbaa !31, !noalias !73
  %i.bp = load <2 x float>, ptr %i.ar, align 4, !tbaa !31 ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bn, <2 x float> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.br = shufflevector <2 x float> %i.bn, <2 x float> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bs = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.t, i64 1
  %i.bu = load <2 x float>, ptr %1, align 4, !tbaa !31 ; 3 uses
  %i.bv = load float, ptr %i.f, align 4, !tbaa !31
  %i.bw = fmul float %i.bv, %i.h
  %i.bx = extractelement <2 x float> %i.bu, i64 0
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.e, float %i.bw)
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.l, float %i.by) ; 3 uses
  %i.ca = load <2 x float>, ptr %4, align 4, !tbaa !31, !noalias !73 ; 3 uses
  %i.cb = load float, ptr %i.w, align 4, !tbaa !31, !noalias !73
  %i.cc = load <2 x float>, ptr %i.as, align 4, !tbaa !31 ; 2 uses
  %i.cd = load float, ptr %i.at, align 4, !tbaa !31
  %i.ce = shufflevector <2 x float> %i.ca, <2 x float> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.cf = shufflevector <2 x float> %i.ca, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.cg = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.j, i64 1
  %i.ci = insertelement <2 x float> %i.bc, float %i.av, i64 1
  %i.cj = load <2 x float>, ptr %i.m, align 4, !tbaa !31 ; 3 uses
  %i.ck = load float, ptr %i.n, align 4, !tbaa !31
  %i.cl = fmul float %i.h, %i.ck
  %i.cm = extractelement <2 x float> %i.cj, i64 0
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.e, float %i.cl)
  %i.co = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.l, float %i.cn) ; 3 uses
  %i.cp = load <2 x float>, ptr %i.u, align 4, !tbaa !31, !noalias !73 ; 3 uses
  %i.cq = load float, ptr %i.x, align 4, !tbaa !31, !noalias !73
  %i.cr = fmul float %i.co, %i.ad
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.bz, float %i.cr)
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.bm, float %i.cs) ; 4 uses
  %i.cu = load <2 x float>, ptr %i.b, align 4, !tbaa !31 ; 2 uses
  %i.cv = load <2 x float>, ptr %i.ah, align 4, !tbaa !31 ; 2 uses
  %i.cw = load <2 x float>, ptr %i.ak, align 4, !tbaa !31
  %i.cx = load <2 x float>, ptr %i.an, align 4, !tbaa !31
  %i.cy = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = insertelement <2 x float> %i.cp, float %i.cq, i64 1
  %i.db = fmul <2 x float> %i.cz, %i.da
  %i.dc = insertelement <2 x float> %i.ca, float %i.cb, i64 1
  %i.dd = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.de, <2 x float> %i.db)
  %i.dg = insertelement <2 x float> %i.bn, float %i.bo, i64 1
  %i.dh = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.di, <2 x float> %i.df) ; 2 uses
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dl = shufflevector <2 x float> %i.cu, <2 x float> %i.cv, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dm = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dn = shufflevector <4 x float> %i.dl, <4 x float> %i.dm, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.do = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dq = fmul <4 x float> %i.dk, %i.dp
  %i.dr = shufflevector <2 x float> %i.cu, <2 x float> %i.cv, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %i.dm, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.du = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.du, <4 x float> %i.dq) ; 4 uses
  %i.dw = extractelement <4 x float> %i.dv, i64 0
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.ct, float %i.dw) ; 2 uses
  %i.dy = fcmp uge float %i.dx, f0x7F7FFFFF       ; 2 uses
  %.114.i = select i1 %i.dy, float f0x7F7FFFFF, float %i.dx ; 2 uses
  %i.dz = extractelement <4 x float> %i.dv, i64 1
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.ct, float %i.dz) ; 2 uses
  %i.eb = fcmp olt float %i.ea, %.114.i           ; 2 uses
  %.114.i.1 = select i1 %i.eb, float %i.ea, float %.114.i ; 2 uses
  %i.ec = extractelement <4 x float> %i.dv, i64 2
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.ct, float %i.ec) ; 2 uses
  %i.ee = fcmp olt float %i.ed, %.114.i.1         ; 2 uses
  %.114.i.2 = select i1 %i.ee, float %i.ed, float %.114.i.1
  %i.ef = extractelement <4 x float> %i.dv, i64 3
  %i.eg = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ct, float %i.ef)
  %i.eh = fcmp olt float %i.eg, %.114.i.2
  %i.ei = sext i1 %i.dy to i64
  %i.ej = select i1 %i.eb, i64 1, i64 %i.ei
  %i.ek = select i1 %i.ee, i64 2, i64 %i.ej
  %i.el = select i1 %i.eh, i64 3, i64 %i.ek
  %i.em = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.el ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load <2 x float>, ptr %i.em, align 4, !tbaa !31 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eq = load <2 x float>, ptr %i.en, align 4, !tbaa !31 ; 2 uses
  %i.er = load float, ptr %i.ep, align 4, !tbaa !31
  %i.es = shufflevector <2 x float> %i.eq, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.et = fmul <2 x float> %i.ce, %i.es
  %i.eu = shufflevector <2 x float> %i.eo, <2 x float> %i.bp, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.cf, <2 x float> %i.et)
  %i.ew = shufflevector <2 x float> %i.eq, <2 x float> %i.cc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.ch, <2 x float> %i.ev)
  %i.ey = shufflevector <2 x float> %i.cp, <2 x float> %i.cj, <2 x i32> <i32 1, i32 3>
  %i.ez = fmul <2 x float> %i.ey, %i.es
  %i.fa = shufflevector <2 x float> %i.cp, <2 x float> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.fa, <2 x float> %i.ez)
  %i.fc = insertelement <2 x float> poison, float %i.er, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.cd, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.p, i64 1
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.ff, <2 x float> %i.fb)
  %i.fh = shufflevector <2 x float> %i.eo, <2 x float> %i.bp, <2 x i32> <i32 1, i32 3>
  %i.fi = fmul <2 x float> %i.bq, %i.fh
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.br, <2 x float> %i.fi)
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.bt, <2 x float> %i.fj)
  %i.fl = fadd <2 x float> %i.ci, %i.ex           ; 2 uses
  %i.fm = insertelement <2 x float> poison, float %i.be, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.ax, i64 1
  %i.fo = fadd <2 x float> %i.fg, %i.fn           ; 2 uses
  %i.fp = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.fq = insertelement <2 x float> %i.fp, float %i.az, i64 1
  %i.fr = fadd <2 x float> %i.fk, %i.fq           ; 2 uses
  %shift = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.fl, %shift
  %i.fs = extractelement <2 x float> %foldExtExtBinop, i64 0
  %shift48 = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop49 = fsub <2 x float> %i.fo, %shift48
  %i.ft = extractelement <2 x float> %foldExtExtBinop49, i64 0
  %shift51 = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop52 = fsub <2 x float> %i.fr, %shift51
  %i.fu = extractelement <2 x float> %foldExtExtBinop52, i64 0
  %i.fv = fmul float %i.co, %i.ft
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.bz, float %i.fv)
  %i.fx = tail call noundef float @llvm.fmuladd.f32(float %i.fu, float %i.bm, float %i.fw)
  ret float %i.fx
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS12btDispatcher", !11, i64 0}
!13 = !{!"_ZTS20btCollisionAlgorithm", !12, i64 8}
!14 = !{!"_ZTS30btActivatingCollisionAlgorithm", !13, i64 0}
!15 = !{!"bool", !5, i64 0}
!16 = !{!"p1 _ZTS20btPersistentManifold", !11, i64 0}
!17 = !{!"_ZTS30btBox2dBox2dCollisionAlgorithm", !14, i64 0, !15, i64 16, !16, i64 24}
!18 = !{!17, !15, i64 16}
!19 = !{!17, !16, i64 24}
!20 = !{!13, !12, i64 8}
!21 = !{!"p1 _ZTS24btCollisionObjectWrapper", !11, i64 0}
!22 = !{!"p1 _ZTS16btCollisionShape", !11, i64 0}
!23 = !{!"p1 _ZTS17btCollisionObject", !11, i64 0}
!24 = !{!"p1 _ZTS11btTransform", !11, i64 0}
!25 = !{!"_ZTS24btCollisionObjectWrapper", !21, i64 0, !22, i64 8, !23, i64 16, !24, i64 24, !24, i64 32, !6, i64 40, !6, i64 44}
!26 = !{!25, !23, i64 16}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{!"float", !5, i64 0}
!30 = !{!6, !6, i64 0}
!31 = !{!29, !29, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{ptr @_ZN30btBox2dBox2dCollisionAlgorithmD2Ev}
!34 = !{!25, !22, i64 8}
!35 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!36 = !{!"_ZTS16btManifoldResult", !35, i64 0, !16, i64 8, !21, i64 16, !21, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !29, i64 48}
!37 = !{!36, !16, i64 8}
!38 = !{!25, !24, i64 24}
!39 = !{i64 4}
!40 = !{!"_ZTS13btTypedObject", !6, i64 0}
!41 = !{!"_ZTS20btPersistentManifold", !40, i64 0, !5, i64 8, !23, i64 840, !23, i64 848, !6, i64 856, !29, i64 860, !29, i64 864, !6, i64 868, !6, i64 872, !6, i64 876}
!42 = !{!41, !6, i64 856}
!43 = !{!41, !23, i64 840}
!44 = !{!36, !21, i64 16}
!45 = !{!36, !21, i64 24}
!46 = distinct !{!46, !32}
!47 = !{!5, !5, i64 0}
!48 = !{i64 0, i64 16, !47, i64 16, i64 4, !30}
!49 = !{!"_ZTS9btVector3", !5, i64 0}
!50 = !{!"_ZTS10ClipVertex", !49, i64 0, !6, i64 16}
!51 = !{!50, !6, i64 16}
!52 = distinct !{!52, !32}
!53 = distinct !{!53, !32, !64, !65}
!54 = distinct !{!54, !66}
!55 = distinct !{!55, !32, !64}
!56 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!57 = !{!"any p2 pointer", !11, i64 0}
!58 = !{!"p2 _ZTS20btPersistentManifold", !57, i64 0}
!59 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !56, i64 0, !6, i64 4, !6, i64 8, !58, i64 16, !15, i64 24}
!60 = !{!59, !6, i64 4}
!61 = !{!59, !6, i64 8}
!62 = !{!59, !58, i64 16}
!63 = !{!16, !16, i64 0}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!59, !15, i64 24}
!71 = distinct !{!71, i1 false, !"_ZNK11btMatrix3x39transposeEv"}
!72 = distinct !{!72, !71, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!73 = !{!72}
end_hunk_0
