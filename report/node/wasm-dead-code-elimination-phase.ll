inline.NumInlined: 39175
inline.NumDeleted: 13346
begin_hunk_0
@_ZN2v88internal8compiler10turboshaft19ToNumberOrNumericOp18kOutputRepsStorageE = linkonce_odr hidden constant [1 x { i8 }] [{ i8 } { i8 4 }], comdat, align 1
@_ZZN2v88internal8compiler10turboshaft12VectorForRepENS2_22RegisterRepresentationEE5table = linkonce_odr hidden constant { [6 x { i8 }] } { [6 x { i8 }] [{ i8 } zeroinitializer, { i8 } { i8 1 }, { i8 } { i8 2 }, { i8 } { i8 3 }, { i8 } { i8 4 }, { i8 } { i8 5 }] }, comdat, align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1
@switch.table._ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv = private unnamed_addr constant [4 x i32] [i32 0, i32 4128, i32 0, i32 4128], align 4
@switch.table._ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_ = private unnamed_addr constant [15 x i8] c"\00\01\02\03\04\04\01\01\04\05\01\01\01\00\00", align 1
@switch.table._ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_16Simd128ShuffleOpEJNS2_14ShadowyOpIndexESL_NSK_4KindEPKhEEENS2_7OpIndexEDpT0_ = private unnamed_addr constant [4 x i64] [i64 2, i64 4, i64 8, i64 16], align 8
@switch.table._ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21GrowableStacksReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE35AssembleOutputGraphAtomicWord32PairERKNS2_18AtomicWord32PairOpE = private unnamed_addr constant [9 x i64] [i64 4, i64 4, i64 4, i64 4, i64 4, i64 4, i64 6, i64 2, i64 4], align 8
@switch.table._ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv = private unnamed_addr constant [12 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 2, i64 3, i64 0, i64 1, i64 1], align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft28WasmDeadCodeEliminationPhase3RunEPNS2_12PipelineDataEPNS0_4ZoneE(ptr noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindENSK_7StorageEEEENS2_7OpIndexEDpT0_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %1, ptr %i.ai, align 4
  %i.aj = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %switch.load, ptr %i.ak, align 1
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindEmEEENS2_7OpIndexEDpT0_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %1, ptr %i.ai, align 4
  %i.aj = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21GrowableStacksReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %switch.load, ptr %i.ak, align 1
end_hunk_2
begin_hunk_3_@_ZNK2v88internal8compiler10turboshaft21LoadDataViewElementOp11outputs_repEv:switch.lookup
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr @switch.table._ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN2v88internal8compiler10turboshaft12VectorForRepENS2_22RegisterRepresentationEE5table, i64 %switch.load
end_hunk_3
