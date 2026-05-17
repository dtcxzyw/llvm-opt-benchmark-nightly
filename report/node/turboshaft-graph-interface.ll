inline.NumInlined: 30203
inline.NumDeleted: 8013
begin_hunk_0_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8ElemDropEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_14IndexImmediateE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !11, !align !19 ; 4 uses
  %.not.i = xor i1 %i.j, true
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load i8, ptr %i.m, align 8, !range !10
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.o
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 672
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !11, !align !19
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.v = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.u, i32 %.sroa.0.0.copyload.i.i, i32 -1, i8 49, i8 11, i8 4, i32 noundef 168, i8 noundef zeroext 0)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !11, !align !19
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.x, align 8
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.03.0.i = phi i32 [ %.sroa.0.0.copyload.i7.i, %bb.d ], [ %i.v, %bb.c ], [ -1, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 672
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ac = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i32 %.sroa.03.0.i, i32 -1, i8 49, i8 12, i8 4, i32 noundef 144, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit, %bb.e
  %.sroa.011.0.i.i.i.i = phi i32 [ %i.ac, %bb.e ], [ -1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit ]
  %i.ad = load ptr, ptr %i.k, align 8, !nonnull !11, !align !19 ; 3 uses
  %i.ae = load i32, ptr %2, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 672 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22StoreFixedArrayElementENS2_1VINS0_10FixedArrayEEEiNSF_INS0_6ObjectEEENS1_16WriteBarrierKindE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.aj = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ai)
  %.pr.i = load ptr, ptr %i.af, align 8
  %i.ak = icmp eq ptr %.pr.i, null
  br i1 %i.ak, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22StoreFixedArrayElementENS2_1VINS0_10FixedArrayEEEiNSF_INS0_6ObjectEEENS1_16WriteBarrierKindE.exit, label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit, !prof !62

_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.al = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i32 %i.aj, i32 -1, i8 48, i8 7, i8 1, i32 noundef 736, i8 noundef zeroext 0)
  %.pre = load ptr, ptr %i.af, align 8
  %i.am = icmp eq ptr %.pre, null
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22StoreFixedArrayElementENS2_1VINS0_10FixedArrayEEEiNSF_INS0_6ObjectEEENS1_16WriteBarrierKindE.exit, label %bb.f, !prof !62

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit
  %i.an = shl nsw i32 %i.ae, 3
  %i.ao = add i32 %i.an, 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aq = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, i32 %.sroa.011.0.i.i.i.i, i32 -1, i32 %i.al, i8 17, i8 11, i8 noundef zeroext 6, i32 noundef %i.ao, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22StoreFixedArrayElementENS2_1VINS0_10FixedArrayEEEiNSF_INS0_6ObjectEEENS1_16WriteBarrierKindE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22StoreFixedArrayElementENS2_1VINS0_10FixedArrayEEEiNSF_INS0_6ObjectEEENS1_16WriteBarrierKindE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9TableCopyEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_18TableCopyImmediateERKNS2_5ValueESE_SE_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.std::tuple.1472", align 4   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 17 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.04.0.copyload = load i32, ptr %i.g, align 4 ; 2 uses
  %i.h = icmp eq i8 %i.f, 0
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 672
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.n, i32 %.sroa.04.0.copyload, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 0, i8 1)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.05.0.i.i = phi i32 [ -1, %bb.b ], [ %i.o, %bb.c ], [ %.sroa.04.0.copyload, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 17 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.03.0.copyload = load i32, ptr %i.r, align 4 ; 2 uses
  %i.s = icmp eq i8 %i.q, 0
  br i1 %i.s, label %bb.d, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit19

bb.d:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 672
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit19, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, i32 %.sroa.03.0.copyload, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 0, i8 1)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit19

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit19: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit, %bb.d, %bb.e
  %.sroa.05.0.i.i18 = phi i32 [ -1, %bb.d ], [ %i.z, %bb.e ], [ %.sroa.03.0.copyload, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit ]
  %i.aa = load i8, ptr %i.e, align 1
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %.thread

