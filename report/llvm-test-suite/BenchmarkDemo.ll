inline.NumInlined: 797
inline.NumDeleted: 176
begin_hunk_0_@_ZN13BenchmarkDemo17createTowerCircleERK9btVector3iiS2_:bb.a

bb.j:                                             ; preds = %.preheader.us, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us
  %.0103.us = phi i32 [ 0, %.preheader.us ], [ %i.eo, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us ]
  %i.bb = phi <4 x float> [ %i.ba, %.preheader.us ], [ %i.en, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us ] ; 8 uses
  %i.bc = load float, ptr %1, align 4, !tbaa !36
  %i.bd = load float, ptr %i.aq, align 4, !tbaa !36
  %i.be = load float, ptr %i.ar, align 4, !tbaa !36
end_hunk_0
begin_hunk_1_@_ZN13BenchmarkDemo17createTowerCircleERK9btVector3iiS2_:bb.a
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us unwind label %.split.us

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us: ; preds = %bb.j
  %i.bj = extractelement <4 x float> %i.bb, i64 3 ; 10 uses
  %i.bk = fmul float %i.bj, %i.bj
  %i.bl = extractelement <4 x float> %i.bb, i64 0 ; 11 uses
  %i.bm = call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %i.bk)
  %i.bn = extractelement <4 x float> %i.bb, i64 2 ; 9 uses
  %i.bo = call float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bm)
  %i.bp = extractelement <4 x float> %i.bb, i64 1 ; 11 uses
  %i.bq = call noundef float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bo)
end_hunk_1
begin_hunk_2_@_ZN13BenchmarkDemo17createTowerCircleERK9btVector3iiS2_:bb.a
  %i.cn = fsub float %i.cj, %i.ck
  %i.co = fadd float %i.bv, %i.cg
  %i.cp = fsub float 1.000000e+00, %i.co
  %7 = fneg <4 x float> %i.bb                     ; 5 uses
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 3, i32 0>
  %i.cq = fmul float %i.bn, 0.000000e+00
  %i.cr = call float @llvm.fmuladd.f32(float %i.bp, float %.094107.us, float %i.cq)
  %10 = extractelement <4 x float> %7, i64 0
  %11 = call float @llvm.fmuladd.f32(float %10, float %i.an, float %i.cr) ; 3 uses
  %i.cs = fmul float %i.an, %i.bj
  %i.ct = call float @llvm.fmuladd.f32(float %i.bp, float 0.000000e+00, float %i.cs)
  %12 = extractelement <4 x float> %7, i64 2
  %i.cu = call float @llvm.fmuladd.f32(float %12, float %.094107.us, float %i.ct) ; 3 uses
  %i.cv = fneg float %i.cu
  %i.cw = fmul float %.094107.us, %i.bj
  %i.cx = call float @llvm.fmuladd.f32(float %i.bl, float 0.000000e+00, float %i.cw)
  %i.cy = call float @llvm.fmuladd.f32(float %i.bn, float %i.an, float %i.cx) ; 3 uses
  %13 = fmul float %.094107.us, %i.bl
  %14 = call float @llvm.fmuladd.f32(float %i.bp, float %i.an, float %13)
  %15 = extractelement <4 x float> %7, i64 3
  %i.cz = call float @llvm.fmuladd.f32(float %15, float 0.000000e+00, float %14) ; 3 uses
  %i.da = fmul float %i.bp, %i.cz
  %i.db = call float @llvm.fmuladd.f32(float %i.cy, float %i.bn, float %i.da)
  %i.dc = call float @llvm.fmuladd.f32(float %i.cv, float %i.bj, float %i.db)
  %i.dd = call float @llvm.fmuladd.f32(float %11, float %i.bl, float %i.dc)
  %i.de = fadd float %i.dd, %i.be
  %.sroa.3.12.vec.insert.i27.us = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.de, i64 0
  %i.df = fneg float %11
  %i.dg = fmul float %i.bp, %i.cu
  %i.dh = call float @llvm.fmuladd.f32(float %i.cy, float %i.bl, float %i.dg)
  %i.di = call float @llvm.fmuladd.f32(float %i.df, float %i.bn, float %i.dh)
