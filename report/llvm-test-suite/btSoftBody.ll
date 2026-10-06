Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBody?download=true
inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN20btAlignedObjectArrayI9NodeLinksE7reserveEi:bb.a
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !7
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i, label %scalar.ph21, !llvm.loop !698

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i.i
  %.not.i5.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i5.i.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i: ; preds = %scalar.ph21.prol.loopexit, %scalar.ph21, %middle.block30, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i.i
  %i.ay = load i8, ptr %i.n, align 8, !tbaa !152, !range !175, !noundef !176
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.z)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i.i
  store i8 1, ptr %i.n, align 8, !tbaa !152
  store ptr %i.w, ptr %i.o, align 8, !tbaa !153
  store i32 %i.s, ptr %i.q, align 8, !tbaa !155
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.v, i1 false), !tbaa !7
  store i32 %i.s, ptr %i.p, align 4, !tbaa !154
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !153 ; 7 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.x
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond34 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond34, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %i.u, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !7
  %wide.load18 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x i32> %wide.load, ptr %i.be, align 4, !tbaa !7
  store <4 x i32> %wide.load18, ptr %i.bh, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !699

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.u
  br i1 %cmp.n, label %_ZN9NodeLinksC2ERKS_.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i6.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter35 = and i64 %i.u, 3                   ; 2 uses
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i6.i.i.i.prol = phi i64 [ %indvars.iv.next.i7.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i6.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter37 = phi i64 [ %prol.iter37.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i6.i.i.i.prol
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i6.i.i.i.prol
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !7
  %indvars.iv.next.i7.i.i.i.prol = add nuw nsw i64 %indvars.iv.i6.i.i.i.prol, 1 ; 2 uses
  %prol.iter37.next = add i64 %prol.iter37, 1     ; 2 uses
  %prol.iter37.cmp.not = icmp eq i64 %prol.iter37.next, %xtraiter35
  br i1 %prol.iter37.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !700

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i6.i.i.i.unr = phi i64 [ %indvars.iv.i6.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i7.i.i.i.prol, %scalar.ph.prol ]
  %i.bm = sub nsw i64 %indvars.iv.i6.i.i.i.ph, %i.u
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %_ZN9NodeLinksC2ERKS_.exit.i, label %scalar.ph

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i.i: ; preds = %bb.d
  store i32 %i.s, ptr %i.p, align 4, !tbaa !154
  br label %_ZN9NodeLinksC2ERKS_.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i6.i.i.i = phi i64 [ %indvars.iv.next.i7.i.i.i.3, %scalar.ph ], [ %indvars.iv.i6.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i6.i.i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i6.i.i.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !7
  %indvars.iv.next.i7.i.i.i = add nuw nsw i64 %indvars.iv.i6.i.i.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i7.i.i.i
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i7.i.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !7
  %indvars.iv.next.i7.i.i.i.1 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i7.i.i.i.1
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i7.i.i.i.1
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !7
  %indvars.iv.next.i7.i.i.i.2 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i7.i.i.i.2
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i7.i.i.i.2
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !7
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !7
  %indvars.iv.next.i7.i.i.i.3 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 4 ; 2 uses
  %exitcond.not.i8.i.i.i.3 = icmp eq i64 %indvars.iv.next.i7.i.i.i.3, %i.u
  br i1 %exitcond.not.i8.i.i.i.3, label %_ZN9NodeLinksC2ERKS_.exit.i, label %scalar.ph, !llvm.loop !701

_ZN9NodeLinksC2ERKS_.exit.i:                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ca = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.ca, label %_ZNK20btAlignedObjectArrayI9NodeLinksE4copyEiiPS0_.exit, label %bb.d

_ZNK20btAlignedObjectArrayI9NodeLinksE4copyEiiPS0_.exit: ; preds = %_ZN9NodeLinksC2ERKS_.exit.i
  %.pre = load i32, ptr %i.g, align 4, !tbaa !255 ; 2 uses
  %i.cb = icmp sgt i32 %.pre, 0
  br i1 %i.cb, label %.lr.ph.i5, label %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit

.lr.ph.i5:                                        ; preds = %_ZNK20btAlignedObjectArrayI9NodeLinksE4copyEiiPS0_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext11 = zext nneg i32 %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZN9NodeLinksD2Ev.exit.i, %.lr.ph.i5
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i7, %_ZN9NodeLinksD2Ev.exit.i ] ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !254
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %indvars.iv.i6 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !153 ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.cg, null
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ci = load i8, ptr %i.ch, align 8, !range !175
  %i.cj = trunc nuw i8 %i.ci to i1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.cj, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.g, label %_ZN9NodeLinksD2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cg)
  br label %_ZN9NodeLinksD2Ev.exit.i

_ZN9NodeLinksD2Ev.exit.i:                         ; preds = %bb.g, %bb.f
  %indvars.iv.next.i7 = add nuw nsw i64 %indvars.iv.i6, 1 ; 2 uses
  %i.ck = icmp eq i64 %indvars.iv.next.i7, %zext11
  br i1 %i.ck, label %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit, label %bb.f

_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit: ; preds = %_ZN9NodeLinksD2Ev.exit.i, %_ZN20btAlignedObjectArrayI9NodeLinksE8allocateEi.exit, %_ZNK20btAlignedObjectArrayI9NodeLinksE4copyEiiPS0_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !254 ; 2 uses
  %.not.i10 = icmp eq ptr %i.cm, null
  br i1 %.not.i10, label %_ZN20btAlignedObjectArrayI9NodeLinksE10deallocateEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !253, !range !175, !noundef !176
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.i, label %_ZN20btAlignedObjectArrayI9NodeLinksE10deallocateEv.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cm)
  br label %_ZN20btAlignedObjectArrayI9NodeLinksE10deallocateEv.exit

