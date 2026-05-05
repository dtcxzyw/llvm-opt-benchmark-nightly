inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
bb.a:
  %5 = alloca %class.DataObjectRequest.349, align 8 ; 5 uses
  %6 = alloca %struct.ExpressionApply.578, align 8 ; 4 uses
  %7 = alloca %class.Interval.108, align 4        ; 9 uses
  %8 = alloca %struct.MultiArg4.666, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
end_hunk_0
begin_hunk_1_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !4, !alias.scope !12598
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @_ZNK9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_EclI8IntervalILi3EEEEN5View1IS9_T_E6Type_tERKSE_(ptr dead_on_unwind nonnull writable sret(%struct.MultiArg4.666) align 8 %8, ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 4 dereferenceable(24) %7)
  %.sroa.0.0.copyload.i = load <2 x double>, ptr %1, align 8
  %i.ak = call noalias noundef nonnull dereferenceable(728) ptr @_Znwm(i64 noundef 728) #46 ; 19 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 104
end_hunk_1
begin_hunk_2_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(576) %i.ar, ptr noundef nonnull align 8 dereferenceable(576) %8)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 608
  store <2 x double> %.sroa.0.0.copyload.i, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 624
  store i32 %i.c, ptr %i.at, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 628
end_hunk_2
begin_hunk_3_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(28) %i.ak) #48, !inline_history !12599
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bi) #48
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 288
end_hunk_3
begin_hunk_4_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
bb.a:
  %5 = alloca %class.DataObjectRequest.349, align 8 ; 5 uses
  %6 = alloca %struct.ExpressionApply.578, align 8 ; 4 uses
  %7 = alloca %class.Interval.108, align 4        ; 3 uses
  %8 = alloca %class.Interval.108, align 4        ; 9 uses
  %9 = alloca %class.Interval.108, align 4        ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #48, !noalias !13216
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %11) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48, !noalias !13216
  %.sroa.0.0.copyload.i = load <2 x double>, ptr %1, align 8
  %i.aq = call noalias noundef nonnull dereferenceable(440) ptr @_Znwm(i64 noundef 440) #46 ; 19 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 104
end_hunk_5
begin_hunk_6_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(288) %i.ax, ptr noundef nonnull align 8 dereferenceable(288) %13)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 320
  store <2 x double> %.sroa.0.0.copyload.i, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 336
  store i32 %i.c, ptr %i.az, align 8, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 340
end_hunk_6
begin_hunk_7_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #48, !inline_history !13251
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bo) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %13) #48
end_hunk_7
begin_hunk_8_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
bb.a:
  %5 = alloca %class.DataObjectRequest.349, align 8 ; 5 uses
  %6 = alloca %struct.ExpressionApply.578, align 8 ; 4 uses
  %7 = alloca %class.Interval.108, align 4        ; 3 uses
  %8 = alloca %class.Interval.108, align 4        ; 9 uses
  %9 = alloca %class.Interval.108, align 4        ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #48, !noalias !13326
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %11) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48, !noalias !13326
  %.sroa.0.0.copyload.i = load <2 x double>, ptr %1, align 8
  %i.aq = call noalias noundef nonnull dereferenceable(440) ptr @_Znwm(i64 noundef 440) #46 ; 19 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 104
end_hunk_9
begin_hunk_10_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(288) %i.ax, ptr noundef nonnull align 8 dereferenceable(288) %13)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 320
  store <2 x double> %.sroa.0.0.copyload.i, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 336
  store i32 %i.c, ptr %i.az, align 8, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 340
end_hunk_10
begin_hunk_11_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #48, !inline_history !13361
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bo) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %13) #48
end_hunk_11
