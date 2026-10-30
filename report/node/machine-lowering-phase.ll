Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/machine-lowering-phase?download=true
inline.NumInlined: 44285
inline.NumDeleted: 14007
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 253
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15ReduceCheckMapsENS2_1VINS0_10HeapObjectEEENSV_INS2_10FrameStateEEENS2_9OptionalVINS0_3MapEEERKNS0_14ZoneCompactSetINS1_6MapRefEEENSD_5FlagsINS1_13CheckMapsFlagEiiEERKNS1_14FeedbackSourceE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %0, i64 -8
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bl = call i32 @_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE29CompareMapAgainstMultipleMapsENS2_1VINS0_3MapEEERKNS0_14ZoneCompactSetINS1_6MapRefEEE(ptr noundef nonnull align 8 dereferenceable(714) %0, i32 %storemerge, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.sroa.087.0.insert.ext = zext i32 %i.bl to i64
  %.sroa.087.0.insert.insert = or disjoint i64 %.sroa.087.0.insert.ext, 4294967296
  %i.bm = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_BindIfNotENS2_17ConditionWithHintEPNSL_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.bh, i64 %.sroa.087.0.insert.insert, ptr noundef nonnull %14)
  br i1 %i.bm, label %bb.r, label %.critedge68.2

bb.r:                                             ; preds = %bb.q
  call void @_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE45TryMigrateInstanceAndMarkMapAsMigrationTargetENS2_1VINS0_10HeapObjectEEENSV_INS0_3MapEEENSV_INS2_10FrameStateEEERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(714) %0, i32 %1, i32 %storemerge, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %6)
  %i.bn = load ptr, ptr %i.bi, align 8
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.critedge68.2, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr %i.bj, align 8, !nonnull !50, !align !51
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 160
  %i.br = load ptr, ptr %i.bq, align 8            ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bw = sub i64 %i.bt, %i.bv
  %i.bx = icmp ult i64 %i.bw, 24
  br i1 %i.bx, label %bb.t, label %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i73, !prof !49

bb.t:                                             ; preds = %bb.s
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.br, i64 noundef 24) #24
  %.pre.i.i.i74 = load i64, ptr %i.bu, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i73

_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i73: ; preds = %bb.t, %bb.s
  %i.by = phi i64 [ %.pre.i.i.i74, %bb.t ], [ %i.bv, %bb.s ] ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  %i.ca = add i64 %i.by, 24
  store i64 %i.ca, ptr %i.bu, align 8
  store i8 70, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %i.cc = load ptr, ptr %i.bi, align 8
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.critedge68.2, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10DeoptimizeENS2_1VINS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit75, !prof !49

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10DeoptimizeENS2_1VINS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit75: ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i73
  %i.ce = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_12DeoptimizeOpEJNS2_14ShadowyOpIndexEPKNS1_20DeoptimizeParametersEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %2, ptr noundef nonnull %i.bz) ; 0 uses
  %.pr113 = load ptr, ptr %i.bi, align 8
  %i.cf = icmp eq ptr %.pr113, null
  br i1 %i.cf, label %.critedge68.2, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10DeoptimizeENS2_1VINS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit75
  %i.cg = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 52
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = icmp ne i32 %i.ci, -1
  %i.ck = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS3_INS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S3_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(1432) %0, ptr noundef nonnull %i.cg, i1 noundef zeroext %i.cj), !inline_history !22 ; 0 uses
  br label %.critedge68.2

.critedge68.2:                                    ; preds = %bb.q, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10DeoptimizeENS2_1VINS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit75, %bb.u, %bb.r, %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i73
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSL_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.bh, ptr noundef nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit85

bb.v:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %.sroa.0.0.copyload.i77 = load i64, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.copyload.i77, ptr %8, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CompareMapsENS2_1VINS0_10HeapObjectEEENS2_9OptionalVINS0_3MapEEERKNS0_14ZoneCompactSetINS1_6MapRefEEE.exit82.thread, label %bb.w, !prof !49

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CompareMapsENS2_1VINS0_10HeapObjectEEENS2_9OptionalVINS0_3MapEEERKNS0_14ZoneCompactSetINS1_6MapRefEEE.exit82.thread: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit85

