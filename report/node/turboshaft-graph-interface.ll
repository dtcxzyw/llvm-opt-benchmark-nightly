inline.NumInlined: 30203
inline.NumDeleted: 8013
begin_hunk_0_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9TableGrowEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_19TableIndexImmediateERKNS2_5ValueESE_PSC_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9TableSizeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_19TableIndexImmediateEPNS2_5ValueE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9LoadTableEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_19TableIndexImmediateE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 672 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 5 uses
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i32 %i.a, i32 -1, i8 17, i8 13, i8 4, i32 noundef 32, i8 noundef zeroext 0)
  %.pr = load ptr, ptr %i.d, align 8
  %i.i = icmp eq ptr %.pr, null
  br i1 %i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, label %bb.b, !prof !62

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESH_NSF_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i32 %i.h, i8 4, i8 1, i8 noundef zeroext 0)
  %.pr.i = load ptr, ptr %i.d, align 8
  %i.k = icmp eq ptr %.pr.i, null
  br i1 %i.k, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i: ; preds = %bb.b
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i8 noundef zeroext 0, i64 noundef 32)
  %.pr22.i = load ptr, ptr %i.d, align 8
  %i.m = icmp eq ptr %.pr22.i, null
  br i1 %i.m, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7ShiftOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i32 %i.j, i32 %i.l, i8 noundef zeroext 0, i8 1)
  %.pr25.pr.i = load ptr, ptr %i.d, align 8
  %i.o = icmp eq ptr %.pr25.pr.i, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, label %bb.c, !prof !62

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i32 %i.n, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 1, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, %bb.b, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i, %bb.c
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.p, %bb.c ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit ], [ -1, %bb.b ], [ -1, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 17
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 1
  br i1 %i.u, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE20ChangeUint32ToUint64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit
  %i.v = load ptr, ptr %i.b, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 672
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE20ChangeUint32ToUint64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.aa = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, i32 %.sroa.07.0.i.i.i.i, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 0, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE20ChangeUint32ToUint64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE20ChangeUint32ToUint64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, %bb.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %.sroa.07.0.i.i.i.i.sink = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ], [ %i.aa, %bb.d ], [ %.sroa.07.0.i.i.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.07.0.i.i.i.i.sink, ptr %i.ab, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9TableFillEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_19TableIndexImmediateERKNS2_5ValueESE_SE_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.std::tuple.1485", align 4   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.02.0.copyload = load i32, ptr %i.e, align 4 ; 2 uses
  %i.f = icmp eq i8 %i.d, 0
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit.thread27

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit.thread27: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.01.0.copyload29 = load i32, ptr %i.g, align 4
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 672
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit.thread, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit, !prof !9

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit.thread: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.01.0.copyload23 = load i32, ptr %i.m, align 4
  br label %bb.c

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.n, i32 %.sroa.02.0.copyload, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 0, i8 1) ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 17
  %.pre18 = load i8, ptr %.phi.trans.insert, align 1
  %i.p = icmp eq i8 %.pre18, 0
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.01.0.copyload = load i32, ptr %i.q, align 4 ; 2 uses
  br i1 %i.p, label %bb.c, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit12