.thread:                                          ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit19
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.01.0.copyload36 = load i32, ptr %i.ad, align 4
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit19
  %i.ae = load i8, ptr %i.p, align 1
  %.not = icmp eq i8 %i.ae, 1
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.01.0.copyload = load i32, ptr %i.ag, align 4 ; 2 uses
  br i1 %.not, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit21, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.01.0.copyload37 = phi i32 [ %.sroa.01.0.copyload36, %.thread ], [ %.sroa.01.0.copyload, %bb.f ]
  %i.ah = phi ptr [ %i.ac, %.thread ], [ %i.af, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 672
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit21, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ao = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.an, i32 %.sroa.01.0.copyload37, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 0, i8 1)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit21

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit21: ; preds = %bb.f, %bb.g, %bb.h
  %i.ap = phi ptr [ %i.ah, %bb.g ], [ %i.ah, %bb.h ], [ %i.af, %bb.f ]
  %.sroa.05.0.i.i20 = phi i32 [ -1, %bb.g ], [ %i.ao, %bb.h ], [ %.sroa.01.0.copyload, %bb.f ]
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 18
  %i.as = load i8, ptr %i.ar, align 2, !range !10, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 672
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit27, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit21
  %i.ay = load i32, ptr %2, align 8
  %i.az = uitofp i32 %i.ay to double
  %i.ba = bitcast double %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bc = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i8 noundef zeroext 5, i64 %i.ba) ; 3 uses
  %.pre = load ptr, ptr %i.at, align 8            ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre38 = load ptr, ptr %.phi.trans.insert, align 8
  %i.bd = icmp eq ptr %.pre38, null
  br i1 %i.bd, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit27, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit24, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit24: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit
  %i.be = load i32, ptr %i.ap, align 8
  %i.bf = uitofp i32 %i.be to double
  %i.bg = bitcast double %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.bi = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bh, i8 noundef zeroext 5, i64 %i.bg) ; 2 uses
  %.pre39 = load ptr, ptr %i.at, align 8          ; 2 uses
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %.pre39, i64 672
  %.pre41 = load ptr, ptr %.phi.trans.insert40, align 8
  %i.bj = icmp eq ptr %.pre41, null
  br i1 %i.bj, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit27, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i25, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i25: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit24
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bl = load i8, ptr %i.bk, align 8, !range !10, !noundef !11
  %7 = xor i8 %i.bl, -1
  %8 = and i8 %i.as, %7
  %9 = uitofp nneg i8 %8 to double
  %10 = bitcast double %9 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre39, i64 32
  %i.bn = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bm, i8 noundef zeroext 5, i64 %10)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit27

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit27: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit21, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit24, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i25
  %.sroa.01.0.i2347 = phi i32 [ %i.bi, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit24 ], [ %i.bi, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i25 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit ], [ -1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit21 ]
  %.sroa.01.0.i4346 = phi i32 [ %i.bc, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit24 ], [ %i.bc, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i25 ], [ %i.bc, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit ], [ -1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit21 ]
  %.sroa.01.0.i26 = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit24 ], [ %i.bn, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i25 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit ], [ -1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit21 ]
  store i32 %.sroa.01.0.i26, ptr %6, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.01.0.i2347, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.01.0.i4346, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.sroa.05.0.i.i20, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sroa.05.0.i.i18, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %.sroa.05.0.i.i, ptr %i.bs, align 4
  %i.bt = call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor13WasmTableCopyEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(24) %6, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9TableGrowEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_19TableIndexImmediateERKNS2_5ValueESE_PSC_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::compiler::turboshaft::Label.852", align 8 ; 15 uses
  %7 = alloca %"class.std::tuple.1478", align 4   ; 7 uses
  %8 = alloca %"class.std::tuple.860", align 4    ; 5 uses
  %9 = alloca %"class.std::tuple.865", align 4    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !align !19 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5LabelIJNS2_12WordWithBitsILm32EEEEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.d)
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal8compiler10turboshaft5LabelIJNS2_12WordWithBitsILm32EEEEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft5LabelIJNS2_12WordWithBitsILm32EEEEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.l = add i64 %i.j, 1
  store i64 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j
  %i.o = load ptr, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.o, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i32 -1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  store i32 -1, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store i32 0, ptr %i.u, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.s, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.t, align 8
  store ptr %i.o, ptr %6, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 3 uses
  store i64 0, ptr %i.aa, align 8
  store ptr %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i8 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 17
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, 1
  br i1 %i.aj, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5LabelIJNS2_12WordWithBitsILm32EEEEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit
  %i.ak = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 672
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint32ToUintPtrENS2_1VINS2_12WordWithBitsILm32EEEEE.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.08.0.copyload = load i32, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.aq = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, i32 %.sroa.08.0.copyload, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 0, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint32ToUintPtrENS2_1VINS2_12WordWithBitsILm32EEEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5LabelIJNS2_12WordWithBitsILm32EEEEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.07.0.copyload = load i32, ptr %i.ar, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint32ToUintPtrENS2_1VINS2_12WordWithBitsILm32EEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint32ToUintPtrENS2_1VINS2_12WordWithBitsILm32EEEEE.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.029.0 = phi i32 [ %.sroa.07.0.copyload, %bb.e ], [ %i.aq, %bb.d ], [ -1, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.at = load i8, ptr %i.as, align 8, !range !10, !noundef !11
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint32ToUintPtrENS2_1VINS2_12WordWithBitsILm32EEEEE.exit
  %i.av = load ptr, ptr %i.af, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 18
  %i.ax = load i8, ptr %i.aw, align 2, !range !10, !noundef !11
  %i.ay = zext nneg i8 %i.ax to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint32ToUintPtrENS2_1VINS2_12WordWithBitsILm32EEEEE.exit
  %i.az = phi i64 [ 0, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint32ToUintPtrENS2_1VINS2_12WordWithBitsILm32EEEEE.exit ], [ %i.ay, %bb.f ]
  %i.ba = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 672 ; 5 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit: ; preds = %bb.g
  %i.be = load i32, ptr %2, align 8
  %i.bf = uitofp i32 %i.be to double
  %i.bg = bitcast double %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bi = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bh, i8 noundef zeroext 5, i64 %i.bg) ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre30 = load ptr, ptr %.phi.trans.insert, align 8
  %i.bj = icmp eq ptr %.pre30, null
  br i1 %i.bj, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %bb.h, !prof !62

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.bl = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bk, i8 noundef zeroext 0, i64 noundef %i.az)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit, %bb.h
  %.sroa.01.0.i32 = phi i32 [ %i.bi, %bb.h ], [ %i.bi, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit ], [ -1, %bb.g ]
  %.sroa.0.0.i.i.i = phi i32 [ %i.bl, %bb.h ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit ], [ -1, %bb.g ]
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.bm, align 4
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %7, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.0.0.i.i.i, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.029.0, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.01.0.i32, ptr %i.bp, align 4
  %i.bq = call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor13WasmTableGrowEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef 0)
  %i.br = load ptr, ptr %i.bb, align 8
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, label %bb.i, !prof !9

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 4 uses
  %i.bu = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESH_NSF_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i32 %i.bq, i8 4, i8 1, i8 noundef zeroext 0)
  %.pr.i = load ptr, ptr %i.bb, align 8
  %i.bv = icmp eq ptr %.pr.i, null
  br i1 %i.bv, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i: ; preds = %bb.i
  %i.bw = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i8 noundef zeroext 0, i64 noundef 32)
  %.pr22.i = load ptr, ptr %i.bb, align 8
  %i.bx = icmp eq ptr %.pr22.i, null
  br i1 %i.bx, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i
  %i.by = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7ShiftOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i32 %i.bu, i32 %i.bw, i8 noundef zeroext 0, i8 1)
  %.pr25.pr.i = load ptr, ptr %i.bb, align 8
  %i.bz = icmp eq ptr %.pr25.pr.i, null
  br i1 %i.bz, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, label %bb.j, !prof !62

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i
  %i.ca = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i32 %i.by, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 1, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %bb.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i, %bb.j
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.ca, %bb.j ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.cb = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 536
end_hunk_0
