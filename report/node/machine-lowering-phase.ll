inline.NumInlined: 44285
inline.NumDeleted: 14007
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE33AssembleOutputGraphCheckExceptionERKNS2_16CheckExceptionOpE:bb.a
  br i1 %or.cond41, label %bb.e, label %bb.f

_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18.thread: ; preds = %bb.d
  %.old40.not = icmp eq i32 %i.as, -1
  br i1 %.old40.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18.thread
  tail call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE21CreateOldToNewMappingENS2_7OpIndexESZ_(ptr noundef nonnull align 8 dereferenceable(1640) %0, i32 %.sroa.024.145, i32 %i.as), !inline_history !483
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18.thread, %bb.e
  %i.bg = load ptr, ptr %i.ah, align 8
  %i.bh = lshr i32 %.sroa.024.145, 4
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = zext i16 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add i32 %i.bm, %.sroa.024.145           ; 2 uses
  %.not42 = icmp eq i32 %i.bn, %.sroa.0.0.copyload.i12
  br i1 %.not42, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit20, label %.lr.ph, !llvm.loop !484

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit20: ; preds = %.lr.ph, %bb.f, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit.thread38
  ret i32 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE11FixLoopPhisEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(1640) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.c, align 8 ; 2 uses
  %.not4851 = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i22
  br i1 %.not4851, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.g, align 4
  %i.h = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.p = getelementptr inbounds i8, ptr %0, i64 -8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit
  %.sroa.036.052 = phi i32 [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %i.br, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit ] ; 3 uses
  %i.s = load ptr, ptr %i.k, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = zext i32 %.sroa.036.052 to i64
  %i.v = add i64 %i.t, %i.u                       ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = load i8, ptr %i.w, align 4
  %.not = icmp eq i8 %i.x, 91
  br i1 %.not, label %bb.c, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.v, %i.ab
  %i.ad = lshr i64 %i.ac, 4
  %i.ae = and i64 %i.ad, 268435455                ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.ah, -1
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexES10_i.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ae ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ak = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.ak, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexES10_i.exit, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexES10_i.exit: ; preds = %bb.d
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i, i64 16
  %.sroa.02.0.copyload.i12.i = load i32, ptr %i.al, align 4 ; 2 uses
  %.not50 = icmp eq i32 %.sroa.02.0.copyload.i12.i, -1
  br i1 %.not50, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexES10_i.exit.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexES10_i.exit.thread: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexES10_i.exit
  %.sroa.010.1.i45 = phi i32 [ %.sroa.02.0.copyload.i12.i, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexES10_i.exit ], [ %i.ah, %bb.c ] ; 4 uses
  %i.am = load i32, ptr %i.n, align 4
  %i.an = icmp ule i32 %i.am, %.sroa.010.1.i45
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.o, align 8
  %i.ao = icmp ult i32 %.sroa.010.1.i45, %.sroa.0.0.copyload.i30
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %.critedge, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexES10_i.exit.thread
  %i.aq = load ptr, ptr %i.p, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = zext i32 %.sroa.010.1.i45 to i64
  %i.av = add i64 %i.at, %i.au
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = icmp eq i8 %i.ax, 74
  br i1 %i.ay, label %bb.e, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.az, align 4
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %2, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.sroa.0.0.copyload.i.i31 = load i32, ptr %i.ba, align 4
  %i.bb = lshr i32 %.sroa.0.0.copyload.i.i31, 4
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.be, -1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EES13_i.exit.i

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %i.m, align 8
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.bh = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.bh, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.f
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.bi, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EES13_i.exit.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EES13_i.exit.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.e
  %.sroa.014.0.i.i.i = phi i32 [ %i.be, %bb.e ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  store i32 %.sroa.014.0.i.i.i, ptr %i.q, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.0.0.copyload.i32 = load i8, ptr %i.bj, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.aq, i32 %.sroa.010.1.i45, ptr nonnull %2, i64 2, i8 %.sroa.0.0.copyload.i32)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexES10_i.exit.thread, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexES10_i.exit, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EES13_i.exit.i, %.critedge, %bb.b
  %i.bk = load ptr, ptr %i.r, align 8
  %i.bl = lshr i32 %.sroa.036.052, 4
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = zext i16 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 3
  %i.br = add i32 %i.bq, %.sroa.036.052           ; 2 uses
  %.not48 = icmp eq i32 %i.br, %.sroa.0.0.copyload.i22
  br i1 %.not48, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS3_INS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S3_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(1432) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef %1, i1 noundef zeroext %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4              ; 5 uses
  %.not30 = icmp eq i32 %i.c, -1
  br i1 %.not30, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.h = load i64, ptr %i.g, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.h, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i.i, 48
  %i.m = zext i32 %i.c to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i.i = phi i64 [ %i.s, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i8.i.i.i, %i.e ; 4 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.al, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.e
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %i.c
  br i1 %i.aj, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.a, label %bb.f, !prof !9

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.al = and i16 %i.ak, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.am = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.an = bitcast <16 x i1> %i.am to i16
  %.not44.i.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not44.i.i.i.i, label %bb.g, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ao = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !485

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8
  %i.ar = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %i.as = icmp eq i32 %i.ar, %i.c
  br i1 %i.as, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.a, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.a: ; preds = %.lr.ph.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 %i.c, ptr %3, align 4
  %i.at = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i8, ptr %i.au, align 8, !range !8, !noundef !6
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.a
  call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not33 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not33, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit
  %i.bb = getelementptr inbounds i8, ptr %0, i64 -8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.034 = phi ptr [ %i.ay, %.lr.ph ], [ %i.bn, %bb.i ] ; 3 uses
  %.sroa.0.0.copyload24 = load ptr, ptr %.034, align 8
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..0.sroa_idx, align 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = zext i32 %.sroa.4.0.copyload to i64
  %i.bi = add i64 %i.bg, %i.bh
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bk, align 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %4, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24, i64 16
  %.sroa.02.0.copyload.i = load i32, ptr %i.bl, align 4
  store i32 %.sroa.02.0.copyload.i, ptr %i.bc, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %.sroa.0.0.copyload = load i8, ptr %i.bm, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.bd, i32 %.sroa.4.0.copyload, ptr nonnull %4, i64 2, i8 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bn = getelementptr inbounds nuw i8, ptr %.034, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bn, %i.ba
  br i1 %.not, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.i

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.i, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, %bb.c, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit, %bb.a
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %0, i32 %1, ptr %2, i64 %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = add i64 %i.c, %i.d                       ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = zext i16 %i.m to i64
  %.idx.i = shl nuw nsw i64 %i.n, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.m, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.p = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.k, align 4
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.u = add i64 %i.s, %i.t
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = add i8 %i.x, -1                          ; 2 uses
  %spec.select.i.i.prol = icmp ult i8 %i.y, -2
  br i1 %spec.select.i.i.prol, label %bb.b, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, !prof !9

bb.b:                                             ; preds = %.lr.ph.i.prol
  store i8 %i.y, ptr %i.w, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol: ; preds = %bb.b, %.lr.ph.i.prol
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, %.lr.ph.i.preheader
  %.011.i.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.z, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol ]
  %i.aa = icmp eq i64 %i.p, 0
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1
  %.011.i = phi ptr [ %i.as, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1 ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = zext i32 %.sroa.01.0.copyload.i to i64
  %i.ae = add i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  %spec.select.i.i = icmp ult i8 %i.ai, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i, !prof !9

bb.c:                                             ; preds = %.lr.ph.i
  store i8 %i.ai, ptr %i.ag, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = add i8 %i.aq, -1                        ; 2 uses
  %spec.select.i.i.1 = icmp ult i8 %i.ar, -2
  br i1 %spec.select.i.i.1, label %bb.d, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, !prof !9

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.as, %i.o
  br i1 %.not.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %i.a, align 8
  %.pre28 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre29 = add i64 %.pre28, %i.d                 ; 2 uses
  %.pre31 = inttoptr i64 %.pre29 to ptr
  br label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, %bb.a
  %.pre-phi32 = phi ptr [ %.pre31, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi30 = phi i64 [ %.pre29, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre28, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.04.0.copyload = load i8, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = lshr i32 %1, 4
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2            ; 3 uses
  store ptr %.pre-phi32, ptr %i.au, align 8
  %i.bc = add i64 %3, 3
  %i.bd = lshr i64 %i.bc, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bd, i64 2) ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = sub i64 %i.bg, %.pre-phi30
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = icmp ult i64 %i.bi, %.sroa.speculated.i.i.i
  br i1 %i.bj, label %bb.e, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %i.bk = sub i64 %i.bg, %.pre-phi
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = add nuw i64 %i.bm, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %0, i64 noundef %i.bn)
  %.pre.i.i.i.i = load ptr, ptr %i.au, align 8    ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre26 = load ptr, ptr %i.a, align 8
  %.pre27 = load ptr, ptr %i.aw, align 8
  %.pre33 = ptrtoint ptr %.pre26 to i64
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %.pre-phi34 = phi i64 [ %.pre33, %bb.e ], [ %.pre-phi, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %i.bo = phi ptr [ %.pre27, %bb.e ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %.pre-phi.i.i.i.i = phi i64 [ %.pre10.i.i.i.i, %bb.e ], [ %.pre-phi30, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %i.bp = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %.pre-phi32, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ] ; 7 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.sroa.speculated.i.i.i
  store ptr %i.bq, ptr %i.au, align 8
  %i.br = sub i64 %.pre-phi.i.i.i.i, %.pre-phi34  ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.bu = lshr i64 %i.br, 4
  %i.bv = and i64 %i.bu, 268435455
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bv
  store i16 %i.bt, ptr %i.bw, align 2
  %i.bx = load ptr, ptr %i.aw, align 8
  %.tr.i.i.i.i = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.by = shl i32 %.tr.i.i.i.i, 3
  %i.bz = add i32 %i.by, %i.bs
  %i.ca = lshr i32 %i.bz, 4
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.cc
  store i16 %i.bt, ptr %i.cd, align 2
  store i8 91, ptr %i.bp, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  store i8 0, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  %i.cg = trunc i64 %3 to i16
  store i16 %i.cg, ptr %i.cf, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 5 uses
  %i.ci = icmp ugt i64 %3, 1
  br i1 %i.ci, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i.i = shl nuw nsw i64 %3, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr align 4 %2, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.cj = icmp eq i64 %3, 1
  br i1 %i.cj, label %bb.h, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.h:                                             ; preds = %bb.g
  %i.ck = load i32, ptr %2, align 4
  store i32 %i.ck, ptr %i.ch, align 4
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i8 %4, ptr %i.cl, align 4
  store ptr %i.av, ptr %i.au, align 8
  %i.cm = load ptr, ptr %i.aw, align 8
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.az
  store i16 %i.bb, ptr %i.cn, align 2
  %i.co = load ptr, ptr %i.aw, align 8
  %i.cp = zext i16 %i.bb to i32
  %i.cq = shl nuw nsw i32 %i.cp, 3
  %i.cr = add i32 %i.cq, %1
  %i.cs = lshr i32 %i.cr, 4
  %i.ct = add nsw i32 %i.cs, -1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cu
  store i16 %i.bb, ptr %i.cv, align 2
  store i8 %.sroa.04.0.copyload, ptr %i.ce, align 1
  %i.cw = load i16, ptr %i.cf, align 2            ; 2 uses
  %i.cx = zext i16 %i.cw to i64
  %.idx.i15 = shl nuw nsw i64 %i.cx, 2            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i15
  %.not10.i16 = icmp eq i16 %i.cw, 0
  br i1 %.not10.i16, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_5PhiOpEEEvRKT_.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit
  %i.cz = add nsw i64 %.idx.i15, -4               ; 2 uses
  %i.da = and i64 %i.cz, 4
  %lcmp.mod40.not.not = icmp eq i64 %i.da, 0
  br i1 %lcmp.mod40.not.not, label %.lr.ph.i17.prol, label %.lr.ph.i17.prol.loopexit

.lr.ph.i17.prol:                                  ; preds = %.lr.ph.i17.preheader
  %.sroa.01.0.copyload.i19.prol = load i32, ptr %i.ch, align 4
  %i.db = load ptr, ptr %i.a, align 8
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = zext i32 %.sroa.01.0.copyload.i19.prol to i64
  %i.de = add i64 %i.dc, %i.dd
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1             ; 2 uses
  %.not.i.i.prol = icmp eq i8 %i.dh, -1
  br i1 %.not.i.i.prol, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, label %bb.i, !prof !5

bb.i:                                             ; preds = %.lr.ph.i17.prol
  %i.di = add nuw i8 %i.dh, 1
  store i8 %i.di, ptr %i.dg, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol: ; preds = %bb.i, %.lr.ph.i17.prol
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  br label %.lr.ph.i17.prol.loopexit

.lr.ph.i17.prol.loopexit:                         ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, %.lr.ph.i17.preheader
  %.011.i18.unr = phi ptr [ %i.ch, %.lr.ph.i17.preheader ], [ %i.dj, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol ]
  %i.dk = icmp eq i64 %i.cz, 0
  br i1 %i.dk, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_5PhiOpEEEvRKT_.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1
  %.011.i18 = phi ptr [ %i.ec, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1 ], [ %.011.i18.unr, %.lr.ph.i17.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i19 = load i32, ptr %.011.i18, align 4
  %i.dl = load ptr, ptr %i.a, align 8
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = zext i32 %.sroa.01.0.copyload.i19 to i64
  %i.do = add i64 %i.dm, %i.dn
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.dr, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.j, !prof !5

bb.j:                                             ; preds = %.lr.ph.i17
  %i.ds = add nuw i8 %i.dr, 1
  store i8 %i.ds, ptr %i.dq, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.j, %.lr.ph.i17
  %i.dt = getelementptr inbounds nuw i8, ptr %.011.i18, i64 4
  %.sroa.01.0.copyload.i19.1 = load i32, ptr %i.dt, align 4
  %i.du = load ptr, ptr %i.a, align 8
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = zext i32 %.sroa.01.0.copyload.i19.1 to i64
  %i.dx = add i64 %i.dv, %i.dw
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1             ; 2 uses
  %.not.i.i.1 = icmp eq i8 %i.ea, -1
  br i1 %.not.i.i.1, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, label %bb.k, !prof !5

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.eb = add nuw i8 %i.ea, 1
  store i8 %i.eb, ptr %i.dz, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1: ; preds = %bb.k, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.011.i18, i64 8 ; 2 uses
  %.not.i20.1 = icmp eq ptr %i.ec, %i.cy
  br i1 %.not.i20.1, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_5PhiOpEEEvRKT_.exit, label %.lr.ph.i17

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_5PhiOpEEEvRKT_.exit: ; preds = %.lr.ph.i17.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_5PhiOpEE3NewIJNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i1 noundef zeroext %2), !inline_history !486
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE14AddPredecessorEPNS2_5BlockESL_b(ptr noundef nonnull align 8 dereferenceable(1832) %i.a, ptr noundef %i.d, ptr noundef %1, i1 noundef zeroext false), !inline_history !487
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4              ; 5 uses
  %.not36 = icmp eq i32 %i.g, -1
  br i1 %.not36, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.l = load i64, ptr %i.k, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.l, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.o = load i64, ptr %i.n, align 8
  %sext.i.i.i = shl i64 %i.o, 48
  %i.p = ashr exact i64 %sext.i.i.i, 48
  %i.q = zext i32 %i.g to i64
  %i.r = xor i64 %i.p, %i.q
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.z, align 8 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i.i = phi i64 [ %i.w, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i8.i.i.i, %i.i ; 4 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1      ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.i
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, %i.g
  br i1 %i.an, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34.a, label %bb.f, !prof !9

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not44.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not44.i.i.i.i, label %bb.g, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !485

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit: ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8
  %i.av = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %i.aw = icmp eq i32 %i.av, %i.g
  br i1 %i.aw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34.a, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34.a: ; preds = %.lr.ph.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 %i.g, ptr %3, align 4
  %i.ax = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i8, ptr %i.ay, align 8, !range !8, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34.a
  call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not39 = icmp eq ptr %i.bc, %i.be
  br i1 %.not39, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.040 = phi ptr [ %i.bc, %.lr.ph ], [ %i.bq, %bb.i ] ; 3 uses
  %.sroa.0.0.copyload24 = load ptr, ptr %.040, align 8
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..0.sroa_idx, align 8 ; 2 uses
  %i.bg = load ptr, ptr %i.b, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = zext i32 %.sroa.4.0.copyload to i64
  %i.bl = add i64 %i.bj, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bn, align 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %4, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24, i64 16
  %.sroa.02.0.copyload.i = load i32, ptr %i.bo, align 4
  store i32 %.sroa.02.0.copyload.i, ptr %i.bf, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.sroa.0.0.copyload = load i8, ptr %i.bp, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.bg, i32 %.sroa.4.0.copyload, ptr nonnull %4, i64 2, i8 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bq = getelementptr inbounds nuw i8, ptr %.040, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.be
  br i1 %.not, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.i

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.i, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, %bb.c, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit, %bb.a
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE14AddPredecessorEPNS2_5BlockESL_b(ptr noundef nonnull align 8 dereferenceable(1832) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE9SplitEdgeEPNS2_5BlockESL_(ptr noundef nonnull align 8 dereferenceable(1832) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.g, align 8
  store ptr %1, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8
  store i8 2, ptr %i.d, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  switch i8 %i.l, label %bb.n [
    i8 2, label %bb.g
    i8 1, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  store i32 0, ptr %i.m, align 8
  store i8 0, ptr %i.k, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE9SplitEdgeEPNS2_5BlockESL_(ptr noundef nonnull align 8 dereferenceable(1832) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %2)
  br i1 %3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE9SplitEdgeEPNS2_5BlockESL_(ptr noundef nonnull align 8 dereferenceable(1832) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.n, ptr %i.o, align 8
  store ptr %1, ptr %i.a, align 8
  %i.p = load i32, ptr %i.m, align 8
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.m, align 8
  br label %bb.q

bb.j:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.s = load i32, ptr %i.r, align 4
  %.not32 = icmp eq i32 %i.s, -1
  br i1 %.not32, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE30CreateSinglePredecessorForLoopEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(1832) %0, ptr noundef nonnull %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.w = phi ptr [ %i.v, %bb.l ], [ %i.u, %bb.k ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.z, align 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = zext i16 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 3
  %i.aj = sub i32 %.sroa.0.0.copyload.i.i, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = zext i32 %i.aj to i64
  %i.ao = add i64 %i.an, %i.am
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.w, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.as, ptr %i.at, align 8
  store ptr %1, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 8
  br label %bb.q

bb.n:                                             ; preds = %bb.f, %bb.j
  br i1 %3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE9SplitEdgeEPNS2_5BlockESL_(ptr noundef nonnull align 8 dereferenceable(1832) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.b, ptr %i.ax, align 8
  store ptr %1, ptr %i.a, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8
  br label %bb.q

.critedge:                                        ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.bb, align 8
  store ptr %1, ptr %i.a, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.i, %.critedge, %bb.d, %bb.e, %bb.p, %bb.o, %bb.m
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_12FrameStateOpEJNS5_6VectorINS2_7OpIndexEEEbPKNS2_14FrameStateDataEEEESO_DpT0_:bb.a
  %i.r = sub i64 %i.n, %i.h
  %i.s = lshr exact i64 %i.r, 3
  %i.t = and i64 %i.s, 4294967295
  %i.u = add nuw i64 %i.t, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.u)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre10 = ptrtoint ptr %.pre to i64
  %.pre11 = sub i64 %.pre10.i.i.i.i, %.pre10
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi12 = phi i64 [ %.pre11, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 10 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi12 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi12, 4
  %i.ac = and i64 %i.ab, 268435455
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac
  store i16 %i.y, ptr %i.ad, align 2
  %i.ae = load ptr, ptr %i.z, align 8
  %.tr.i.i.i.i = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.af = shl i32 %.tr.i.i.i.i, 3
  %i.ag = add i32 %i.af, %i.x
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.aj
  store i16 %i.y, ptr %i.ak, align 2
  store i8 92, ptr %i.v, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.an = trunc i64 %2 to i16                     ; 2 uses
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.ap = icmp ugt i64 %2, 1
  br i1 %i.ap, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i.i = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 4 %1, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.aq = icmp eq i64 %2, 1
  br i1 %i.aq, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread: ; preds = %bb.d
  %i.ar = load i32, ptr %1, align 4
  store i32 %i.ar, ptr %i.ao, align 4
  %i.as = zext i1 %3 to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.as, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  br label %.lr.ph.i.preheader

_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit: ; preds = %bb.c, %bb.d
  %i.aw = zext i1 %3 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.ay, align 8
  %i.az = shl i64 %2, 2
  %.idx.i = and i64 %i.az, 262140
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.an, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12FrameStateOpEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit
  %i.bb = phi ptr [ %i.av, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread ], [ %i.ba, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %.011.i = phi ptr [ %i.bk, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ], [ %i.ao, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.bc = load ptr, ptr %i.f, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = zext i32 %.sroa.01.0.copyload.i to i64
  %i.bf = add i64 %i.bd, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.bi, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.e, !prof !5

bb.e:                                             ; preds = %.lr.ph.i
  %i.bj = add nuw i8 %i.bi, 1
  store i8 %i.bj, ptr %i.bh, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, %i.bb
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12FrameStateOpEEEvRKT_.exit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12FrameStateOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1796
  %.sroa.0.0.copyload.i = load i32, ptr %i.bl, align 4
  %i.bm = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.bn = lshr i64 %i.i, 4
  %i.bo = and i64 %i.bn, 268435455                ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 216
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 208 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %.not.i.i8 = icmp ugt i64 %i.bw, %i.bo
  br i1 %.not.i.i8, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.f, !prof !9

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12FrameStateOpEEEvRKT_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 200 ; 2 uses
  %i.by = lshr i64 %i.bo, 1
  %i.bz = add nuw nsw i64 %i.bo, 32
  %i.ca = add nuw nsw i64 %i.bz, %i.by
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 224
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.br, align 8
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.ch)
  %.pre.i.i = load ptr, ptr %i.br, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12FrameStateOpEEEvRKT_.exit, %bb.f
  %i.ci = phi ptr [ %.pre.i.i, %bb.f ], [ %i.bs, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12FrameStateOpEEEvRKT_.exit ]
  %i.cj = trunc i64 %i.i to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.bo
  store i32 %.sroa.0.0.copyload.i, ptr %i.ck, align 4
  ret i32 %i.cj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEE20BuildFrameStateInputEPNS2_14FrameStateData7BuilderEPNSY_8IteratorEPNSX_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 8 uses
  %i.b = load i8, ptr %i.a, align 1
  switch i8 %i.b, label %.loopexit [
    i8 0, label %bb.b
    i8 2, label %bb.m
    i8 3, label %bb.q
    i8 4, label %bb.t
    i8 5, label %bb.w
    i8 6, label %bb.y
    i8 1, label %bb.aa
    i8 7, label %bb.ac
    i8 8, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.c, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load i16, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store ptr %i.j, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.q, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = icmp ult i64 %i.v, 2
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.y = load i64, ptr %i.x, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.y, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 864
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ab = load i64, ptr %i.aa, align 8
  %sext.i.i.i = shl i64 %i.ab, 48
  %i.ac = ashr exact i64 %sext.i.i.i, 48
  %i.ad = zext i32 %i.p to i64                    ; 2 uses
  %i.ae = xor i64 %i.ac, %i.ad
  %i.af = zext i64 %i.ae to i128
  %i.ag = mul nuw nsw i128 %i.af, 8779197792823184629 ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64                 ; 2 uses
  %i.ak = lshr i64 %i.aj, 57
  %i.al = trunc nuw nsw i64 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.am, align 8 ; 2 uses
  %i.an = insertelement <16 x i8> poison, i8 %i.al, i64 0
  %i.ao = shufflevector <16 x i8> %i.an, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i.i = phi i64 [ %i.aj, %bb.d ], [ %i.bg, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.bf, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i8.i.i.i, %i.v ; 4 uses
  %i.ap = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ap, i32 0, i32 3, i32 1)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.ar = load <16 x i8>, ptr %i.aq, align 1      ; 2 uses
  %i.as = icmp eq <16 x i8> %i.ao, %i.ar
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.bc, %bb.f ], [ %i.at, %bb.e ] ; 3 uses
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %.sroa.6.0.i.i.i.i, %i.av
  %i.ax = and i64 %i.aw, %i.v
  %i.ay = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = icmp eq i32 %i.az, %i.p
  br i1 %i.ba, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread53.a, label %bb.f, !prof !9

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bb = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.bc = and i16 %i.bb, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.bd = icmp eq <16 x i8> %i.ar, splat (i8 -128)
  %i.be = bitcast <16 x i1> %i.bd to i16
  %.not44.i.i.i.i = icmp eq i16 %i.be, 0
  br i1 %.not44.i.i.i.i, label %bb.g, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bf = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.bg = add i64 %i.bf, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !1376

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit: ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8
  %i.bi = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %i.bj = icmp eq i32 %i.bi, %i.p
  br i1 %i.bj, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit._crit_edge, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit._crit_edge: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit
  %.pre = zext i32 %i.p to i64
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread53.a

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread53.a: ; preds = %.lr.ph.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit._crit_edge
  %.sroa.0.0.insert.ext.i.pre-phi = phi i64 [ %.pre, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit._crit_edge ], [ %i.ad, %.lr.ph.i.i.i.i ]
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i.pre-phi, 4294967296
  tail call void @_ZN2v88internal8compiler10turboshaft27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEE22BuildMaybeElidedStringEPNS2_14FrameStateData7BuilderENSX_16ElidedStringPartEPNSX_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef %1, i64 %.sroa.0.0.insert.insert.i, ptr noundef %3)
  br label %.loopexit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.c, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit
  %i.bk = lshr i32 %i.p, 4
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.bp, -1
  br i1 %.not.i, label %bb.h, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexES10_i.exit

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bl ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.bt = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.bt, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i: ; preds = %bb.h
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i, i64 16
  %.sroa.02.0.copyload.i10.i = load i32, ptr %i.bu, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexES10_i.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexES10_i.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i
  %.sroa.014.0.i = phi i32 [ %i.bp, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread ], [ %.sroa.02.0.copyload.i10.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = icmp eq ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.j, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i, !prof !5

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexES10_i.exit
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(385) %1)
  %.pre.i.i.i = load ptr, ptr %i.bv, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i: ; preds = %bb.j, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexES10_i.exit
  %i.ca = phi ptr [ %.pre.i.i.i, %bb.j ], [ %i.bw, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexES10_i.exit ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store ptr %i.cb, ptr %i.bv, align 8
  store i8 0, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = icmp eq ptr %i.cd, %i.cf
  br i1 %i.cg, label %bb.k, label %_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE9push_backES3_.exit.i, !prof !5

bb.k:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ch)
  %.pre.i.i4.i = load ptr, ptr %i.cc, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE9push_backES3_.exit.i

_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE9push_backES3_.exit.i: ; preds = %bb.k, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i
  %i.ci = phi ptr [ %.pre.i.i4.i, %bb.k ], [ %i.cd, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store ptr %i.cj, ptr %i.cc, align 8
  store i16 %i.i, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = icmp eq ptr %i.cl, %i.cn
  br i1 %i.co, label %bb.l, label %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder8AddInputENS0_11MachineTypeENS2_7OpIndexE.exit, !prof !5

bb.l:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE9push_backES3_.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %i.cp)
  %.pre.i.i5.i = load ptr, ptr %i.ck, align 8
  br label %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder8AddInputENS0_11MachineTypeENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder8AddInputENS0_11MachineTypeENS2_7OpIndexE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE9push_backES3_.exit.i, %bb.l
  %i.cq = phi ptr [ %.pre.i.i5.i, %bb.l ], [ %i.cl, %_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE9push_backES3_.exit.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store ptr %i.cr, ptr %i.ck, align 8
  store i32 %.sroa.014.0.i, ptr %i.cq, align 4
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.cs, ptr %2, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = add i64 %i.cu, -1
  store i64 %i.cv, ptr %i.ct, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8            ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.da = load i32, ptr %i.cz, align 4            ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.db, ptr %i.cw, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = add i64 %i.dd, -2
  store i64 %i.de, ptr %i.dc, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = icmp eq ptr %i.dg, %i.di
  br i1 %i.dj, label %bb.n, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i27, !prof !5

bb.n:                                             ; preds = %bb.m
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(385) %1)
  %.pre.i.i.i28 = load ptr, ptr %i.df, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i27

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i27: ; preds = %bb.n, %bb.m
  %i.dk = phi ptr [ %.pre.i.i.i28, %bb.n ], [ %i.dg, %bb.m ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  store ptr %i.dl, ptr %i.df, align 8
  store i8 2, ptr %i.dk, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 6 uses
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = icmp eq ptr %i.do, %i.dq
  br i1 %i.dr, label %bb.o, label %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit.i, !prof !5

bb.o:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i27
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %i.dm)
  %.pre.i.i2.i = load ptr, ptr %i.dn, align 8
  br label %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit.i

_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit.i: ; preds = %bb.o, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i27
  %i.ds = phi ptr [ %.pre.i.i2.i, %bb.o ], [ %i.do, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i27 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store ptr %i.dt, ptr %i.dn, align 8
  store i32 %i.cy, ptr %i.ds, align 4
  %i.du = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.dv = load ptr, ptr %i.dp, align 8
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %bb.p, label %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder23AddDematerializedObjectEjj.exit, !prof !5

bb.p:                                             ; preds = %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %i.dm)
  %.pre.i.i3.i = load ptr, ptr %i.dn, align 8
  br label %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder23AddDematerializedObjectEjj.exit

_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder23AddDematerializedObjectEjj.exit: ; preds = %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit.i, %bb.p
  %i.dx = phi ptr [ %.pre.i.i3.i, %bb.p ], [ %i.du, %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store ptr %i.dy, ptr %i.dn, align 8
  store i32 %i.da, ptr %i.dx, align 4
  %.not = icmp eq i32 %i.da, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder23AddDematerializedObjectEjj.exit, %.lr.ph
  %.056 = phi i32 [ %i.dz, %.lr.ph ], [ 0, %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder23AddDematerializedObjectEjj.exit ]
  tail call void @_ZN2v88internal8compiler10turboshaft27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEE20BuildFrameStateInputEPNS2_14FrameStateData7BuilderEPNSY_8IteratorEPNSX_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3)
  %i.dz = add nuw i32 %.056, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.dz, %i.da
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1377

bb.q:                                             ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.ea, ptr %2, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = add i64 %i.ec, -1
  store i64 %i.ed, ptr %i.eb, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store ptr %i.eh, ptr %i.ee, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = add i64 %i.ej, -1
  store i64 %i.ek, ptr %i.ei, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = icmp eq ptr %i.em, %i.eo
  br i1 %i.ep, label %bb.r, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i29, !prof !5

bb.r:                                             ; preds = %bb.q
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(385) %1)
  %.pre.i.i.i31 = load ptr, ptr %i.el, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i29

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i29: ; preds = %bb.r, %bb.q
  %i.eq = phi ptr [ %.pre.i.i.i31, %bb.r ], [ %i.em, %bb.q ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store ptr %i.er, ptr %i.el, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder22AllocateFrameStateDataERKNS1_14FrameStateInfoEPNS0_4ZoneE:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.x
  br i1 %.not.i.i.i.i, label %_ZN2v88internal4Zone11CloneVectorINS0_11MachineTypeEA_S3_EENS_4base6VectorINSt12remove_constIT_E4typeEEENS6_IS8_EE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1381

_ZN2v88internal4Zone11CloneVectorINS0_11MachineTypeEA_S3_EENS_4base6VectorINSt12remove_constIT_E4typeEEENS6_IS8_EE.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN2v88internal4Zone13AllocateArrayINS0_11MachineTypeEA_S3_EEPT_m.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = ashr exact i64 %i.bm, 2                 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 4611686018427387903
  br i1 %i.bo, label %bb.l, label %bb.k, !prof !9

bb.k:                                             ; preds = %_ZN2v88internal4Zone11CloneVectorINS0_11MachineTypeEA_S3_EENS_4base6VectorINSt12remove_constIT_E4typeEEENS6_IS8_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #25
  unreachable

bb.l:                                             ; preds = %_ZN2v88internal4Zone11CloneVectorINS0_11MachineTypeEA_S3_EENS_4base6VectorINSt12remove_constIT_E4typeEEENS6_IS8_EE.exit
  %i.bp = add nuw i64 %i.bm, 4
  %i.bq = and i64 %i.bp, -8                       ; 3 uses
  %i.br = load i64, ptr %i.i, align 8
  %i.bs = load i64, ptr %i.k, align 8             ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp ugt i64 %i.bq, %i.bt
  br i1 %i.bu, label %bb.m, label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i, !prof !5

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.bq) #24
  %.pre.i.i.i19 = load i64, ptr %i.k, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i: ; preds = %bb.m, %bb.l
  %i.bv = phi i64 [ %.pre.i.i.i19, %bb.m ], [ %i.bs, %bb.l ] ; 2 uses
  %i.bw = inttoptr i64 %i.bv to ptr               ; 3 uses
  %i.bx = add i64 %i.bv, %i.bq
  store i64 %i.bx, ptr %i.k, align 8
  %i.by = icmp samesign ugt i64 %i.bn, 1
  br i1 %i.by, label %bb.n, label %bb.o, !prof !9

bb.n:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bw, ptr align 4 %i.bh, i64 %i.bm, i1 false)
  br label %_ZN2v88internal4Zone11CloneVectorIjA_jEENS_4base6VectorINSt12remove_constIT_E4typeEEENS5_IS7_EE.exit

bb.o:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i
  %i.bz = icmp eq i64 %i.bm, 4
  br i1 %i.bz, label %bb.p, label %_ZN2v88internal4Zone11CloneVectorIjA_jEENS_4base6VectorINSt12remove_constIT_E4typeEEENS5_IS7_EE.exit

bb.p:                                             ; preds = %bb.o
  %i.ca = load i32, ptr %i.bh, align 4
  store i32 %i.ca, ptr %i.bw, align 4
  br label %_ZN2v88internal4Zone11CloneVectorIjA_jEENS_4base6VectorINSt12remove_constIT_E4typeEEENS5_IS7_EE.exit

_ZN2v88internal4Zone11CloneVectorIjA_jEENS_4base6VectorINSt12remove_constIT_E4typeEEENS5_IS7_EE.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.cb = load i64, ptr %i.i, align 8
  %i.cc = load i64, ptr %i.k, align 8             ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp ult i64 %i.cd, 56
  br i1 %i.ce, label %bb.q, label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft14FrameStateDataEJS5_EEEPT_DpOT0_.exit, !prof !5

bb.q:                                             ; preds = %_ZN2v88internal4Zone11CloneVectorIjA_jEENS_4base6VectorINSt12remove_constIT_E4typeEEENS5_IS7_EE.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 56) #24
  %.pre.i.i = load i64, ptr %i.k, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft14FrameStateDataEJS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft14FrameStateDataEJS5_EEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal4Zone11CloneVectorIjA_jEENS_4base6VectorINSt12remove_constIT_E4typeEEENS5_IS7_EE.exit, %bb.q
  %i.cf = phi i64 [ %.pre.i.i, %bb.q ], [ %i.cc, %_ZN2v88internal4Zone11CloneVectorIjA_jEENS_4base6VectorINSt12remove_constIT_E4typeEEENS5_IS7_EE.exit ] ; 2 uses
  %i.cg = inttoptr i64 %i.cf to ptr               ; 8 uses
  %i.ch = add i64 %i.cf, 56
  store i64 %i.ch, ptr %i.k, align 8
  store ptr %1, ptr %i.cg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %i.ak, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i64 %i.ab, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store ptr %i.bw, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  store i64 %i.bn, ptr %.sroa.9.0..sroa_idx, align 8
  ret ptr %i.cg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEEixIS7_S15_Li0EEEDTclsrT0_5valueclL_ZSt9addressofIS1E_EPT_RS1K_EclL_ZSt7declvalIRS1E_EDTcl9__declvalIS1K_ELi0EEEvEEEEERS1D_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey.2353", align 8 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !noalias !1382 ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !1389
  %.not.i.i.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.c, align 8, !noalias !1389
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE22find_or_prepare_insertIS7_EES1C_INS1G_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4, !noalias !1389
  %i.g = load i32, ptr %i.f, align 8, !noalias !1389
  %i.h = icmp eq i32 %i.g, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.h, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setIS15_S18_S1A_S1F_E14const_iteratorEEE5valueEiE4typeELi0EEES1C_INS1L_8iteratorEbERS1D_DpOT1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !1389
  store ptr %0, ptr %2, align 8, !noalias !1389
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.i, align 8, !noalias !1389
  %i.j = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #24, !noalias !1389
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !1389
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !1389
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i, i64 %i.j
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE22find_or_prepare_insertIS7_EES1C_INS1G_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !1394 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !1394
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !1394
  %sext.i = shl i64 %i.o, 48
  %i.p = ashr exact i64 %sext.i, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4, !noalias !1394 ; 2 uses
  %i.q = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.r = xor i64 %i.p, %i.q
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64                   ; 3 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.z, align 8, !noalias !1394 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.w, %bb.f ], [ %i.az, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1), !noalias !1394
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !noalias !1394 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.ag, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.ap, %.critedge.i ], [ %i.ag, %bb.g ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.7.0.i, %i.ai
  %i.ak = and i64 %i.aj, %i.a
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noalias !1394
  %i.an = icmp eq i32 %i.am, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.an, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setIS15_S18_S1A_S1F_E14const_iteratorEEE5valueEiE4typeELi0EEES1C_INS1L_8iteratorEbERS1D_DpOT1_.exit, label %.critedge.i, !prof !9

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ao = add i16 %.sroa.035.065.i, -1
  %i.ap = and i16 %i.ao, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.aq = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.ar, 0
  br i1 %.not57.i, label %bb.h, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE22find_or_prepare_insertIS7_EES1C_INS1G_8iteratorEbERKT_.exit.i.i.thread7, !prof !5

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE22find_or_prepare_insertIS7_EES1C_INS1G_8iteratorEbERKT_.exit.i.i.thread7: ; preds = %.critedge19.i
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.7.0.i, %i.at
  %i.av = and i64 %i.au, %i.a
  %i.aw = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.w, i64 %i.av, i64 %.sroa.15.0.i) #24, !noalias !1394
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.z, align 8, !noalias !1394
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.aw
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE22find_or_prepare_insertIS7_EES1C_INS1G_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge19.i
  %i.ay = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.7.0.i
  br label %bb.g

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE22find_or_prepare_insertIS7_EES1C_INS1G_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE22find_or_prepare_insertIS7_EES1C_INS1G_8iteratorEbERKT_.exit.i.i.thread7
  %.sroa.5.03 = phi ptr [ %i.ax, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE22find_or_prepare_insertIS7_EES1C_INS1G_8iteratorEbERKT_.exit.i.i.thread7 ], [ %i.e, %bb.c ], [ %i.l, %bb.e ] ; 3 uses
  %i.ba = load i32, ptr %1, align 4, !noalias !1397
  store i32 %i.ba, ptr %.sroa.5.03, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.5.03, i64 8
  store ptr null, ptr %i.bb, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setIS15_S18_S1A_S1F_E14const_iteratorEEE5valueEiE4typeELi0EEES1C_INS1L_8iteratorEbERS1D_DpOT1_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setIS15_S18_S1A_S1F_E14const_iteratorEEE5valueEiE4typeELi0EEES1C_INS1L_8iteratorEbERS1D_DpOT1_.exit: ; preds = %.lr.ph.i, %bb.d, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE22find_or_prepare_insertIS7_EES1C_INS1G_8iteratorEbERKT_.exit.i.i.thread
  %.sroa.5.04 = phi ptr [ %i.f, %bb.d ], [ %.sroa.5.03, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorES8_S9_SA_SB_SC_SD_SE_SF_SH_SJ_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12DeduplicatorEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S14_EEEE22find_or_prepare_insertIS7_EES1C_INS1G_8iteratorEbERKT_.exit.i.i.thread ], [ %i.al, %.lr.ph.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.5.04, i64 8
  ret ptr %i.bc
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !200
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.b, align 4
  %i.c = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.d = xor i64 %1, %i.c
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw nsw i128 %i.e, 8779197792823184629 ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS3_24JSGenericLoweringReducerINS3_23DataViewLoweringReducerINS3_22MachineLoweringReducerINS3_26FastApiCallLoweringReducerINS3_15VariableReducerINS3_21SelectLoweringReducerINS3_26MachineOptimizationReducerINS3_21EmitProjectionReducerINS3_21ValueNumberingReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS3_12GraphVisitorES4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEEaSERKS10_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %.not = icmp ult i64 %i.i, %i.n
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not24 = icmp eq ptr %i.k, %i.b
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %i.b, i64 %i.n, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.m                       ; 5 uses
  %.not23 = icmp eq ptr %i.v, %i.b
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8                ; 3 uses
  %i.z = icmp sgt i64 %i.x, -1
  br i1 %i.z, label %bb.i, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = icmp ugt i64 %i.x, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS4_24JSGenericLoweringReducerINS4_23DataViewLoweringReducerINS4_22MachineLoweringReducerINS4_26FastApiCallLoweringReducerINS4_15VariableReducerINS4_21SelectLoweringReducerINS4_26MachineOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS4_12GraphVisitorES5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEA_S10_EEPT_m.exit, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 noundef %i.x) #24
  %.pre.i.i = load i64, ptr %i.ac, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS4_24JSGenericLoweringReducerINS4_23DataViewLoweringReducerINS4_22MachineLoweringReducerINS4_26FastApiCallLoweringReducerINS4_15VariableReducerINS4_21SelectLoweringReducerINS4_26MachineOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS4_12GraphVisitorES5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEA_S10_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS4_24JSGenericLoweringReducerINS4_23DataViewLoweringReducerINS4_22MachineLoweringReducerINS4_26FastApiCallLoweringReducerINS4_15VariableReducerINS4_21SelectLoweringReducerINS4_26MachineOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS4_12GraphVisitorES5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEA_S10_EEPT_m.exit: ; preds = %bb.i, %bb.j
  %i.ag = phi i64 [ %.pre.i.i, %bb.j ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = add i64 %i.ag, %i.x
  store i64 %i.ai, ptr %i.ac, align 8
  store ptr %i.ah, ptr %i.e, align 8
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ak = load ptr, ptr %i.j, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ah, ptr nonnull align 4 %i.aj, i64 %i.an, i1 false)
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  store ptr null, ptr %i.e, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS4_24JSGenericLoweringReducerINS4_23DataViewLoweringReducerINS4_22MachineLoweringReducerINS4_26FastApiCallLoweringReducerINS4_15VariableReducerINS4_21SelectLoweringReducerINS4_26MachineOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS4_12GraphVisitorES5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEA_S10_EEPT_m.exit
  %i.ao = phi ptr [ null, %bb.k ], [ %.pre, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS4_24JSGenericLoweringReducerINS4_23DataViewLoweringReducerINS4_22MachineLoweringReducerINS4_26FastApiCallLoweringReducerINS4_15VariableReducerINS4_21SelectLoweringReducerINS4_26MachineOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS4_12GraphVisitorES5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEA_S10_EEPT_m.exit ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.x
  store ptr %i.ap, ptr %i.c, align 8
  %i.aq = load ptr, ptr %i.j, align 8
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  store ptr %i.av, ptr %i.t, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEE22BuildMaybeElidedStringEPNS2_14FrameStateData7BuilderENSX_16ElidedStringPartEPNSX_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::turboshaft::V.667", align 4 ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32  ; 3 uses
  %i.a = and i64 %2, 1095216660480
  %i.b = icmp eq i64 %i.a, 4294967296
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %i.q, %bb.c ], [ 0, %bb.b ]
  %.0619.i = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i8, ptr %i.m, align 4
  %.not.i.i = icmp eq i8 %i.n, 1
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.l, align 4
  %i.o = icmp eq i32 %.sroa.0.0.copyload.i.i.i, %.sroa.0.0.extract.trunc
  %.0.i.i = select i1 %.not.i.i, i1 %i.o, i1 false
  br i1 %.0.i.i, label %_ZN2v88internal8compiler10turboshaft27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12Deduplicator30GetDuplicatedIdForElidedStringENSX_16ElidedStringPartE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = add i32 %.0619.i, 1                      ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = icmp ugt i64 %i.j, %i.q
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1398

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = trunc nuw i64 %i.j to i32
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp ult ptr %i.d, %i.u
  br i1 %i.v, label %bb.g, label %bb.d, !prof !9

bb.d:                                             ; preds = %._crit_edge.i
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.w, %i.h
  %i.y = ashr exact i64 %i.x, 3
  %i.z = add nsw i64 %i.y, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS3_24JSGenericLoweringReducerINS3_23DataViewLoweringReducerINS3_22MachineLoweringReducerINS3_26FastApiCallLoweringReducerINS3_15VariableReducerINS3_21SelectLoweringReducerINS3_26MachineOptimizationReducerINS3_21EmitProjectionReducerINS3_21ValueNumberingReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS3_12GraphVisitorES4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.z)
  %.pre.i.i = load ptr, ptr %i.c, align 8
  br label %bb.g

_ZN2v88internal8compiler10turboshaft27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12Deduplicator30GetDuplicatedIdForElidedStringENSX_16ElidedStringPartE.exit: ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12Deduplicator30GetDuplicatedIdForElidedStringENSX_16ElidedStringPartE.exit
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(385) %1)
  %.pre.i.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12Deduplicator30GetDuplicatedIdForElidedStringENSX_16ElidedStringPartE.exit
  %i.af = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.ab, %_ZN2v88internal8compiler10turboshaft27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEE12Deduplicator30GetDuplicatedIdForElidedStringENSX_16ElidedStringPartE.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.aa, align 8
  store i8 8, ptr %i.af, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder38AddDematerializedStringConcatReferenceEj.exit, !prof !5

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %i.am)
  %.pre.i.i1.i = load ptr, ptr %i.ah, align 8
  br label %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder38AddDematerializedStringConcatReferenceEj.exit

_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder38AddDematerializedStringConcatReferenceEj.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i, %bb.f
  %i.an = phi ptr [ %.pre.i.i1.i, %bb.f ], [ %i.ai, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store ptr %i.ao, ptr %i.ah, align 8
  store i32 %.0619.i, ptr %i.an, align 4
  br label %bb.n

bb.g:                                             ; preds = %._crit_edge.i, %bb.d
  %i.ap = phi ptr [ %i.d, %._crit_edge.i ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.aq, ptr %i.c, align 8
  store i64 %2, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.h, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i17, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(385) %1)
  %.pre.i.i.i19 = load ptr, ptr %i.ar, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i17

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i17: ; preds = %bb.h, %bb.g
  %i.aw = phi ptr [ %.pre.i.i.i19, %bb.h ], [ %i.as, %bb.g ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ax, ptr %i.ar, align 8
  store i8 7, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder29AddDematerializedStringConcatEj.exit, !prof !5

bb.i:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i17
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bd)
  %.pre.i.i1.i18 = load ptr, ptr %i.ay, align 8
  br label %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder29AddDematerializedStringConcatEj.exit

_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder29AddDematerializedStringConcatEj.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i17, %bb.i
  %i.be = phi ptr [ %.pre.i.i1.i18, %bb.i ], [ %i.az, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i17 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store ptr %i.bf, ptr %i.ay, align 8
  store i32 %i.s, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 848
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 %.sroa.0.0.extract.trunc, ptr %4, align 4
  %i.bh = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE2atIS9_S18_EEDTclsrT0_5valueclL_ZSt9addressofIS1G_EPT_RS1M_EclL_ZSt7declvalIRS1G_EDTcl9__declvalIS1M_ELi0EEEvEEEEERS1F_(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 2 uses
  %.sroa.05.0.copyload = load i64, ptr %i.bh, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZN2v88internal8compiler10turboshaft27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEE22BuildMaybeElidedStringEPNS2_14FrameStateData7BuilderENSX_16ElidedStringPartEPNSX_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull %1, i64 %.sroa.05.0.copyload, ptr noundef nonnull %3)
  call void @_ZN2v88internal8compiler10turboshaft27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEE22BuildMaybeElidedStringEPNS2_14FrameStateData7BuilderENSX_16ElidedStringPartEPNSX_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull %1, i64 %.sroa.4.0.copyload, ptr noundef nonnull %3)
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %bb.k, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i21, !prof !5

bb.k:                                             ; preds = %bb.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(385) %1)
  %.pre.i.i.i22 = load ptr, ptr %i.bi, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i21

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i21: ; preds = %bb.k, %bb.j
  %i.bn = phi ptr [ %.pre.i.i.i22, %bb.k ], [ %i.bj, %bb.j ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.bo, ptr %i.bi, align 8
  store i8 0, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %bb.l, label %_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE9push_backES3_.exit.i, !prof !5

bb.l:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i21
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bu)
  %.pre.i.i4.i = load ptr, ptr %i.bp, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE9push_backES3_.exit.i

_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE9push_backES3_.exit.i: ; preds = %bb.l, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i21
  %i.bv = phi ptr [ %.pre.i.i4.i, %bb.l ], [ %i.bq, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE9push_backES6_.exit.i21 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store ptr %i.bw, ptr %i.bp, align 8
  store i16 2569, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = icmp eq ptr %i.by, %i.ca
  br i1 %i.cb, label %bb.m, label %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder8AddInputENS0_11MachineTypeENS2_7OpIndexE.exit, !prof !5

bb.m:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE9push_backES3_.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %i.cc)
  %.pre.i.i5.i = load ptr, ptr %i.bx, align 8
  br label %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder8AddInputENS0_11MachineTypeENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder8AddInputENS0_11MachineTypeENS2_7OpIndexE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE9push_backES3_.exit.i, %bb.m
  %i.cd = phi ptr [ %.pre.i.i5.i, %bb.m ], [ %i.by, %_ZN2v84base11SmallVectorINS_8internal11MachineTypeELm32ESaIS3_EE9push_backES3_.exit.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store ptr %i.ce, ptr %i.bx, align 8
  store i32 %.sroa.0.0.extract.trunc, ptr %i.cd, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder38AddDematerializedStringConcatReferenceEj.exit, %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder29AddDematerializedStringConcatEj.exit, %_ZN2v88internal8compiler10turboshaft14FrameStateData7Builder8AddInputENS0_11MachineTypeENS2_7OpIndexE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(16) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE2atIS9_S18_EEDTclsrT0_5valueclL_ZSt9addressofIS1G_EPT_RS1M_EclL_ZSt7declvalIRS1G_EDTcl9__declvalIS1M_ELi0EEEvEEEEERS1F_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE4findIS9_EENS1I_8iteratorERS1F_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4
  %i.f = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 4
  %i.g = icmp eq i32 %i.f, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.g, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE4findIS9_EENS1I_8iteratorERS1F_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %sext.i = shl i64 %i.j, 48
  %i.k = ashr exact i64 %sext.i, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4 ; 2 uses
  %i.l = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.m = xor i64 %i.k, %i.l
  %i.n = zext i64 %i.m to i128
  %i.o = mul nuw nsw i128 %i.n, 8779197792823184629 ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64                   ; 2 uses
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.u, align 8 ; 2 uses
  %i.v = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.r, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.a        ; 4 uses
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.z = load <16 x i8>, ptr %i.y, align 1        ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.w, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.al, %bb.f ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.6.0.i.i, %i.ad
  %i.af = and i64 %i.ae, %i.a                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp eq i32 %i.ah, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ai, label %.thread33.i.i, label %bb.f, !prof !9

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE10find_largeIS9_EENS1I_8iteratorERS1F_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ak = add i16 %.sroa.017.047.i.i, -1
  %i.al = and i16 %i.ak, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.am = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.an = bitcast <16 x i1> %i.am to i16
  %.not44.i.i = icmp eq i16 %i.an, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE10find_largeIS9_EENS1I_8iteratorERS1F_m.exit.i, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ao = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !1376

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE10find_largeIS9_EENS1I_8iteratorERS1F_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.aj, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ag, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE4findIS9_EENS1I_8iteratorERS1F_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE4findIS9_EENS1I_8iteratorERS1F_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE10find_largeIS9_EENS1I_8iteratorERS1F_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE10find_largeIS9_EENS1I_8iteratorERS1F_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null                 ; 2 uses
  %i.as = icmp eq ptr %i.aq, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.ar, %i.as
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE4findIS9_EENS1I_8iteratorERS1F_.exit
  %i.at = load i8, ptr %i.aq, align 1
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE4findIS9_EENS1I_8iteratorERS1F_.exit
  br i1 %i.as, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8iteratorES1L_.exit, !prof !5

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31) #24
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8iteratorES1L_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8iteratorES1L_.exit
  tail call void @_ZN4absl13base_internal18ThrowStdOutOfRangeEPKc(ptr noundef nonnull @.str.29) #25
  unreachable

bb.l:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8iteratorES1L_.exit
  %i.av = load i8, ptr %i.aq, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8iteratordeEv.exit, label %bb.m, !prof !9

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35) #24
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8iteratordeEv.exit: ; preds = %bb.l
  %i.ax = extractvalue { ptr, ptr } %.pn.i, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  ret ptr %i.ay
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS3_24JSGenericLoweringReducerINS3_23DataViewLoweringReducerINS3_22MachineLoweringReducerINS3_26FastApiCallLoweringReducerINS3_15VariableReducerINS3_21SelectLoweringReducerINS3_26MachineOptimizationReducerINS3_21EmitProjectionReducerINS3_21ValueNumberingReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS3_12GraphVisitorES4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS4_24JSGenericLoweringReducerINS4_23DataViewLoweringReducerINS4_22MachineLoweringReducerINS4_26FastApiCallLoweringReducerINS4_15VariableReducerINS4_21SelectLoweringReducerINS4_26MachineOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS4_12GraphVisitorES5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEA_S10_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #24
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS4_24JSGenericLoweringReducerINS4_23DataViewLoweringReducerINS4_22MachineLoweringReducerINS4_26FastApiCallLoweringReducerINS4_15VariableReducerINS4_21SelectLoweringReducerINS4_26MachineOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS4_12GraphVisitorES5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEA_S10_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS4_24JSGenericLoweringReducerINS4_23DataViewLoweringReducerINS4_22MachineLoweringReducerINS4_26FastApiCallLoweringReducerINS4_15VariableReducerINS4_21SelectLoweringReducerINS4_26MachineOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS4_12GraphVisitorES5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEA_S10_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS4_24JSGenericLoweringReducerINS4_23DataViewLoweringReducerINS4_22MachineLoweringReducerINS4_26FastApiCallLoweringReducerINS4_15VariableReducerINS4_21SelectLoweringReducerINS4_26MachineOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS4_12GraphVisitorES5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEA_S10_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS4_24JSGenericLoweringReducerINS4_23DataViewLoweringReducerINS4_22MachineLoweringReducerINS4_26FastApiCallLoweringReducerINS4_15VariableReducerINS4_21SelectLoweringReducerINS4_26MachineOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS4_12GraphVisitorES5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEA_S10_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft27StringEscapeAnalysisReducerINS4_24JSGenericLoweringReducerINS4_23DataViewLoweringReducerINS4_22MachineLoweringReducerINS4_26FastApiCallLoweringReducerINS4_15VariableReducerINS4_21SelectLoweringReducerINS4_26MachineOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS4_12GraphVisitorES5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartEA_S10_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl i64 %i.g, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false) ; 2 uses
  %i.j = sub nuw nsw i64 64, %i.i
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = icmp eq i64 %i.i, 1
  br i1 %i.l, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #26 ; 5 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.o, %i.f                       ; 4 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.b, i64 %i.p, i1 false)
  br label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft14FrameStateData5InstrES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.p, 1
  br i1 %i.r, label %bb.f, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft14FrameStateData5InstrES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.b, align 1
  store i8 %i.s, ptr %i.n, align 1
  br label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft14FrameStateData5InstrES6_ET0_T_S8_S7_.exit

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft14FrameStateData5InstrES6_ET0_T_S8_S7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft14FrameStateData5InstrELm32ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.n, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store ptr %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store ptr %i.u, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE26ReduceFindOrderedHashEntryENS2_1VINS0_6ObjectEEENS2_7OpIndexENS2_22FindOrderedHashEntryOp4KindE:bb.a
  %spec.select.i.i.i.i.i317.prol = icmp ult i8 %i.azd, -2
  br i1 %spec.select.i.i.i.i.i317.prol, label %bb.ea, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318.prol, !prof !9