bb.c:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit.thread, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit
  %.sroa.01.0.copyload26 = phi i32 [ %.sroa.01.0.copyload23, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit.thread ], [ %.sroa.01.0.copyload, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit ]
  %.sroa.05.0.i.i25 = phi i32 [ -1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit.thread ], [ %i.o, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 672
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit12, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.x = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.w, i32 %.sroa.01.0.copyload26, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 0, i8 1)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit12

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit12: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit.thread27, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit, %bb.c, %bb.d
  %.sroa.05.0.i.i24 = phi i32 [ %.sroa.05.0.i.i25, %bb.c ], [ %.sroa.05.0.i.i25, %bb.d ], [ %i.o, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit ], [ %.sroa.02.0.copyload, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit.thread27 ]
  %.sroa.05.0.i.i11 = phi i32 [ -1, %bb.c ], [ %i.x, %bb.d ], [ %.sroa.01.0.copyload, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit ], [ %.sroa.01.0.copyload29, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit.thread27 ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.z = load i8, ptr %i.y, align 8, !range !10, !noundef !11
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit12
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  %i.ad = load i8, ptr %i.ac, align 2, !range !10, !noundef !11
  %i.ae = zext nneg i8 %i.ad to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit12
  %i.af = phi i64 [ 0, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit12 ], [ %i.ae, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 672
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.am = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.al, i8 noundef zeroext 0, i64 noundef %i.af) ; 2 uses
  %.pre19 = load ptr, ptr %i.ag, align 8          ; 2 uses
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %.pre19, i64 672
  %.pre21 = load ptr, ptr %.phi.trans.insert20, align 8
  %i.an = icmp eq ptr %.pre21, null
  br i1 %i.an, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  %i.ao = load i32, ptr %2, align 8
  %i.ap = uitofp i32 %i.ao to double
  %i.aq = bitcast double %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre19, i64 32
  %i.as = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i8 noundef zeroext 5, i64 %i.aq)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit: ; preds = %bb.f, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i
  %.sroa.0.0.i.i.i31 = phi i32 [ %i.am, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ], [ %i.am, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i ], [ -1, %bb.f ]
  %.sroa.01.0.i = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ], [ %i.as, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i ], [ -1, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.at, align 4
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %6, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.01.0.i, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.i.i.i31, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.sroa.05.0.i.i11, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sroa.05.0.i.i24, ptr %i.ax, align 4
  %i.ay = call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor13WasmTableFillEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(20) %6, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

declare i64 @_ZN2v88internal17ExternalReference16wasm_memory_initEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft19SupportedOperations23HasFullUnalignedSupportEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13InlineMemCopyEPKNS1_10WasmMemoryES5_NS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_SB_i(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, i32 %3, i32 %4, i32 %5, i32 noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.v8::base::SmallVector.1453", align 8 ; 14 uses
  %8 = alloca %"class.v8::base::SmallVector.1453", align 8 ; 9 uses
  %9 = alloca %"class.v8::base::SmallVector.1453", align 8 ; 8 uses
  %10 = alloca %"class.v8::base::SmallVector", align 8 ; 11 uses
  tail call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface18MemCopyBoundsCheckEPKNS1_10WasmMemoryES5_NS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_SB_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, i32 %3, i32 %4, i32 %5)
  %i.a = load i32, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %.sink16.i.sroa.gep = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %.sink16.i.sroa.gep171 = getelementptr inbounds nuw i8, ptr %7, i64 16
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !align !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i.i.i.i.i = load i32, ptr %i.f, align 4
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MemStartEj.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 672
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MemStartEj.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE25LoadProtectedPointerFieldENS2_1VINS0_6ObjectEEENS2_6LoadOp4KindEi.exit.i, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE25LoadProtectedPointerFieldENS2_1VINS0_6ObjectEEENS2_6LoadOp4KindEi.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !align !19
  %.sroa.0.0.copyload.i7.i.i = load i32, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.n, i32 %.sroa.0.0.copyload.i7.i.i, i32 -1, i8 49, i8 11, i8 4, i32 noundef 120, i8 noundef zeroext 0)
  %.pre.i = load ptr, ptr %i.g, align 8           ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 672
  %.pre11.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %i.p = icmp eq ptr %.pre11.i, null
  br i1 %i.p, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MemStartEj.exit, label %bb.d, !prof !62

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE25LoadProtectedPointerFieldENS2_1VINS0_6ObjectEEENS2_6LoadOp4KindEi.exit.i
  %i.q = shl i32 %i.a, 4
  %i.r = add i32 %i.q, 16
  %i.s = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.t = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.s, i32 %i.o, i32 -1, i8 17, i8 7, i8 1, i32 noundef %i.r, i8 noundef zeroext 0)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MemStartEj.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MemStartEj.exit: ; preds = %bb.b, %bb.c, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE25LoadProtectedPointerFieldENS2_1VINS0_6ObjectEEENS2_6LoadOp4KindEi.exit.i, %bb.d
  %.sroa.010.0.i = phi i32 [ %.sroa.02.0.copyload.i.i.i.i.i, %bb.b ], [ %i.t, %bb.d ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE25LoadProtectedPointerFieldENS2_1VINS0_6ObjectEEENS2_6LoadOp4KindEi.exit.i ], [ -1, %bb.c ]
  %i.u = load i32, ptr %1, align 8                ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MemStartEj.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !11, !align !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.0.0.copyload.i.i.i.i92 = load ptr, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i92, i64 16
  %.sroa.02.0.copyload.i.i.i.i.i93 = load i32, ptr %i.z, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i

