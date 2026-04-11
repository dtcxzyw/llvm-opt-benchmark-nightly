inline.NumInlined: 433
inline.NumDeleted: 73
begin_hunk_0_@_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !37
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

end_hunk_0
begin_hunk_1_@_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_:bb.a
  %i.m = load float, ptr %i.l, align 4, !tbaa !20
  %i.n = fmul float %i.m, %i.k
  %i.o = fdiv float %i.n, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi i64 [ 16, %bb.c ], [ 12, %bb.b ]
  %.039 = phi float [ %i.o, %bb.c ], [ %i.h, %bb.b ]
  %.040.in = getelementptr inbounds nuw i8, ptr %0, i64 %.pn
  %.040 = load float, ptr %.040.in, align 4, !tbaa !10
  %i.p = fmul float %1, %.040                     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72
end_hunk_1
begin_hunk_2_@_ZN23btGeneric6DofConstraint13buildJacobianEv:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = load float, ptr %i.s, align 8, !tbaa !10
  %i.aa = load float, ptr %i.h, align 8, !tbaa !10
end_hunk_2
begin_hunk_3_@_ZN23btGeneric6DofConstraint13buildJacobianEv:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi i64 [ 1136, %bb.e ], [ 1072, %bb.d ]
  %storemerge36 = phi <2 x float> [ %.sroa.0.4.vec.insert.i19, %bb.e ], [ %.sroa.0.4.vec.insert.i, %bb.d ]
  %.sink.in = getelementptr inbounds nuw i8, ptr %0, i64 %.pn
  %.sink = load float, ptr %.sink.in, align 8, !tbaa !10
  %.sroa.3.12.vec.insert.i20 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink, i64 0
  store <2 x float> %storemerge36, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i20, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
end_hunk_3
begin_hunk_4_@_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i:bb.a

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %11, 0                      ; 7 uses
  %. = select i1 %.not, i64 8, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 %.
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !111  ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_4
begin_hunk_5_@_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i:bb.a
  %i.bg = fneg float %i.bc
  %i.bh = fmul float %i.as, %i.bg
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ay, float %i.bh)
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bj = load ptr, ptr %12, align 8, !tbaa !113  ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.p
  store float %i.bb, ptr %i.bk, align 4, !tbaa !10
end_hunk_5
begin_hunk_6_@_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi i64 [ 1136, %bb.e ], [ 1072, %bb.d ]
  %storemerge35 = phi <2 x float> [ %.sroa.0.4.vec.insert.i25, %bb.e ], [ %.sroa.0.4.vec.insert.i, %bb.d ]
  %.sink.in = getelementptr inbounds nuw i8, ptr %0, i64 %.pn
  %.sink = load float, ptr %.sink.in, align 8, !tbaa !10
  %.sroa.3.12.vec.insert.i26 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink, i64 0
  store <2 x float> %storemerge35, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i26, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
end_hunk_7