_ZN20btAlignedObjectArrayI9NodeLinksE10deallocateEv.exit: ; preds = %bb.h, %bb.i, %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.cq, align 8, !tbaa !253
  store ptr %.0.i, ptr %i.cl, align 8, !tbaa !254
  store i32 %1, ptr %i.a, align 8, !tbaa !256
  br label %bb.j

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayI9NodeLinksE10deallocateEv.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN11btSparseSdfILi3EE9BuildCellERNS0_4CellE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(296) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 21 uses
  %3 = alloca %"struct.btGjkEpaSolver2::sResults", align 4 ; 12 uses
  %4 = alloca %class.btVector3, align 8           ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7
  %i.d = sitofp i32 %i.c to float
  %i.e = load <2 x i32>, ptr %i.a, align 8, !tbaa !7
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  %i.g = fmul nnan <2 x float> %i.f, splat (float 3.000000e+00)
  %i.h = fmul nnan float %i.d, 3.000000e+00
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !159 ; 2 uses
  %i.k = insertelement <2 x float> poison, float %i.j, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x float> %i.g, %i.l              ; 2 uses
  %i.n = fmul float %i.j, %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %5 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  %i.w = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv41 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next42, %bb.d ] ; 3 uses
  %i.x = load float, ptr %i.i, align 8, !tbaa !702
  %i.y = trunc nuw nsw i64 %indvars.iv41 to i32
  %i.z = uitofp nneg i32 %i.y to float
  %6 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.x, i64 0
  %i.aa = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.z, i64 0
  %7 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %i.aa, <2 x float> %5) ; 2 uses
  %invariant.gep36 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41
  %i.ab = insertelement <2 x float> %7, float 0.000000e+00, i64 1 ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.3
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next42, 4
  br i1 %exitcond44.not, label %bb.b, label %bb.c

bb.e:                                             ; preds = %bb.c, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.3
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.3 ] ; 3 uses
  %i.ac = load float, ptr %i.i, align 8, !tbaa !702
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = uitofp nneg i32 %i.ad to float
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep36, i64 %indvars.iv ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.af = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ae, i64 1
  %i.ai = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ah, <2 x float> %i.m) ; 2 uses
  store <2 x float> %i.ai, ptr %4, align 8, !tbaa !159
  store <2 x float> %i.ab, ptr %i.p, align 8, !tbaa !159
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !291 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store float 1.000000e+00, ptr %2, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !168
  %i.am = icmp slt i32 %i.al, 20
  br i1 %i.am, label %bb.f, label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.an = call noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 0.000000e+00, ptr noundef nonnull %i.aj, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !291
  br label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit

