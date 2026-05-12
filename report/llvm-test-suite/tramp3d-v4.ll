inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEE5ArrayILi3Ed16ConstantFunctionE8OpAssignEEvRKT_RKT1_RKT0_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %7 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %7)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5ArrayILi3Ed6RemoteI10BrickViewUEES7_8OpAssignEEvRKT_RKT1_RKT0_:bb.a
  %i.m = ashr exact i64 %i.l, 2
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %11 = xor i64 %i.o, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.i, ptr %i.h, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.i, ptr %i.h)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !1547 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE6VectorILi3Ed4FullE6RemoteI9BrickViewEE5ArrayILi3ESC_16ConstantFunctionE8OpAssignEEvRKT_RKT1_RKT0_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %7 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %7)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5ArrayILi3E6VectorILi3Ed4FullE6RemoteI10BrickViewUEESA_8OpAssignEEvRKT_RKT1_RKT0_:bb.a
  %i.m = ashr exact i64 %i.l, 2
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %11 = xor i64 %i.o, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.i, ptr %i.h, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.i, ptr %i.h)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !1547 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEES3_I6NoMeshILi3EEd13ExpressionTagI10BinaryNodeI5OpAddSH_I8OpDivide6ScalarIdE9UnaryNodeI5FnExpSH_I10OpMultiplySL_SH_I5FnPowSM_I6FnNormSH_I10OpSubtractS3_ISF_6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMIS8_E16PositionsFunctorEEEESK_ISU_EEESL_EEEESL_EEE8OpAssignEEvRKT_RKT1_RKT0_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %8 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %8)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEESD_8OpAssignEEvRKT_RKT1_RKT0_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %7 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %7)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEES3_IS9_10MaskAssignIdE13ExpressionTagI10BinaryNodeI9WhereMaskSH_I4OpLTSD_6ScalarIdEESL_EEE6OpMaskI8OpAssignEEEvRKT_RKT1_RKT0_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %8 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %8)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEES3_IS9_d13ExpressionTagI10BinaryNodeI8OpDivideSF_I10OpMultiplySD_SD_ES3_IS9_d16ConstantFunctionEEEE8OpAssignEEvRKT_RKT1_RKT0_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %8 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %8)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEES3_IS9_d13ExpressionTagI9UnaryNodeI6FnSqrt10BinaryNodeI8OpDivideSH_I10OpMultiply6ScalarIdESD_ESD_EEEE8OpAssignEEvRKT_RKT1_RKT0_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %7 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %7)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_S4_ISA_d16ConstantFunctionESE_EN3CFL10CflFunctorILi3EEELi3E15EvaluateLocLoopISK_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSN_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %12 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %12)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_EN4Adv51X8MassflowILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN4Adv54EkinILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %10 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %10)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEES3_IS9_d13ExpressionTagI10BinaryNodeI5OpAddSF_I10OpMultiplyS3_IS9_d16ConstantFunctionESD_ESD_EEE8OpAssignEEvRKT_RKT1_RKT0_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %8 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %8)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_EN4Adv51X10EnergyfluxILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %12 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %12)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_EN4Adv51X11Energyflux2ILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_EN4Adv51X13MomentumfluxXILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE6RemoteI10BrickViewUEE3LocILi1EEEES4_ISA_dSI_ESO_SO_EN4Adv51X13MomentumfluxYILi3EEELi3E15EvaluateLocLoopIST_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSW_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %12 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %12)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_16
begin_hunk_17_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE6RemoteI10BrickViewUEE3LocILi1EEEES4_ISA_dSI_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSO_6ScalarIdEEEESO_EN4Adv51X13MomentumfluxZILi3EEELi3E15EvaluateLocLoopIS11_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrS14_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %8 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %8)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_EN4Adv51X14Momentumflux2XILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESD_E3LocILi1EEEEEN4Adv51X14Momentumflux2YILi3EEELi3E15EvaluateLocLoopIST_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSW_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESD_E3LocILi1EEEEEN4Adv51X14Momentumflux2ZILi3EEELi3E15EvaluateLocLoopIST_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSW_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN4Adv51X7DensupdILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %10 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %10)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN4Adv57VelupdXILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %10 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %10)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_22
begin_hunk_23_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN4Adv57VelupdYILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %10 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %10)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_23
begin_hunk_24_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN4Adv57VelupdZILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %10 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %10)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_24
begin_hunk_25_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEE5ArrayILi3Ed16ConstantFunctionE16OpSubtractAssignEEvRKT_RKT1_RKT0_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %7 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %7)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_25
begin_hunk_26_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEES3_IS9_d13ExpressionTagI10BinaryNodeI8OpDivideSD_SD_EEE8OpAssignEEvRKT_RKT1_RKT0_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %7 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %7)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_26
begin_hunk_27_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEES3_IS9_d13ExpressionTagI10BinaryNodeI8OpDivideSF_I10OpSubtractSF_ISG_SD_SD_ESD_ES3_IS9_d16ConstantFunctionEEEE8OpAssignEEvRKT_RKT1_RKT0_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %7 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %7)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_27
begin_hunk_28_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_EN4Adv51Y8MassflowILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_28
begin_hunk_29_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_EN4Adv51Y10EnergyfluxILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %12 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %12)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_29
begin_hunk_30_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_EN4Adv51Y11Energyflux2ILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_30
begin_hunk_31_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE6RemoteI10BrickViewUEE3LocILi1EEEES4_ISA_dSI_ESO_SO_EN4Adv51Y13MomentumfluxXILi3EEELi3E15EvaluateLocLoopIST_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSW_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %12 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %12)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_31
begin_hunk_32_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_EN4Adv51Y13MomentumfluxYILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_32
begin_hunk_33_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE6RemoteI10BrickViewUEE3LocILi1EEEES4_ISA_dSI_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSO_6ScalarIdEEEESO_EN4Adv51Y13MomentumfluxZILi3EEELi3E15EvaluateLocLoopIS11_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrS14_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %8 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %8)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_33
begin_hunk_34_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESD_E3LocILi1EEEEEN4Adv51Y14Momentumflux2XILi3EEELi3E15EvaluateLocLoopIST_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSW_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_34
begin_hunk_35_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_EN4Adv51Y14Momentumflux2YILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_35
begin_hunk_36_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESD_E3LocILi1EEEEEN4Adv51Y14Momentumflux2ZILi3EEELi3E15EvaluateLocLoopIST_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSW_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_36
begin_hunk_37_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN4Adv51Y7DensupdILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %10 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %10)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_37
begin_hunk_38_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_EN4Adv51Z8MassflowILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_38
begin_hunk_39_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_EN4Adv51Z10EnergyfluxILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %12 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %12)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_39
begin_hunk_40_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_EN4Adv51Z11Energyflux2ILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_40
begin_hunk_41_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE6RemoteI10BrickViewUEE3LocILi1EEEES4_ISA_dSI_ESO_SO_EN4Adv51Z13MomentumfluxXILi3EEELi3E15EvaluateLocLoopIST_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSW_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %12 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %12)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_41
begin_hunk_42_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE6RemoteI10BrickViewUEE3LocILi1EEEES4_ISA_dSI_ESO_SO_EN4Adv51Z13MomentumfluxYILi3EEELi3E15EvaluateLocLoopIST_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSW_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %12 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %12)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_42
begin_hunk_43_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_EN4Adv51Z13MomentumfluxZILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_43
begin_hunk_44_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESD_E3LocILi1EEEEEN4Adv51Z14Momentumflux2XILi3EEELi3E15EvaluateLocLoopIST_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSW_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_44
begin_hunk_45_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESD_E3LocILi1EEEEEN4Adv51Z14Momentumflux2YILi3EEELi3E15EvaluateLocLoopIST_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSW_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_45
begin_hunk_46_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_EN4Adv51Z14Momentumflux2ZILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %11 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_46
begin_hunk_47_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN4Adv51Z7DensupdILi3EEELi3E15EvaluateLocLoopISJ_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSM_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %10 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %10)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_47
begin_hunk_48_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_EN6Forgas5CentXILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %12 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %12)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_48
begin_hunk_49_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_EN6Forgas5CentYILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %12 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %12)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_49
begin_hunk_50_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg7I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_S4_ISA_d16ConstantFunctionES4_ISA_4ZeroIdESF_ESG_EN6Forgas6TGuessILi3EEELi3E15EvaluateLocLoopISN_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSQ_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %8 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %8)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_50
begin_hunk_51_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %12 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %12)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_51
begin_hunk_52_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_SE_SE_EN6Forgas5VXUpdILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %8 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %8)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_52
begin_hunk_53_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_SE_SE_EN6Forgas5VYUpdILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %8 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %8)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_53
begin_hunk_54_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg5I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_SE_EN6Forgas5VZUpdILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %13 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %13)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_54
begin_hunk_55_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %10 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %10)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_55
begin_hunk_56_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %10 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %10)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_56
begin_hunk_57_@_ZNK9EvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEES3_IS9_d13ExpressionTagI10BinaryNodeI10OpMultiply6ScalarIdESF_I5OpAddSD_SD_EEEE8OpAssignEEvRKT_RKT1_RKT0_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %7 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %7)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_57
begin_hunk_58_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_S4_ISA_d16ConstantFunctionES4_ISA_4ZeroIdESF_EEN6Forgas4TUpdILi3EEELi3E15EvaluateLocLoopISN_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSQ_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %8 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %8)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_58
begin_hunk_59_@_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEEEN5Hacks15CheckRegularityILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_:bb.a
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %10 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %10)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
end_hunk_59