bb.ea:                                            ; preds = %.lr.ph.i.i.i.i314.prol
  store i8 %i.azd, ptr %i.azb, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318.prol: ; preds = %bb.ea, %.lr.ph.i.i.i.i314.prol
  %i.aze = getelementptr inbounds nuw i8, ptr %i.ayp, i64 4
  br label %.lr.ph.i.i.i.i314.prol.loopexit

.lr.ph.i.i.i.i314.prol.loopexit:                  ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318.prol, %.lr.ph.i.i.i.i314.preheader
  %.011.i.i.i.i315.unr = phi ptr [ %i.ayp, %.lr.ph.i.i.i.i314.preheader ], [ %i.aze, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318.prol ]
  %i.azf = icmp eq i64 %i.ayu, 0
  br i1 %i.azf, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i.i320, label %.lr.ph.i.i.i.i314

.lr.ph.i.i.i.i314:                                ; preds = %.lr.ph.i.i.i.i314.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318.1
  %.011.i.i.i.i315 = phi ptr [ %i.azx, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318.1 ], [ %.011.i.i.i.i315.unr, %.lr.ph.i.i.i.i314.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i316 = load i32, ptr %.011.i.i.i.i315, align 4
  %i.azg = load ptr, ptr %i.axt, align 8
  %i.azh = ptrtoint ptr %i.azg to i64
  %i.azi = zext i32 %.sroa.01.0.copyload.i.i.i.i316 to i64
  %i.azj = add i64 %i.azh, %i.azi
  %i.azk = inttoptr i64 %i.azj to ptr
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 1 ; 2 uses
  %i.azm = load i8, ptr %i.azl, align 1
  %i.azn = add i8 %i.azm, -1                      ; 2 uses
  %spec.select.i.i.i.i.i317 = icmp ult i8 %i.azn, -2
  br i1 %spec.select.i.i.i.i.i317, label %bb.eb, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318, !prof !9

bb.eb:                                            ; preds = %.lr.ph.i.i.i.i314
  store i8 %i.azn, ptr %i.azl, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318: ; preds = %bb.eb, %.lr.ph.i.i.i.i314
  %i.azo = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i315, i64 4
  %.sroa.01.0.copyload.i.i.i.i316.1 = load i32, ptr %i.azo, align 4
  %i.azp = load ptr, ptr %i.axt, align 8
  %i.azq = ptrtoint ptr %i.azp to i64
  %i.azr = zext i32 %.sroa.01.0.copyload.i.i.i.i316.1 to i64
  %i.azs = add i64 %i.azq, %i.azr
  %i.azt = inttoptr i64 %i.azs to ptr
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 1 ; 2 uses
  %i.azv = load i8, ptr %i.azu, align 1
  %i.azw = add i8 %i.azv, -1                      ; 2 uses
  %spec.select.i.i.i.i.i317.1 = icmp ult i8 %i.azw, -2
  br i1 %spec.select.i.i.i.i.i317.1, label %bb.ec, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318.1, !prof !9

bb.ec:                                            ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318
  store i8 %i.azw, ptr %i.azu, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318.1: ; preds = %bb.ec, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318
  %i.azx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i315, i64 8 ; 2 uses
  %.not.i.i.i.i319.1 = icmp eq ptr %i.azx, %i.ayt
  br i1 %.not.i.i.i.i319.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i.i320, label %.lr.ph.i.i.i.i314

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i.i320: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i318.1, %.lr.ph.i.i.i.i314.prol.loopexit
  %.pre.i.i.i321 = load ptr, ptr %i.axy, align 8
  %.pre8.i.i.i322 = load ptr, ptr %i.axq, align 8 ; 2 uses
  %.pre9.i.i.i323 = load ptr, ptr %i.axt, align 8
  %.pre10.i.i.i324 = ptrtoint ptr %.pre8.i.i.i322 to i64
  %.pre11.i.i.i325 = ptrtoint ptr %.pre9.i.i.i323 to i64
  %.pre13.i.i.i326 = sub i64 %.pre10.i.i.i324, %.pre11.i.i.i325
  %.pre15.i.i.i327 = trunc i64 %.pre13.i.i.i326 to i32
  %.pre17.i.i.i328 = lshr i32 %.pre15.i.i.i327, 4
  %.pre19.i.i.i329 = add nsw i32 %.pre17.i.i.i328, -1
  %.pre21.i.i.i330 = zext i32 %.pre19.i.i.i329 to i64
  %.phi.trans.insert.i.i331 = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i.i321, i64 %.pre21.i.i.i330
  %.pre.i.i332 = load i16, ptr %.phi.trans.insert.i.i331, align 2
  %.pre1.i.i333 = zext i16 %.pre.i.i332 to i64
  br label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit.i334

_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit.i334: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i.i320, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_12ComparisonOpEEEPNSN_5EntryERKT_Pm.exit
  %.pre-phi.i.i335 = phi i64 [ %i.ayf, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_12ComparisonOpEEEPNSN_5EntryERKT_Pm.exit ], [ %.pre1.i.i333, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i.i320 ]
  %i.azy = phi ptr [ %i.axr, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_12ComparisonOpEEEPNSN_5EntryERKT_Pm.exit ], [ %.pre8.i.i.i322, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i.i320 ]
  %i.azz = sub nsw i64 0, %.pre-phi.i.i335
  %i.baa = getelementptr inbounds [8 x i8], ptr %i.azy, i64 %i.azz
  store ptr %i.baa, ptr %i.axq, align 8
  %.sroa.015.0.copyload.i336 = load i32, ptr %i.awc, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm64EEEEEEEEvNS2_17ConditionWithHintERT_RKNSS_17const_or_values_tE.exit236

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm64EEEEEEEEvNS2_17ConditionWithHintERT_RKNSS_17const_or_values_tE.exit236: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %.loopexit, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit.i334, %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESN_NSM_4KindENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_.exit
  %.sroa.07.0.i.i229.ph.ph = phi i32 [ %i.arn, %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESN_NSM_4KindENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_.exit ], [ %.sroa.015.0.copyload.i336, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit.i334 ], [ %i.arn, %.loopexit ], [ %i.anu, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ]
  %.pr1423.pr = load ptr, ptr %i.j, align 8       ; 2 uses
  %i.bab = icmp eq ptr %.pr1423.pr, null
  br i1 %i.bab, label %.critedge, label %bb.ed

bb.ed:                                            ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm64EEEEEEEEvNS2_17ConditionWithHintERT_RKNSS_17const_or_values_tE.exit236
  store i8 1, ptr %i.br, align 8
  %i.bac = load ptr, ptr %15, align 8
  %i.bad = load ptr, ptr %i.ap, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 88 ; 3 uses
  %i.baf = load i64, ptr %i.bae, align 8          ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.bad, i64 80
  %i.bah = load i64, ptr %i.bag, align 8
  %i.bai = icmp eq i64 %i.baf, %i.bah
  br i1 %i.bai, label %bb.ee, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.i, !prof !5

bb.ee:                                            ; preds = %bb.ed
  call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.bad)
  %.pre.i.i.i441 = load i64, ptr %i.bae, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.i: ; preds = %bb.ee, %bb.ed
  %i.baj = phi i64 [ %i.baf, %bb.ed ], [ %.pre.i.i.i441, %bb.ee ] ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %i.bad, i64 72
  %i.bal = add i64 %i.baj, 1
  store i64 %i.bal, ptr %i.bae, align 8
  %i.bam = load ptr, ptr %i.bak, align 8
  %i.ban = getelementptr inbounds nuw [8 x i8], ptr %i.bam, i64 %i.baj
  %i.bao = load ptr, ptr %i.ban, align 8          ; 9 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.bao, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.bap, align 4
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bao, i64 48
  store i32 -1, ptr %i.baq, align 8
  %i.bar = getelementptr inbounds nuw i8, ptr %i.bao, i64 52
  store i32 -1, ptr %i.bar, align 4
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bao, i64 56
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bao, i64 88
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bao, i64 96
  store i32 0, ptr %i.bau, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bas, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.bat, align 8
  %i.bav = call noundef i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13BranchAndBindENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESR_NS0_10BranchHintESR_(ptr noundef nonnull align 8 dereferenceable(136) %i.c, i32 %.sroa.07.0.i.i229.ph.ph, ptr noundef %i.bac, ptr noundef nonnull %i.bao, i8 noundef zeroext 0, ptr noundef nonnull %i.bao)
  %i.baw = and i32 %i.bav, 1
  %.not.i436 = icmp eq i32 %i.baw, 0
  br i1 %.not.i436, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm64EEEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS5_EEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.i
  %.pre.i437 = load ptr, ptr %15, align 8
  %i.bax = getelementptr inbounds nuw i8, ptr %.pre.i437, i64 52
  %i.bay = load i32, ptr %i.bax, align 4
  %.not.i.i438 = icmp eq i32 %i.bay, -1
  br i1 %.not.i.i438, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #25
  unreachable