end_hunk_2
begin_hunk_3_@_ZN13BenchmarkDemo17createTowerCircleERK9btVector3iiS2_:bb.a
  %i.dk = fadd float %i.dj, %i.bc
  %.sroa.0.0.vec.insert.i25.us = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dl = fneg float %i.cz
  %i.dm = fmul float %i.bp, %11
  %i.dn = call float @llvm.fmuladd.f32(float %i.cy, float %i.bj, float %i.dm)
  %i.do = call float @llvm.fmuladd.f32(float %i.dl, float %i.bl, float %i.dn)
  %i.dp = call float @llvm.fmuladd.f32(float %i.cu, float %i.bn, float %i.do)
end_hunk_3
begin_hunk_4_@_ZN13BenchmarkDemo17createTowerCircleERK9btVector3iiS2_:bb.a
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(228) %i.dv, ptr noundef nonnull %i.bi), !inline_history !76
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.dz = call noundef float @sinf(float noundef %i.av) #22, !tbaa !4
  %i.ea = call noundef float @cosf(float noundef %i.av) #22, !tbaa !4 ; 2 uses
  %i.eb = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = fmul <2 x float> %i.ec, <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %16 = insertelement <2 x float> %i.ec, float %i.ea, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %18 = fmul <4 x float> %17, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.ef = extractelement <2 x float> %i.ed, i64 1
  %i.eg = fneg float %i.ef
  %i.eh = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %19 = insertelement <2 x float> poison, float %i.eg, i64 0
  %20 = insertelement <2 x float> %19, float %i.ea, i64 1
  %i.ei = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.ej = fmul <4 x float> %i.eh, %i.ei
  %i.ek = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.el = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %18, <4 x float> %i.ej)
  %21 = shufflevector <4 x float> %i.bb, <4 x float> %7, <4 x i32> <i32 3, i32 7, i32 0, i32 2>
  %i.em = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> %i.ee, <4 x float> %i.el)
  %22 = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.en = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> %22, <4 x float> %i.em) ; 5 uses
  %i.eo = add nuw nsw i32 %.0103.us, 1            ; 2 uses
  %exitcond121.not = icmp eq i32 %i.eo, %3
  br i1 %exitcond121.not, label %._crit_edge.us, label %bb.j
end_hunk_4
begin_hunk_5_@_ZN13BenchmarkDemo17createTowerCircleERK9btVector3iiS2_:bb.a
  %i.er = fneg <4 x float> %i.en                  ; 2 uses
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 3, i32 0>
  %i.eu = call noundef float @sinf(float noundef %i.ax) #22, !tbaa !4
  %i.ev = call noundef float @cosf(float noundef %i.ax) #22, !tbaa !4
  %i.ew = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ey = fmul <2 x float> %i.ex, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0> ; 2 uses
  %23 = insertelement <2 x float> %i.ex, float %i.ev, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %25 = fmul <4 x float> %24, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %26 = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %27 = fneg <4 x float> %i.ez
  %28 = shufflevector <4 x float> %24, <4 x float> %27, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.fa = fmul <4 x float> %26, %28
  %i.fb = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %25, <4 x float> %i.fa)
  %i.fd = shufflevector <4 x float> %i.en, <4 x float> %i.er, <4 x i32> <i32 3, i32 7, i32 0, i32 2>
  %29 = shufflevector <2 x float> %i.ey, <2 x float> %i.ex, <4 x i32> <i32 0, i32 3, i32 3, i32 0>
  %i.fe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %29, <4 x float> %i.fc)
  %i.ff = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.ez, <4 x float> %i.fe)
  %i.fg = add nuw nsw i32 %.023112.us, 1          ; 2 uses
  %exitcond122.not = icmp eq i32 %i.fg, %2
end_hunk_5
