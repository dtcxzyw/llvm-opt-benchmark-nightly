inline.NumInlined: 32241
inline.NumDeleted: 11422
begin_hunk_0
@_ZN2v88internal8compiler10turboshaft13GenericUnopOp18kOutputRepsStorageE = linkonce_odr hidden constant [1 x { i8 }] [{ i8 } { i8 4 }], comdat, align 1
@_ZN2v88internal8compiler10turboshaft19ToNumberOrNumericOp8kOutRepsE = linkonce_odr hidden constant %"class.v8::base::Vector.252" { ptr @_ZN2v88internal8compiler10turboshaft19ToNumberOrNumericOp18kOutputRepsStorageE, i64 1 }, comdat, align 8
@_ZN2v88internal8compiler10turboshaft19ToNumberOrNumericOp18kOutputRepsStorageE = linkonce_odr hidden constant [1 x { i8 }] [{ i8 } { i8 4 }], comdat, align 1
@switch.table._ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE = private unnamed_addr constant [8 x i64] [i64 0, i64 -1, i64 0, i64 9218868437227405312, i64 0, i64 0, i64 0, i64 0], align 8
@switch.table._ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE.4 = private unnamed_addr constant [8 x i32] [i32 -1, i32 0, i32 2139095040, i32 -1048576, i32 0, i32 0, i32 0, i32 0], align 4
@switch.table._ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE.5 = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 -8388608, i32 0, i32 0, i32 0, i32 0, i32 0], align 4
@switch.table._ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE.6 = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0], align 4
@switch.table._ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv = private unnamed_addr constant [12 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 2, i64 3, i64 0, i64 1, i64 1], align 8
@switch.table._ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENSF_7StorageEEEENS2_7OpIndexEDpT0_ = private unnamed_addr constant [15 x i8] c"\00\01\02\03\04\04\01\01\04\05\01\01\01\00\00", align 1
@switch.table._ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv = private unnamed_addr constant [4 x i32] [i32 0, i32 4128, i32 0, i32 4128], align 4
@switch.table._ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_16Simd128ShuffleOpEJNS2_14ShadowyOpIndexESG_NSF_4KindEPKhEEENS2_7OpIndexEDpT0_ = private unnamed_addr constant [4 x i64] [i64 2, i64 4, i64 8, i64 16], align 8
@switch.table._ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE35AssembleOutputGraphAtomicWord32PairERKNS2_18AtomicWord32PairOpE = private unnamed_addr constant [9 x i64] [i64 4, i64 4, i64 4, i64 4, i64 4, i64 4, i64 6, i64 2, i64 4], align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft23TypedOptimizationsPhase3RunEPNS2_12PipelineDataEPNS0_4ZoneE(ptr noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ProcessProjectionENS2_7OpIndexERKNS2_12ProjectionOpE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sroa.01.0.copyload = load i8, ptr %i.i, align 2 ; 5 uses
  %i.j = zext nneg i8 %.sroa.01.0.copyload to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE.6, i64 %i.j
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.k = zext nneg i8 %.sroa.01.0.copyload to i64
  %switch.gep29 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE.5, i64 %i.k
  %switch.load30 = load i32, ptr %switch.gep29, align 4
  %i.l = zext nneg i8 %.sroa.01.0.copyload to i64
  %switch.gep31 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE.4, i64 %i.l
  %switch.load32 = load i32, ptr %switch.gep31, align 4
  %i.m = zext nneg i8 %.sroa.01.0.copyload to i64
  %switch.gep33 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE, i64 %i.m
  %switch.load34 = load i64, ptr %switch.gep33, align 8
  %switch.cast = zext i8 %.sroa.01.0.copyload to i64
  %switch.shiftamt = shl nuw nsw i64 %switch.cast, 3
end_hunk_1
begin_hunk_2_@_ZNK2v88internal8compiler10turboshaft21LoadDataViewElementOp11outputs_repEv:switch.lookup
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr @switch.table._ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN2v88internal8compiler10turboshaft12VectorForRepENS2_22RegisterRepresentationEE5table, i64 %switch.load
end_hunk_2
