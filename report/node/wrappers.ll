begin_hunk_0
inline.NumInlined: 7183
inline.NumDeleted: 2643
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE4ToJSENS4_7OpIndexENS1_18CanonicalValueTypeENS4_1VINS0_7ContextEEE:bb.a

bb.y:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread268, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread268, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread268, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread268, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread268, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread268
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !9, !align !10 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i64 4, ptr %4, align 8
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE4ToJSENS4_7OpIndexENS1_18CanonicalValueTypeENS4_1VINS0_7ContextEEE:bb.a
  br label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i

_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i: ; preds = %bb.ac, %bb.ab
  %i.dc = phi ptr [ %i.db, %bb.ac ], [ %i.ct, %bb.ab ] ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.de = getelementptr inbounds nuw i8, ptr %i.ck, i64 672 ; 4 uses
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.aj, label %bb.ad, !prof !5

bb.ad:                                            ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISL_SM_EESL_(ptr noundef nonnull align 8 dereferenceable(504) %i.dh, ptr nonnull %i.dd, i32 -1)
  br label %bb.aj

bb.ae:                                            ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit160.2
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE4ToJSENS4_7OpIndexENS1_18CanonicalValueTypeENS4_1VINS0_7ContextEEE:bb.a
  store ptr %i.en, ptr %i.ec, align 8
  br label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE24BuildChangeInt32ToNumberENS4_1VINS4_12WordWithBitsILm32EEEEE.exit

bb.aj:                                            ; preds = %bb.ad, %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17BuildReceiverNodeENS4_7OpIndexESB_NS4_1VINS0_9UndefinedEEE:bb.a

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit: ; preds = %bb.a, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE22LoadSharedFunctionInfoENS4_1VINS0_6ObjectEEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, %bb.b
  %.sroa.06.0.i.i = phi i64 [ %i.q, %bb.b ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit ], [ 4294967295, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE22LoadSharedFunctionInfoENS4_1VINS0_6ObjectEEE.exit ], [ 4294967295, %bb.a ]
  %i.r = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i64 4, ptr %4, align 8
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17BuildReceiverNodeENS4_7OpIndexESB_NS4_1VINS0_9UndefinedEEE:bb.a
  br label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i

_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i: ; preds = %bb.f, %bb.e
  %i.aj = phi ptr [ %i.ai, %bb.f ], [ %i.aa, %bb.e ] ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 672 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.l, label %bb.g, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISL_SM_EESL_(ptr noundef nonnull align 8 dereferenceable(504) %i.ao, ptr nonnull %i.ak, i32 -1)
  br label %bb.l

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit.2
end_hunk_5
begin_hunk_6_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17BuildReceiverNodeENS4_7OpIndexESB_NS4_1VINS0_9UndefinedEEE:bb.a
_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit.2, %bb.j, %bb.k
  ret i32 %.sroa.02.0.copyload.i.i.i

bb.l:                                             ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
end_hunk_6