bb.f:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MemStartEj.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 672
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE25LoadProtectedPointerFieldENS2_1VINS0_6ObjectEEENS2_6LoadOp4KindEi.exit.i86, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE25LoadProtectedPointerFieldENS2_1VINS0_6ObjectEEENS2_6LoadOp4KindEi.exit.i86: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !11, !align !19
  %.sroa.0.0.copyload.i7.i.i87 = load i32, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ai = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, i32 %.sroa.0.0.copyload.i7.i.i87, i32 -1, i8 49, i8 11, i8 4, i32 noundef 120, i8 noundef zeroext 0)
  %.pre.i88 = load ptr, ptr %i.aa, align 8        ; 2 uses
  %.phi.trans.insert.i89 = getelementptr inbounds nuw i8, ptr %.pre.i88, i64 672
  %.pre11.i90 = load ptr, ptr %.phi.trans.insert.i89, align 8
  %i.aj = icmp eq ptr %.pre11.i90, null
  br i1 %i.aj, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, label %bb.g, !prof !62

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE25LoadProtectedPointerFieldENS2_1VINS0_6ObjectEEENS2_6LoadOp4KindEi.exit.i86
  %i.ak = shl i32 %i.u, 4
  %i.al = add i32 %i.ak, 16
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.i88, i64 32
  %i.an = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.am, i32 %i.ai, i32 -1, i8 17, i8 7, i8 1, i32 noundef %i.al, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %bb.e, %bb.f, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE25LoadProtectedPointerFieldENS2_1VINS0_6ObjectEEENS2_6LoadOp4KindEi.exit.i86, %bb.g
  %.sroa.010.0.i91 = phi i32 [ %.sroa.02.0.copyload.i.i.i.i.i93, %bb.e ], [ %i.an, %bb.g ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE25LoadProtectedPointerFieldENS2_1VINS0_6ObjectEEENS2_6LoadOp4KindEi.exit.i86 ], [ -1, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 672
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit102, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i99, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i99: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i32 %.sroa.010.0.i, i32 %4, i8 noundef zeroext 0, i8 1) ; 2 uses
  %.pre = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre275 = load ptr, ptr %.phi.trans.insert, align 8
  %i.av = icmp eq ptr %.pre275, null
  br i1 %i.av, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit102, label %bb.h, !prof !62

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i99
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ax = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, i32 %.sroa.010.0.i91, i32 %3, i8 noundef zeroext 0, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit102

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit102: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i99, %bb.h
  %.sroa.06.0.i.i313 = phi i32 [ %i.au, %bb.h ], [ %i.au, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i99 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i ] ; 2 uses
  %.sroa.06.0.i.i101 = phi i32 [ %i.ax, %bb.h ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i99 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.ay, ptr %7, align 8
  store ptr %i.ay, ptr %.sink16.i.sroa.gep, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 29
  store ptr %i.az, ptr %.sink16.i.sroa.gep171, align 8
  %i.ba = call noundef zeroext i1 @_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev() #22
  br i1 %i.ba, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft20MemoryRepresentationELm5ESaIS5_EEaSEOS7_.exit, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft20MemoryRepresentationELm5ESaIS5_EEaSEOS7_.exit112

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft20MemoryRepresentationELm5ESaIS5_EEaSEOS7_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 29
  store <4 x i8> <i8 20, i8 7, i8 5, i8 3>, ptr %i.bb, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 4
  %i.bf = load ptr, ptr %7, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bf, ptr noundef nonnull align 8 dereferenceable(5) %i.bb, i64 5, i1 false)
  %i.bg = load ptr, ptr %7, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  store ptr %i.bh, ptr %.sink16.i.sroa.gep, align 8
  store ptr %i.bb, ptr %8, align 8
  store ptr %i.bb, ptr %i.bc, align 8
  store ptr %i.be, ptr %i.bd, align 8
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft20MemoryRepresentationELm5ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(29) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft20MemoryRepresentationELm5ESaIS5_EEaSEOS7_.exit112: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 29
  store <4 x i8> <i8 7, i8 5, i8 3, i8 1>, ptr %i.bi, align 8
  %i.bm = load ptr, ptr %7, align 8
  store i32 16975111, ptr %i.bm, align 1
  %i.bn = load ptr, ptr %7, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store ptr %i.bo, ptr %.sink16.i.sroa.gep, align 8
  store ptr %i.bi, ptr %9, align 8
  store ptr %i.bi, ptr %i.bj, align 8
  store ptr %i.bl, ptr %i.bk, align 8
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft20MemoryRepresentationELm5ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(29) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft20MemoryRepresentationELm5ESaIS5_EEaSEOS7_.exit112, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft20MemoryRepresentationELm5ESaIS5_EEaSEOS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.bp, ptr %10, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr %i.bs, ptr %i.br, align 8
  %i.bt = load ptr, ptr %7, align 8               ; 2 uses
  %i.bu = load ptr, ptr %.sink16.i.sroa.gep, align 8 ; 2 uses
  %.not234 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not234, label %._crit_edge259, label %.lr.ph239.preheader

.lr.ph239.preheader:                              ; preds = %bb.i
  %i.bv = zext i32 %.sroa.06.0.i.i313 to i64
  br label %.lr.ph239

._crit_edge240:                                   ; preds = %._crit_edge
  %.pre279 = load ptr, ptr %7, align 8            ; 2 uses
  %.pre280 = load ptr, ptr %.sink16.i.sroa.gep, align 8 ; 2 uses
  %.not84252 = icmp eq ptr %.pre279, %.pre280
  br i1 %.not84252, label %._crit_edge259, label %.lr.ph258.preheader

.lr.ph258.preheader:                              ; preds = %._crit_edge240
  %i.bw = zext i32 %.sroa.06.0.i.i101 to i64
  br label %.lr.ph258

.lr.ph239:                                        ; preds = %.lr.ph239.preheader, %._crit_edge
  %.0237 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %6, %.lr.ph239.preheader ] ; 3 uses
  %.072236 = phi i32 [ %.173.lcssa, %._crit_edge ], [ 0, %.lr.ph239.preheader ] ; 2 uses
  %.074235 = phi ptr [ %i.ch, %._crit_edge ], [ %i.bt, %.lr.ph239.preheader ] ; 2 uses
  %i.bx = load i8, ptr %.074235, align 1          ; 6 uses
  switch i8 %i.bx, label %bb.o [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit
    i8 1, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit
    i8 2, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit
    i8 3, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit
    i8 4, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit
    i8 5, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13InlineMemCopyEPKNS1_10WasmMemoryES5_NS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_SB_i:bb.a
  %.pre276 = load ptr, ptr %i.ek, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i137

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i137: ; preds = %bb.ac, %bb.ab
  %i.fb = phi ptr [ %i.el, %bb.ab ], [ %.pre276, %bb.ac ] ; 3 uses
  %.pre-phi.i138 = phi i64 [ %i.ep, %bb.ab ], [ %.pre13.i142, %bb.ac ]
  %i.fc = phi ptr [ %i.en, %bb.ab ], [ %.pre.i141, %bb.ac ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.eu ; 4 uses
  %i.fe = icmp ult ptr %i.fb, %i.fd
  br i1 %i.fe, label %.lr.ph.preheader.i139, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i

.lr.ph.preheader.i139:                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i137
  %i.ff = ptrtoint ptr %i.fb to i64               ; 2 uses
  %i.fg = shl nuw nsw i64 %i.eu, 2
  %i.fh = add nuw i64 %.pre-phi.i138, %i.fg
  %i.fi = add i64 %i.ff, 4
  %umax.i140 = call i64 @llvm.umax.i64(i64 %i.fh, i64 %i.fi)
  %i.fj = xor i64 %i.ff, -1
  %i.fk = add i64 %umax.i140, %i.fj
  %i.fl = and i64 %i.fk, -4
  %i.fm = add i64 %i.fl, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.fb, i8 -1, i64 %i.fm, i1 false)
  %.pre277 = load ptr, ptr %i.em, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i: ; preds = %.lr.ph.preheader.i139, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i137
  %i.fn = phi ptr [ %i.fc, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i137 ], [ %.pre277, %.lr.ph.preheader.i139 ] ; 3 uses
  %i.fo = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.fp = ptrtoint ptr %i.fo to i64               ; 2 uses
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fr
  %i.ft = icmp ult ptr %i.fd, %i.fo
  br i1 %i.ft, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i
  %i.fu = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.fv = add i64 %i.fu, 4
  %umax.i = call i64 @llvm.umax.i64(i64 %i.fp, i64 %i.fv)
  %i.fw = xor i64 %i.fu, -1
  %i.fx = add i64 %umax.i, %i.fw
  %i.fy = and i64 %i.fx, -4
  %i.fz = add i64 %i.fy, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fd, i8 -1, i64 %i.fz, i1 false)
  %.pre.i.i.i.pre = load ptr, ptr %i.em, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  %.pre.i.i.i = phi ptr [ %i.fn, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i ], [ %.pre.i.i.i.pre, %.lr.ph.preheader.i ]
  store ptr %i.fs, ptr %i.ek, align 8
  br label %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_.exit

