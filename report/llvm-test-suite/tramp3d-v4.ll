inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51X14Momentumflux2YILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE:bb.a
  br i1 %conflict.rdx96, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gi = load double, ptr %i.bj, align 8, !tbaa !247, !alias.scope !9799, !noalias !9802
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gi, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op99 = add i32 1, %invariant.op28
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51X14Momentumflux2ZILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE:bb.a
  %i.gk = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !9846, !alias.scope !9848, !noalias !9851
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gk, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = load double, ptr %i.bj, align 8, !tbaa !247, !alias.scope !9853, !noalias !9851
  %broadcast.splatinsert104 = insertelement <2 x double> poison, double %i.gl, i64 0
  %broadcast.splat105 = shufflevector <2 x double> %broadcast.splatinsert104, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op106 = add i32 1, %invariant.op28
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_1
begin_hunk_2_@_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51Z14Momentumflux2XILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE:bb.a
  br i1 %conflict.rdx96, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gi = load double, ptr %i.bj, align 8, !tbaa !247, !alias.scope !11879, !noalias !11882
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gi, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op99 = add i32 1, %i.fb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_2
begin_hunk_3_@_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51Z14Momentumflux2YILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE:bb.a
  br i1 %conflict.rdx94, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.go = load double, ptr %i.bj, align 8, !tbaa !247, !alias.scope !11926, !noalias !11929
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.go, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op97 = add i32 1, %i.fh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_3
begin_hunk_4_@_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas5CentXILi3EEELi3EEE3runEv:bb.a
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.av, 3
  %n.vec = and i64 %i.ax, 8589934588              ; 3 uses
  %i.ay = add nuw nsw i64 %n.vec, %i.am
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert13 = insertelement <2 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat14 = shufflevector <2 x i32> %broadcast.splatinsert13, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat14, <i32 0, i32 1>
  %invariant.op = sub <2 x i32> splat (i32 2), %broadcast.splat
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br label %.preheader25.i.i.i

end_hunk_4
begin_hunk_5_@_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas5CentXILi3EEELi3EEE3runEv:bb.a
  %i.bn = load double, ptr %i.a, align 8, !tbaa !12122, !alias.scope !12124, !noalias !12127 ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  %broadcast.splatinsert19 = insertelement <2 x double> poison, double %i.bo, i64 0
  %broadcast.splat20 = shufflevector <2 x double> %broadcast.splatinsert19, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = load double, ptr %i.x, align 8, !tbaa !247, !alias.scope !12129, !noalias !12131
  %broadcast.splatinsert17 = insertelement <2 x double> poison, double %i.bp, i64 0
  %broadcast.splat18 = shufflevector <2 x double> %broadcast.splatinsert17, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = load double, ptr %i.y, align 8, !tbaa !247, !alias.scope !12129, !noalias !12131
  %broadcast.splatinsert15 = insertelement <2 x double> poison, double %i.bq, i64 0
  %broadcast.splat16 = shufflevector <2 x double> %broadcast.splatinsert15, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op.a = add i32 %i.c, %invariant.op.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.br = trunc i64 %index to i32
  %i.bs = sub <2 x i32> %vec.ind, %broadcast.splat
  %.reass = add <2 x i32> %vec.ind, %invariant.op
  %1 = sitofp <2 x i32> %i.bs to <2 x double>
  %i.bt = sitofp <2 x i32> %.reass to <2 x double>
  %2 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat16, <2 x double> %1, <2 x double> %broadcast.splat18)
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat16, <2 x double> %i.bt, <2 x double> %broadcast.splat18)
  %3 = fmul <2 x double> %broadcast.splat20, %2
  %i.bv = fmul <2 x double> %broadcast.splat20, %i.bu
  %.reass.a = add i32 %i.br, %invariant.op.a
  %i.bw = sext i32 %.reass.a to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bw ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <2 x double> %3, ptr %i.bx, align 8, !tbaa !247, !alias.scope !12127
  store <2 x double> %i.bv, ptr %4, align 8, !tbaa !247, !alias.scope !12127
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !12132

end_hunk_5
begin_hunk_6_@_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas5CentYILi3EEELi3EEE3runEv:bb.a
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %1 = load <2 x double>, ptr %i.a, align 8
  %broadcast.splat14 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %2 = fneg <2 x double> %broadcast.splat14
  %3 = fmul <2 x double> %broadcast.splat14, %2
  %i.br = load double, ptr %i.x, align 8, !tbaa !247, !alias.scope !12166, !noalias !12169
  %i.bs = load double, ptr %i.y, align 8, !tbaa !247, !alias.scope !12166, !noalias !12169
  %.scalar = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bl, double %i.br)
  %i.bt = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = fmul <2 x double> %3, %i.bu                ; 2 uses
  %invariant.op = add i32 %i.c, %invariant.op.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = trunc i64 %index to i32
  %.reass = add i32 %i.bv, %invariant.op
  %i.bw = sext i32 %.reass to i64
end_hunk_6
begin_hunk_7_@_ZN15KernelEvaluatorI15InlineKernelTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewE8OpAssignS3_IS9_d13ExpressionTagI10BinaryNodeI10OpMultiply6ScalarIdESE_I5OpAddSB_SB_EEEE8IntervalILi3EEEEvRKT_RKT0_RKT1_RKT2_10WrappedIntILi3EE:bb.a
  %bound180 = icmp ult ptr %scevgep73, %scevgep69
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx82 = or i1 %conflict.rdx, %found.conflict81
  br i1 %conflict.rdx82, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %6 = load <2 x double>, ptr %5, align 16
  %broadcast.splat = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fr = trunc i64 %index to i32                 ; 3 uses
  %i.fs = add i32 %invariant.op.us.us.us, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %.pre41, i64 %i.ft ; 2 uses
  %i.fv = add i32 %invariant.op21.us.us.us, %i.fr
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.fw ; 2 uses
end_hunk_7
