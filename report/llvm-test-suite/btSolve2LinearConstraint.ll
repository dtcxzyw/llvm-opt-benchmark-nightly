inline.NumInlined: 82
inline.NumDeleted: 21
begin_hunk_0_@_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.u = load <4 x float>, ptr %i.t, align 4
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %23 = load <4 x float>, ptr %i.x, align 4
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = load float, ptr %i.z, align 4, !tbaa !8
end_hunk_0
begin_hunk_1_@_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %25 = load float, ptr %i.ag, align 4, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !8
end_hunk_1
begin_hunk_2_@_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.hr = load <2 x float>, ptr %i.af, align 4, !tbaa !8 ; 2 uses
  %i.hs = load <2 x float>, ptr %5, align 4, !tbaa !8 ; 2 uses
  %i.ht = load float, ptr %i.ak, align 4, !tbaa !8
  %i.hu = load <2 x float>, ptr %10, align 4, !tbaa !8 ; 2 uses
  %i.hv = load float, ptr %i.an, align 4, !tbaa !8
  %i.hw = shufflevector <2 x float> %i.ho, <2 x float> %i.hq, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hx = fmul <2 x float> %i.hw, %i.cs
end_hunk_2
begin_hunk_3_@_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.hz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.cz, <2 x float> %i.hx)
  %i.ia = insertelement <2 x float> %i.v, float %i.ae, i64 1 ; 2 uses
  %i.ib = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ia, <2 x float> %i.dg, <2 x float> %i.hz) ; 3 uses
  %26 = shufflevector <2 x float> %i.hp, <2 x float> %i.hr, <2 x i32> <i32 1, i32 3> ; 2 uses
  %27 = fmul <2 x float> %i.cs, %26
  %i.ic = shufflevector <2 x float> %i.hp, <2 x float> %i.hr, <2 x i32> <i32 0, i32 2> ; 2 uses
  %28 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> %i.cz, <2 x float> %27)
  %29 = insertelement <2 x float> %24, float %25, i64 1 ; 2 uses
  %i.id = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %i.dg, <2 x float> %28) ; 3 uses
  %30 = shufflevector <2 x float> %i.b, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %31 = insertelement <8 x float> poison, float %i.c, i64 0
  %32 = shufflevector <8 x float> %31, <8 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 0>
  %33 = shufflevector <8 x float> %30, <8 x float> %32, <8 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %34 = shufflevector <2 x float> %i.ib, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %35 = shufflevector <8 x float> %34, <8 x float> %33, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 14, i32 15>
  %36 = shufflevector <2 x float> %i.id, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %37 = shufflevector <8 x float> %35, <8 x float> %36, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %38 = shufflevector <2 x float> %i.hs, <2 x float> %i.ec, <8 x i32> <i32 0, i32 poison, i32 2, i32 2, i32 1, i32 poison, i32 poison, i32 poison>
  %39 = shufflevector <2 x float> %i.hu, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %40 = shufflevector <8 x float> %38, <8 x float> %39, <8 x i32> <i32 0, i32 8, i32 2, i32 3, i32 4, i32 9, i32 poison, i32 poison>
  %41 = insertelement <8 x float> %40, float %.sroa.5105.0.copyload, i64 6
  %42 = shufflevector <8 x float> %41, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 6>
  %43 = fmul <8 x float> %37, %42                 ; 5 uses
  %i.ie = extractelement <8 x float> %43, i64 4
  %i.if = extractelement <2 x float> %i.id, i64 0
  %i.ig = fmul float %i.if, %i.ie
  %i.ih = extractelement <8 x float> %43, i64 0
  %i.ii = extractelement <2 x float> %i.ib, i64 0
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.ii, float %i.ig)
  %i.ik = tail call noundef float @llvm.fmuladd.f32(float %i.dy, float %i.dz, float %i.ij)
  %i.il = fadd float %6, %i.ik
  %i.im = fadd float %11, %i.il
  %i.in = extractelement <8 x float> %43, i64 5
  %i.io = extractelement <2 x float> %i.id, i64 1
  %i.ip = fmul float %i.io, %i.in
  %i.iq = extractelement <8 x float> %43, i64 1
  %i.ir = extractelement <2 x float> %i.ib, i64 1
  %i.is = tail call float @llvm.fmuladd.f32(float %i.iq, float %i.ir, float %i.ip)
  %i.it = tail call noundef float @llvm.fmuladd.f32(float %i.ea, float %i.eb, float %i.is)
end_hunk_3
begin_hunk_4_@_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.iv = fmul <2 x float> %i.hw, %i.eq
  %i.iw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.ex, <2 x float> %i.iv)
  %i.ix = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ia, <2 x float> %i.fe, <2 x float> %i.iw) ; 4 uses
  %i.iy = fmul <2 x float> %26, %i.eq
  %i.iz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> %i.ex, <2 x float> %i.iy)
  %i.ja = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %i.fe, <2 x float> %i.iz) ; 3 uses
  %i.jb = extractelement <2 x float> %i.ix, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.hs, %i.ix
  %i.jc = extractelement <2 x float> %foldExtExtBinop, i64 0
end_hunk_4
begin_hunk_5_@_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.jx = shufflevector <8 x float> %i.jw, <8 x float> %i.jv, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 14, i32 15>
  %i.jy = shufflevector <2 x float> %i.ja, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jz = shufflevector <8 x float> %i.jx, <8 x float> %i.jy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.ka = fmul <8 x float> %i.jz, %43             ; 8 uses
  %i.kb = insertelement <4 x float> poison, float %6, i64 2
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> %i.dx, <4 x i32> <i32 poison, i32 poison, i32 2, i32 6>
  %i.kd = shufflevector <2 x float> %i.fh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