bb.eg:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread.i
  %i.baz = load ptr, ptr %i.bo, align 8           ; 2 uses
  %i.bba = load ptr, ptr %i.bp, align 8
  %i.bbb = icmp eq ptr %i.baz, %i.bba
  br i1 %i.bbb, label %bb.eh, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i, !prof !5

bb.eh:                                            ; preds = %bb.eg
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
  %.pre.i.i.i.i.i440 = load ptr, ptr %i.bo, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i: ; preds = %bb.eh, %bb.eg
  %i.bbc = phi ptr [ %.pre.i.i.i.i.i440, %bb.eh ], [ %i.baz, %bb.eg ] ; 2 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 4
  store ptr %i.bbd, ptr %i.bo, align 8
  store i32 %.sroa.07.0.i.i168115614051409, ptr %i.bbc, align 4
  %i.bbe = load ptr, ptr %i.bk, align 8           ; 2 uses
  %i.bbf = load ptr, ptr %i.bl, align 8
  %i.bbg = icmp eq ptr %i.bbe, %i.bbf
  br i1 %i.bbg, label %bb.ei, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm64EEEEE12RecordValuesEPNS2_5BlockERNS6_9BlockDataERKSt5tupleIJNS2_1VIS5_EEEE.exit.i, !prof !5

