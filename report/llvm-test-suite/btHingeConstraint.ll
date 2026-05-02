inline.NumInlined: 740
inline.NumDeleted: 107
begin_hunk_0_@_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E:bb.a

._ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit_crit_edge: ; preds = %bb.e
  %.pre = load i8, ptr %i.o, align 2, !tbaa !29, !range !34
  %2 = icmp ne i8 %.pre, 0
  br label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit

_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread: ; preds = %bb.d, %bb.e
end_hunk_0
begin_hunk_1_@_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_:bb.a
  store float %i.ix, ptr %i.iy, align 4, !tbaa !27
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 782
  %i.ja = load i8, ptr %i.iz, align 2, !tbaa !29, !range !34, !noundef !32
  %.not = icmp ne i8 %i.ja, 0                     ; 3 uses
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_:bb.a
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.kf = load float, ptr %i.ke, align 8, !tbaa !28 ; 2 uses
  %i.kg = fcmp oeq float %i.kd, %i.kf             ; 2 uses
  %or.cond164 = and i1 %.not, %i.kg
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.jo
  store float 0.000000e+00, ptr %i.kh, align 4, !tbaa !27
  %.not163 = or i1 %spec.select308.in, %or.cond164
end_hunk_2