_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit
  %i.ga = phi ptr [ %.pre.i.i.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit ], [ %i.en, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i ]
  %i.gb = trunc i64 %i.cu to i32
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.ej
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.gc, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih.exit: ; preds = %bb.x, %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_.exit
  %.sroa.011.0.i.i = phi i32 [ %i.gb, %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_.exit ], [ -1, %bb.x ]
  %i.gd = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.ge = load ptr, ptr %i.br, align 8
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %bb.ad, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit, !prof !9

bb.ad:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %10)
  %.pre.i.i = load ptr, ptr %i.bq, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih.exit, %bb.ad
  %i.gg = phi ptr [ %.pre.i.i, %bb.ad ], [ %i.gd, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih.exit ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store ptr %i.gh, ptr %i.bq, align 8
  store i32 %.sroa.011.0.i.i, ptr %i.gg, align 4
  %i.gi = add nsw i32 %.173231, %i.ce             ; 2 uses
  %i.gj = add nuw i32 %.075230, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.gj, %i.cd
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.x, !llvm.loop !1825

._crit_edge259:                                   ; preds = %._crit_edge246, %bb.i, %._crit_edge240
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft20MemoryRepresentationELm5ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(29) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %._crit_edge246
  %.077256 = phi i32 [ %.178.lcssa, %._crit_edge246 ], [ %6, %.lr.ph258.preheader ] ; 4 uses
  %.079255 = phi i32 [ %.180.lcssa, %._crit_edge246 ], [ 0, %.lr.ph258.preheader ] ; 3 uses
  %.081254 = phi i32 [ %.182.lcssa, %._crit_edge246 ], [ 0, %.lr.ph258.preheader ] ; 3 uses
  %.083253 = phi ptr [ %i.hc, %._crit_edge246 ], [ %.pre279, %.lr.ph258.preheader ] ; 2 uses
  %i.gk = load i8, ptr %.083253, align 1          ; 5 uses
  %switch.i116 = icmp ult i8 %i.gk, 2
  br i1 %switch.i116, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph258
  %i.gl = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft19SupportedOperations24IsUnalignedLoadSupportedENS2_20MemoryRepresentationE(i8 %i.gk) #22
  br i1 %i.gl, label %bb.af, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118

bb.af:                                            ; preds = %bb.ae, %.lr.ph258
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118: ; preds = %bb.ae, %bb.af
  %.sroa.0.0.i117 = phi i8 [ 2, %bb.ae ], [ 0, %bb.af ]
  switch i8 %i.gk, label %bb.aj [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120
    i8 1, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120
    i8 2, label %bb.ag
    i8 3, label %bb.ag
    i8 8, label %bb.ag
    i8 4, label %bb.ah
    i8 5, label %bb.ah
    i8 9, label %bb.ah
    i8 18, label %bb.ah
    i8 6, label %bb.ai
    i8 7, label %bb.ai
    i8 10, label %bb.ai
    i8 19, label %bb.ai
    i8 11, label %bb.ai
    i8 12, label %bb.ai
    i8 13, label %bb.ai
    i8 17, label %bb.ai
    i8 14, label %bb.ai
    i8 15, label %bb.ai
    i8 16, label %bb.ai
    i8 20, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit122
    i8 21, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120.thread226
  ]

bb.ag:                                            ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120

bb.ah:                                            ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120

bb.ai:                                            ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120

bb.aj:                                            ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118
  unreachable

_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %bb.ag, %bb.ah, %bb.ai
  %.0.i.i119 = phi i8 [ 0, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118 ], [ 1, %bb.ag ], [ 2, %bb.ah ], [ 3, %bb.ai ], [ 0, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118 ]
  %i.gm = shl nuw nsw i8 1, %.0.i.i119            ; 5 uses
  switch i8 %i.gk, label %bb.an [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit122
    i8 1, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit122
    i8 2, label %bb.ak
    i8 3, label %bb.ak
    i8 8, label %bb.ak
    i8 4, label %bb.al
    i8 5, label %bb.al
    i8 9, label %bb.al
    i8 18, label %bb.al
    i8 6, label %bb.am
    i8 7, label %bb.am
    i8 10, label %bb.am
    i8 19, label %bb.am
    i8 11, label %bb.am
    i8 12, label %bb.am
    i8 13, label %bb.am
    i8 17, label %bb.am
    i8 14, label %bb.am
    i8 15, label %bb.am
    i8 16, label %bb.am
  ]

bb.ak:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit122

bb.al:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit122

bb.am:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit122

_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120.thread226: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit122

bb.an:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120
  unreachable

_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit122: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120, %bb.ak, %bb.al, %bb.am, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120.thread226
  %i.gn = phi i8 [ 32, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120.thread226 ], [ %i.gm, %bb.ak ], [ %i.gm, %bb.al ], [ %i.gm, %bb.am ], [ %i.gm, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120 ], [ %i.gm, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120 ], [ 16, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118 ]
  %.0.i.i121 = phi i8 [ 5, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120.thread226 ], [ 1, %bb.ak ], [ 2, %bb.al ], [ 3, %bb.am ], [ 0, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120 ], [ 0, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit120 ], [ 4, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19GetMemoryAccessKindENS0_8compiler10turboshaft20MemoryRepresentationENS3_17BoundsCheckResultE.exit118 ]
  %i.go = shl nuw nsw i8 1, %.0.i.i121
  %i.gp = zext nneg i8 %i.go to i32
  %i.gq = sdiv i32 %.077256, %i.gp                ; 4 uses
  %.not261 = icmp eq i32 %i.gq, 0
  br i1 %.not261, label %._crit_edge246, label %.lr.ph245

.lr.ph245:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit122
  %i.gr = zext nneg i8 %i.gn to i32               ; 3 uses
  %i.gs = load ptr, ptr %i.ao, align 8, !nonnull !11, !align !19
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 672
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = icmp eq ptr %i.gu, null
  %i.gw = add i32 %.081254, %i.gq                 ; 3 uses
  br i1 %i.gv, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit.us.preheader, label %.lr.ph245.split.preheader, !prof !9

.lr.ph245.split.preheader:                        ; preds = %.lr.ph245
  %.pre282 = load ptr, ptr %10, align 8
  br label %.lr.ph245.split

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit.us.preheader: ; preds = %.lr.ph245
  %i.gx = mul i32 %i.gq, %i.gr                    ; 2 uses
  %i.gy = add i32 %.079255, %i.gx
  %i.gz = sub i32 %.077256, %i.gx
  br label %._crit_edge246

._crit_edge246.loopexit262:                       ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit
  %i.ha = mul i32 %i.gq, %i.gr
  %i.hb = sub i32 %.077256, %i.ha
  br label %._crit_edge246

._crit_edge246:                                   ; preds = %._crit_edge246.loopexit262, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit.us.preheader, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit122
  %.182.lcssa = phi i32 [ %.081254, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit122 ], [ %i.gw, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit.us.preheader ], [ %i.gw, %._crit_edge246.loopexit262 ]
  %.180.lcssa = phi i32 [ %.079255, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit122 ], [ %i.gy, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit.us.preheader ], [ %i.lj, %._crit_edge246.loopexit262 ]
  %.178.lcssa = phi i32 [ %.077256, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation11SizeInBytesEv.exit122 ], [ %i.gz, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit.us.preheader ], [ %i.hb, %._crit_edge246.loopexit262 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.083253, i64 1 ; 2 uses
  %.not84 = icmp eq ptr %i.hc, %.pre280
  br i1 %.not84, label %._crit_edge259, label %.lr.ph258

.lr.ph245.split:                                  ; preds = %.lr.ph245.split.preheader, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit
  %11 = phi ptr [ %12, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit ], [ %.pre282, %.lr.ph245.split.preheader ] ; 2 uses
  %.180242 = phi i32 [ %i.lj, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit ], [ %.079255, %.lr.ph245.split.preheader ] ; 2 uses
  %.182241 = phi i32 [ %i.li, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit ], [ %.081254, %.lr.ph245.split.preheader ] ; 2 uses
  %i.hd = load ptr, ptr %i.ao, align 8, !nonnull !11, !align !19 ; 3 uses
  %i.he = zext i32 %.182241 to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.he
  %.sroa.02.0.copyload = load i32, ptr %i.hf, align 4 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 672
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit, label %bb.ao, !prof !9

bb.ao:                                            ; preds = %.lr.ph245.split
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 24 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !nonnull !11, !align !19 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 3 uses
  %i.hm = load ptr, ptr %i.hl, align 8            ; 2 uses
  %i.hn = ptrtoint ptr %i.hm to i64               ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 4 uses
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = ptrtoint ptr %i.hp to i64               ; 2 uses
  %i.hr = sub i64 %i.hn, %i.hq                    ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.hv = sub i64 %i.hu, %i.hn
  %i.hw = icmp ult i64 %i.hv, 17
  br i1 %i.hw, label %bb.ap, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i124, !prof !9

bb.ap:                                            ; preds = %bb.ao
  %i.hx = sub i64 %i.hu, %i.hq
  %i.hy = lshr exact i64 %i.hx, 3
  %i.hz = and i64 %i.hy, 4294967295
  %i.ia = add nuw nsw i64 %i.hz, 3
  call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.hk, i64 noundef %i.ia)
  %.pre.i.i.i.i.i132 = load ptr, ptr %i.hl, align 8 ; 2 uses
  %.pre10.i.i.i.i.i133 = ptrtoint ptr %.pre.i.i.i.i.i132 to i64
  %.pre.i134 = load ptr, ptr %i.ho, align 8
  %.pre21.i = ptrtoint ptr %.pre.i134 to i64
  %.pre22.i = sub i64 %.pre10.i.i.i.i.i133, %.pre21.i
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i124

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i124: ; preds = %bb.ap, %bb.ao
  %.pre-phi23.i = phi i64 [ %.pre22.i, %bb.ap ], [ %i.hr, %bb.ao ] ; 2 uses
  %i.ib = phi ptr [ %.pre.i.i.i.i.i132, %bb.ap ], [ %i.hm, %bb.ao ] ; 13 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  store ptr %i.ic, ptr %i.hl, align 8
  %i.id = trunc i64 %.pre-phi23.i to i32
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 32 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = lshr i64 %.pre-phi23.i, 4
  %i.ih = and i64 %i.ig, 268435455
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.ih
  store i16 3, ptr %i.ii, align 2
  %i.ij = load ptr, ptr %i.ie, align 8
  %i.ik = add i32 %i.id, 24
  %i.il = lshr i32 %i.ik, 4
  %i.im = add nsw i32 %i.il, -1
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %i.in
  store i16 3, ptr %i.io, align 2
  store i8 78, ptr %i.ib, align 4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  store i8 0, ptr %i.ip, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  store i16 2, ptr %i.iq, align 2
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store i8 %.sroa.0.0.i117, ptr %i.ir, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.ib, i64 5
  store i8 %i.gk, ptr %i.is, align 1
  %i.it = getelementptr inbounds nuw i8, ptr %i.ib, i64 6
  store i8 0, ptr %i.it, align 2
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ib, i64 7
  store i8 0, ptr %i.iu, align 1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i32 %.180242, ptr %i.iv, align 4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store i8 0, ptr %i.iw, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ib, i64 14
  store i16 0, ptr %i.ix, align 2
  %.ptr229 = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store i32 %.sroa.06.0.i.i101, ptr %.ptr229, align 4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ib, i64 20 ; 2 uses
  store i32 %.sroa.02.0.copyload, ptr %i.iy, align 4
  %i.iz = load ptr, ptr %i.ho, align 8
  %i.ja = ptrtoint ptr %i.iz to i64               ; 2 uses
  %i.jb = add i64 %i.ja, %i.bw
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1 ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1             ; 2 uses
  %.not.i.i.i128 = icmp eq i8 %i.je, -1
  br i1 %.not.i.i.i128, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i129, label %bb.aq, !prof !9

bb.aq:                                            ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i124
  %i.jf = add nuw i8 %i.je, 1
  store i8 %i.jf, ptr %i.jd, align 1
  %.sroa.01.0.copyload.i.i127.1.pre = load i32, ptr %i.iy, align 4
  %.pre282.a = load ptr, ptr %i.ho, align 8
  %.pre286.a = ptrtoint ptr %.pre282.a to i64
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i129

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i129: ; preds = %bb.aq, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i124
  %.pre-phi = phi i64 [ %.pre286.a, %bb.aq ], [ %i.ja, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i124 ]
  %.sroa.01.0.copyload.i.i127.1 = phi i32 [ %.sroa.01.0.copyload.i.i127.1.pre, %bb.aq ], [ %.sroa.02.0.copyload, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i124 ]
  %i.jg = zext i32 %.sroa.01.0.copyload.i.i127.1 to i64
  %i.jh = add i64 %.pre-phi, %i.jg
  %i.ji = inttoptr i64 %i.jh to ptr
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 1 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1             ; 2 uses
  %.not.i.i.i128.1 = icmp eq i8 %i.jk, -1
  br i1 %.not.i.i.i128.1, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i129.1, label %bb.ar, !prof !9

bb.ar:                                            ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i129
  %i.jl = add nuw i8 %i.jk, 1
  store i8 %i.jl, ptr %i.jj, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i129.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i129.1: ; preds = %bb.ar, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i129
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hd, i64 692
  %.sroa.0.0.copyload.i.i130 = load i32, ptr %i.jm, align 4
  %i.jn = load ptr, ptr %i.hj, align 8, !nonnull !11, !align !19 ; 4 uses
  %i.jo = lshr i64 %i.hr, 4
  %i.jp = and i64 %i.jo, 268435455                ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 216 ; 3 uses
  %i.jr = load ptr, ptr %i.jq, align 8            ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 208 ; 4 uses
  %i.jt = load ptr, ptr %i.js, align 8            ; 3 uses
  %i.ju = ptrtoint ptr %i.jr to i64
  %i.jv = ptrtoint ptr %i.jt to i64               ; 3 uses
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = ashr exact i64 %i.jw, 2
  %.not.i.i19.i = icmp ugt i64 %i.jx, %i.jp
  br i1 %.not.i.i19.i, label %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_.exit, label %bb.as, !prof !8

bb.as:                                            ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i129.1
  %i.jy = lshr i64 %i.jp, 1
  %i.jz = add nuw nsw i64 %i.jp, 32
  %i.ka = add nuw nsw i64 %i.jz, %i.jy            ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jn, i64 224 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = sub i64 %i.kd, %i.jv
  %i.kf = ashr exact i64 %i.ke, 2
  %.not.i.i152 = icmp ugt i64 %i.ka, %i.kf
  br i1 %.not.i.i152, label %bb.at, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i153, !prof !9

bb.at:                                            ; preds = %bb.as
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jn, i64 200
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.kg, i64 noundef %i.ka)
  %.pre.i157 = load ptr, ptr %i.js, align 8       ; 2 uses
  %.pre13.i158 = ptrtoint ptr %.pre.i157 to i64
  %.pre283 = load ptr, ptr %i.jq, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i153

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i153: ; preds = %bb.at, %bb.as
  %i.kh = phi ptr [ %i.jr, %bb.as ], [ %.pre283, %bb.at ] ; 3 uses
  %.pre-phi.i154 = phi i64 [ %i.jv, %bb.as ], [ %.pre13.i158, %bb.at ]
  %i.ki = phi ptr [ %i.jt, %bb.as ], [ %.pre.i157, %bb.at ] ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.ka ; 4 uses
  %i.kk = icmp ult ptr %i.kh, %i.kj
  br i1 %i.kk, label %.lr.ph.preheader.i155, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i145