bb.ei:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bi)
  %.pre.i.i4.i.i.i = load ptr, ptr %i.bk, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm64EEEEE12RecordValuesEPNS2_5BlockERNS6_9BlockDataERKSt5tupleIJNS2_1VIS5_EEEE.exit.i

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm64EEEEE12RecordValuesEPNS2_5BlockERNS6_9BlockDataERKSt5tupleIJNS2_1VIS5_EEEE.exit.i: ; preds = %bb.ei, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i
  %i.bbh = phi ptr [ %.pre.i.i4.i.i.i, %bb.ei ], [ %i.bbe, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i ] ; 2 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbh, i64 8
  store ptr %i.bbi, ptr %i.bk, align 8
  store ptr %.pr1423.pr, ptr %i.bbh, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm64EEEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS5_EEEE.exit

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm64EEEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS5_EEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6GotoIfENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.i, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm64EEEEE12RecordValuesEPNS2_5BlockERNS6_9BlockDataERKSt5tupleIJNS2_1VIS5_EEEE.exit.i
  %.pr1427 = load ptr, ptr %i.j, align 8
  %i.bbj = icmp eq ptr %.pr1427, null
  br i1 %i.bbj, label %.critedge, label %bb.ej

bb.ej:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm64EEEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS5_EEEE.exit
  %i.bbk = load ptr, ptr %i.eu, align 8           ; 2 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 52 ; 2 uses
  %i.bbm = load i32, ptr %i.bbl, align 4
  %i.bbn = icmp ne i32 %i.bbm, -1
  %i.bbo = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(1432) %0, ptr noundef nonnull %i.bbk, i1 noundef zeroext %i.bbn) #29, !inline_history !3327 ; 0 uses
  %i.bbp = load i32, ptr %i.bbl, align 4          ; 5 uses
  %.not30.i = icmp eq i32 %i.bbp, -1
  br i1 %.not30.i, label %.critedge, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.bbq = load i64, ptr %i.ev, align 8           ; 3 uses
  %i.bbr = icmp ult i64 %i.bbq, 2
  br i1 %i.bbr, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.bbs = load i64, ptr %i.ex, align 8
  %.not.i.i.i.i.i.i = icmp ult i64 %i.bbs, 131072
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i

bb.em:                                            ; preds = %bb.ek
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.ew, align 8 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.bbt = load i64, ptr %i.ex, align 8
  %sext.i.i.i.i = shl i64 %i.bbt, 48
  %i.bbu = ashr exact i64 %sext.i.i.i.i, 48
  %i.bbv = zext i32 %i.bbp to i64
  %i.bbw = xor i64 %i.bbu, %i.bbv
  %i.bbx = zext i64 %i.bbw to i128
  %i.bby = mul nuw nsw i128 %i.bbx, 8779197792823184629 ; 2 uses
  %i.bbz = lshr i128 %i.bby, 64
  %i.bca = xor i128 %i.bbz, %i.bby
  %i.bcb = trunc i128 %i.bca to i64               ; 2 uses
  %i.bcc = lshr i64 %i.bcb, 57
  %i.bcd = trunc nuw nsw i64 %i.bcc to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i = load ptr, ptr %i.ey, align 8 ; 2 uses
  %i.bce = insertelement <16 x i8> poison, i8 %i.bcd, i64 0
  %i.bcf = shufflevector <16 x i8> %i.bce, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.en

bb.en:                                            ; preds = %bb.ep, %bb.em
  %.pn.i8.i.i.i.i = phi i64 [ %i.bcb, %bb.em ], [ %i.bcx, %bb.ep ]
  %.sroa.13.0.i.i.i.i.i = phi i64 [ 0, %bb.em ], [ %i.bcw, %bb.ep ]
  %.sroa.6.0.i.i.i.i.i = and i64 %.pn.i8.i.i.i.i, %i.bbq ; 4 uses
  %i.bcg = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.bcg, i32 0, i32 3, i32 1)
  %i.bch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  %i.bci = load <16 x i8>, ptr %i.bch, align 1    ; 2 uses
  %i.bcj = icmp eq <16 x i8> %i.bcf, %i.bci
  %i.bck = bitcast <16 x i1> %i.bcj to i16        ; 2 uses
  %.not46.i.i.i.i.i = icmp eq i16 %i.bck, 0
  br i1 %.not46.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.en, %bb.eo
  %.sroa.017.047.i.i.i.i.i = phi i16 [ %i.bct, %bb.eo ], [ %i.bck, %bb.en ] ; 3 uses
  %i.bcl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i.i, i1 true)
  %i.bcm = zext nneg i16 %i.bcl to i64
  %i.bcn = add i64 %.sroa.6.0.i.i.i.i.i, %i.bcm
  %i.bco = and i64 %i.bcn, %i.bbq
  %i.bcp = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.bco
  %i.bcq = load i32, ptr %i.bcp, align 4
  %i.bcr = icmp eq i32 %i.bcq, %i.bbp
  br i1 %i.bcr, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a, label %bb.eo, !prof !9

bb.eo:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.bcs = add i16 %.sroa.017.047.i.i.i.i.i, -1
  %i.bct = and i16 %i.bcs, %.sroa.017.047.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.bct, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.eo, %bb.en
  %i.bcu = icmp eq <16 x i8> %i.bci, splat (i8 -128)
  %i.bcv = bitcast <16 x i1> %i.bcu to i16
  %.not44.i.i.i.i.i = icmp eq i16 %i.bcv, 0
  br i1 %.not44.i.i.i.i.i, label %bb.ep, label %.critedge, !prof !5

bb.ep:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.bcw = add i64 %.sroa.13.0.i.i.i.i.i, 16      ; 2 uses
  %i.bcx = add i64 %i.bcw, %.sroa.6.0.i.i.i.i.i
  br label %bb.en, !llvm.loop !485

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i: ; preds = %bb.el
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i487 = load ptr, ptr %i.ey, align 8
  %i.bcy = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i487, align 4
  %i.bcz = icmp eq i32 %i.bcy, %i.bbp
  br i1 %i.bcz, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a, label %.critedge

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i32 %i.bbp, ptr %5, align 4
  %i.bda = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.ev, ptr noundef nonnull align 4 dereferenceable(4) %5), !inline_history !3327 ; 3 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bda, i64 32
  %i.bdc = load i8, ptr %i.bdb, align 8, !range !8, !noundef !6
  %i.bdd = trunc nuw i8 %i.bdc to i1
  br i1 %i.bdd, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i, label %bb.eq

bb.eq:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a
  call void @_ZSt27__throw_bad_optional_accessv() #28, !inline_history !3327
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bda, i64 8
  %i.bdf = load ptr, ptr %i.bde, align 8          ; 2 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bda, i64 16
  %i.bdh = load ptr, ptr %i.bdg, align 8          ; 2 uses
  %.not33.i = icmp eq ptr %i.bdf, %i.bdh
  br i1 %.not33.i, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i, %_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit
  %.034.i = phi ptr [ %i.bif, %_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit ], [ %i.bdf, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i ] ; 3 uses
  %.sroa.0.0.copyload24.i = load ptr, ptr %.034.i, align 8
  %.sroa.4.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..0.sroa_idx.i, align 8 ; 3 uses
  %i.bdi = load ptr, ptr %i.ap, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 8 ; 9 uses
  %i.bdk = load ptr, ptr %i.bdj, align 8
  %i.bdl = ptrtoint ptr %i.bdk to i64             ; 2 uses
  %i.bdm = zext i32 %.sroa.4.0.copyload.i to i64  ; 2 uses
  %i.bdn = add i64 %i.bdl, %i.bdm                 ; 2 uses
  %i.bdo = inttoptr i64 %i.bdn to ptr             ; 7 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 8
  %.sroa.0.0.copyload.i.i.i485 = load i32, ptr %i.bdp, align 4
  %i.bdq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24.i, i64 16
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.bdq, align 4
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdo, i64 4
  %.sroa.0.0.copyload.i = load i8, ptr %i.bdr, align 4
  %i.bds = load i8, ptr %i.bdo, align 4
  %i.bdt = zext i8 %i.bds to i64
  %i.bdu = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.bdt
  %i.bdv = load i64, ptr %i.bdu, align 8
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %i.bdv ; 4 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdo, i64 2
  %i.bdy = load i16, ptr %i.bdx, align 2          ; 2 uses
  %i.bdz = zext i16 %i.bdy to i64
  %.idx.i.i = shl nuw nsw i64 %i.bdz, 2           ; 2 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdw, i64 %.idx.i.i
  %.not10.i.i = icmp eq i16 %i.bdy, 0
  br i1 %.not10.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i
  %i.beb = add nsw i64 %.idx.i.i, -4              ; 2 uses
  %i.bec = and i64 %i.beb, 4
  %lcmp.mod1537.not.not.a = icmp eq i64 %i.bec, 0
  br i1 %lcmp.mod1537.not.not.a, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %.sroa.01.0.copyload.i.i.prol = load i32, ptr %i.bdw, align 4
  %i.bed = load ptr, ptr %i.bdj, align 8
  %i.bee = ptrtoint ptr %i.bed to i64
  %i.bef = zext i32 %.sroa.01.0.copyload.i.i.prol to i64
  %i.beg = add i64 %i.bee, %i.bef
  %i.beh = inttoptr i64 %i.beg to ptr
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 1 ; 2 uses
  %i.bej = load i8, ptr %i.bei, align 1
  %i.bek = add i8 %i.bej, -1                      ; 2 uses
  %spec.select.i.i.i.prol = icmp ult i8 %i.bek, -2
  br i1 %spec.select.i.i.i.prol, label %bb.er, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol, !prof !9

bb.er:                                            ; preds = %.lr.ph.i.i.prol
  store i8 %i.bek, ptr %i.bei, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol: ; preds = %bb.er, %.lr.ph.i.i.prol
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bdw, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol, %.lr.ph.i.i.preheader
  %.011.i.i.unr = phi ptr [ %i.bdw, %.lr.ph.i.i.preheader ], [ %i.bel, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol ]
  %i.bem = icmp eq i64 %i.beb, 0
  br i1 %i.bem, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1
  %.011.i.i = phi ptr [ %i.bfe, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1 ], [ %.011.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i.i = load i32, ptr %.011.i.i, align 4
  %i.ben = load ptr, ptr %i.bdj, align 8
  %i.beo = ptrtoint ptr %i.ben to i64
  %i.bep = zext i32 %.sroa.01.0.copyload.i.i to i64
  %i.beq = add i64 %i.beo, %i.bep
  %i.ber = inttoptr i64 %i.beq to ptr
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 1 ; 2 uses
  %i.bet = load i8, ptr %i.bes, align 1
  %i.beu = add i8 %i.bet, -1                      ; 2 uses
  %spec.select.i.i.i = icmp ult i8 %i.beu, -2
  br i1 %spec.select.i.i.i, label %bb.es, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i, !prof !9

bb.es:                                            ; preds = %.lr.ph.i.i
  store i8 %i.beu, ptr %i.bes, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i: ; preds = %bb.es, %.lr.ph.i.i
  %i.bev = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %.sroa.01.0.copyload.i.i.1 = load i32, ptr %i.bev, align 4
  %i.bew = load ptr, ptr %i.bdj, align 8
  %i.bex = ptrtoint ptr %i.bew to i64
  %i.bey = zext i32 %.sroa.01.0.copyload.i.i.1 to i64
  %i.bez = add i64 %i.bex, %i.bey
  %i.bfa = inttoptr i64 %i.bez to ptr
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1 ; 2 uses
  %i.bfc = load i8, ptr %i.bfb, align 1
  %i.bfd = add i8 %i.bfc, -1                      ; 2 uses
  %spec.select.i.i.i.1 = icmp ult i8 %i.bfd, -2
  br i1 %spec.select.i.i.i.1, label %bb.et, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1, !prof !9

bb.et:                                            ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i
  store i8 %i.bfd, ptr %i.bfb, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1: ; preds = %bb.et, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i
  %i.bfe = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i733.1 = icmp eq ptr %i.bfe, %i.bea
  br i1 %.not.i.i733.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i, label %.lr.ph.i.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1, %.lr.ph.i.i.prol.loopexit
  %.pre.i734 = load ptr, ptr %i.bdj, align 8
  %.pre28.i = ptrtoint ptr %.pre.i734 to i64      ; 2 uses
  %.pre29.i = add i64 %.pre28.i, %i.bdm           ; 2 uses
  %.pre31.i = inttoptr i64 %.pre29.i to ptr
  br label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i, %.lr.ph.i
  %.pre-phi32.i = phi ptr [ %.pre31.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i ], [ %i.bdo, %.lr.ph.i ] ; 2 uses
  %.pre-phi30.i = phi i64 [ %.pre29.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i ], [ %i.bdn, %.lr.ph.i ] ; 2 uses
  %.pre-phi.i735 = phi i64 [ %.pre28.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i ], [ %i.bdl, %.lr.ph.i ] ; 2 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bdo, i64 1
  %.sroa.04.0.copyload.i = load i8, ptr %i.bff, align 1
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bdi, i64 16 ; 4 uses
  %i.bfh = load ptr, ptr %i.bfg, align 8
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bdi, i64 32 ; 5 uses
  %i.bfj = load ptr, ptr %i.bfi, align 8          ; 2 uses
  %i.bfk = lshr i32 %.sroa.4.0.copyload.i, 4
  %i.bfl = zext nneg i32 %i.bfk to i64            ; 2 uses
  %i.bfm = getelementptr inbounds nuw [2 x i8], ptr %i.bfj, i64 %i.bfl
  %i.bfn = load i16, ptr %i.bfm, align 2          ; 3 uses
  store ptr %.pre-phi32.i, ptr %i.bfg, align 8
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bdi, i64 24
  %i.bfp = load ptr, ptr %i.bfo, align 8
  %i.bfq = ptrtoint ptr %i.bfp to i64             ; 2 uses
  %i.bfr = sub i64 %i.bfq, %.pre-phi30.i
  %i.bfs = icmp ult i64 %i.bfr, 9
  br i1 %i.bfs, label %bb.eu, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i736, !prof !5

bb.eu:                                            ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i
  %i.bft = sub i64 %i.bfq, %.pre-phi.i735
  %i.bfu = lshr exact i64 %i.bft, 3
  %i.bfv = and i64 %i.bfu, 4294967295
  %i.bfw = add nuw nsw i64 %i.bfv, 2
  call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.bdi, i64 noundef %i.bfw)
  %.pre.i.i.i.i.i739 = load ptr, ptr %i.bfg, align 8 ; 2 uses
  %.pre10.i.i.i.i.i740 = ptrtoint ptr %.pre.i.i.i.i.i739 to i64
  %.pre26.i = load ptr, ptr %i.bdj, align 8
  %.pre27.i = load ptr, ptr %i.bfi, align 8
  %.pre33.i = ptrtoint ptr %.pre26.i to i64
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i736

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i736: ; preds = %bb.eu, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i
  %.pre-phi34.i = phi i64 [ %.pre33.i, %bb.eu ], [ %.pre-phi.i735, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i ]
  %i.bfx = phi ptr [ %.pre27.i, %bb.eu ], [ %i.bfj, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i ]
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre10.i.i.i.i.i740, %bb.eu ], [ %.pre-phi30.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i ]
  %i.bfy = phi ptr [ %.pre.i.i.i.i.i739, %bb.eu ], [ %.pre-phi32.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i ] ; 7 uses
  %i.bfz = sub i64 %.pre-phi.i.i.i.i.i, %.pre-phi34.i ; 2 uses
  %i.bga = trunc i64 %i.bfz to i32
  %i.bgb = lshr i64 %i.bfz, 4
  %i.bgc = and i64 %i.bgb, 268435455
  %i.bgd = getelementptr inbounds nuw [2 x i8], ptr %i.bfx, i64 %i.bgc
  store i16 2, ptr %i.bgd, align 2
  %i.bge = load ptr, ptr %i.bfi, align 8
  %i.bgf = add i32 %i.bga, 16
  %i.bgg = lshr i32 %i.bgf, 4
  %i.bgh = add nsw i32 %i.bgg, -1
  %i.bgi = zext i32 %i.bgh to i64
  %i.bgj = getelementptr inbounds nuw [2 x i8], ptr %i.bge, i64 %i.bgi
  store i16 2, ptr %i.bgj, align 2
  store i8 91, ptr %i.bfy, align 4
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bfy, i64 1 ; 2 uses
  store i8 0, ptr %i.bgk, align 1
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bfy, i64 2 ; 2 uses
  store i16 2, ptr %i.bgl, align 2
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bfy, i64 8 ; 4 uses
  store i32 %.sroa.0.0.copyload.i.i.i485, ptr %i.bgm, align 4
  %.sroa.41123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bfy, i64 12
  store i32 %.sroa.02.0.copyload.i.i, ptr %.sroa.41123.0..sroa_idx, align 4
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bfy, i64 4
  store i8 %.sroa.0.0.copyload.i, ptr %i.bgn, align 4
  store ptr %i.bfh, ptr %i.bfg, align 8
  %i.bgo = load ptr, ptr %i.bfi, align 8
  %i.bgp = getelementptr inbounds nuw [2 x i8], ptr %i.bgo, i64 %i.bfl
  store i16 %i.bfn, ptr %i.bgp, align 2
  %i.bgq = load ptr, ptr %i.bfi, align 8
  %i.bgr = zext i16 %i.bfn to i32
  %i.bgs = shl nuw nsw i32 %i.bgr, 3
  %i.bgt = add i32 %i.bgs, %.sroa.4.0.copyload.i
  %i.bgu = lshr i32 %i.bgt, 4
  %i.bgv = add nsw i32 %i.bgu, -1
  %i.bgw = zext i32 %i.bgv to i64
  %i.bgx = getelementptr inbounds nuw [2 x i8], ptr %i.bgq, i64 %i.bgw
  store i16 %i.bfn, ptr %i.bgx, align 2
  store i8 %.sroa.04.0.copyload.i, ptr %i.bgk, align 1
  %i.bgy = load i16, ptr %i.bgl, align 2          ; 2 uses
  %i.bgz = zext i16 %i.bgy to i64
  %.idx.i15.i = shl nuw nsw i64 %i.bgz, 2         ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgm, i64 %.idx.i15.i
  %.not10.i16.i = icmp eq i16 %i.bgy, 0
  br i1 %.not10.i16.i, label %_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i736
  %i.bhb = add nsw i64 %.idx.i15.i, -4            ; 2 uses
  %i.bhc = and i64 %i.bhb, 4
  %lcmp.mod1540.not.not.a = icmp eq i64 %i.bhc, 0
  br i1 %lcmp.mod1540.not.not.a, label %.lr.ph.i17.i.prol, label %.lr.ph.i17.i.prol.loopexit

.lr.ph.i17.i.prol:                                ; preds = %.lr.ph.i17.i.preheader
  %.sroa.01.0.copyload.i19.i.prol = load i32, ptr %i.bgm, align 4
  %i.bhd = load ptr, ptr %i.bdj, align 8
  %i.bhe = ptrtoint ptr %i.bhd to i64
  %i.bhf = zext i32 %.sroa.01.0.copyload.i19.i.prol to i64
  %i.bhg = add i64 %i.bhe, %i.bhf
  %i.bhh = inttoptr i64 %i.bhg to ptr
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhh, i64 1 ; 2 uses
  %i.bhj = load i8, ptr %i.bhi, align 1           ; 2 uses
  %.not.i.i.i737.prol = icmp eq i8 %i.bhj, -1
  br i1 %.not.i.i.i737.prol, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738.prol, label %bb.ev, !prof !5

bb.ev:                                            ; preds = %.lr.ph.i17.i.prol
  %i.bhk = add nuw i8 %i.bhj, 1
  store i8 %i.bhk, ptr %i.bhi, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738.prol: ; preds = %bb.ev, %.lr.ph.i17.i.prol
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bfy, i64 12
  br label %.lr.ph.i17.i.prol.loopexit

