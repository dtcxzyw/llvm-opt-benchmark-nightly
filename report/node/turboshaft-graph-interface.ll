Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turboshaft-graph-interface?download=true
inline.NumInlined: 30203
inline.NumDeleted: 8013
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15ArrayNewSegmentEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS2_5ValueESH_PSF_:bb.a
  br i1 %i.aj, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread
  %.ph = phi ptr [ %i.ae, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread ], [ %i.al, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit ]
  %.ph38 = phi ptr [ %i.ad, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread ], [ %i.ak, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit ]
  %.sroa.0.0.i.i37.ph = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread ], [ %i.ai, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit ]
  %.ph39 = phi ptr [ %i.z, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread ], [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit25

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit
  %i.an = and i32 %.sroa.0.0.copyload.i, 1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ar = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i8 noundef zeroext 4, i64 %i.ap) ; 2 uses
  %.pre32 = load ptr, ptr %i.y, align 8           ; 3 uses
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %.pre32, i64 672
  %.pre34 = load ptr, ptr %.phi.trans.insert33, align 8
  %i.as = icmp eq ptr %.pre34, null
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  br i1 %i.as, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit25, label %bb.f, !prof !62

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit
  %i.au = load i8, ptr %i.at, align 8, !range !10, !noundef !11
  %i.av = trunc nuw i8 %i.au to i1
  %not. = xor i1 %i.av, true
  %i.aw = select i1 %not., i1 %i.x, i1 false
  %i.ax = select i1 %i.aw, i64 4294967296, i64 0
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre32, i64 32
  %i.az = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ay, i8 noundef zeroext 4, i64 %i.ax)
  %.pre35 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit25

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit25: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit, %bb.f
  %i.ba = phi ptr [ %i.at, %bb.f ], [ %i.at, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit ], [ %i.am, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.thread ]
  %.sroa.02.0.i.i43 = phi i32 [ %i.ar, %bb.f ], [ %i.ar, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.thread ]
  %.sroa.0.0.i.i3742 = phi i32 [ %i.ai, %bb.f ], [ %i.ai, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit ], [ %.sroa.0.0.i.i37.ph, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.thread ]
  %i.bb = phi ptr [ %i.ak, %bb.f ], [ %i.ak, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit ], [ %.ph38, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.thread ]
  %i.bc = phi ptr [ %i.al, %bb.f ], [ %i.al, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit ], [ %.ph, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.thread ]
  %i.bd = phi ptr [ %.pre35, %bb.f ], [ %.pre32, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit ], [ %.ph39, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.thread ] ; 4 uses
  %.sroa.02.0.i.i24 = phi i32 [ %i.az, %bb.f ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.thread ]
  %.not.i = xor i1 %i.x, true
  %i.be = load i8, ptr %i.ba, align 8, !range !10
  %i.bf = trunc nuw i8 %i.be to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.bf
  br i1 %or.cond.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 672
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i, !prof !9

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i: ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !11, !align !19
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bm = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, i32 %.sroa.0.0.copyload.i.i.i, i32 -1, i8 49, i8 11, i8 4, i32 noundef 168, i8 noundef zeroext 0)
  %.pre.i = load ptr, ptr %i.y, align 8           ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 672
  %.pre9.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %i.bn = icmp eq ptr %.pre9.i, null
  br i1 %i.bn, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit, label %bb.h, !prof !62