bb.w:                                             ; preds = %bb.v
  %.not.i.i78 = icmp eq i32 %storemerge, -1
  br i1 %.not.i.i78, label %bb.x, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CompareMapsENS2_1VINS0_10HeapObjectEEENS2_9OptionalVINS0_3MapEEERKNS0_14ZoneCompactSetINS1_6MapRefEEE.exit82

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN2v88internal8compiler13AccessBuilder6ForMapENS1_16WriteBarrierKindE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %7, i8 noundef zeroext 2) #24
  %i.cp = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS0_3MapEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %i.cl, i32 %1, ptr noundef nonnull align 8 dereferenceable(72) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CompareMapsENS2_1VINS0_10HeapObjectEEENS2_9OptionalVINS0_3MapEEERKNS0_14ZoneCompactSetINS1_6MapRefEEE.exit82

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CompareMapsENS2_1VINS0_10HeapObjectEEENS2_9OptionalVINS0_3MapEEERKNS0_14ZoneCompactSetINS1_6MapRefEEE.exit82: ; preds = %bb.w, %bb.x
  %.sroa.07.0.i.i80 = phi i32 [ %storemerge, %bb.w ], [ %i.cp, %bb.x ]
  %i.cq = call i32 @_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE29CompareMapAgainstMultipleMapsENS2_1VINS0_3MapEEERKNS0_14ZoneCompactSetINS1_6MapRefEEE(ptr noundef nonnull align 8 dereferenceable(714) %0, i32 %.sroa.07.0.i.i80, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %.pr114 = load ptr, ptr %i.cm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.cr = icmp eq ptr %.pr114, null
  br i1 %i.cr, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit85, label %bb.y, !prof !58

bb.y:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CompareMapsENS2_1VINS0_10HeapObjectEEENS2_9OptionalVINS0_3MapEEERKNS0_14ZoneCompactSetINS1_6MapRefEEE.exit82
  %i.cs = getelementptr inbounds i8, ptr %0, i64 -8
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !50, !align !51
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 160
  %i.cv = load ptr, ptr %i.cu, align 8            ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8            ; 2 uses
  %i.da = sub i64 %i.cx, %i.cz
  %i.db = icmp ult i64 %i.da, 24
  br i1 %i.db, label %bb.z, label %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i83, !prof !49

bb.z:                                             ; preds = %bb.y
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cv, i64 noundef 24) #24
  %.pre.i.i.i84 = load i64, ptr %i.cy, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i83

_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i83: ; preds = %bb.z, %bb.y
  %i.dc = phi i64 [ %.pre.i.i.i84, %bb.z ], [ %i.cz, %bb.y ] ; 2 uses
  %i.dd = inttoptr i64 %i.dc to ptr               ; 3 uses
  %i.de = add i64 %i.dc, 24
  store i64 %i.de, ptr %i.cy, align 8
  store i8 70, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %i.dg = load ptr, ptr %i.cm, align 8
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit85, label %bb.aa, !prof !49

bb.aa:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i83
  %i.di = call i32 @_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE18ReduceDeoptimizeIfENS2_1VINS2_12WordWithBitsILm32EEEEENSV_INS2_10FrameStateEEEbPKNS1_20DeoptimizeParametersE(ptr noundef nonnull align 8 dereferenceable(714) %0, i32 %i.cq, i32 %2, i1 noundef zeroext true, ptr noundef nonnull %i.dd) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit85

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit85: ; preds = %bb.aa, %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i83, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CompareMapsENS2_1VINS0_10HeapObjectEEENS2_9OptionalVINS0_3MapEEERKNS0_14ZoneCompactSetINS1_6MapRefEEE.exit82, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CompareMapsENS2_1VINS0_10HeapObjectEEENS2_9OptionalVINS0_3MapEEERKNS0_14ZoneCompactSetINS1_6MapRefEEE.exit82.thread, %.critedge68.2, %.critedge.2
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10DeoptimizeENS2_1VINS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit, label %bb.ab, !prof !49