.lr.ph.i17.i.prol.loopexit:                       ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738.prol, %.lr.ph.i17.i.preheader
  %.011.i18.i.unr = phi ptr [ %i.bgm, %.lr.ph.i17.i.preheader ], [ %i.bhl, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738.prol ]
  %i.bhm = icmp eq i64 %i.bhb, 0
  br i1 %i.bhm, label %_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738.1
  %.011.i18.i = phi ptr [ %i.bie, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738.1 ], [ %.011.i18.i.unr, %.lr.ph.i17.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i19.i = load i32, ptr %.011.i18.i, align 4
  %i.bhn = load ptr, ptr %i.bdj, align 8
  %i.bho = ptrtoint ptr %i.bhn to i64
  %i.bhp = zext i32 %.sroa.01.0.copyload.i19.i to i64
  %i.bhq = add i64 %i.bho, %i.bhp
  %i.bhr = inttoptr i64 %i.bhq to ptr
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 1 ; 2 uses
  %i.bht = load i8, ptr %i.bhs, align 1           ; 2 uses
  %.not.i.i.i737 = icmp eq i8 %i.bht, -1
  br i1 %.not.i.i.i737, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738, label %bb.ew, !prof !5

bb.ew:                                            ; preds = %.lr.ph.i17.i
  %i.bhu = add nuw i8 %i.bht, 1
  store i8 %i.bhu, ptr %i.bhs, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738: ; preds = %bb.ew, %.lr.ph.i17.i
  %i.bhv = getelementptr inbounds nuw i8, ptr %.011.i18.i, i64 4
  %.sroa.01.0.copyload.i19.i.1 = load i32, ptr %i.bhv, align 4
  %i.bhw = load ptr, ptr %i.bdj, align 8
  %i.bhx = ptrtoint ptr %i.bhw to i64
  %i.bhy = zext i32 %.sroa.01.0.copyload.i19.i.1 to i64
  %i.bhz = add i64 %i.bhx, %i.bhy
  %i.bia = inttoptr i64 %i.bhz to ptr
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 1 ; 2 uses
  %i.bic = load i8, ptr %i.bib, align 1           ; 2 uses
  %.not.i.i.i737.1 = icmp eq i8 %i.bic, -1
  br i1 %.not.i.i.i737.1, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738.1, label %bb.ex, !prof !5

bb.ex:                                            ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738
  %i.bid = add nuw i8 %i.bic, 1
  store i8 %i.bid, ptr %i.bib, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738.1: ; preds = %bb.ex, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738
  %i.bie = getelementptr inbounds nuw i8, ptr %.011.i18.i, i64 8 ; 2 uses
  %.not.i20.i.1 = icmp eq ptr %i.bie, %i.bha
  br i1 %.not.i20.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit, label %.lr.ph.i17.i

_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit: ; preds = %.lr.ph.i17.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.i738.1, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i736
  %i.bif = getelementptr inbounds nuw i8, ptr %.034.i, i64 16 ; 2 uses
  %.not.i486 = icmp eq ptr %i.bif, %i.bdh
  br i1 %.not.i486, label %.critedge, label %.lr.ph.i

.critedge:                                        ; preds = %._crit_edge.i.i.i.i.i, %_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_13FloatWithBitsILm64EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE.exit.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_13FloatWithBitsILm64EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm64EEEEEEEEvNS2_17ConditionWithHintERT_RKNSS_17const_or_values_tE.exit236, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm64EEEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS5_EEEE.exit, %bb.ej, %bb.el, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit, %bb.at
  %.31132 = phi i64 [ %.211311251, %bb.at ], [ %.511341174, %_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit ], [ %.511341174, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESO_.exit ], [ %.511341174, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm64EEEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS5_EEEE.exit ], [ %.511341174, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i ], [ %.511341174, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i ], [ %.511341174, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_13FloatWithBitsILm64EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE.exit.thread ], [ %.511341174, %bb.el ], [ %.511341174, %bb.ej ], [ %.511341174, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm64EEEEEEEEvNS2_17ConditionWithHintERT_RKNSS_17const_or_values_tE.exit236 ], [ %.511341174, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i ], [ %.511341174, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_13FloatWithBitsILm64EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE.exit ], [ %.511341174, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.big = add nuw nsw i32 %.01161253, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.big, 3
  br i1 %exitcond.not, label %.loopexit1445, label %bb.at, !llvm.loop !3328

.loopexit1445:                                    ; preds = %.critedge, %.critedge.thread
  %.311321433 = phi i64 [ %.211311251, %.critedge.thread ], [ %.31132, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.ey

bb.ey:                                            ; preds = %.loopexit1445, %.thread1185
  %.411331190 = phi i64 [ %.111301254, %.thread1185 ], [ %.311321433, %.loopexit1445 ] ; 7 uses
  %i.bih = load ptr, ptr %i.j, align 8
  %i.bii = icmp eq ptr %i.bih, null
  br i1 %i.bii, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit237, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.bij = load ptr, ptr %i.ez, align 8           ; 2 uses
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 52 ; 2 uses
  %i.bil = load i32, ptr %i.bik, align 4
  %i.bim = icmp ne i32 %i.bil, -1
  %i.bin = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(1432) %0, ptr noundef nonnull %i.bij, i1 noundef zeroext %i.bim) #29, !inline_history !3327 ; 0 uses
  %i.bio = load i32, ptr %i.bik, align 4          ; 5 uses
  %.not30.i488 = icmp eq i32 %i.bio, -1
  br i1 %.not30.i488, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit237, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.bip = load i64, ptr %i.ev, align 8           ; 3 uses
  %i.biq = icmp ult i64 %i.bip, 2
  br i1 %i.biq, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.bir = load i64, ptr %i.ex, align 8
  %.not.i.i.i.i.i.i513 = icmp ult i64 %i.bir, 131072
  br i1 %.not.i.i.i.i.i.i513, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit237, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i514

bb.fc:                                            ; preds = %bb.fa
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i489 = load ptr, ptr %i.ew, align 8 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i489, i32 0, i32 1, i32 1)
  %i.bis = load i64, ptr %i.ex, align 8
  %sext.i.i.i.i490 = shl i64 %i.bis, 48
  %i.bit = ashr exact i64 %sext.i.i.i.i490, 48
  %i.biu = zext i32 %i.bio to i64
  %i.biv = xor i64 %i.bit, %i.biu
  %i.biw = zext i64 %i.biv to i128
  %i.bix = mul nuw nsw i128 %i.biw, 8779197792823184629 ; 2 uses
  %i.biy = lshr i128 %i.bix, 64
  %i.biz = xor i128 %i.biy, %i.bix
  %i.bja = trunc i128 %i.biz to i64               ; 2 uses
  %i.bjb = lshr i64 %i.bja, 57
  %i.bjc = trunc nuw nsw i64 %i.bjb to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i491 = load ptr, ptr %i.ey, align 8 ; 2 uses
  %i.bjd = insertelement <16 x i8> poison, i8 %i.bjc, i64 0
  %i.bje = shufflevector <16 x i8> %i.bjd, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fd

bb.fd:                                            ; preds = %bb.ff, %bb.fc
  %.pn.i8.i.i.i.i492 = phi i64 [ %i.bja, %bb.fc ], [ %i.bjw, %bb.ff ]
  %.sroa.13.0.i.i.i.i.i493 = phi i64 [ 0, %bb.fc ], [ %i.bjv, %bb.ff ]
  %.sroa.6.0.i.i.i.i.i494 = and i64 %.pn.i8.i.i.i.i492, %i.bip ; 4 uses
  %i.bjf = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i491, i64 %.sroa.6.0.i.i.i.i.i494
  call void @llvm.prefetch.p0(ptr %i.bjf, i32 0, i32 3, i32 1)
  %i.bjg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i489, i64 %.sroa.6.0.i.i.i.i.i494
  %i.bjh = load <16 x i8>, ptr %i.bjg, align 1    ; 2 uses
  %i.bji = icmp eq <16 x i8> %i.bje, %i.bjh
  %i.bjj = bitcast <16 x i1> %i.bji to i16        ; 2 uses
  %.not46.i.i.i.i.i495 = icmp eq i16 %i.bjj, 0
  br i1 %.not46.i.i.i.i.i495, label %._crit_edge.i.i.i.i.i499, label %.lr.ph.i.i.i.i.i496

.lr.ph.i.i.i.i.i496:                              ; preds = %bb.fd, %bb.fe
  %.sroa.017.047.i.i.i.i.i497 = phi i16 [ %i.bjs, %bb.fe ], [ %i.bjj, %bb.fd ] ; 3 uses
  %i.bjk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i.i497, i1 true)
  %i.bjl = zext nneg i16 %i.bjk to i64
  %i.bjm = add i64 %.sroa.6.0.i.i.i.i.i494, %i.bjl
  %i.bjn = and i64 %i.bjm, %i.bip
  %i.bjo = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i491, i64 %i.bjn
  %i.bjp = load i32, ptr %i.bjo, align 4
  %i.bjq = icmp eq i32 %i.bjp, %i.bio
  br i1 %i.bjq, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i501.a, label %bb.fe, !prof !9

bb.fe:                                            ; preds = %.lr.ph.i.i.i.i.i496
  %i.bjr = add i16 %.sroa.017.047.i.i.i.i.i497, -1
  %i.bjs = and i16 %i.bjr, %.sroa.017.047.i.i.i.i.i497 ; 2 uses
  %.not.i.i.i.i.i498 = icmp eq i16 %i.bjs, 0
  br i1 %.not.i.i.i.i.i498, label %._crit_edge.i.i.i.i.i499, label %.lr.ph.i.i.i.i.i496

._crit_edge.i.i.i.i.i499:                         ; preds = %bb.fe, %bb.fd
  %i.bjt = icmp eq <16 x i8> %i.bjh, splat (i8 -128)
  %i.bju = bitcast <16 x i1> %i.bjt to i16
  %.not44.i.i.i.i.i500 = icmp eq i16 %i.bju, 0
  br i1 %.not44.i.i.i.i.i500, label %bb.ff, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit237, !prof !5

bb.ff:                                            ; preds = %._crit_edge.i.i.i.i.i499
  %i.bjv = add i64 %.sroa.13.0.i.i.i.i.i493, 16   ; 2 uses
  %i.bjw = add i64 %i.bjv, %.sroa.6.0.i.i.i.i.i494
  br label %bb.fd, !llvm.loop !485

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i514: ; preds = %bb.fb
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i515 = load ptr, ptr %i.ey, align 8
  %i.bjx = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i515, align 4
  %i.bjy = icmp eq i32 %i.bjx, %i.bio
  br i1 %i.bjy, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i501.a, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit237

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i501.a: ; preds = %.lr.ph.i.i.i.i.i496, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i514
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 %i.bio, ptr %4, align 4
  %i.bjz = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.ev, ptr noundef nonnull align 4 dereferenceable(4) %4), !inline_history !3327 ; 3 uses
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 32
  %i.bkb = load i8, ptr %i.bka, align 8, !range !8, !noundef !6
  %i.bkc = trunc nuw i8 %i.bkb to i1
  br i1 %i.bkc, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i502, label %bb.fg

bb.fg:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i501.a
  call void @_ZSt27__throw_bad_optional_accessv() #28, !inline_history !3327
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i502: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i501.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bjz, i64 8
  %i.bke = load ptr, ptr %i.bkd, align 8          ; 2 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bjz, i64 16
  %i.bkg = load ptr, ptr %i.bkf, align 8          ; 2 uses
  %.not33.i503 = icmp eq ptr %i.bke, %i.bkg
  br i1 %.not33.i503, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit237, label %.lr.ph.i504

.lr.ph.i504:                                      ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i502, %_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit775
  %.034.i505 = phi ptr [ %i.bpe, %_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit775 ], [ %i.bke, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i502 ] ; 3 uses
  %.sroa.0.0.copyload24.i506 = load ptr, ptr %.034.i505, align 8
  %.sroa.4.0..0.sroa_idx.i507 = getelementptr inbounds nuw i8, ptr %.034.i505, i64 8
  %.sroa.4.0.copyload.i508 = load i32, ptr %.sroa.4.0..0.sroa_idx.i507, align 8 ; 3 uses
  %i.bkh = load ptr, ptr %i.ap, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkh, i64 8 ; 9 uses
  %i.bkj = load ptr, ptr %i.bki, align 8
  %i.bkk = ptrtoint ptr %i.bkj to i64             ; 2 uses
  %i.bkl = zext i32 %.sroa.4.0.copyload.i508 to i64 ; 2 uses
  %i.bkm = add i64 %i.bkk, %i.bkl                 ; 2 uses
  %i.bkn = inttoptr i64 %i.bkm to ptr             ; 7 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 8
  %.sroa.0.0.copyload.i.i.i509 = load i32, ptr %i.bko, align 4
  %i.bkp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24.i506, i64 16
  %.sroa.02.0.copyload.i.i510 = load i32, ptr %i.bkp, align 4
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkn, i64 4
  %.sroa.0.0.copyload.i511 = load i8, ptr %i.bkq, align 4
  %i.bkr = load i8, ptr %i.bkn, align 4
  %i.bks = zext i8 %i.bkr to i64
  %i.bkt = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.bks
  %i.bku = load i64, ptr %i.bkt, align 8
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bkn, i64 %i.bku ; 4 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkn, i64 2
  %i.bkx = load i16, ptr %i.bkw, align 2          ; 2 uses
  %i.bky = zext i16 %i.bkx to i64
  %.idx.i.i741 = shl nuw nsw i64 %i.bky, 2        ; 2 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bkv, i64 %.idx.i.i741
  %.not10.i.i742 = icmp eq i16 %i.bkx, 0
  br i1 %.not10.i.i742, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i754, label %.lr.ph.i.i743.preheader

.lr.ph.i.i743.preheader:                          ; preds = %.lr.ph.i504
  %i.bla = add nsw i64 %.idx.i.i741, -4           ; 2 uses
  %i.blb = and i64 %i.bla, 4
  %lcmp.mod1549.not.not = icmp eq i64 %i.blb, 0
  br i1 %lcmp.mod1549.not.not, label %.lr.ph.i.i743.prol, label %.lr.ph.i.i743.prol.loopexit

.lr.ph.i.i743.prol:                               ; preds = %.lr.ph.i.i743.preheader
  %.sroa.01.0.copyload.i.i745.prol = load i32, ptr %i.bkv, align 4
  %i.blc = load ptr, ptr %i.bki, align 8
  %i.bld = ptrtoint ptr %i.blc to i64
  %i.ble = zext i32 %.sroa.01.0.copyload.i.i745.prol to i64
  %i.blf = add i64 %i.bld, %i.ble
  %i.blg = inttoptr i64 %i.blf to ptr
  %i.blh = getelementptr inbounds nuw i8, ptr %i.blg, i64 1 ; 2 uses
  %i.bli = load i8, ptr %i.blh, align 1
  %i.blj = add i8 %i.bli, -1                      ; 2 uses
  %spec.select.i.i.i746.prol = icmp ult i8 %i.blj, -2
  br i1 %spec.select.i.i.i746.prol, label %bb.fh, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747.prol, !prof !9

bb.fh:                                            ; preds = %.lr.ph.i.i743.prol
  store i8 %i.blj, ptr %i.blh, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747.prol: ; preds = %bb.fh, %.lr.ph.i.i743.prol
  %i.blk = getelementptr inbounds nuw i8, ptr %i.bkv, i64 4
  br label %.lr.ph.i.i743.prol.loopexit

.lr.ph.i.i743.prol.loopexit:                      ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747.prol, %.lr.ph.i.i743.preheader
  %.011.i.i744.unr = phi ptr [ %i.bkv, %.lr.ph.i.i743.preheader ], [ %i.blk, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747.prol ]
  %i.bll = icmp eq i64 %i.bla, 0
  br i1 %i.bll, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i749, label %.lr.ph.i.i743

.lr.ph.i.i743:                                    ; preds = %.lr.ph.i.i743.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747.1
  %.011.i.i744 = phi ptr [ %i.bmd, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747.1 ], [ %.011.i.i744.unr, %.lr.ph.i.i743.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i.i745 = load i32, ptr %.011.i.i744, align 4
  %i.blm = load ptr, ptr %i.bki, align 8
  %i.bln = ptrtoint ptr %i.blm to i64
  %i.blo = zext i32 %.sroa.01.0.copyload.i.i745 to i64
  %i.blp = add i64 %i.bln, %i.blo
  %i.blq = inttoptr i64 %i.blp to ptr
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blq, i64 1 ; 2 uses
  %i.bls = load i8, ptr %i.blr, align 1
  %i.blt = add i8 %i.bls, -1                      ; 2 uses
  %spec.select.i.i.i746 = icmp ult i8 %i.blt, -2
  br i1 %spec.select.i.i.i746, label %bb.fi, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747, !prof !9

bb.fi:                                            ; preds = %.lr.ph.i.i743
  store i8 %i.blt, ptr %i.blr, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747: ; preds = %bb.fi, %.lr.ph.i.i743
  %i.blu = getelementptr inbounds nuw i8, ptr %.011.i.i744, i64 4
  %.sroa.01.0.copyload.i.i745.1 = load i32, ptr %i.blu, align 4
  %i.blv = load ptr, ptr %i.bki, align 8
  %i.blw = ptrtoint ptr %i.blv to i64
  %i.blx = zext i32 %.sroa.01.0.copyload.i.i745.1 to i64
  %i.bly = add i64 %i.blw, %i.blx
  %i.blz = inttoptr i64 %i.bly to ptr
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 1 ; 2 uses
  %i.bmb = load i8, ptr %i.bma, align 1
  %i.bmc = add i8 %i.bmb, -1                      ; 2 uses
  %spec.select.i.i.i746.1 = icmp ult i8 %i.bmc, -2
  br i1 %spec.select.i.i.i746.1, label %bb.fj, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747.1, !prof !9

bb.fj:                                            ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747
  store i8 %i.bmc, ptr %i.bma, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747.1: ; preds = %bb.fj, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747
  %i.bmd = getelementptr inbounds nuw i8, ptr %.011.i.i744, i64 8 ; 2 uses
  %.not.i.i748.1 = icmp eq ptr %i.bmd, %i.bkz
  br i1 %.not.i.i748.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i749, label %.lr.ph.i.i743

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i749: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i747.1, %.lr.ph.i.i743.prol.loopexit
  %.pre.i750 = load ptr, ptr %i.bki, align 8
  %.pre28.i751 = ptrtoint ptr %.pre.i750 to i64   ; 2 uses
  %.pre29.i752 = add i64 %.pre28.i751, %i.bkl     ; 2 uses
  %.pre31.i753 = inttoptr i64 %.pre29.i752 to ptr
  br label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i754

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i754: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i749, %.lr.ph.i504
  %.pre-phi32.i755 = phi ptr [ %.pre31.i753, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i749 ], [ %i.bkn, %.lr.ph.i504 ] ; 2 uses
  %.pre-phi30.i756 = phi i64 [ %.pre29.i752, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i749 ], [ %i.bkm, %.lr.ph.i504 ] ; 2 uses
  %.pre-phi.i757 = phi i64 [ %.pre28.i751, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i749 ], [ %i.bkk, %.lr.ph.i504 ] ; 2 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bkn, i64 1
  %.sroa.04.0.copyload.i758 = load i8, ptr %i.bme, align 1
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bkh, i64 16 ; 4 uses
  %i.bmg = load ptr, ptr %i.bmf, align 8
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bkh, i64 32 ; 5 uses
  %i.bmi = load ptr, ptr %i.bmh, align 8          ; 2 uses
  %i.bmj = lshr i32 %.sroa.4.0.copyload.i508, 4
  %i.bmk = zext nneg i32 %i.bmj to i64            ; 2 uses
  %i.bml = getelementptr inbounds nuw [2 x i8], ptr %i.bmi, i64 %i.bmk
  %i.bmm = load i16, ptr %i.bml, align 2          ; 3 uses
  store ptr %.pre-phi32.i755, ptr %i.bmf, align 8
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bkh, i64 24
  %i.bmo = load ptr, ptr %i.bmn, align 8
  %i.bmp = ptrtoint ptr %i.bmo to i64             ; 2 uses
  %i.bmq = sub i64 %i.bmp, %.pre-phi30.i756
  %i.bmr = icmp ult i64 %i.bmq, 9
  br i1 %i.bmr, label %bb.fk, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i759, !prof !5

bb.fk:                                            ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i754
  %i.bms = sub i64 %i.bmp, %.pre-phi.i757
  %i.bmt = lshr exact i64 %i.bms, 3
  %i.bmu = and i64 %i.bmt, 4294967295
  %i.bmv = add nuw nsw i64 %i.bmu, 2
  call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.bkh, i64 noundef %i.bmv)
  %.pre.i.i.i.i.i770 = load ptr, ptr %i.bmf, align 8 ; 2 uses
  %.pre10.i.i.i.i.i771 = ptrtoint ptr %.pre.i.i.i.i.i770 to i64
  %.pre26.i772 = load ptr, ptr %i.bki, align 8
  %.pre27.i773 = load ptr, ptr %i.bmh, align 8
  %.pre33.i774 = ptrtoint ptr %.pre26.i772 to i64
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i759

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i759: ; preds = %bb.fk, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i754
  %.pre-phi34.i760 = phi i64 [ %.pre33.i774, %bb.fk ], [ %.pre-phi.i757, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i754 ]
  %i.bmw = phi ptr [ %.pre27.i773, %bb.fk ], [ %i.bmi, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i754 ]
  %.pre-phi.i.i.i.i.i761 = phi i64 [ %.pre10.i.i.i.i.i771, %bb.fk ], [ %.pre-phi30.i756, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i754 ]
  %i.bmx = phi ptr [ %.pre.i.i.i.i.i770, %bb.fk ], [ %.pre-phi32.i755, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i754 ] ; 7 uses
  %i.bmy = sub i64 %.pre-phi.i.i.i.i.i761, %.pre-phi34.i760 ; 2 uses
  %i.bmz = trunc i64 %i.bmy to i32
  %i.bna = lshr i64 %i.bmy, 4
  %i.bnb = and i64 %i.bna, 268435455
  %i.bnc = getelementptr inbounds nuw [2 x i8], ptr %i.bmw, i64 %i.bnb
  store i16 2, ptr %i.bnc, align 2
  %i.bnd = load ptr, ptr %i.bmh, align 8
  %i.bne = add i32 %i.bmz, 16
  %i.bnf = lshr i32 %i.bne, 4
  %i.bng = add nsw i32 %i.bnf, -1
  %i.bnh = zext i32 %i.bng to i64
  %i.bni = getelementptr inbounds nuw [2 x i8], ptr %i.bnd, i64 %i.bnh
  store i16 2, ptr %i.bni, align 2
  store i8 91, ptr %i.bmx, align 4
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bmx, i64 1 ; 2 uses
  store i8 0, ptr %i.bnj, align 1
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bmx, i64 2 ; 2 uses
  store i16 2, ptr %i.bnk, align 2
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bmx, i64 8 ; 4 uses
  store i32 %.sroa.0.0.copyload.i.i.i509, ptr %i.bnl, align 4
  %.sroa.41125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bmx, i64 12
  store i32 %.sroa.02.0.copyload.i.i510, ptr %.sroa.41125.0..sroa_idx, align 4
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bmx, i64 4
  store i8 %.sroa.0.0.copyload.i511, ptr %i.bnm, align 4
  store ptr %i.bmg, ptr %i.bmf, align 8
  %i.bnn = load ptr, ptr %i.bmh, align 8
  %i.bno = getelementptr inbounds nuw [2 x i8], ptr %i.bnn, i64 %i.bmk
  store i16 %i.bmm, ptr %i.bno, align 2
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE14ReduceStringAtENS2_1VINS0_6StringEEENSV_INS2_12WordWithBitsILm64EEEEENS2_10StringAtOp4KindE:bb.a
  br i1 %i.rl, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit581, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit577, !prof !71

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit577: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i574
  %i.rm = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %i.nb, i32 %i.rk, i8 noundef zeroext 4, i8 0) #29, !inline_history !3582
  %.pr617 = load ptr, ptr %i.lh, align 8
  %i.rn = icmp eq ptr %.pr617, null
  br i1 %i.rn, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit581, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i578, !prof !71

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i578: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit577
  %i.ro = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSM_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 0, i64 noundef 8), !inline_history !551
  %i.rp = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESQ_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.ro), !inline_history !551
  %.pr620.pr = load ptr, ptr %i.lh, align 8
  %i.rq = icmp eq ptr %.pr620.pr, null
  br i1 %i.rq, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit581, label %bb.be, !prof !71