.lr.ph.preheader.i155:                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i153
  %i.kl = ptrtoint ptr %i.kh to i64               ; 2 uses
  %i.km = shl nuw nsw i64 %i.ka, 2
  %i.kn = add nuw i64 %.pre-phi.i154, %i.km
  %i.ko = add i64 %i.kl, 4
  %umax.i156 = call i64 @llvm.umax.i64(i64 %i.kn, i64 %i.ko)
  %i.kp = xor i64 %i.kl, -1
  %i.kq = add i64 %umax.i156, %i.kp
  %i.kr = and i64 %i.kq, -4
  %i.ks = add i64 %i.kr, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.kh, i8 -1, i64 %i.ks, i1 false)
  %.pre284 = load ptr, ptr %i.js, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i145

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i145: ; preds = %.lr.ph.preheader.i155, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i153
  %i.kt = phi ptr [ %i.ki, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i153 ], [ %.pre284, %.lr.ph.preheader.i155 ] ; 3 uses
  %i.ku = load ptr, ptr %i.kb, align 8            ; 2 uses
  %i.kv = ptrtoint ptr %i.ku to i64               ; 2 uses
  %i.kw = ptrtoint ptr %i.kt to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kx
  %i.kz = icmp ult ptr %i.kj, %i.ku
  br i1 %i.kz, label %.lr.ph.preheader.i147, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit151

