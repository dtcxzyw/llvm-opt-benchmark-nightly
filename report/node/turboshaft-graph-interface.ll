begin_hunk_0
  unreachable

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.sroa.0.0.i = phi i8 [ 21, %bb.o ], [ %i.g, %bb.b ], [ 13, %bb.a ], [ %i.i, %bb.c ], [ 19, %bb.m ], [ %i.k, %bb.d ], [ 20, %bb.n ], [ %i.m, %bb.e ], [ 9, %bb.k ], [ 12, %bb.f ], [ 10, %bb.l ], [ 17, %bb.g ], [ 18, %bb.h ], [ 11, %bb.i ], [ 8, %bb.j ] ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
end_hunk_0
begin_hunk_1
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih.exit, label %bb.z, !prof !9

default.unreachable:                              ; preds = %.critedge, %7
  unreachable

bb.z:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit
end_hunk_1
begin_hunk_2
  %.sroa.011.0.i.i.i = phi i32 [ %i.bl, %bb.z ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit ] ; 15 uses
  %i.bm = add i8 %.sroa.082.0, -5
  %i.bn = icmp ult i8 %i.bm, 7
  br i1 %i.bn, label %7, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

7:                                                ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih.exit
  switch i8 %.sroa.0.0.i, label %default.unreachable [
    i8 0, label %.critedge
    i8 1, label %.critedge
    i8 2, label %.critedge
    i8 3, label %.critedge
    i8 8, label %.critedge
    i8 4, label %.critedge
    i8 5, label %.critedge
    i8 9, label %.critedge
    i8 18, label %.critedge
    i8 6, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
    i8 7, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
    i8 10, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
    i8 19, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
    i8 11, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
    i8 12, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
    i8 13, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
    i8 17, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
    i8 14, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
    i8 15, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
    i8 16, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
    i8 20, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
    i8 21, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
  ]

.critedge:                                        ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7
  switch i8 %.sroa.0.0.i, label %default.unreachable [
    i8 0, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
    i8 2, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
    i8 4, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
    i8 6, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
    i8 1, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i54
    i8 3, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i54
    i8 5, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i54
    i8 7, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i54
    i8 8, label %bb.aa
    i8 9, label %bb.aa
    i8 10, label %bb.aa
    i8 11, label %bb.aa
    i8 12, label %bb.aa
    i8 13, label %bb.aa
    i8 14, label %bb.aa
    i8 15, label %bb.aa
    i8 16, label %bb.aa
    i8 17, label %bb.aa
    i8 18, label %bb.aa
  ]

bb.aa:                                            ; preds = %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #23
  unreachable

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %.critedge, %.critedge, %.critedge, %.critedge
  %i.bo = load ptr, ptr %i.bb, align 8, !nonnull !11, !align !18 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 672
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.sink.split, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i54: ; preds = %.critedge, %.critedge, %.critedge, %.critedge
  %i.bs = load ptr, ptr %i.bb, align 8, !nonnull !11, !align !18 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 672
  %i.bu = load ptr, ptr %i.bt, align 8
end_hunk_2
begin_hunk_3
  %i.bx = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bw, i32 %.sroa.011.0.i.i.i, i8 noundef zeroext %.sink97, i8 noundef zeroext 0, i8 0, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.sink.split, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i54, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih.exit
  %.sroa.018.0 = phi i32 [ %.sroa.011.0.i.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i54 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ], [ %.sroa.011.0.i.i.i, %7 ], [ %.sroa.011.0.i.i.i, %7 ], [ %.sroa.011.0.i.i.i, %7 ], [ %.sroa.011.0.i.i.i, %7 ], [ %.sroa.011.0.i.i.i, %7 ], [ %.sroa.011.0.i.i.i, %7 ], [ %.sroa.011.0.i.i.i, %7 ], [ %.sroa.011.0.i.i.i, %7 ], [ %.sroa.011.0.i.i.i, %7 ], [ %.sroa.011.0.i.i.i, %7 ], [ %.sroa.011.0.i.i.i, %7 ], [ %.sroa.011.0.i.i.i, %7 ], [ %.sroa.011.0.i.i.i, %7 ], [ %i.bx, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.sink.split ] ; 2 uses
  br i1 %.0.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE18ChangeInt32ToInt64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
end_hunk_3