_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit: ; preds = %bb.e, %bb.f
  %i.ao = phi ptr [ %.pre, %bb.f ], [ %i.aj, %bb.e ] ; 3 uses
  %.0.i = phi float [ %i.an, %bb.f ], [ 0.000000e+00, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  store float %.0.i, ptr %gep, align 4, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ap = load float, ptr %i.i, align 8, !tbaa !702
  %i.aq = fadd float %i.ap, %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store float %i.aq, ptr %4, align 8, !tbaa !159
  %i.ar = extractelement <2 x float> %i.ai, i64 1 ; 3 uses
  store float %i.ar, ptr %i.o, align 4, !tbaa !159
  store <2 x float> %i.ab, ptr %i.p, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store float 1.000000e+00, ptr %2, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !168
  %i.au = icmp slt i32 %i.at, 20
  br i1 %i.au, label %bb.g, label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1

bb.g:                                             ; preds = %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.av = call noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 0.000000e+00, ptr noundef nonnull %i.ao, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.pre45 = load ptr, ptr %i.q, align 8, !tbaa !291
  br label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1

_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1: ; preds = %bb.g, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit
  %i.aw = phi ptr [ %.pre45, %bb.g ], [ %i.ao, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit ] ; 3 uses
  %.0.i.1 = phi float [ %i.av, %bb.g ], [ 0.000000e+00, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %gep35.1 = getelementptr inbounds nuw i8, ptr %gep, i64 64
  store float %.0.i.1, ptr %gep35.1, align 4, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ax = load float, ptr %i.i, align 8, !tbaa !702
  %i.ay = call float @llvm.fmuladd.f32(float %i.ax, float 2.000000e+00, float %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store float %i.ay, ptr %4, align 8, !tbaa !159
  store float %i.ar, ptr %i.o, align 4, !tbaa !159
  store <2 x float> %i.ab, ptr %i.p, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store float 1.000000e+00, ptr %2, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !168
  %i.bb = icmp slt i32 %i.ba, 20
  br i1 %i.bb, label %bb.h, label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.2

bb.h:                                             ; preds = %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.bc = call noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 0.000000e+00, ptr noundef nonnull %i.aw, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.pre46 = load ptr, ptr %i.q, align 8, !tbaa !291
  br label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.2

_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.2: ; preds = %bb.h, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1
  %i.bd = phi ptr [ %.pre46, %bb.h ], [ %i.aw, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1 ] ; 2 uses
  %.0.i.2 = phi float [ %i.bc, %bb.h ], [ 0.000000e+00, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %gep35.2 = getelementptr inbounds nuw i8, ptr %gep, i64 128
  store float %.0.i.2, ptr %gep35.2, align 4, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.be = load float, ptr %i.i, align 8, !tbaa !702
  %i.bf = call float @llvm.fmuladd.f32(float %i.be, float 3.000000e+00, float %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store float %i.bf, ptr %4, align 8, !tbaa !159
  store float %i.ar, ptr %i.o, align 4, !tbaa !159
  store <2 x float> %7, ptr %i.p, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store float 1.000000e+00, ptr %2, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !168
  %i.bi = icmp slt i32 %i.bh, 20
  br i1 %i.bi, label %bb.i, label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.3

bb.i:                                             ; preds = %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.bj = call noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 0.000000e+00, ptr noundef nonnull %i.bd, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.3

_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.3: ; preds = %bb.i, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.2
  %.0.i.3 = phi float [ %i.bj, %bb.i ], [ 0.000000e+00, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %gep35.3 = getelementptr inbounds nuw i8, ptr %gep, i64 192
  store float %.0.i.3, ptr %gep35.3, align 4, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.d, label %bb.e
}

declare noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #25

attributes #0 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { builtin nounwind }
attributes #34 = { nounwind }
attributes #35 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"vtable pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"any p2 pointer", !11, i64 0}
!13 = !{!"p2 _ZTS17btCollisionObject", !12, i64 0}
!14 = !{!"bool", !5, i64 0}
!15 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !10, i64 0, !6, i64 4, !6, i64 8, !13, i64 16, !14, i64 24}
!16 = !{!15, !14, i64 24}
!17 = !{!15, !13, i64 16}
!18 = !{!15, !6, i64 4}
!19 = !{!15, !6, i64 8}
!20 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8eVSolver1_ELj16EE"}
!21 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8eVSolver1_EE", !20, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !14, i64 24}
!22 = !{!21, !14, i64 24}
!23 = !{!21, !11, i64 16}
!24 = !{!21, !6, i64 4}
!25 = !{!21, !6, i64 8}
!26 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8ePSolver1_ELj16EE"}
!27 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8ePSolver1_EE", !26, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !14, i64 24}
!28 = !{!27, !14, i64 24}
!29 = !{!27, !11, i64 16}
!30 = !{!27, !6, i64 4}
!31 = !{!27, !6, i64 8}
!32 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!33 = !{!"p1 _ZTS9btVector3", !11, i64 0}
!34 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !32, i64 0, !6, i64 4, !6, i64 8, !33, i64 16, !14, i64 24}
!35 = !{!34, !14, i64 24}
!36 = !{!34, !33, i64 16}
!37 = !{!34, !6, i64 4}
!38 = !{!34, !6, i64 8}
!39 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!40 = !{!"p1 float", !11, i64 0}
!41 = !{!"_ZTS20btAlignedObjectArrayIfE", !39, i64 0, !6, i64 4, !6, i64 8, !40, i64 16, !14, i64 24}
!42 = !{!41, !14, i64 24}
!43 = !{!41, !40, i64 16}
!44 = !{!41, !6, i64 4}
!45 = !{!41, !6, i64 8}
!46 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!47 = !{!"_ZTS9btVector3", !5, i64 0}
!48 = !{!"_ZTS11btTransform", !46, i64 0, !47, i64 48}
!49 = !{!"float", !5, i64 0}
!50 = !{!"p1 _ZTS17btBroadphaseProxy", !11, i64 0}
!51 = !{!"p1 _ZTS16btCollisionShape", !11, i64 0}
!52 = !{!"_ZTS17btCollisionObject", !48, i64 8, !48, i64 72, !47, i64 136, !47, i64 152, !47, i64 168, !14, i64 184, !49, i64 188, !50, i64 192, !51, i64 200, !51, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !49, i64 232, !49, i64 236, !49, i64 240, !11, i64 248, !6, i64 256, !49, i64 260, !49, i64 264, !49, i64 268, !14, i64 272, !5, i64 273}
!53 = !{!"_ZTSN10btSoftBody10eAeroModel1_E", !5, i64 0}
!54 = !{!"_ZTSN10btSoftBody6ConfigE", !53, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !49, i64 56, !49, i64 60, !49, i64 64, !49, i64 68, !49, i64 72, !49, i64 76, !49, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !21, i64 104, !27, i64 136, !27, i64 168}
!55 = !{!"_ZTSN10btSoftBody11SolverStateE", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16}
!56 = !{!"_ZTSN10btSoftBody4PoseE", !14, i64 0, !14, i64 1, !49, i64 4, !34, i64 8, !41, i64 40, !47, i64 72, !46, i64 88, !46, i64 136, !46, i64 184}
!57 = !{!"p1 _ZTS19btSoftBodyWorldInfo", !11, i64 0}
!58 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NoteELj16EE"}
!59 = !{!"p1 _ZTSN10btSoftBody4NoteE", !11, i64 0}
!60 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NoteEE", !58, i64 0, !6, i64 4, !6, i64 8, !59, i64 16, !14, i64 24}
!61 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NodeELj16EE"}
!62 = !{!"p1 _ZTSN10btSoftBody4NodeE", !11, i64 0}
!63 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NodeEE", !61, i64 0, !6, i64 4, !6, i64 8, !62, i64 16, !14, i64 24}
!64 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4LinkELj16EE"}
!65 = !{!"p1 _ZTSN10btSoftBody4LinkE", !11, i64 0}
!66 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4LinkEE", !64, i64 0, !6, i64 4, !6, i64 8, !65, i64 16, !14, i64 24}
!67 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4FaceELj16EE"}
!68 = !{!"p1 _ZTSN10btSoftBody4FaceE", !11, i64 0}
!69 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4FaceEE", !67, i64 0, !6, i64 4, !6, i64 8, !68, i64 16, !14, i64 24}
!70 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody5TetraELj16EE"}
!71 = !{!"p1 _ZTSN10btSoftBody5TetraE", !11, i64 0}
!72 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody5TetraEE", !70, i64 0, !6, i64 4, !6, i64 8, !71, i64 16, !14, i64 24}
!73 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody6AnchorELj16EE"}
!74 = !{!"p1 _ZTSN10btSoftBody6AnchorE", !11, i64 0}
!75 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody6AnchorEE", !73, i64 0, !6, i64 4, !6, i64 8, !74, i64 16, !14, i64 24}
!76 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8RContactELj16EE"}
!77 = !{!"p1 _ZTSN10btSoftBody8RContactE", !11, i64 0}
!78 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8RContactEE", !76, i64 0, !6, i64 4, !6, i64 8, !77, i64 16, !14, i64 24}
!79 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8SContactELj16EE"}
!80 = !{!"p1 _ZTSN10btSoftBody8SContactE", !11, i64 0}
!81 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8SContactEE", !79, i64 0, !6, i64 4, !6, i64 8, !80, i64 16, !14, i64 24}
!82 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody5JointELj16EE"}
!83 = !{!"p2 _ZTSN10btSoftBody5JointE", !12, i64 0}
!84 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody5JointEE", !82, i64 0, !6, i64 4, !6, i64 8, !83, i64 16, !14, i64 24}
!85 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody8MaterialELj16EE"}
!86 = !{!"p2 _ZTSN10btSoftBody8MaterialE", !12, i64 0}
!87 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody8MaterialEE", !85, i64 0, !6, i64 4, !6, i64 8, !86, i64 16, !14, i64 24}
!88 = !{!"p1 _ZTS10btDbvtNode", !11, i64 0}
!89 = !{!"_ZTS18btAlignedAllocatorIN6btDbvt6sStkNNELj16EE"}
!90 = !{!"p1 _ZTSN6btDbvt6sStkNNE", !11, i64 0}
!91 = !{!"_ZTS20btAlignedObjectArrayIN6btDbvt6sStkNNEE", !89, i64 0, !6, i64 4, !6, i64 8, !90, i64 16, !14, i64 24}
end_hunk_0