bb.be:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i578
  %i.rr = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEEST_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %i.rm, i32 %i.rp, i8 0) #29, !inline_history !553
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit581

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit581: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i574, %bb.bd, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit577, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i578, %bb.be
  %.sroa.07.0.i.i580 = phi i32 [ %i.rr, %bb.be ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i578 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit577 ], [ -1, %bb.bd ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i574 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  %.sroa.02.0.copyload.i.i.i236 = load i32, ptr %i.mh, align 4
  %.sroa.02.0.copyload.i.i.i238 = load i32, ptr %i.mi, align 4
  %i.rs = call i32 @_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE17LoadFromSeqStringENS2_1VINS0_6ObjectEEENSV_INS2_12WordWithBitsILm64EEEEENSV_INSY_ILm32EEEEE(ptr noundef nonnull align 8 dereferenceable(714) %0, i32 %.sroa.02.0.copyload.i.i.i236, i32 %.sroa.02.0.copyload.i.i.i238, i32 %.sroa.07.0.i.i580)
  store i8 0, ptr %i.mj, align 4
  store i32 %i.rs, ptr %i.mk, align 4
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSR_17const_or_values_tE(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(105) %22, ptr noundef nonnull align 4 dereferenceable(12) %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit581, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1310") align 1 %38, ptr noundef nonnull align 8 dereferenceable(81) %29, ptr noundef nonnull align 8 dereferenceable(1832) %i.me, ptr null)
  %i.rt = load i8, ptr %38, align 1, !range !8, !noundef !6
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %bb.bg, label %bb.cg

bb.bg:                                            ; preds = %bb.bf
  %i.rv = load ptr, ptr %i.lh, align 8
  %i.rw = icmp eq ptr %i.rv, null
  br i1 %i.rw, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit589, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i582, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i582: ; preds = %bb.bg
  %i.rx = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSM_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 0, i64 noundef 16), !inline_history !3582
  %i.ry = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESQ_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.rx), !inline_history !3582
  %.pr623 = load ptr, ptr %i.lh, align 8
  %i.rz = icmp eq ptr %.pr623, null
  br i1 %i.rz, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit589, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit585, !prof !71

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit585: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i582
  %i.sa = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %i.nb, i32 %i.ry, i8 noundef zeroext 4, i8 0) #29, !inline_history !3582
  %.pr625 = load ptr, ptr %i.lh, align 8
  %i.sb = icmp eq ptr %.pr625, null
  br i1 %i.sb, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit589, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i586, !prof !71

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i586: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit585
  %i.sc = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSM_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 0, i64 noundef 16), !inline_history !551
  %i.sd = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESQ_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.sc), !inline_history !551
  %.pr628.pr = load ptr, ptr %i.lh, align 8
  %i.se = icmp eq ptr %.pr628.pr, null
  br i1 %i.se, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit589, label %bb.bh, !prof !71

bb.bh:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i586
  %i.sf = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEEST_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %i.sa, i32 %i.sd, i8 0) #29, !inline_history !553
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit589

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit589: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i582, %bb.bg, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit585, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i586, %bb.bh
  %.sroa.07.0.i.i588 = phi i32 [ %i.sf, %bb.bh ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i586 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit585 ], [ -1, %bb.bg ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i582 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJEE(ptr noundef nonnull align 8 dereferenceable(81) %33, ptr noundef nonnull align 8 dereferenceable(1832) %i.me, i32 %.sroa.07.0.i.i588, i8 noundef zeroext 2, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %.sroa.02.0.copyload.i.i.i244 = load i32, ptr %i.mh, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  call void @_ZN2v88internal8compiler13AccessBuilder29ForExternalStringResourceDataEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %39) #24
  %i.sg = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_3AnyEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %i.ae, i32 %.sroa.02.0.copyload.i.i.i244, ptr noundef nonnull align 8 dereferenceable(72) %39) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  %i.sh = load ptr, ptr %i.lh, align 8
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit597, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i590, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i590: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit589
  %i.sj = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSM_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 0, i64 noundef 8), !inline_history !3582
  %i.sk = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESQ_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.sj), !inline_history !3582
  %.pr631 = load ptr, ptr %i.lh, align 8
  %i.sl = icmp eq ptr %.pr631, null
  br i1 %i.sl, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit597, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit593, !prof !71

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit593: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i590
  %i.sm = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %i.nb, i32 %i.sk, i8 noundef zeroext 4, i8 0) #29, !inline_history !3582
  %.pr633 = load ptr, ptr %i.lh, align 8
  %i.sn = icmp eq ptr %.pr633, null
  br i1 %i.sn, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit597, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i594, !prof !71

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i594: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit593
  %i.so = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSM_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 0, i64 noundef 0), !inline_history !551
  %i.sp = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESQ_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.so), !inline_history !551
  %.pr636.pr = load ptr, ptr %i.lh, align 8
  %i.sq = icmp eq ptr %.pr636.pr, null
  br i1 %i.sq, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit597, label %bb.bi, !prof !71

bb.bi:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i594
  %i.sr = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEEST_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %i.sm, i32 %i.sp, i8 0) #29, !inline_history !553
  %i.ss = zext i32 %i.sr to i64
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit597

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit597: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i590, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit589, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit593, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i594, %bb.bi
  %.sroa.07.0.i.i596 = phi i64 [ %i.ss, %bb.bi ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i594 ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit593 ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit589 ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i590 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  br label %bb.bj

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br label %bb.cg

bb.bj:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit597, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253
  %.0191512 = phi i32 [ 0, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit597 ], [ %i.zz, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253 ] ; 2 uses
  switch i32 %.0191512, label %default.unreachable693 [
    i32 2, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253.thread
    i32 0, label %bb.bk
    i32 1, label %bb.bn
  ]

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253.thread: ; preds = %bb.bj
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSL_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull %40)
  br label %.loopexit

bb.bk:                                            ; preds = %bb.bj
  %i.st = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_BindIfENS2_17ConditionWithHintEPNSL_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, i64 %.sroa.07.0.i.i596, ptr noundef nonnull %40)
  br i1 %i.st, label %bb.bl, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253

bb.bl:                                            ; preds = %bb.bk
  %i.su = load ptr, ptr %i.lh, align 8
  %i.sv = icmp eq ptr %i.su, null
  br i1 %i.sv, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih.exit, label %bb.bm, !prof !5

bb.bm:                                            ; preds = %bb.bl
  %.sroa.02.0.copyload.i.i.i246 = load i32, ptr %i.mi, align 4
  %i.sw = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE10ReduceLoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %i.sg, i32 %.sroa.02.0.copyload.i.i.i246, i8 16, i8 3, i8 0, i32 noundef 0, i8 noundef zeroext 1), !inline_history !386
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih.exit: ; preds = %bb.bl, %bb.bm
  %.sroa.011.0.i.i.i = phi i32 [ %i.sw, %bb.bm ], [ -1, %bb.bl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  store i8 0, ptr %i.mn, align 4
  store i32 %.sroa.011.0.i.i.i, ptr %i.mo, align 4
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSR_17const_or_values_tE(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(105) %22, ptr noundef nonnull align 4 dereferenceable(12) %41)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bj
  %i.sx = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26ControlFlowHelper_BindElseEPNSL_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull %40)
  br i1 %i.sx, label %bb.bo, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253

bb.bo:                                            ; preds = %bb.bn
  %i.sy = load ptr, ptr %i.lh, align 8
  %i.sz = icmp eq ptr %i.sy, null
  br i1 %i.sz, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih.exit251, label %bb.bp, !prof !5

bb.bp:                                            ; preds = %bb.bo
  %.sroa.02.0.copyload.i.i.i249 = load i32, ptr %i.mi, align 4
  %i.ta = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE10ReduceLoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %i.sg, i32 %.sroa.02.0.copyload.i.i.i249, i8 16, i8 1, i8 0, i32 noundef 0, i8 noundef zeroext 0), !inline_history !386
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih.exit251

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih.exit251: ; preds = %bb.bo, %bb.bp
  %.sroa.011.0.i.i.i250 = phi i32 [ %i.ta, %bb.bp ], [ -1, %bb.bo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  store i8 0, ptr %i.ml, align 4
  store i32 %.sroa.011.0.i.i.i250, ptr %i.mm, align 4
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSR_17const_or_values_tE(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(105) %22, ptr noundef nonnull align 4 dereferenceable(12) %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEih.exit251
  %i.tb = load ptr, ptr %i.lh, align 8
  %i.tc = icmp eq ptr %i.tb, null
  br i1 %i.tc, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.td = load ptr, ptr %i.mp, align 8            ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 52 ; 2 uses
  %i.tf = load i32, ptr %i.te, align 4
  %i.tg = icmp ne i32 %i.tf, -1
  %i.th = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(1432) %0, ptr noundef nonnull %i.td, i1 noundef zeroext %i.tg) #29, !inline_history !3327 ; 0 uses
  %i.ti = load i32, ptr %i.te, align 4            ; 5 uses
  %.not30.i = icmp eq i32 %i.ti, -1
  br i1 %.not30.i, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.tj = load i64, ptr %i.mq, align 8            ; 3 uses
  %i.tk = icmp ult i64 %i.tj, 2
  br i1 %i.tk, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.tl = load i64, ptr %i.ms, align 8
  %.not.i.i.i.i.i.i = icmp ult i64 %i.tl, 131072
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i

bb.bu:                                            ; preds = %bb.bs
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.mr, align 8 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.tm = load i64, ptr %i.ms, align 8
  %sext.i.i.i.i = shl i64 %i.tm, 48
  %i.tn = ashr exact i64 %sext.i.i.i.i, 48
  %i.to = zext i32 %i.ti to i64
  %i.tp = xor i64 %i.tn, %i.to
  %i.tq = zext i64 %i.tp to i128
  %i.tr = mul nuw nsw i128 %i.tq, 8779197792823184629 ; 2 uses
  %i.ts = lshr i128 %i.tr, 64
  %i.tt = xor i128 %i.ts, %i.tr
  %i.tu = trunc i128 %i.tt to i64                 ; 2 uses
  %i.tv = lshr i64 %i.tu, 57
  %i.tw = trunc nuw nsw i64 %i.tv to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i = load ptr, ptr %i.mt, align 8 ; 2 uses
  %i.tx = insertelement <16 x i8> poison, i8 %i.tw, i64 0
  %i.ty = shufflevector <16 x i8> %i.tx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bx, %bb.bu
  %.pn.i8.i.i.i.i = phi i64 [ %i.tu, %bb.bu ], [ %i.uq, %bb.bx ]
  %.sroa.13.0.i.i.i.i.i = phi i64 [ 0, %bb.bu ], [ %i.up, %bb.bx ]
  %.sroa.6.0.i.i.i.i.i = and i64 %.pn.i8.i.i.i.i, %i.tj ; 4 uses
  %i.tz = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.tz, i32 0, i32 3, i32 1)
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  %i.ub = load <16 x i8>, ptr %i.ua, align 1      ; 2 uses
  %i.uc = icmp eq <16 x i8> %i.ty, %i.ub
  %i.ud = bitcast <16 x i1> %i.uc to i16          ; 2 uses
  %.not46.i.i.i.i.i = icmp eq i16 %i.ud, 0
  br i1 %.not46.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bv, %bb.bw
  %.sroa.017.047.i.i.i.i.i = phi i16 [ %i.um, %bb.bw ], [ %i.ud, %bb.bv ] ; 3 uses
  %i.ue = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i.i, i1 true)
  %i.uf = zext nneg i16 %i.ue to i64
  %i.ug = add i64 %.sroa.6.0.i.i.i.i.i, %i.uf
  %i.uh = and i64 %i.ug, %i.tj
  %i.ui = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.uh
  %i.uj = load i32, ptr %i.ui, align 4
  %i.uk = icmp eq i32 %i.uj, %i.ti
  br i1 %i.uk, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a, label %bb.bw, !prof !9

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ul = add i16 %.sroa.017.047.i.i.i.i.i, -1
  %i.um = and i16 %i.ul, %.sroa.017.047.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.um, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.bw, %bb.bv
  %i.un = icmp eq <16 x i8> %i.ub, splat (i8 -128)
  %i.uo = bitcast <16 x i1> %i.un to i16
  %.not44.i.i.i.i.i = icmp eq i16 %i.uo, 0
  br i1 %.not44.i.i.i.i.i, label %bb.bx, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253, !prof !5

bb.bx:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.up = add i64 %.sroa.13.0.i.i.i.i.i, 16       ; 2 uses
  %i.uq = add i64 %i.up, %.sroa.6.0.i.i.i.i.i
  br label %bb.bv, !llvm.loop !485

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i: ; preds = %bb.bt
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mt, align 8
  %i.ur = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, align 4
  %i.us = icmp eq i32 %i.ur, %i.ti
  br i1 %i.us, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 %i.ti, ptr %4, align 4
  %i.ut = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.mq, ptr noundef nonnull align 4 dereferenceable(4) %4), !inline_history !3327 ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 32
  %i.uv = load i8, ptr %i.uu, align 8, !range !8, !noundef !6
  %i.uw = trunc nuw i8 %i.uv to i1
  br i1 %i.uw, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i, label %bb.by

bb.by:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a
  call void @_ZSt27__throw_bad_optional_accessv() #28, !inline_history !3327
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uy = load ptr, ptr %i.ux, align 8            ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.va = load ptr, ptr %i.uz, align 8            ; 2 uses
  %.not33.i = icmp eq ptr %i.uy, %i.va
  br i1 %.not33.i, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSL_25ControlFlowHelper_IfStateE.exit253, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i, %_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit
  %.034.i = phi ptr [ %i.zy, %_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit ], [ %i.uy, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i ] ; 3 uses
  %.sroa.0.0.copyload24.i = load ptr, ptr %.034.i, align 8
  %.sroa.4.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 8
  %.sroa.4.0.copyload.i296 = load i32, ptr %.sroa.4.0..0.sroa_idx.i, align 8 ; 3 uses
  %i.vb = load ptr, ptr %i.b, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8 ; 9 uses
  %i.vd = load ptr, ptr %i.vc, align 8
  %i.ve = ptrtoint ptr %i.vd to i64               ; 2 uses
  %i.vf = zext i32 %.sroa.4.0.copyload.i296 to i64 ; 2 uses
  %i.vg = add i64 %i.ve, %i.vf                    ; 2 uses
  %i.vh = inttoptr i64 %i.vg to ptr               ; 7 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %.sroa.0.0.copyload.i.i.i297 = load i32, ptr %i.vi, align 4
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24.i, i64 16
  %.sroa.02.0.copyload.i.i298 = load i32, ptr %i.vj, align 4
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 4
  %.sroa.0.0.copyload.i299 = load i8, ptr %i.vk, align 4
  %i.vl = load i8, ptr %i.vh, align 4
  %i.vm = zext i8 %i.vl to i64
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.vm
  %i.vo = load i64, ptr %i.vn, align 8
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vo ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vh, i64 2
  %i.vr = load i16, ptr %i.vq, align 2            ; 2 uses
  %i.vs = zext i16 %i.vr to i64
  %.idx.i.i = shl nuw nsw i64 %i.vs, 2            ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 %.idx.i.i
  %.not10.i.i = icmp eq i16 %i.vr, 0
  br i1 %.not10.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i
  %i.vu = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.vv = and i64 %i.vu, 4
  %lcmp.mod.not.not = icmp eq i64 %i.vv, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %.sroa.01.0.copyload.i.i.prol = load i32, ptr %i.vp, align 4
  %i.vw = load ptr, ptr %i.vc, align 8
  %i.vx = ptrtoint ptr %i.vw to i64
  %i.vy = zext i32 %.sroa.01.0.copyload.i.i.prol to i64
  %i.vz = add i64 %i.vx, %i.vy
  %i.wa = inttoptr i64 %i.vz to ptr
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 1 ; 2 uses
  %i.wc = load i8, ptr %i.wb, align 1
  %i.wd = add i8 %i.wc, -1                        ; 2 uses
  %spec.select.i.i.i.prol = icmp ult i8 %i.wd, -2
  br i1 %spec.select.i.i.i.prol, label %bb.bz, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol, !prof !9

bb.bz:                                            ; preds = %.lr.ph.i.i.prol
  store i8 %i.wd, ptr %i.wb, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol: ; preds = %bb.bz, %.lr.ph.i.i.prol
  %i.we = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol, %.lr.ph.i.i.preheader
  %.011.i.i.unr = phi ptr [ %i.vp, %.lr.ph.i.i.preheader ], [ %i.we, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol ]
  %i.wf = icmp eq i64 %i.vu, 0
  br i1 %i.wf, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1
  %.011.i.i = phi ptr [ %i.wx, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1 ], [ %.011.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i.i = load i32, ptr %.011.i.i, align 4
  %i.wg = load ptr, ptr %i.vc, align 8
  %i.wh = ptrtoint ptr %i.wg to i64
  %i.wi = zext i32 %.sroa.01.0.copyload.i.i to i64
  %i.wj = add i64 %i.wh, %i.wi
  %i.wk = inttoptr i64 %i.wj to ptr
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 1 ; 2 uses
  %i.wm = load i8, ptr %i.wl, align 1
  %i.wn = add i8 %i.wm, -1                        ; 2 uses
  %spec.select.i.i.i = icmp ult i8 %i.wn, -2
  br i1 %spec.select.i.i.i, label %bb.ca, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i, !prof !9

bb.ca:                                            ; preds = %.lr.ph.i.i
  store i8 %i.wn, ptr %i.wl, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i: ; preds = %bb.ca, %.lr.ph.i.i
  %i.wo = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %.sroa.01.0.copyload.i.i.1 = load i32, ptr %i.wo, align 4
  %i.wp = load ptr, ptr %i.vc, align 8
  %i.wq = ptrtoint ptr %i.wp to i64
  %i.wr = zext i32 %.sroa.01.0.copyload.i.i.1 to i64
  %i.ws = add i64 %i.wq, %i.wr
  %i.wt = inttoptr i64 %i.ws to ptr
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 1 ; 2 uses
  %i.wv = load i8, ptr %i.wu, align 1
  %i.ww = add i8 %i.wv, -1                        ; 2 uses
  %spec.select.i.i.i.1 = icmp ult i8 %i.ww, -2
  br i1 %spec.select.i.i.i.1, label %bb.cb, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1, !prof !9

bb.cb:                                            ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i
  store i8 %i.ww, ptr %i.wu, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1: ; preds = %bb.cb, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i
  %i.wx = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i301.1 = icmp eq ptr %i.wx, %i.vt
  br i1 %.not.i.i301.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i, label %.lr.ph.i.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1, %.lr.ph.i.i.prol.loopexit
  %.pre.i = load ptr, ptr %i.vc, align 8
  %.pre28.i = ptrtoint ptr %.pre.i to i64         ; 2 uses
  %.pre29.i = add i64 %.pre28.i, %i.vf            ; 2 uses
  %.pre31.i = inttoptr i64 %.pre29.i to ptr
  br label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i, %.lr.ph.i
  %.pre-phi32.i = phi ptr [ %.pre31.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i ], [ %i.vh, %.lr.ph.i ] ; 2 uses
  %.pre-phi30.i = phi i64 [ %.pre29.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i ], [ %i.vg, %.lr.ph.i ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre28.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i ], [ %i.ve, %.lr.ph.i ] ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vh, i64 1
  %.sroa.04.0.copyload.i = load i8, ptr %i.wy, align 1
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vb, i64 16 ; 4 uses
  %i.xa = load ptr, ptr %i.wz, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vb, i64 32 ; 5 uses
  %i.xc = load ptr, ptr %i.xb, align 8            ; 2 uses
  %i.xd = lshr i32 %.sroa.4.0.copyload.i296, 4
  %i.xe = zext nneg i32 %i.xd to i64              ; 2 uses
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.xc, i64 %i.xe
  %i.xg = load i16, ptr %i.xf, align 2            ; 3 uses
  store ptr %.pre-phi32.i, ptr %i.wz, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.vb, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8
  %i.xj = ptrtoint ptr %i.xi to i64               ; 2 uses
  %i.xk = sub i64 %i.xj, %.pre-phi30.i
  %i.xl = icmp ult i64 %i.xk, 9
  br i1 %i.xl, label %bb.cc, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i, !prof !5

bb.cc:                                            ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i
  %i.xm = sub i64 %i.xj, %.pre-phi.i
  %i.xn = lshr exact i64 %i.xm, 3
  %i.xo = and i64 %i.xn, 4294967295
  %i.xp = add nuw nsw i64 %i.xo, 2
  call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.vb, i64 noundef %i.xp)
  %.pre.i.i.i.i.i302 = load ptr, ptr %i.wz, align 8 ; 2 uses
  %.pre10.i.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i.i302 to i64
  %.pre26.i = load ptr, ptr %i.vc, align 8
  %.pre27.i = load ptr, ptr %i.xb, align 8
  %.pre33.i = ptrtoint ptr %.pre26.i to i64
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i: ; preds = %bb.cc, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i
  %.pre-phi34.i = phi i64 [ %.pre33.i, %bb.cc ], [ %.pre-phi.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i ]
  %i.xq = phi ptr [ %.pre27.i, %bb.cc ], [ %i.xc, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i ]
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre10.i.i.i.i.i, %bb.cc ], [ %.pre-phi30.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i ]
  %i.xr = phi ptr [ %.pre.i.i.i.i.i302, %bb.cc ], [ %.pre-phi32.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i ] ; 7 uses
  %i.xs = sub i64 %.pre-phi.i.i.i.i.i, %.pre-phi34.i ; 2 uses
  %i.xt = trunc i64 %i.xs to i32
  %i.xu = lshr i64 %i.xs, 4
  %i.xv = and i64 %i.xu, 268435455
  %i.xw = getelementptr inbounds nuw [2 x i8], ptr %i.xq, i64 %i.xv
  store i16 2, ptr %i.xw, align 2
  %i.xx = load ptr, ptr %i.xb, align 8
  %i.xy = add i32 %i.xt, 16
  %i.xz = lshr i32 %i.xy, 4
  %i.ya = add nsw i32 %i.xz, -1
  %i.yb = zext i32 %i.ya to i64
  %i.yc = getelementptr inbounds nuw [2 x i8], ptr %i.xx, i64 %i.yb
  store i16 2, ptr %i.yc, align 2
  store i8 91, ptr %i.xr, align 4
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xr, i64 1 ; 2 uses
  store i8 0, ptr %i.yd, align 1
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xr, i64 2 ; 2 uses
  store i16 2, ptr %i.ye, align 2
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xr, i64 8 ; 4 uses
  store i32 %.sroa.0.0.copyload.i.i.i297, ptr %i.yf, align 4
  %.sroa.4496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xr, i64 12
  store i32 %.sroa.02.0.copyload.i.i298, ptr %.sroa.4496.0..sroa_idx, align 4
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xr, i64 4
  store i8 %.sroa.0.0.copyload.i299, ptr %i.yg, align 4
  store ptr %i.xa, ptr %i.wz, align 8
  %i.yh = load ptr, ptr %i.xb, align 8
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %i.yh, i64 %i.xe
  store i16 %i.xg, ptr %i.yi, align 2
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CallBuiltinINS2_21BuiltinCallDescriptor11StringEqualEEENS2_6detail12IndexTypeForINT_9results_tEE4typeEPNS0_7IsolateERKNSR_11arguments_tEQaantsrTL0__16kNeedsFrameStatentsrS10_13kNeedsContext:bb.a