.lr.ph.preheader.i147:                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i145
  %i.la = ptrtoint ptr %i.kj to i64               ; 2 uses
  %i.lb = add i64 %i.la, 4
  %umax.i148 = call i64 @llvm.umax.i64(i64 %i.kv, i64 %i.lb)
  %i.lc = xor i64 %i.la, -1
  %i.ld = add i64 %umax.i148, %i.lc
  %i.le = and i64 %i.ld, -4
  %i.lf = add i64 %i.le, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kj, i8 -1, i64 %i.lf, i1 false)
  %.pre.i.i.i131.pre = load ptr, ptr %i.js, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit151

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit151: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i145, %.lr.ph.preheader.i147
  %.pre.i.i.i131 = phi ptr [ %i.kt, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i145 ], [ %.pre.i.i.i131.pre, %.lr.ph.preheader.i147 ]
  store ptr %i.ky, ptr %i.jq, align 8
  br label %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_.exit

_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i129.1, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit151
  %i.lg = phi ptr [ %.pre.i.i.i131, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit151 ], [ %i.jt, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i129.1 ]
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.jp
  store i32 %.sroa.0.0.copyload.i.i130, ptr %i.lh, align 4
  %.pre281 = load ptr, ptr %10, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit: ; preds = %.lr.ph245.split, %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_.exit
  %12 = phi ptr [ %11, %.lr.ph245.split ], [ %.pre281, %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_.exit ]
  %i.li = add i32 %.182241, 1                     ; 2 uses
  %i.lj = add nsw i32 %.180242, %i.gr             ; 2 uses
  %exitcond270.not = icmp eq i32 %i.li, %i.gw
  br i1 %exitcond270.not, label %._crit_edge246.loopexit262, label %.lr.ph245.split, !llvm.loop !1826
}