bb.ab:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit85
  %.sroa.01.0.copyload.i86 = load i64, ptr %4, align 8
  %i.dm = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_11AssumeMapOpEJNS2_14ShadowyOpIndexENS0_14ZoneCompactSetINS1_6MapRefEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1, i64 %.sroa.01.0.copyload.i86)
  %i.dn = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_11AssumeMapOpEEENS2_7OpIndexESQ_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.dm) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10DeoptimizeENS2_1VINS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10DeoptimizeENS2_1VINS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit: ; preds = %bb.ab, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit85, %bb.e, %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i, %bb.b
  ret i32 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE29CompareMapAgainstMultipleMapsENS2_1VINS0_3MapEEERKNS0_14ZoneCompactSetINS1_6MapRefEEE(ptr noundef nonnull align 8 dereferenceable(714) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 10 uses
  %.sroa.01.0.copyload.i = load i64, ptr %2, align 8 ; 3 uses
  %i.a = icmp eq i64 %.sroa.01.0.copyload.i, 1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.c = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 4 uses
  %i.e = and i64 %.sroa.01.0.copyload.i, 3
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.peel.thread, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.peel

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.peel: ; preds = %bb.b
  %i.g = add i64 %.sroa.01.0.copyload.i, -2
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.peel.thread

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.peel.thread: ; preds = %bb.b, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.l = tail call ptr @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  store ptr %i.l, ptr %3, align 8
  %i.m = call ptr @_ZNK2v88internal8compiler6MapRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24 ; 2 uses
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i.peel = icmp eq ptr %i.p, null
  br i1 %.not.i.i.peel, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.peel, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.peel.thread
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 63768
  %i.r = load ptr, ptr %i.q, align 8
  %.not5.i.i.peel = icmp eq ptr %i.r, null
  br i1 %.not5.i.i.peel, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.p, ptr %i.m) #24
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.peel

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.peel: ; preds = %bb.d, %bb.c, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.peel.thread
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread, label %bb.e, !prof !49

.thread:                                          ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit.peel.preheader

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.peel
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSM_4KindENSM_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 8, i64 %i.u)
  %i.w = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESQ_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.v)
  %.pr = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.x = icmp eq ptr %.pr, null
  br i1 %i.x, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit.peel.preheader, label %bb.f, !prof !58

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit.peel.preheader: ; preds = %.thread, %bb.f, %bb.e
  %.sroa.038.0.ph = phi i32 [ -1, %.thread ], [ %4, %bb.f ], [ -1, %bb.e ]
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit.peel

bb.f:                                             ; preds = %bb.e
  %4 = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEEST_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %1, i32 %i.w, i8 4), !inline_history !39
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit.peel.preheader

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %bb.h, !prof !49

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSM_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 0, i64 noundef 0)
  %i.ac = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESQ_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.ab)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit.peel: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit.peel.preheader, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit
  %.sroa.038.0 = phi i32 [ %i.aw, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit ], [ %.sroa.038.0.ph, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit.peel.preheader ] ; 3 uses
  %.0 = phi i64 [ %i.ax, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit ], [ 1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit.peel.preheader ] ; 3 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %2, align 8 ; 3 uses
  %5 = icmp eq i64 %.sroa.01.0.copyload.i.i, 1
  %6 = and i64 %.sroa.01.0.copyload.i.i, 3
  %7 = icmp eq i64 %6, 0
  %or.cond = or i1 %5, %7
  br i1 %or.cond, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit.peel
  %i.ad = add i64 %.sroa.01.0.copyload.i.i, -2
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp ult i64 %.0, %i.ag
  br i1 %i.ah, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit

bb.i:                                             ; preds = %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ai = call ptr @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %.0)
  store ptr %i.ai, ptr %3, align 8
  %i.aj = call ptr @_ZNK2v88internal8compiler6MapRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24 ; 2 uses
  %i.ak = load ptr, ptr %i.c, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 63768
  %i.ao = load ptr, ptr %i.an, align 8
  %.not5.i.i = icmp eq ptr %i.ao, null
  br i1 %.not5.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.am, ptr %i.aj) #24
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.ap = load ptr, ptr %i.d, align 8
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.thread46, label %bb.l, !prof !49

.thread46:                                        ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i
  %i.ar = ptrtoint ptr %i.aj to i64
  %i.as = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSM_4KindENSM_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 8, i64 %i.ar)
  %i.at = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESQ_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.as)
  %.pr45 = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.au = icmp eq ptr %.pr45, null
  br i1 %i.au, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit, label %bb.m, !prof !58