bb.f:                                             ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit
  %.sroa.06.0 = phi i32 [ %.sroa.010.0.i.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit ], [ -1, %bb.a ]
  ret i32 %.sroa.06.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CallBuiltinINS2_21BuiltinCallDescriptor16StringComparisonILNS0_7BuiltinE77EEEEENS2_6detail12IndexTypeForINT_9results_tEE4typeEPNS0_7IsolateERKNST_11arguments_tEQaantsrTL0__16kNeedsFrameStatentsrS12_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %4 = alloca %"class.v8::base::SmallVector.2434", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -1672
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3689)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.e, ptr %4, align 8, !alias.scope !3692
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !3692
  %i.i = load <2 x i32>, ptr %2, align 4, !noalias !3692
  %i.j = shufflevector <2 x i32> %i.i, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.j, ptr %i.e, align 8, !alias.scope !3692
  store ptr %i.h, ptr %i.f, align 8, !alias.scope !3692
  %i.k = getelementptr inbounds i8, ptr %0, i64 -1648
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.o = call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef 77) #24 ; 3 uses
  store ptr %i.o, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = load i32, ptr %i.o, align 8
  %i.s = sub nsw i32 %i.q, %i.r
  %i.t = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.s, i32 0, i8 112, i32 noundef 0) #24
  %i.u = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.t, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %i.n, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.v = call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %1, i32 noundef 77) #24
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 63768
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not5.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not5.i.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.z, ptr %i.w) #24
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISP_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.i, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISP_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = getelementptr inbounds i8, ptr %0, i64 -1640 ; 3 uses
  %i.ag = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSM_4KindENSM_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.af, i8 noundef zeroext 8, i64 %i.ae)
  %i.ah = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESQ_(ptr noundef nonnull align 8 dereferenceable(144) %i.af, i32 %i.ag)
  %.pr.i = load ptr, ptr %i.a, align 8
  %i.ai = icmp eq ptr %.pr.i, null
  br i1 %i.ai, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.e, !prof !71

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISP_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.i
  %i.aj = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES4_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SO_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSX_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES18_DpT1_(ptr noundef nonnull align 8 dereferenceable(144) %i.af, i32 %i.ah, i32 -1, ptr nonnull %i.e, i64 2, ptr noundef %i.u, i32 158739)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISP_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.i, %bb.e
  %.sroa.010.0.i.i.i = phi i32 [ %i.aj, %bb.e ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISP_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit
  %.sroa.06.0 = phi i32 [ %.sroa.010.0.i.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit ], [ -1, %bb.a ]
  ret i32 %.sroa.06.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CallBuiltinINS2_21BuiltinCallDescriptor16StringComparisonILNS0_7BuiltinE78EEEEENS2_6detail12IndexTypeForINT_9results_tEE4typeEPNS0_7IsolateERKNST_11arguments_tEQaantsrTL0__16kNeedsFrameStatentsrS12_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %4 = alloca %"class.v8::base::SmallVector.2434", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -1672
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3705)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.e, ptr %4, align 8, !alias.scope !3708
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !3708
  %i.i = load <2 x i32>, ptr %2, align 4, !noalias !3708
  %i.j = shufflevector <2 x i32> %i.i, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.j, ptr %i.e, align 8, !alias.scope !3708
  store ptr %i.h, ptr %i.f, align 8, !alias.scope !3708
  %i.k = getelementptr inbounds i8, ptr %0, i64 -1648
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.o = call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef 78) #24 ; 3 uses
  store ptr %i.o, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = load i32, ptr %i.o, align 8
  %i.s = sub nsw i32 %i.q, %i.r
  %i.t = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.s, i32 0, i8 112, i32 noundef 0) #24
  %i.u = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.t, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %i.n, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.v = call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %1, i32 noundef 78) #24
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 63768
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not5.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not5.i.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.z, ptr %i.w) #24
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISP_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.i, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISP_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = getelementptr inbounds i8, ptr %0, i64 -1640 ; 3 uses
  %i.ag = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSM_4KindENSM_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.af, i8 noundef zeroext 8, i64 %i.ae)
  %i.ah = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESQ_(ptr noundef nonnull align 8 dereferenceable(144) %i.af, i32 %i.ag)
  %.pr.i = load ptr, ptr %i.a, align 8
  %i.ai = icmp eq ptr %.pr.i, null
  br i1 %i.ai, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.e, !prof !71

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISP_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.i
  %i.aj = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES4_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SO_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSX_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES18_DpT1_(ptr noundef nonnull align 8 dereferenceable(144) %i.af, i32 %i.ah, i32 -1, ptr nonnull %i.e, i64 2, ptr noundef %i.u, i32 158739)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISP_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.i, %bb.e
  %.sroa.010.0.i.i.i = phi i32 [ %i.aj, %bb.e ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4CodeEEENS2_1VIT_EENS0_6HandleISP_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit
  %.sroa.06.0 = phi i32 [ %.sroa.010.0.i.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallBuiltinImplEPNS0_7IsolateENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit ], [ -1, %bb.a ]
  ret i32 %.sroa.06.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal8compiler10turboshaft27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEEE20GetElidedStringInputENS2_1VINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 864
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = load i64, ptr %i.g, align 8
  %sext.i.i.i = shl i64 %i.h, 48
  %i.i = ashr exact i64 %sext.i.i.i, 48
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %i.k = xor i64 %i.i, %i.j
  %i.l = zext i64 %i.k to i128
  %i.m = mul nuw nsw i128 %i.l, 8779197792823184629 ; 2 uses
  %i.n = lshr i128 %i.m, 64
  %i.o = xor i128 %i.n, %i.m
  %i.p = trunc i128 %i.o to i64                   ; 2 uses
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.s, align 8 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i8.i.i.i = phi i64 [ %i.p, %bb.c ], [ %i.am, %bb.f ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.al, %bb.f ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i8.i.i.i, %i.b ; 4 uses
  %i.v = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.x = load <16 x i8>, ptr %i.w, align 1        ; 2 uses
  %i.y = icmp eq <16 x i8> %i.u, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.ai, %bb.e ], [ %i.z, %bb.d ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.6.0.i.i.i.i, %i.ab
  %i.ad = and i64 %i.ac, %i.b
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %i.af, %1
  br i1 %i.ag, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread9.a, label %bb.e, !prof !9

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.ai = and i16 %i.ah, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.aj = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %.not44.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not44.i.i.i.i, label %bb.f, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread, !prof !5

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.am = add i64 %i.al, %.sroa.6.0.i.i.i.i
  br label %bb.d, !llvm.loop !1376

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit: ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.an, align 8
  %i.ao = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %i.ap = icmp eq i32 %i.ao, %1
  br i1 %i.ap, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit._crit_edge, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit._crit_edge: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit
  %.pre = zext i32 %1 to i64
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread9.a

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread9.a: ; preds = %.lr.ph.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit._crit_edge
  %.sroa.0.0.insert.ext.i.pre-phi = phi i64 [ %.pre, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit._crit_edge ], [ %i.j, %.lr.ph.i.i.i.i ]
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i.pre-phi, 4294967296
  br label %bb.i

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.b, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit
  %i.aq = lshr i32 %1, 4
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  %i.av = load i32, ptr %i.au, align 4            ; 2 uses
  %.not.i.i = icmp eq i32 %i.av, -1
  br i1 %.not.i.i, label %bb.g, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS0_6StringEEENS2_1VIT0_EES13_i.exit

bb.g:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ar ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.az = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.az, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.g
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.ba, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS0_6StringEEENS2_1VIT0_EES13_i.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS0_6StringEEENS2_1VIT0_EES13_i.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.av, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  %.sroa.0.0.insert.ext.i4 = zext i32 %.sroa.014.0.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS0_6StringEEENS2_1VIT0_EES13_i.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread9.a
  %.sroa.03.0.in = phi i64 [ %.sroa.0.0.insert.insert.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft1VINS4_6StringEEESt4pairINS6_27StringEscapeAnalysisReducerINS6_24JSGenericLoweringReducerINS6_23DataViewLoweringReducerINS6_22MachineLoweringReducerINS6_26FastApiCallLoweringReducerINS6_15VariableReducerINS6_21SelectLoweringReducerINS6_26MachineOptimizationReducerINS6_21EmitProjectionReducerINS6_21ValueNumberingReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS3_4base3tmp5list1IJNS6_12GraphVisitorESB_SC_SD_SE_SF_SG_SH_SI_SK_SM_EEEEEEEEEEEEEEEEEEEEEEEEEEEE16ElidedStringPartES16_EEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorISA_IKS9_S17_EEEE8containsIS9_EEbRS1F_.exit.thread9.a ], [ %.sroa.0.0.insert.ext.i4, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SA_SB_SD_SF_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS0_6StringEEENS2_1VIT0_EES13_i.exit ]
  ret i64 %.sroa.03.0.in
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE31AssembleOutputGraphStringConcatERKNS2_14StringConcatOpE(ptr noundef nonnull align 8 dereferenceable(1432) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.3154", align 4   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i5 = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i5, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i4 = load i32, ptr %i.l, align 4
  %i.m = lshr i32 %.sroa.0.0.copyload.i4, 4
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %.not.i.i8 = icmp eq i32 %i.p, -1
  br i1 %.not.i.i8, label %bb.d, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit15

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.n ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i10 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.2.0.copyload.i.i.i11 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i10, align 8
  %i.t = trunc nuw i8 %.sroa.2.0.copyload.i.i.i11 to i1
  br i1 %i.t, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i12, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i12: ; preds = %bb.d
  %.sroa.02.0.copyload.i.i.i13 = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i13, i64 16
  %.sroa.02.0.copyload.i10.i.i14 = load i32, ptr %i.u, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit15

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit15: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i12
  %.sroa.014.0.i.i9 = phi i32 [ %i.p, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit ], [ %.sroa.02.0.copyload.i10.i.i14, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i12 ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i = load i32, ptr %i.v, align 4
  %i.w = lshr i32 %.sroa.0.0.copyload.i, 4
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %.not.i.i18 = icmp eq i32 %i.z, -1
  br i1 %.not.i.i18, label %bb.f, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit25

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit15
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.x ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i20 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.2.0.copyload.i.i.i21 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i20, align 8
  %i.ad = trunc nuw i8 %.sroa.2.0.copyload.i.i.i21 to i1
  br i1 %i.ad, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i22, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i22: ; preds = %bb.f
  %.sroa.02.0.copyload.i.i.i23 = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i23, i64 16
  %.sroa.02.0.copyload.i10.i.i24 = load i32, ptr %i.ae, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit25

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit25: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit15, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i22
  %.sroa.014.0.i.i19 = phi i32 [ %i.z, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_27StringEscapeAnalysisReducerINS2_24JSGenericLoweringReducerINS2_23DataViewLoweringReducerINS2_22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SB_SC_SE_SG_EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENSA_ISY_EEE3MapENS2_7OpIndexE.exit15 ], [ %.sroa.02.0.copyload.i10.i.i24, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i22 ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6TagSmiENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %i.af, i64 4294967296, i32 -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i32 %.sroa.014.0.i.i19, ptr %2, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sroa.014.0.i.i9, ptr %i.aj, align 4
  %i.ak = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CallBuiltinINS2_21BuiltinCallDescriptor19StringAdd_CheckNoneEEENS2_6detail12IndexTypeForINT_9results_tEE4typeEPNS0_7IsolateENS2_1VINS0_7ContextEEERKNSR_11arguments_tEQaantsrTL0__16kNeedsFrameStatesrS13_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(136) %i.af, ptr noundef %i.ah, i32 %i.ai, ptr noundef nonnull align 4 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i32 %i.ak
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11CallBuiltinINS2_21BuiltinCallDescriptor19StringAdd_CheckNoneEEENS2_6detail12IndexTypeForINT_9results_tEE4typeEPNS0_7IsolateENS2_1VINS0_7ContextEEERKNSR_11arguments_tEQaantsrTL0__16kNeedsFrameStatesrS13_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %5 = alloca %"class.v8::base::SmallVector.2392", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -1672
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3721)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.e, ptr %5, align 8, !alias.scope !3724
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !3724
  %i.i = load <2 x i32>, ptr %3, align 4, !noalias !3724
  %i.j = shufflevector <2 x i32> %i.i, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.j, ptr %i.e, align 8, !alias.scope !3724
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %2, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3724
  store ptr %i.h, ptr %i.f, align 8, !alias.scope !3724
  %i.k = getelementptr inbounds i8, ptr %0, i64 -1648
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.o = call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef 777) #24 ; 3 uses
  store ptr %i.o, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = load i32, ptr %i.o, align 8
  %i.s = sub nsw i32 %i.q, %i.r
  %i.t = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.s, i32 0, i8 80, i32 noundef 0) #24
  %i.u = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.t, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %i.n, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.v = call { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef %1, i32 noundef 777) #24
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 63768
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not5.i.i.i = icmp eq ptr %i.ab, null
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft22MachineLoweringReducerINS2_26FastApiCallLoweringReducerINS2_15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE38ReduceTransitionElementsKindOrCheckMapENS2_1VINS0_10HeapObjectEEENSV_INS0_3MapEEENSV_INS2_10FrameStateEEERKNS1_37ElementsTransitionWithMultipleSourcesE:bb.a
  call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.zx, i64 noundef %i.aan)
  %.pre.i.i.i.i.i160 = load ptr, ptr %i.zy, align 8 ; 2 uses
  %.pre10.i.i.i.i.i161 = ptrtoint ptr %.pre.i.i.i.i.i160 to i64
  %.pre.i162 = load ptr, ptr %i.aab, align 8
  %.pre12.i = ptrtoint ptr %.pre.i162 to i64
  %.pre13.i163 = sub i64 %.pre10.i.i.i.i.i161, %.pre12.i
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit.i

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit.i: ; preds = %bb.cr, %.thread156.i.i
  %.pre-phi14.i = phi i64 [ %i.aae, %.thread156.i.i ], [ %.pre13.i163, %bb.cr ] ; 2 uses
  %i.aao = phi ptr [ %i.zz, %.thread156.i.i ], [ %.pre.i.i.i.i.i160, %bb.cr ] ; 8 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  store ptr %i.aap, ptr %i.zy, align 8
  %i.aaq = trunc i64 %.pre-phi14.i to i32
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zx, i64 32 ; 2 uses
  %i.aas = load ptr, ptr %i.aar, align 8
  %i.aat = lshr i64 %.pre-phi14.i, 4
  %i.aau = and i64 %i.aat, 268435455
  %i.aav = getelementptr inbounds nuw [2 x i8], ptr %i.aas, i64 %i.aau
  store i16 2, ptr %i.aav, align 2
  %i.aaw = load ptr, ptr %i.aar, align 8
  %i.aax = add i32 %i.aaq, 16
  %i.aay = lshr i32 %i.aax, 4
  %i.aaz = add nsw i32 %i.aay, -1
  %i.aba = zext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %i.aaw, i64 %i.aba
  store i16 2, ptr %i.abb, align 2
  store i8 72, ptr %i.aao, align 4
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aao, i64 1
  store i8 0, ptr %i.abc, align 1
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aao, i64 2
  store i16 1, ptr %i.abd, align 2
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  store i32 %i.za, ptr %i.abe, align 4
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aao, i64 4
  store i8 0, ptr %i.abf, align 4
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aao, i64 5
  store i8 1, ptr %i.abg, align 1
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aao, i64 6
  store i8 4, ptr %i.abh, align 2
  %i.abi = load ptr, ptr %i.aab, align 8
  %i.abj = ptrtoint ptr %i.abi to i64
  %i.abk = add i64 %i.abj, %i.zh
  %i.abl = inttoptr i64 %i.abk to ptr
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 1 ; 2 uses
  %i.abn = load i8, ptr %i.abm, align 1           ; 2 uses
  %.not.i.i.i157 = icmp eq i8 %i.abn, -1
  br i1 %.not.i.i.i157, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit.i, label %bb.cs, !prof !5

bb.cs:                                            ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit.i
  %i.abo = add nuw i8 %i.abn, 1
  store i8 %i.abo, ptr %i.abm, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit.i

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit.i: ; preds = %bb.cs, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit.i
  %.sroa.0.0.copyload.i.i158 = load i32, ptr %i.au, align 4
  %i.abp = load ptr, ptr %i.b, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.abq = lshr i64 %i.aae, 4
  %i.abr = and i64 %i.abq, 268435455              ; 4 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abp, i64 216 ; 3 uses
  %i.abt = load ptr, ptr %i.abs, align 8          ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abp, i64 208 ; 4 uses
  %i.abv = load ptr, ptr %i.abu, align 8          ; 3 uses
  %i.abw = ptrtoint ptr %i.abt to i64
  %i.abx = ptrtoint ptr %i.abv to i64             ; 3 uses
  %i.aby = sub i64 %i.abw, %i.abx
  %i.abz = ashr exact i64 %i.aby, 2
  %.not.i.i10.i = icmp ugt i64 %i.abz, %i.abr
  br i1 %.not.i.i10.i, label %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESO_NSM_4KindEEEENS2_7OpIndexEDpT0_.exit, label %bb.ct, !prof !9

bb.ct:                                            ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit.i
  %i.aca = lshr i64 %i.abr, 1
  %i.acb = add nuw nsw i64 %i.abr, 32
  %i.acc = add nuw nsw i64 %i.acb, %i.aca         ; 4 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abp, i64 224 ; 2 uses
  %i.ace = load ptr, ptr %i.acd, align 8
  %i.acf = ptrtoint ptr %i.ace to i64
  %i.acg = sub i64 %i.acf, %i.abx
  %i.ach = ashr exact i64 %i.acg, 2
  %.not.i.i193 = icmp ugt i64 %i.acc, %i.ach
  br i1 %.not.i.i193, label %bb.cu, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i194, !prof !5

bb.cu:                                            ; preds = %bb.ct
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abp, i64 200
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aci, i64 noundef %i.acc)
  %.pre.i198 = load ptr, ptr %i.abu, align 8      ; 2 uses
  %.pre13.i199 = ptrtoint ptr %.pre.i198 to i64
  %.pre264 = load ptr, ptr %i.abs, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i194

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i194: ; preds = %bb.cu, %bb.ct
  %i.acj = phi ptr [ %i.abt, %bb.ct ], [ %.pre264, %bb.cu ] ; 3 uses
  %.pre-phi.i195 = phi i64 [ %i.abx, %bb.ct ], [ %.pre13.i199, %bb.cu ]
  %i.ack = phi ptr [ %i.abv, %bb.ct ], [ %.pre.i198, %bb.cu ] ; 2 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %i.acc ; 4 uses
  %i.acm = icmp ult ptr %i.acj, %i.acl
  br i1 %i.acm, label %.lr.ph.preheader.i196, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i186

