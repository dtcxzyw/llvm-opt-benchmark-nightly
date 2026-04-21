inline.NumInlined: 82
inline.NumDeleted: 21
begin_hunk_0_@_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.dq = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.am, i64 1 ; 2 uses
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.dj, <2 x float> %i.dp) ; 3 uses
  %i.dt = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.h, i64 2
  %23 = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %24 = shufflevector <4 x float> %23, <4 x float> %i.dt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.du = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.dv = insertelement <4 x float> %i.du, float %i.as, i64 1
  %25 = insertelement <4 x float> %i.dv, float %.sroa.7.0.copyload, i64 2
  %26 = insertelement <4 x float> %25, float %11, i64 3
  %i.dw = fmul <4 x float> %24, %26               ; 4 uses
  %i.dx = extractelement <4 x float> %i.dw, i64 0
  %i.dy = extractelement <2 x float> %i.ds, i64 0
end_hunk_0
begin_hunk_1_@_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.dm = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.am, i64 1 ; 2 uses
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.df, <2 x float> %i.dl) ; 3 uses
  %i.dp = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.h, i64 2
  %23 = shufflevector <2 x float> %i.do, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %24 = shufflevector <4 x float> %23, <4 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dq = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.dr = insertelement <4 x float> %i.dq, float %i.as, i64 1
  %25 = insertelement <4 x float> %i.dr, float %.sroa.7.0.copyload, i64 2
  %26 = insertelement <4 x float> %25, float %11, i64 3
  %i.ds = fmul <4 x float> %24, %26               ; 4 uses
  %i.dt = extractelement <4 x float> %i.ds, i64 0
  %i.du = extractelement <2 x float> %i.do, i64 0
end_hunk_1