bb.m:                                             ; preds = %bb.l
  %i.av = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEEST_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %1, i32 %i.at, i8 4), !inline_history !39
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit: ; preds = %bb.m, %bb.l, %.thread46
  %.sroa.07.0.i.i.i.i22 = phi i32 [ %i.av, %bb.m ], [ -1, %bb.l ], [ -1, %.thread46 ]
  %i.aw = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Word32BitwiseOrENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 0, i32 %.sroa.038.0, i64 0, i32 %.sroa.07.0.i.i.i.i22)
  %i.ax = add nuw i64 %.0, 1
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit.peel, !llvm.loop !2616

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit.peel, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.peel, %bb.h, %bb.g
  %.sroa.038.1 = phi i32 [ -1, %bb.g ], [ %i.ac, %bb.h ], [ -1, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.peel ], [ %.sroa.038.0, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit.peel ], [ %.sroa.038.0, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit ]
  ret i32 %.sroa.038.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE22MigrateInstanceOrDeoptENS2_1VINS0_10HeapObjectEEENSV_INS0_3MapEEENSV_INS2_10FrameStateEEERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(714) %0, i32 %1, i32 %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(12) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::tuple.2545", align 4   ; 5 uses
  %6 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN2v88internal8compiler13AccessBuilder15ForMapBitField3Ev(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %6) #24
  %i.b = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_12WordWithBitsILm32EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 %2, ptr noundef nonnull align 8 dereferenceable(72) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.c = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 0, i32 %i.b, i64 4311744512, i32 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !50, !align !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = sub i64 %i.l, %i.n
  %i.p = icmp ult i64 %i.o, 24
  br i1 %i.p, label %bb.c, label %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i, !prof !49

bb.c:                                             ; preds = %bb.b
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 noundef 24) #24
  %.pre.i.i.i = load i64, ptr %i.m, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.q = phi i64 [ %.pre.i.i.i, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = add i64 %i.q, 24
  store i64 %i.s, ptr %i.m, align 8
  store i8 70, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i
  %i.w = call i32 @_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE18ReduceDeoptimizeIfENS2_1VINS2_12WordWithBitsILm32EEEEENSV_INS2_10FrameStateEEEbPKNS1_20DeoptimizeParametersE(ptr noundef nonnull align 8 dereferenceable(714) %0, i32 %i.c, i32 %3, i1 noundef zeroext true, ptr noundef nonnull %i.r) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit: ; preds = %bb.a, %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6TagSmiENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 4294967296, i32 -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i32 %1, ptr %5, align 4
  %i.aa = load ptr, ptr %i.d, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE30CallRuntime_TryMigrateInstanceEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEE.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE30CallRuntime_TryMigrateInstanceEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEE.exit, !prof !49

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE30CallRuntime_TryMigrateInstanceEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12DeoptimizeIfENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE30CallRuntime_TryMigrateInstanceEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit
  %i.ac = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !50, !align !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = call noundef ptr @_ZN2v88internal8compiler7Linkage24GetRuntimeCallDescriptorEPNS0_4ZoneENS0_7Runtime10FunctionIdEiNS_4base5FlagsINS1_8Operator8PropertyEhhEENS8_INS1_14CallDescriptor4FlagEiiEENS1_16LazyDeoptOnThrowE(ptr noundef %i.af, i32 noundef 308, i32 noundef 1, i8 96, i32 0, i8 noundef zeroext 0) #24
  %i.ah = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.ag, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %i.af, ptr noundef null)
  %i.ai = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallRuntimeImplINS2_1VINS0_6ObjectEEESt5tupleIJNSN_INS0_10HeapObjectEEEEEEET_PNS0_7IsolateENS0_7Runtime10FunctionIdEPKNS2_16TSCallDescriptorENSN_INS2_10FrameStateEEENSN_INS0_7ContextEEERKT0_(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef %i.y, i32 noundef 308, ptr noundef %i.ah, i32 -1, i32 %i.z, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %.pr = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.aj = icmp eq ptr %.pr, null
  br i1 %i.aj, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12DeoptimizeIfENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11ObjectIsSmiENS2_1VINS0_6ObjectEEE.exit, !prof !58

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11ObjectIsSmiENS2_1VINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE30CallRuntime_TryMigrateInstanceEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEE.exit
  %i.ak = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 %i.ai)
  %.pr28 = load ptr, ptr %i.d, align 8
  %i.al = icmp eq ptr %.pr28, null
  br i1 %i.al, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12DeoptimizeIfENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit, label %bb.e, !prof !58

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11ObjectIsSmiENS2_1VINS0_6ObjectEEE.exit
  %i.am = load ptr, ptr %i.ac, align 8, !nonnull !50, !align !51
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 160
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = sub i64 %i.aq, %i.as
  %i.au = icmp ult i64 %i.at, 24
  br i1 %i.au, label %bb.f, label %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i21, !prof !49