end_hunk_5
begin_hunk_6_@_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.u = load <4 x float>, ptr %i.t, align 4
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %23 = load <4 x float>, ptr %i.x, align 4
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = load float, ptr %i.z, align 4, !tbaa !8
end_hunk_6
begin_hunk_7_@_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %25 = load float, ptr %i.ag, align 4, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !8
end_hunk_7
begin_hunk_8_@_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.hn = load <2 x float>, ptr %i.af, align 4, !tbaa !8 ; 2 uses
  %i.ho = load <2 x float>, ptr %5, align 4, !tbaa !8 ; 2 uses
  %i.hp = load float, ptr %i.ak, align 4, !tbaa !8
  %i.hq = load <2 x float>, ptr %10, align 4, !tbaa !8 ; 2 uses
  %i.hr = load float, ptr %i.an, align 4, !tbaa !8
  %i.hs = shufflevector <2 x float> %i.hk, <2 x float> %i.hm, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ht = fmul <2 x float> %i.hs, %i.co
end_hunk_8
begin_hunk_9_@_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.cv, <2 x float> %i.ht)
  %i.hw = insertelement <2 x float> %i.v, float %i.ae, i64 1 ; 2 uses
  %i.hx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hw, <2 x float> %i.dc, <2 x float> %i.hv) ; 3 uses
  %26 = shufflevector <2 x float> %i.hl, <2 x float> %i.hn, <2 x i32> <i32 1, i32 3> ; 2 uses
  %27 = fmul <2 x float> %i.co, %26
  %i.hy = shufflevector <2 x float> %i.hl, <2 x float> %i.hn, <2 x i32> <i32 0, i32 2> ; 2 uses
  %28 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.cv, <2 x float> %27)
  %29 = insertelement <2 x float> %24, float %25, i64 1 ; 2 uses
  %i.hz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %i.dc, <2 x float> %28) ; 3 uses
  %30 = shufflevector <2 x float> %i.b, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %31 = insertelement <8 x float> poison, float %i.c, i64 0
  %32 = shufflevector <8 x float> %31, <8 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 0>
  %33 = shufflevector <8 x float> %30, <8 x float> %32, <8 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %34 = shufflevector <2 x float> %i.hx, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %35 = shufflevector <8 x float> %34, <8 x float> %33, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 14, i32 15>
  %36 = shufflevector <2 x float> %i.hz, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %37 = shufflevector <8 x float> %35, <8 x float> %36, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %38 = shufflevector <2 x float> %i.ho, <2 x float> %i.dy, <8 x i32> <i32 0, i32 poison, i32 2, i32 2, i32 1, i32 poison, i32 poison, i32 poison>
  %39 = shufflevector <2 x float> %i.hq, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %40 = shufflevector <8 x float> %38, <8 x float> %39, <8 x i32> <i32 0, i32 8, i32 2, i32 3, i32 4, i32 9, i32 poison, i32 poison>
  %41 = insertelement <8 x float> %40, float %.sroa.5117.0.copyload, i64 6
  %42 = shufflevector <8 x float> %41, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 6>
  %43 = fmul <8 x float> %37, %42                 ; 5 uses
  %i.ia = extractelement <8 x float> %43, i64 4
  %i.ib = extractelement <2 x float> %i.hz, i64 0
  %i.ic = fmul float %i.ib, %i.ia
  %i.id = extractelement <8 x float> %43, i64 0
  %i.ie = extractelement <2 x float> %i.hx, i64 0
  %i.if = tail call float @llvm.fmuladd.f32(float %i.id, float %i.ie, float %i.ic)
  %i.ig = tail call noundef float @llvm.fmuladd.f32(float %i.du, float %i.dv, float %i.if)
  %i.ih = fadd float %6, %i.ig
  %i.ii = fadd float %11, %i.ih
  %i.ij = extractelement <8 x float> %43, i64 5
  %i.ik = extractelement <2 x float> %i.hz, i64 1
  %i.il = fmul float %i.ik, %i.ij
  %i.im = extractelement <8 x float> %43, i64 1
  %i.in = extractelement <2 x float> %i.hx, i64 1
  %i.io = tail call float @llvm.fmuladd.f32(float %i.im, float %i.in, float %i.il)
  %i.ip = tail call noundef float @llvm.fmuladd.f32(float %i.dw, float %i.dx, float %i.io)
end_hunk_9
begin_hunk_10_@_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.ir = fmul <2 x float> %i.hs, %i.em
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.et, <2 x float> %i.ir)
  %i.it = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hw, <2 x float> %i.fa, <2 x float> %i.is) ; 4 uses
  %i.iu = fmul <2 x float> %26, %i.em
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.et, <2 x float> %i.iu)
  %i.iw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %i.fa, <2 x float> %i.iv) ; 3 uses
  %i.ix = extractelement <2 x float> %i.it, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.ho, %i.it
  %i.iy = extractelement <2 x float> %foldExtExtBinop, i64 0
end_hunk_10
begin_hunk_11_@_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.jt = shufflevector <8 x float> %i.js, <8 x float> %i.jr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 14, i32 15>
  %i.ju = shufflevector <2 x float> %i.iw, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jv = shufflevector <8 x float> %i.jt, <8 x float> %i.ju, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.jw = fmul <8 x float> %i.jv, %43             ; 8 uses
  %i.jx = insertelement <4 x float> poison, float %6, i64 2
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> %i.dt, <4 x i32> <i32 poison, i32 poison, i32 2, i32 6>
  %i.jz = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
end_hunk_11