bb.h:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.bp = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bo, i32 %i.bm, i32 -1, i8 49, i8 12, i8 4, i32 noundef 240, i8 noundef zeroext 0)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit25
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !11, !align !19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.bs, align 4
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit: ; preds = %bb.g, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i, %bb.h, %bb.i
  %.sroa.08.0.i = phi i32 [ %.sroa.0.0.copyload.i7.i, %bb.i ], [ %i.bp, %bb.h ], [ -1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i ], [ -1, %bb.g ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 672
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8RttCanonENS2_1VINS0_10FixedArrayEEENS0_4wasm15ModuleTypeIndexE.exit, label %bb.j, !prof !9

bb.j:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit
  %.sroa.03.0.copyload = load i32, ptr %2, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bx = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10RttCanonOpEJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bw, i32 %.sroa.08.0.i, i32 %.sroa.03.0.copyload)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8RttCanonENS2_1VINS0_10FixedArrayEEENS0_4wasm15ModuleTypeIndexE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8RttCanonENS2_1VINS0_10FixedArrayEEENS0_4wasm15ModuleTypeIndexE.exit: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit, %bb.j
  %.sroa.04.0.i.i = phi i32 [ %i.bx, %bb.j ], [ -1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit ]
  store i32 %.sroa.04.0.i.i, ptr %7, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.02.0.i.i24, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.02.0.i.i43, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.bc, align 4
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.bb, align 4
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %.sroa.0.0.i.i3742, ptr %i.cc, align 4
  %i.cd = call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor19WasmArrayNewSegmentEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(24) %7, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ce = load ptr, ptr %i.y, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 672
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16AnnotateWasmTypeINS0_9WasmArrayEEENS2_1VIT_EESJ_NS0_4wasm9ValueTypeE.exit, label %bb.k, !prof !9

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8RttCanonENS2_1VINS0_10FixedArrayEEENS0_4wasm15ModuleTypeIndexE.exit
  %.sroa.0.0.copyload = load i32, ptr %6, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cj = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_20WasmTypeAnnotationOpEJNS2_14ShadowyOpIndexENS0_4wasm9ValueTypeEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ci, i32 %i.cd, i32 %.sroa.0.0.copyload)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16AnnotateWasmTypeINS0_9WasmArrayEEENS2_1VIT_EESJ_NS0_4wasm9ValueTypeE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16AnnotateWasmTypeINS0_9WasmArrayEEENS2_1VIT_EESJ_NS0_4wasm9ValueTypeE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8RttCanonENS2_1VINS0_10FixedArrayEEENS0_4wasm15ModuleTypeIndexE.exit, %bb.k
  %.sroa.04.0.i.i26 = phi i32 [ %i.cj, %bb.k ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8RttCanonENS2_1VINS0_10FixedArrayEEENS0_4wasm15ModuleTypeIndexE.exit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.04.0.i.i26, ptr %i.ck, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface16ArrayInitSegmentEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS2_5ValueESH_SH_SH_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %8 = alloca %"class.std::tuple.1421", align 4   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i32 %.sroa.0.0.copyload.i to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load i32, ptr %3, align 4
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 416
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i8, ptr %i.o, align 4, !range !10, !noundef !11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !10, !noundef !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.shrunk = phi i8 [ 0, %bb.a ], [ %i.p, %bb.c ], [ %i.u, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 672
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit21, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit: ; preds = %bb.e
  %i.aa = load i32, ptr %3, align 4
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ae = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef zeroext 4, i64 %i.ac) ; 3 uses
  %.pre = load ptr, ptr %i.v, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre25 = load ptr, ptr %.phi.trans.insert, align 8
  %i.af = icmp eq ptr %.pre25, null
  br i1 %i.af, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit21, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit19, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit19: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit
  %i.ag = and i32 %.sroa.0.0.copyload.i, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 32
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ak = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, i8 noundef zeroext 4, i64 %i.ai) ; 2 uses
  %.pre26 = load ptr, ptr %i.v, align 8           ; 2 uses
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %.pre26, i64 672
  %.pre28 = load ptr, ptr %.phi.trans.insert27, align 8
  %i.al = icmp eq ptr %.pre28, null
  br i1 %i.al, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit21, label %bb.f, !prof !62

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit19
  %9 = zext nneg i8 %.shrunk to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = load i8, ptr %i.am, align 8, !range !10, !noundef !11
  %i.ao = trunc nuw i8 %i.an to i1
  %10 = shl nuw nsw i64 %9, 32
  %11 = select i1 %i.ao, i64 0, i64 %10
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre26, i64 32
  %i.aq = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, i8 noundef zeroext 4, i64 %11)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit21

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit21: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit19, %bb.f
  %.sroa.02.0.i.i1834 = phi i32 [ %i.ak, %bb.f ], [ %i.ak, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit19 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit ], [ -1, %bb.e ]
  %.sroa.02.0.i.i3033 = phi i32 [ %i.ae, %bb.f ], [ %i.ae, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit19 ], [ %i.ae, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit ], [ -1, %bb.e ]
  %.sroa.02.0.i.i20 = phi i32 [ %i.aq, %bb.f ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit19 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit ], [ -1, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.au, align 4
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %8, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.sroa.02.0.i.i20, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.02.0.i.i1834, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %.sroa.02.0.i.i3033, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.ar, align 4
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.as, align 4
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.at, align 4
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.ba, align 4
  %i.bb = call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor20WasmArrayInitSegmentEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(28) %8, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8ArrayGetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS2_5ValueERKNS1_19ArrayIndexImmediateESB_bPS9_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.07.0.copyload = load i32, ptr %i.a, align 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.sroa.05.0.copyload = load i32, ptr %i.b, align 4
  %.sroa.04.0.copyload = load i32, ptr %2, align 4
  tail call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface16BoundsCheckArrayENS0_8compiler10turboshaft1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENS5_INS4_12WordWithBitsILm32EEEEENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 %.sroa.07.0.copyload, i32 %.sroa.05.0.copyload, i32 %.sroa.04.0.copyload)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !align !19 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 672
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8ArrayGetENS2_1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENSF_INS2_12WordWithBitsILm32EEEEEPKNS0_4wasm9ArrayTypeEbSt8optionalINS0_17AtomicMemoryOrderEE.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ArrayGetOpEJNS2_14ShadowyOpIndexESG_PKNS0_4wasm9ArrayTypeEbSt8optionalINS0_17AtomicMemoryOrderEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i32 %.sroa.07.0.copyload, i32 %.sroa.0.0.copyload, ptr noundef %i.i, i1 noundef zeroext %5, i16 0) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !align !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = zext i32 %i.k to i64
  %i.r = add i64 %i.p, %i.q
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.v, align 4
  %i.w = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN2v88internal8compiler10turboshaft17RepresentationForENS0_4wasm9ValueTypeE(i32 %.sroa.0.0.copyload.i.i.i.i.i.i) #22 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8ArrayGetENS2_1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENSF_INS2_12WordWithBitsILm32EEEEEPKNS0_4wasm9ArrayTypeEbSt8optionalINS0_17AtomicMemoryOrderEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8ArrayGetENS2_1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENSF_INS2_12WordWithBitsILm32EEEEEPKNS0_4wasm9ArrayTypeEbSt8optionalINS0_17AtomicMemoryOrderEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.07.0.i.i = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.07.0.i.i, ptr %i.x, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8ArraySetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS2_5ValueERKNS1_19ArrayIndexImmediateESB_SB_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.09.0.copyload = load i32, ptr %i.a, align 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.sroa.07.0.copyload = load i32, ptr %i.b, align 4
  %.sroa.06.0.copyload = load i32, ptr %2, align 4
  tail call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface16BoundsCheckArrayENS0_8compiler10turboshaft1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENS5_INS4_12WordWithBitsILm32EEEEENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 %.sroa.09.0.copyload, i32 %.sroa.07.0.copyload, i32 %.sroa.06.0.copyload)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 672
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8ArraySetENS2_1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENSF_INS2_12WordWithBitsILm32EEEEENSF_INS2_3AnyEEENS0_4wasm9ValueTypeESt8optionalINS0_17AtomicMemoryOrderEE.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.01.0.copyload = load i32, ptr %i.k, align 4
  %.sroa.03.0.copyload = load i32, ptr %i.b, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ArraySetOpEJNS2_14ShadowyOpIndexESG_SG_NS0_4wasm9ValueTypeESt8optionalINS0_17AtomicMemoryOrderEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.l, i32 %.sroa.09.0.copyload, i32 %.sroa.03.0.copyload, i32 %.sroa.01.0.copyload, i32 %.sroa.0.0.copyload.i, i16 0) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8ArraySetENS2_1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENSF_INS2_12WordWithBitsILm32EEEEENSF_INS2_3AnyEEENS0_4wasm9ValueTypeESt8optionalINS0_17AtomicMemoryOrderEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8ArraySetENS2_1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENSF_INS2_12WordWithBitsILm32EEEEENSF_INS2_3AnyEEENS0_4wasm9ValueTypeESt8optionalINS0_17AtomicMemoryOrderEE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9ArrayCopyEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS2_5ValueESB_SB_SB_RKNS1_19ArrayIndexImmediateESB_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 4 dereferenceable(8) %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %8 = alloca %"class.std::tuple.600", align 1    ; 4 uses
  %9 = alloca %"class.std::tuple.600", align 1    ; 4 uses
  %10 = alloca %"class.std::tuple.600", align 1   ; 3 uses
  %11 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry", align 8 ; 6 uses
  %12 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry", align 8 ; 6 uses
  %13 = alloca %"class.std::tuple.600", align 1   ; 3 uses
  %14 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry", align 8 ; 6 uses
  %15 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry", align 8 ; 6 uses
  %16 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::SelectLoweringReducer, v8::internal::compiler::turboshaft::DataViewLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 5 uses
  %17 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::SelectLoweringReducer, v8::internal::compiler::turboshaft::DataViewLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 6 uses
  %18 = alloca [5 x %"class.v8::internal::MachineType"], align 8 ; 5 uses
  %19 = alloca %"class.v8::internal::Signature.1034", align 8 ; 6 uses
  %20 = alloca [5 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 8 uses
  %21 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::SelectLoweringReducer, v8::internal::compiler::turboshaft::DataViewLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 6 uses
  %22 = alloca %"class.std::tuple.1387", align 8  ; 20 uses
  %23 = alloca %"class.std::function", align 8    ; 6 uses
  %24 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::SelectLoweringReducer, v8::internal::compiler::turboshaft::DataViewLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 5 uses
  %25 = alloca %"class.std::tuple.1387", align 8  ; 20 uses
  %26 = alloca %"class.std::function", align 8    ; 6 uses
  %27 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::SelectLoweringReducer, v8::internal::compiler::turboshaft::DataViewLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.0195.0.copyload = load i32, ptr %i.a, align 4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0191.0.copyload = load i32, ptr %i.b, align 4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %.sroa.0189.0.copyload = load i32, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 7 uses
  %.sroa.0188.0.copyload = load i32, ptr %i.d, align 4
  %i.e = load i32, ptr %2, align 4
  %i.f = and i32 %i.e, 5
  %i.g = icmp eq i32 %i.f, 5
  %i.h = tail call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface26BoundsCheckArrayWithLengthENS0_8compiler10turboshaft1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENS5_INS4_12WordWithBitsILm32EEEEESD_NS3_12CheckForNullE(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 %.sroa.0191.0.copyload, i32 %.sroa.0189.0.copyload, i32 %.sroa.0188.0.copyload, i1 noundef zeroext %i.g) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 6 uses
  %.sroa.0185.0.copyload = load i32, ptr %i.i, align 4
  %.sroa.0184.0.copyload = load i32, ptr %i.d, align 4
  %i.j = load i32, ptr %4, align 4
  %i.k = and i32 %i.j, 5
  %i.l = icmp eq i32 %i.k, 5
  %i.m = tail call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface26BoundsCheckArrayWithLengthENS0_8compiler10turboshaft1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENS5_INS4_12WordWithBitsILm32EEEEESD_NS3_12CheckForNullE(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 %.sroa.0195.0.copyload, i32 %.sroa.0185.0.copyload, i32 %.sroa.0184.0.copyload, i1 noundef zeroext %i.l) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.p, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 34 uses
  %i.r = and i32 %.sroa.0.0.copyload.i, 3
  %i.s = icmp eq i32 %i.r, 0
  %i.t = and i32 %.sroa.0.0.copyload.i, 268435427
  %i.u = and i32 %.sroa.0.0.copyload.i, 268435440
  %i.v = add nsw i32 %i.u, -5648                  ; 2 uses
  %i.w = tail call i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 24) ; 2 uses
  %i.x = icmp ult i32 %i.w, 8
  %switch.idx.cast.i = trunc nuw nsw i32 %i.w to i8
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i356 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i364 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.z = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %25, i64 264 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %25, i64 88 ; 3 uses
  %i.ac = zext i32 %.sroa.0195.0.copyload to i64  ; 2 uses
  %i.ad = zext i32 %.sroa.0191.0.copyload to i64  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %25, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %25, i64 176 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %25, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %25, i64 104 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %25, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %25, i64 96 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %25, i64 192 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %25, i64 200
  %i.aq = getelementptr inbounds nuw i8, ptr %25, i64 184 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i296 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %22, i64 264 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %22, i64 88 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %22, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %22, i64 176 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %22, i64 168
  %i.bb = getelementptr inbounds nuw i8, ptr %22, i64 104 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %22, i64 112
  %i.bd = getelementptr inbounds nuw i8, ptr %22, i64 96 ; 2 uses
end_hunk_0