declare i64 @_ZN2v88internal17ExternalReference16wasm_memory_copyEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface18MemCopyBoundsCheckEPKNS1_10WasmMemoryES5_NS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_SB_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %class.anon.1459, align 8           ; 5 uses
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = load i32, ptr %2, align 8
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, label %bb.f

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %bb.a
  %i.d = tail call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7MemSizeEj(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.a) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !align !19 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 672
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i47.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i47, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i47.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 672
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i64

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i47: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i32 %i.d, i32 %5, i8 noundef zeroext 7, i8 1) ; 2 uses
  %.pre = load ptr, ptr %i.e, align 8             ; 7 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre173 = load ptr, ptr %.phi.trans.insert, align 8
  %i.m = icmp eq ptr %.pre173, null
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 672 ; 4 uses
  br i1 %i.m, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i64, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i54, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i54: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i47
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.o, i32 %4, i32 %i.l, i8 noundef zeroext 4, i8 1)
  %.pre174 = load ptr, ptr %i.e, align 8          ; 2 uses
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %.pre174, i64 672
  %.pre176 = load ptr, ptr %.phi.trans.insert175, align 8
  %i.q = icmp eq ptr %.pre176, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, label %bb.b, !prof !62

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i54
  %i.r = getelementptr inbounds nuw i8, ptr %.pre174, i64 32
  %i.s = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, i32 %3, i32 %i.l, i8 noundef zeroext 4, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i54, %bb.b
  %.sroa.06.0.i.i56.ph = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i54 ], [ %i.s, %bb.b ]
  %.pr184 = load ptr, ptr %i.n, align 8
  %i.t = icmp eq ptr %.pr184, null
  br i1 %i.t, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i64, label %bb.c, !prof !62

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i
  %i.u = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.v = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.u, i32 %i.p, i32 %.sroa.06.0.i.i56.ph, i8 noundef zeroext 4, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i64

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i64: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i47, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i47.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, %bb.c
  %i.w = phi ptr [ %i.n, %bb.c ], [ %i.n, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i ], [ %i.n, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i47 ], [ %i.j, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i47.thread ] ; 2 uses
  %i.x = phi ptr [ %.pre, %bb.c ], [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i ], [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i47 ], [ %i.f, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i47.thread ]
  %.sroa.06.0.i.i59 = phi i32 [ %i.v, %bb.c ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i47 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i47.thread ]
  %i.y = load ptr, ptr %i.e, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 672
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i72, label %bb.d, !prof !9

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %5, i32 %i.d, i8 noundef zeroext 4, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i72

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i72: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i64, %bb.d
  %.sroa.06.0.i.i66 = phi i32 [ %i.ad, %bb.d ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i64 ]
  %i.ae = load ptr, ptr %i.w, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i77, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i77: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ah = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, i32 %.sroa.06.0.i.i59, i32 %.sroa.06.0.i.i66, i8 noundef zeroext 4, i8 0)
  %.pr = load ptr, ptr %i.w, align 8
  %i.ai = icmp eq ptr %.pr, null
  br i1 %i.ai, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %bb.e, !prof !62

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i77
  %i.aj = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8TrapIfOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEEbNS1_6TrapIdEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, i32 %i.ah, i32 -1, i1 noundef zeroext true, i32 noundef 1371) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %0, ptr %6, align 8
  call void @_ZZN2v88internal4wasm32TurboshaftGraphBuildingInterface18MemCopyBoundsCheckEPKNS1_10WasmMemoryES5_NS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_SB_ENKUlS5_SB_SB_E_clES5_SB_SB_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2, i32 %4, i32 %5)
  call void @_ZZN2v88internal4wasm32TurboshaftGraphBuildingInterface18MemCopyBoundsCheckEPKNS1_10WasmMemoryES5_NS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_SB_ENKUlS5_SB_SB_E_clES5_SB_SB_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %1, i32 %3, i32 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i72, %bb.e, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i77, %bb.f
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN2v88internal4wasm32TurboshaftGraphBuildingInterface18MemCopyBoundsCheckEPKNS1_10WasmMemoryES5_NS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_SB_ENKUlS5_SB_SB_E_clES5_SB_SB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 %2, i32 %3) local_unnamed_addr #10 comdat align 2 {
_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load i32, ptr %1, align 8
  %i.c = tail call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7MemSizeEj(ptr noundef nonnull align 8 dereferenceable(288) %i.a, i32 noundef %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 672
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i25, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i25: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i32 %i.c, i32 %3, i8 noundef zeroext 7, i8 1)
  %.pre = load ptr, ptr %i.d, align 8             ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre108 = load ptr, ptr %.phi.trans.insert, align 8
  %i.k = icmp eq ptr %.pre108, null
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 672 ; 2 uses
  br i1 %i.k, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i32, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i32: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i25
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, i32 %3, i32 %i.c, i8 noundef zeroext 4, i8 1)
  %.pre109 = load ptr, ptr %i.d, align 8          ; 2 uses
  %.phi.trans.insert110 = getelementptr inbounds nuw i8, ptr %.pre109, i64 672
  %.pre111 = load ptr, ptr %.phi.trans.insert110, align 8
  %i.o = icmp eq ptr %.pre111, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, label %bb.a, !prof !62

bb.a:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i32
  %i.p = getelementptr inbounds nuw i8, ptr %.pre109, i64 32
  %i.q = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.p, i32 %2, i32 %i.j, i8 noundef zeroext 4, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i32, %bb.a
  %.sroa.06.0.i.i34.ph = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i32 ], [ %i.q, %bb.a ]
  %.pr119 = load ptr, ptr %i.l, align 8
  %i.r = icmp eq ptr %.pr119, null
  br i1 %i.r, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i39, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i39: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 2 uses
  %i.t = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.s, i32 %i.n, i32 %.sroa.06.0.i.i34.ph, i8 noundef zeroext 4, i8 0)
  %.pr = load ptr, ptr %i.l, align 8
  %i.u = icmp eq ptr %.pr, null
  br i1 %i.u, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %bb.b, !prof !62

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i39
  %i.v = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8TrapIfOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEEbNS1_6TrapIdEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.s, i32 %i.t, i32 -1, i1 noundef zeroext true, i32 noundef 1371) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i25, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i39, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft20MemoryRepresentationELm5ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(29) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13InlineMemFillEPKNS1_10WasmMemoryENS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEENS8_INS9_ILm32EEEEESB_i(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i32 %2, i32 %3, i32 %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_1