bb.f:                                             ; preds = %bb.e
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 noundef 24) #24
  %.pre.i.i.i22 = load i64, ptr %i.ar, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i21

_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i21: ; preds = %bb.f, %bb.e
  %i.av = phi i64 [ %.pre.i.i.i22, %bb.f ], [ %i.as, %bb.e ] ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr               ; 3 uses
  %i.ax = add i64 %i.av, 24
  store i64 %i.ax, ptr %i.ar, align 8
  store i8 13, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.az = load ptr, ptr %i.d, align 8
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12DeoptimizeIfENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit, label %bb.g, !prof !49

bb.g:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i21
  %i.bb = call i32 @_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE18ReduceDeoptimizeIfENS2_1VINS2_12WordWithBitsILm32EEEEENSV_INS2_10FrameStateEEEbPKNS1_20DeoptimizeParametersE(ptr noundef nonnull align 8 dereferenceable(714) %0, i32 %i.ak, i32 %3, i1 noundef zeroext false, ptr noundef nonnull %i.aw) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12DeoptimizeIfENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12DeoptimizeIfENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE30CallRuntime_TryMigrateInstanceEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE30CallRuntime_TryMigrateInstanceEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEE.exit.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11ObjectIsSmiENS2_1VINS0_6ObjectEEE.exit, %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i21, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE45TryMigrateInstanceAndMarkMapAsMigrationTargetENS2_1VINS0_10HeapObjectEEENSV_INS0_3MapEEENSV_INS2_10FrameStateEEERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(714) %0, i32 %1, i32 %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(12) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::tuple.2545", align 4   ; 4 uses
  %6 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN2v88internal8compiler13AccessBuilder15ForMapBitField3Ev(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %6) #24
  %i.b = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_12WordWithBitsILm32EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 %2, ptr noundef nonnull align 8 dereferenceable(72) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.c = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 0, i32 %i.b, i64 4311744512, i32 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !50, !align !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = sub i64 %i.l, %i.n
  %i.p = icmp ult i64 %i.o, 24
  br i1 %i.p, label %bb.c, label %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i, !prof !49

bb.c:                                             ; preds = %bb.b
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 noundef 24) #24
  %.pre.i.i.i = load i64, ptr %i.m, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.q = phi i64 [ %.pre.i.i.i, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = add i64 %i.q, 24
  store i64 %i.s, ptr %i.m, align 8
  store i8 70, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i
  %i.w = call i32 @_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE18ReduceDeoptimizeIfENS2_1VINS2_12WordWithBitsILm32EEEEENSV_INS2_10FrameStateEEEbPKNS1_20DeoptimizeParametersE(ptr noundef nonnull align 8 dereferenceable(714) %0, i32 %i.c, i32 %3, i1 noundef zeroext true, ptr noundef nonnull %i.r) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit: ; preds = %bb.a, %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6TagSmiENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 4294967296, i32 -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i32 %1, ptr %5, align 4
  %i.aa = load ptr, ptr %i.d, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE57CallRuntime_TryMigrateInstanceAndMarkMapAsMigrationTargetEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEE.exit, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit
  %i.ac = getelementptr inbounds i8, ptr %0, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !50, !align !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = call noundef ptr @_ZN2v88internal8compiler7Linkage24GetRuntimeCallDescriptorEPNS0_4ZoneENS0_7Runtime10FunctionIdEiNS_4base5FlagsINS1_8Operator8PropertyEhhEENS8_INS1_14CallDescriptor4FlagEiiEENS1_16LazyDeoptOnThrowE(ptr noundef %i.af, i32 noundef 309, i32 noundef 1, i8 96, i32 0, i8 noundef zeroext 0) #24
  %i.ah = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.ag, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %i.af, ptr noundef null)
  %i.ai = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallRuntimeImplINS2_1VINS0_6ObjectEEESt5tupleIJNSN_INS0_10HeapObjectEEEEEEET_PNS0_7IsolateENS0_7Runtime10FunctionIdEPKNS2_16TSCallDescriptorENSN_INS2_10FrameStateEEENSN_INS0_7ContextEEERKT0_(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef %i.y, i32 noundef 309, ptr noundef %i.ah, i32 -1, i32 %i.z, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE57CallRuntime_TryMigrateInstanceAndMarkMapAsMigrationTargetEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE57CallRuntime_TryMigrateInstanceAndMarkMapAsMigrationTargetEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSM_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
end_hunk_0