.lr.ph.preheader.i196:                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i194
  %i.acn = ptrtoint ptr %i.acj to i64             ; 2 uses
  %i.aco = shl nuw nsw i64 %i.acc, 2
  %i.acp = add nuw i64 %.pre-phi.i195, %i.aco
  %i.acq = add i64 %i.acn, 4
  %umax.i197 = call i64 @llvm.umax.i64(i64 %i.acp, i64 %i.acq)
  %i.acr = xor i64 %i.acn, -1
  %i.acs = add i64 %umax.i197, %i.acr
  %i.act = and i64 %i.acs, -4
  %i.acu = add i64 %i.act, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.acj, i8 -1, i64 %i.acu, i1 false)
  %.pre265 = load ptr, ptr %i.abu, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i186

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i186: ; preds = %.lr.ph.preheader.i196, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i194
  %i.acv = phi ptr [ %i.ack, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i194 ], [ %.pre265, %.lr.ph.preheader.i196 ] ; 3 uses
  %i.acw = load ptr, ptr %i.acd, align 8          ; 2 uses
  %i.acx = ptrtoint ptr %i.acw to i64             ; 2 uses
  %i.acy = ptrtoint ptr %i.acv to i64
  %i.acz = sub i64 %i.acx, %i.acy
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acv, i64 %i.acz
  %i.adb = icmp ult ptr %i.acl, %i.acw
  br i1 %i.adb, label %.lr.ph.preheader.i188, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit192

.lr.ph.preheader.i188:                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i186
  %i.adc = ptrtoint ptr %i.acl to i64             ; 2 uses
  %i.add = add i64 %i.adc, 4
  %umax.i189 = call i64 @llvm.umax.i64(i64 %i.acx, i64 %i.add)
  %i.ade = xor i64 %i.adc, -1
  %i.adf = add i64 %umax.i189, %i.ade
  %i.adg = and i64 %i.adf, -4
  %i.adh = add i64 %i.adg, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.acl, i8 -1, i64 %i.adh, i1 false)
  %.pre.i.i.i159.pre = load ptr, ptr %i.abu, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit192

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit192: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i186, %.lr.ph.preheader.i188
  %.pre.i.i.i159 = phi ptr [ %i.acv, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i186 ], [ %.pre.i.i.i159.pre, %.lr.ph.preheader.i188 ]
  store ptr %i.ada, ptr %i.abs, align 8
  br label %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESO_NSM_4KindEEEENS2_7OpIndexEDpT0_.exit

_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESO_NSM_4KindEEEENS2_7OpIndexEDpT0_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit192
  %i.adi = phi ptr [ %.pre.i.i.i159, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit192 ], [ %i.abv, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit.i ]
  %i.adj = trunc i64 %i.aae to i32
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %i.abr
  store i32 %.sroa.0.0.copyload.i.i158, ptr %i.adk, align 4
  %i.adl = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_15TaggedBitcastOpEEENS2_7OpIndexESQ_(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %i.adj)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit.thread236: ; preds = %bb.bw, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESQ_.exit132, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE12ReduceChangeENS2_1VINS2_13UntaggedUnionIJNSS_IJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEENSS_IJNS2_13FloatWithBitsILm32EEENSX_ILm64EEEEEEEEEEENS2_8ChangeOp4KindENS13_10AssumptionENS2_22RegisterRepresentationES16_.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE34CallRuntime_TransitionElementsKindEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEENSO_INS0_3MapEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit: ; preds = %.critedge.i.i, %bb.cq, %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESO_NSM_4KindEEEENS2_7OpIndexEDpT0_.exit
  %.sroa.07.0.i.i.i100.ph.ph = phi i32 [ %i.adl, %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESO_NSM_4KindEEEENS2_7OpIndexEDpT0_.exit ], [ %i.zw, %bb.cq ], [ %.sroa.0.0.copyload.i.i93.i.i, %.critedge.i.i ]
  %.pr233.pr = load ptr, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 %.sroa.02.0.i.i331, ptr %7, align 4
  store i32 %1, ptr %i.bf, align 4
  %i.adm = icmp eq ptr %.pr233.pr, null
  br i1 %i.adm, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE34CallRuntime_TransitionElementsKindEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEENSO_INS0_3MapEEE.exit, label %bb.cv, !prof !71

bb.cv:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit
  %i.adn = load ptr, ptr %i.b, align 8, !nonnull !6, !align !7
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 160
  %i.adp = load ptr, ptr %i.ado, align 8          ; 2 uses
  %i.adq = call noundef ptr @_ZN2v88internal8compiler7Linkage24GetRuntimeCallDescriptorEPNS0_4ZoneENS0_7Runtime10FunctionIdEiNS_4base5FlagsINS1_8Operator8PropertyEhhEENS8_INS1_14CallDescriptor4FlagEiiEENS1_16LazyDeoptOnThrowE(ptr noundef %i.adp, i32 noundef 10, i32 noundef 2, i8 96, i32 0, i8 noundef zeroext 0) #24
  %i.adr = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.adq, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %i.adp, ptr noundef null)
  %i.ads = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15CallRuntimeImplINS2_1VINS0_6ObjectEEESt5tupleIJNSN_INS0_10HeapObjectEEENSN_INS0_3MapEEEEEEET_PNS0_7IsolateENS0_7Runtime10FunctionIdEPKNS2_16TSCallDescriptorENSN_INS2_10FrameStateEEENSN_INS0_7ContextEEERKT0_(ptr noundef nonnull align 8 dereferenceable(136) %i.ac, ptr noundef %i.ri, i32 noundef 10, ptr noundef %i.adr, i32 -1, i32 %.sroa.07.0.i.i.i100.ph.ph, ptr noundef nonnull align 4 dereferenceable(8) %7) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE34CallRuntime_TransitionElementsKindEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEENSO_INS0_3MapEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE34CallRuntime_TransitionElementsKindEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEENSO_INS0_3MapEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit.thread236, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE34CallRuntime_TransitionElementsKindEPNS0_7IsolateENS2_1VINS0_7ContextEEENSO_INS0_10HeapObjectEEENSO_INS0_3MapEEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14StoreFieldImplINS0_10HeapObjectEEEvNS2_1VIT_EERKNS1_11FieldAccessENSO_INS2_3AnyEEEb.exit
  %i.adt = load ptr, ptr %i.ak, align 8           ; 2 uses
  %i.adu = icmp eq ptr %i.adt, null
  br i1 %i.adu, label %.critedge53, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i8 1, ptr %i.aa, align 8
  %i.adv = load ptr, ptr %8, align 8              ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 52 ; 2 uses
  %i.adx = load i32, ptr %i.adw, align 4
  %i.ady = icmp ne i32 %i.adx, -1
  %i.adz = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21SelectLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(1432) %0, ptr noundef nonnull %i.adv, i1 noundef zeroext %i.ady) #29, !inline_history !3327 ; 0 uses
  %i.aea = load i32, ptr %i.adw, align 4          ; 5 uses
  %.not30.i = icmp eq i32 %i.aea, -1
  br i1 %.not30.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i66, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aeb = load i64, ptr %i.bk, align 8           ; 3 uses
  %i.aec = icmp ult i64 %i.aeb, 2
  br i1 %i.aec, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aed = load i64, ptr %i.bm, align 8
  %.not.i.i.i.i.i.i = icmp ult i64 %i.aed, 131072
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i66, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i

bb.da:                                            ; preds = %bb.cy
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.aee = load i64, ptr %i.bm, align 8
  %sext.i.i.i.i = shl i64 %i.aee, 48
  %i.aef = ashr exact i64 %sext.i.i.i.i, 48
  %i.aeg = zext i32 %i.aea to i64
  %i.aeh = xor i64 %i.aef, %i.aeg
  %i.aei = zext i64 %i.aeh to i128
  %i.aej = mul nuw nsw i128 %i.aei, 8779197792823184629 ; 2 uses
  %i.aek = lshr i128 %i.aej, 64
  %i.ael = xor i128 %i.aek, %i.aej
  %i.aem = trunc i128 %i.ael to i64               ; 2 uses
  %i.aen = lshr i64 %i.aem, 57
  %i.aeo = trunc nuw nsw i64 %i.aen to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i = load ptr, ptr %i.bn, align 8 ; 2 uses
  %i.aep = insertelement <16 x i8> poison, i8 %i.aeo, i64 0
  %i.aeq = shufflevector <16 x i8> %i.aep, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.db

bb.db:                                            ; preds = %bb.dd, %bb.da
  %.pn.i8.i.i.i.i = phi i64 [ %i.aem, %bb.da ], [ %i.afi, %bb.dd ]
  %.sroa.13.0.i.i.i.i.i = phi i64 [ 0, %bb.da ], [ %i.afh, %bb.dd ]
  %.sroa.6.0.i.i.i.i.i = and i64 %.pn.i8.i.i.i.i, %i.aeb ; 4 uses
  %i.aer = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.aer, i32 0, i32 3, i32 1)
  %i.aes = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  %i.aet = load <16 x i8>, ptr %i.aes, align 1    ; 2 uses
  %i.aeu = icmp eq <16 x i8> %i.aeq, %i.aet
  %i.aev = bitcast <16 x i1> %i.aeu to i16        ; 2 uses
  %.not46.i.i.i.i.i = icmp eq i16 %i.aev, 0
  br i1 %.not46.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.db, %bb.dc
  %.sroa.017.047.i.i.i.i.i = phi i16 [ %i.afe, %bb.dc ], [ %i.aev, %bb.db ] ; 3 uses
  %i.aew = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i.i, i1 true)
  %i.aex = zext nneg i16 %i.aew to i64
  %i.aey = add i64 %.sroa.6.0.i.i.i.i.i, %i.aex
  %i.aez = and i64 %i.aey, %i.aeb
  %i.afa = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.aez
  %i.afb = load i32, ptr %i.afa, align 4
  %i.afc = icmp eq i32 %i.afb, %i.aea
  br i1 %i.afc, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a, label %bb.dc, !prof !9

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.afd = add i16 %.sroa.017.047.i.i.i.i.i, -1
  %i.afe = and i16 %i.afd, %.sroa.017.047.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.afe, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.dc, %bb.db
  %i.aff = icmp eq <16 x i8> %i.aet, splat (i8 -128)
  %i.afg = bitcast <16 x i1> %i.aff to i16
  %.not44.i.i.i.i.i = icmp eq i16 %i.afg, 0
  br i1 %.not44.i.i.i.i.i, label %bb.dd, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i66, !prof !5

bb.dd:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.afh = add i64 %.sroa.13.0.i.i.i.i.i, 16      ; 2 uses
  %i.afi = add i64 %i.afh, %.sroa.6.0.i.i.i.i.i
  br label %bb.db, !llvm.loop !485

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i: ; preds = %bb.cz
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8
  %i.afj = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, align 4
  %i.afk = icmp eq i32 %i.afj, %i.aea
  br i1 %i.afk, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i66

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i32 %i.aea, ptr %5, align 4
  %i.afl = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 4 dereferenceable(4) %5), !inline_history !3327 ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 32
  %i.afn = load i8, ptr %i.afm, align 8, !range !8, !noundef !6
  %i.afo = trunc nuw i8 %i.afn to i1
  br i1 %i.afo, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i, label %bb.de

bb.de:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a
  call void @_ZSt27__throw_bad_optional_accessv() #28, !inline_history !3327
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %i.afq = load ptr, ptr %i.afp, align 8          ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afl, i64 16
  %i.afs = load ptr, ptr %i.afr, align 8          ; 2 uses
  %.not33.i = icmp eq ptr %i.afq, %i.afs
  br i1 %.not33.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i66, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i, %_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit
  %.034.i = phi ptr [ %i.akq, %_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_.exit ], [ %i.afq, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit.i ] ; 3 uses
  %.sroa.0.0.copyload24.i = load ptr, ptr %.034.i, align 8
  %.sroa.4.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..0.sroa_idx.i, align 8 ; 3 uses
  %i.aft = load ptr, ptr %i.b, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 8 ; 9 uses
  %i.afv = load ptr, ptr %i.afu, align 8
  %i.afw = ptrtoint ptr %i.afv to i64             ; 2 uses
  %i.afx = zext i32 %.sroa.4.0.copyload.i to i64  ; 2 uses
  %i.afy = add i64 %i.afw, %i.afx                 ; 2 uses
  %i.afz = inttoptr i64 %i.afy to ptr             ; 7 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.aga, align 4
  %i.agb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24.i, i64 16
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.agb, align 4
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afz, i64 4
  %.sroa.0.0.copyload.i81 = load i8, ptr %i.agc, align 4
  %i.agd = load i8, ptr %i.afz, align 4
  %i.age = zext i8 %i.agd to i64
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.age
  %i.agg = load i64, ptr %i.agf, align 8
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afz, i64 %i.agg ; 4 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afz, i64 2
  %i.agj = load i16, ptr %i.agi, align 2          ; 2 uses
  %i.agk = zext i16 %i.agj to i64
  %.idx.i.i = shl nuw nsw i64 %i.agk, 2           ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agh, i64 %.idx.i.i
  %.not10.i.i = icmp eq i16 %i.agj, 0
  br i1 %.not10.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i
  %i.agm = add nsw i64 %.idx.i.i, -4              ; 2 uses
  %i.agn = and i64 %i.agm, 4
  %lcmp.mod374.not.not = icmp eq i64 %i.agn, 0
  br i1 %lcmp.mod374.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %.sroa.01.0.copyload.i.i.prol = load i32, ptr %i.agh, align 4
  %i.ago = load ptr, ptr %i.afu, align 8
  %i.agp = ptrtoint ptr %i.ago to i64
  %i.agq = zext i32 %.sroa.01.0.copyload.i.i.prol to i64
  %i.agr = add i64 %i.agp, %i.agq
  %i.ags = inttoptr i64 %i.agr to ptr
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 1 ; 2 uses
  %i.agu = load i8, ptr %i.agt, align 1
  %i.agv = add i8 %i.agu, -1                      ; 2 uses
  %spec.select.i.i.i.prol = icmp ult i8 %i.agv, -2
  br i1 %spec.select.i.i.i.prol, label %bb.df, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol, !prof !9

bb.df:                                            ; preds = %.lr.ph.i.i.prol
  store i8 %i.agv, ptr %i.agt, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol: ; preds = %bb.df, %.lr.ph.i.i.prol
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agh, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol, %.lr.ph.i.i.preheader
  %.011.i.i.unr = phi ptr [ %i.agh, %.lr.ph.i.i.preheader ], [ %i.agw, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.prol ]
  %i.agx = icmp eq i64 %i.agm, 0
  br i1 %i.agx, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1
  %.011.i.i = phi ptr [ %i.ahp, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1 ], [ %.011.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i.i = load i32, ptr %.011.i.i, align 4
  %i.agy = load ptr, ptr %i.afu, align 8
  %i.agz = ptrtoint ptr %i.agy to i64
  %i.aha = zext i32 %.sroa.01.0.copyload.i.i to i64
  %i.ahb = add i64 %i.agz, %i.aha
  %i.ahc = inttoptr i64 %i.ahb to ptr
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 1 ; 2 uses
  %i.ahe = load i8, ptr %i.ahd, align 1
  %i.ahf = add i8 %i.ahe, -1                      ; 2 uses
  %spec.select.i.i.i = icmp ult i8 %i.ahf, -2
  br i1 %spec.select.i.i.i, label %bb.dg, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i, !prof !9

bb.dg:                                            ; preds = %.lr.ph.i.i
  store i8 %i.ahf, ptr %i.ahd, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i: ; preds = %bb.dg, %.lr.ph.i.i
  %i.ahg = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %.sroa.01.0.copyload.i.i.1 = load i32, ptr %i.ahg, align 4
  %i.ahh = load ptr, ptr %i.afu, align 8
  %i.ahi = ptrtoint ptr %i.ahh to i64
  %i.ahj = zext i32 %.sroa.01.0.copyload.i.i.1 to i64
  %i.ahk = add i64 %i.ahi, %i.ahj
  %i.ahl = inttoptr i64 %i.ahk to ptr
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 1 ; 2 uses
  %i.ahn = load i8, ptr %i.ahm, align 1
  %i.aho = add i8 %i.ahn, -1                      ; 2 uses
  %spec.select.i.i.i.1 = icmp ult i8 %i.aho, -2
  br i1 %spec.select.i.i.i.1, label %bb.dh, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1, !prof !9

bb.dh:                                            ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i
  store i8 %i.aho, ptr %i.ahm, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1: ; preds = %bb.dh, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i
  %i.ahp = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i145.1 = icmp eq ptr %i.ahp, %i.agl
  br i1 %.not.i.i145.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i, label %.lr.ph.i.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.1, %.lr.ph.i.i.prol.loopexit
  %.pre.i146 = load ptr, ptr %i.afu, align 8
  %.pre28.i = ptrtoint ptr %.pre.i146 to i64      ; 2 uses
  %.pre29.i = add i64 %.pre28.i, %i.afx           ; 2 uses
  %.pre31.i = inttoptr i64 %.pre29.i to ptr
  br label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i, %.lr.ph.i
  %.pre-phi32.i = phi ptr [ %.pre31.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i ], [ %i.afz, %.lr.ph.i ] ; 2 uses
  %.pre-phi30.i = phi i64 [ %.pre29.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i ], [ %i.afy, %.lr.ph.i ] ; 2 uses
  %.pre-phi.i147 = phi i64 [ %.pre28.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i ], [ %i.afw, %.lr.ph.i ] ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.afz, i64 1
  %.sroa.04.0.copyload.i = load i8, ptr %i.ahq, align 1
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.aft, i64 16 ; 4 uses
  %i.ahs = load ptr, ptr %i.ahr, align 8
  %i.aht = getelementptr inbounds nuw i8, ptr %i.aft, i64 32 ; 5 uses
  %i.ahu = load ptr, ptr %i.aht, align 8          ; 2 uses
  %i.ahv = lshr i32 %.sroa.4.0.copyload.i, 4
  %i.ahw = zext nneg i32 %i.ahv to i64            ; 2 uses
  %i.ahx = getelementptr inbounds nuw [2 x i8], ptr %i.ahu, i64 %i.ahw
  %i.ahy = load i16, ptr %i.ahx, align 2          ; 3 uses
  store ptr %.pre-phi32.i, ptr %i.ahr, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.aft, i64 24
  %i.aia = load ptr, ptr %i.ahz, align 8
  %i.aib = ptrtoint ptr %i.aia to i64             ; 2 uses
  %i.aic = sub i64 %i.aib, %.pre-phi30.i
  %i.aid = icmp ult i64 %i.aic, 9
  br i1 %i.aid, label %bb.di, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i148, !prof !5

bb.di:                                            ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i
  %i.aie = sub i64 %i.aib, %.pre-phi.i147
  %i.aif = lshr exact i64 %i.aie, 3
  %i.aig = and i64 %i.aif, 4294967295
  %i.aih = add nuw nsw i64 %i.aig, 2
  call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.aft, i64 noundef %i.aih)
  %.pre.i.i.i.i.i150 = load ptr, ptr %i.ahr, align 8 ; 2 uses
  %.pre10.i.i.i.i.i151 = ptrtoint ptr %.pre.i.i.i.i.i150 to i64
  %.pre26.i = load ptr, ptr %i.afu, align 8
  %.pre27.i = load ptr, ptr %i.aht, align 8
  %.pre33.i = ptrtoint ptr %.pre26.i to i64
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i148

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i148: ; preds = %bb.di, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i
  %.pre-phi34.i = phi i64 [ %.pre33.i, %bb.di ], [ %.pre-phi.i147, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i ]
  %i.aii = phi ptr [ %.pre27.i, %bb.di ], [ %i.ahu, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i ]
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre10.i.i.i.i.i151, %bb.di ], [ %.pre-phi30.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i ]
  %i.aij = phi ptr [ %.pre.i.i.i.i.i150, %bb.di ], [ %.pre-phi32.i, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.i ] ; 7 uses
  %i.aik = sub i64 %.pre-phi.i.i.i.i.i, %.pre-phi34.i ; 2 uses
  %i.ail = trunc i64 %i.aik to i32
  %i.aim = lshr i64 %i.aik, 4
  %i.ain = and i64 %i.aim, 268435455
  %i.aio = getelementptr inbounds nuw [2 x i8], ptr %i.aii, i64 %i.ain
  store i16 2, ptr %i.aio, align 2
  %i.aip = load ptr, ptr %i.aht, align 8
  %i.aiq = add i32 %i.ail, 16
  %i.air = lshr i32 %i.aiq, 4
  %i.ais = add nsw i32 %i.air, -1
  %i.ait = zext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds nuw [2 x i8], ptr %i.aip, i64 %i.ait
  store i16 2, ptr %i.aiu, align 2
  store i8 91, ptr %i.aij, align 4
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aij, i64 1 ; 2 uses
  store i8 0, ptr %i.aiv, align 1
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aij, i64 2 ; 2 uses
  store i16 2, ptr %i.aiw, align 2
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aij, i64 8 ; 4 uses
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.aix, align 4
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aij, i64 12
  store i32 %.sroa.02.0.copyload.i.i, ptr %.sroa.4222.0..sroa_idx, align 4
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aij, i64 4
  store i8 %.sroa.0.0.copyload.i81, ptr %i.aiy, align 4
  store ptr %i.ahs, ptr %i.ahr, align 8
  %i.aiz = load ptr, ptr %i.aht, align 8
  %i.aja = getelementptr inbounds nuw [2 x i8], ptr %i.aiz, i64 %i.ahw
  store i16 %i.ahy, ptr %i.aja, align 2
end_hunk_6
