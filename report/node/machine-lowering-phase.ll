inline.NumInlined: 44288
inline.NumDeleted: 14008
begin_hunk_0_@_ZNK2v88internal8compiler10turboshaft27MaybeRegisterRepresentation9bit_widthEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %1, i32 %2, i8 noundef zeroext %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::turboshaft::WordRepresentation", align 1 ; 8 uses
  %6 = alloca %"class.std::optional.1521", align 4 ; 9 uses
  %7 = alloca %"class.std::optional.1521", align 4 ; 9 uses
  %8 = alloca %"class.v8::internal::compiler::turboshaft::ConstOrV.1529", align 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  %10 = alloca %"class.v8::internal::compiler::turboshaft::V.1401", align 4 ; 7 uses
  %11 = alloca %"class.v8::internal::compiler::turboshaft::V.1401", align 4 ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  store i8 %4, ptr %5, align 1
  %i.d = icmp eq i8 %4, 1                         ; 8 uses
  %switch.i389 = icmp ult i8 %3, 7                ; 2 uses
  %13 = load ptr, ptr %12, align 8, !nonnull !6, !align !7 ; 5 uses
  %.pre = load ptr, ptr %13, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %14 = ptrtoint ptr %i.f to i64                  ; 13 uses
  br i1 %i.d, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %switch.i389, label %tailrecurse.us.us, label %.split849.us

tailrecurse.us.us:                                ; preds = %.split.us, %bb.b
  %.tr844.us.us = phi i32 [ %.tr845.us.us, %bb.b ], [ %1, %.split.us ] ; 4 uses
  %.tr845.us.us = phi i32 [ %.tr844.us.us, %bb.b ], [ %2, %.split.us ] ; 4 uses
  %i.g = zext i32 %.tr844.us.us to i64
  %i.h = add i64 %i.g, %14
  %i.i = inttoptr i64 %i.h to ptr
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  %i.p = icmp eq i8 %i.o, 75
  br i1 %i.p, label %.split849.us, label %tailrecurse.us.us

.split:                                           ; preds = %bb.a
  br i1 %switch.i389, label %tailrecurse.us852, label %tailrecurse

tailrecurse.us852:                                ; preds = %.split, %bb.i
  %.tr844.us853 = phi i32 [ %.sroa.0304.0.us856, %bb.i ], [ %1, %.split ] ; 5 uses
  %.tr845.us854 = phi i32 [ %.sroa.017.1.i.us, %bb.i ], [ %2, %.split ] ; 5 uses
  %i.q = zext i32 %.tr844.us853 to i64
  %i.r = add i64 %i.q, %14
  %i.s = inttoptr i64 %i.r to ptr                 ; 5 uses
  %i.t = load i8, ptr %i.s, align 4
  %.not.i.us = icmp eq i8 %i.t, 69
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEE.exit.us: ; preds = %.critedge.i.us, %bb.e, %bb.d, %bb.c, %tailrecurse.us852
  %.sroa.017.1.i.us = phi i32 [ %.sroa.0.0.copyload.i.i.i.us, %.critedge.i.us ], [ %.tr844.us853, %bb.e ], [ %.tr844.us853, %tailrecurse.us852 ], [ %.tr844.us853, %bb.c ], [ %.tr844.us853, %bb.d ] ; 4 uses
  %i.ac = zext i32 %.tr845.us854 to i64
  %i.ad = add i64 %i.ac, %14
  %i.ae = inttoptr i64 %i.ad to ptr               ; 5 uses
  %i.af = load i8, ptr %i.ae, align 4
  %.not.i381.us = icmp eq i8 %i.af, 69
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEE.exit388.us855: ; preds = %.critedge.i386.us, %bb.h, %bb.g, %bb.f, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEE.exit.us
  %.sroa.0304.0.us856 = phi i32 [ %.sroa.0.0.copyload.i.i.i387.us, %.critedge.i386.us ], [ %.tr845.us854, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEE.exit.us ], [ %.tr845.us854, %bb.f ], [ %.tr845.us854, %bb.g ], [ %.tr845.us854, %bb.h ] ; 4 uses
  %i.ao = zext i32 %.sroa.017.1.i.us to i64
  %i.ap = add i64 %i.ao, %14
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = icmp eq i8 %i.ar, 75
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEE.exit388.us855
  %i.at = zext i32 %.sroa.0304.0.us856 to i64
  %i.au = add i64 %i.at, %14
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = icmp eq i8 %i.aw, 75
  br i1 %i.ax, label %.split849.us, label %tailrecurse.us852

tailrecurse:                                      ; preds = %.split
  %i.ay = zext i32 %1 to i64
  %i.az = add i64 %14, %i.ay
  %i.ba = inttoptr i64 %i.az to ptr               ; 5 uses
  %i.bb = load i8, ptr %i.ba, align 4
  %.not.i = icmp eq i8 %i.bb, 69
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEE.exit: ; preds = %tailrecurse, %bb.j, %bb.k, %bb.l, %.critedge.i
  %.sroa.017.1.i = phi i32 [ %.sroa.0.0.copyload.i.i.i, %.critedge.i ], [ %1, %bb.l ], [ %1, %tailrecurse ], [ %1, %bb.j ], [ %1, %bb.k ] ; 5 uses
  %i.bk = zext i32 %2 to i64
  %i.bl = add i64 %14, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr               ; 5 uses
  %i.bn = load i8, ptr %i.bm, align 4
  %.not.i381 = icmp eq i8 %i.bn, 69
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  %.sroa.0.0.copyload.i.i.i387 = load i32, ptr %i.bv, align 4
  br label %.split849.us

.split849.us:                                     ; preds = %bb.i, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEE.exit388.us855, %bb.b, %tailrecurse.us.us, %.split.us, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEE.exit, %bb.m, %bb.n, %bb.o, %.critedge.i386
  %.us-phi = phi i32 [ %.tr844.us.us, %bb.b ], [ %1, %.split.us ], [ %.sroa.017.1.i, %.critedge.i386 ], [ %.sroa.017.1.i, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEE.exit ], [ %.sroa.017.1.i, %bb.m ], [ %.sroa.017.1.i, %bb.n ], [ %.sroa.017.1.i, %bb.o ], [ %.tr844.us.us, %tailrecurse.us.us ], [ %.sroa.017.1.i.us, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEE.exit388.us855 ], [ %.sroa.017.1.i.us, %bb.i ] ; 34 uses
  %.us-phi850 = phi i32 [ %.tr845.us.us, %bb.b ], [ %2, %.split.us ], [ %.sroa.0.0.copyload.i.i.i387, %.critedge.i386 ], [ %2, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEE.exit ], [ %2, %bb.m ], [ %2, %bb.n ], [ %2, %bb.o ], [ %.tr845.us.us, %tailrecurse.us.us ], [ %.sroa.0304.0.us856, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEE.exit388.us855 ], [ %.sroa.0304.0.us856, %bb.i ] ; 20 uses
  %i.bw = zext i32 %.us-phi to i64                ; 10 uses
  %i.bx = add i64 %i.bw, %14
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = load i8, ptr %i.by, align 4
  %.not.i390 = icmp eq i8 %i.bz, 75
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit: ; preds = %bb.s, %bb.r
  %.0 = phi i64 [ %i.ce, %bb.r ], [ %i.cg, %bb.s ] ; 18 uses
  %i.ch = zext i32 %.us-phi850 to i64
  %i.ci = add i64 %i.ch, %14
  %i.cj = inttoptr i64 %i.ci to ptr               ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 4
  %.not.i391 = icmp eq i8 %i.ck, 75
end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dp = phi i64 [ %i.dk, %bb.ab ], [ %i.do, %bb.ac ]
  %i.dq = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.dj, i64 noundef %i.dp, i8 %4)
  br label %.critedge374

bb.ae:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393
end_hunk_9
begin_hunk_10_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dx = phi i64 [ %i.ds, %bb.af ], [ %i.dw, %bb.ag ]
  %i.dy = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.dr, i64 noundef %i.dx, i8 %4)
  br label %.critedge374

bb.ai:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393
end_hunk_10
begin_hunk_11_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ef = phi i64 [ %i.ea, %bb.aj ], [ %i.ee, %bb.ak ]
  %i.eg = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.dz, i64 noundef %i.ef, i8 %4)
  br label %.critedge374

bb.am:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393
end_hunk_11
begin_hunk_12_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ev = phi i64 [ %i.eq, %bb.as ], [ %i.eu, %bb.at ]
  %i.ew = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.ep, i64 noundef %i.ev, i8 %4)
  br label %.critedge374

bb.av:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393
end_hunk_12
begin_hunk_13_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.fh = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !nonnull !6, !align !7
  call void @_ZN2v88internal8compiler10turboshaft6detail13BitfieldCheck6DetectERKNS2_16OperationMatcherERKNS2_5GraphENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSD_ILm64EEEEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1521") align 4 %6, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(328) %i.fi, i32 %.us-phi850)
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fk = load i8, ptr %i.fj, align 4, !range !8, !noundef !6
  %i.fl = trunc nuw i8 %i.fk to i1
end_hunk_13
begin_hunk_14_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.fm = load ptr, ptr %12, align 8, !nonnull !6, !align !7
  %i.fn = load ptr, ptr %i.fh, align 8, !nonnull !6, !align !7
  call void @_ZN2v88internal8compiler10turboshaft6detail13BitfieldCheck6DetectERKNS2_16OperationMatcherERKNS2_5GraphENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSD_ILm64EEEEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1521") align 4 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull align 8 dereferenceable(328) %i.fn, i32 %.us-phi)
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 16
end_hunk_14
begin_hunk_15_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.bi:                                            ; preds = %bb.ba, %.critedge338
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.pre871.a = load ptr, ptr %12, align 8         ; 2 uses
  %.pre872 = load ptr, ptr %.pre871.a, align 8
  %.phi.trans.insert873 = getelementptr inbounds nuw i8, ptr %.pre872, i64 8
  %.pre874 = load ptr, ptr %.phi.trans.insert873, align 8
end_hunk_15
begin_hunk_16_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread, %bb.bi
  %.pre-phi877 = phi i64 [ %14, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393 ], [ %14, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread ], [ %.pre876, %bb.bi ], [ %14, %bb.q ] ; 10 uses
  %i.gu = phi ptr [ %13, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393 ], [ %13, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread ], [ %.pre871.a, %bb.bi ], [ %13, %bb.q ]
  %i.gv = zext i32 %.us-phi850 to i64
  %i.gw = add i64 %.pre-phi877, %i.gv
  %i.gx = inttoptr i64 %i.gw to ptr               ; 8 uses
end_hunk_16
begin_hunk_17_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj, %bb.bj, %bb.bj
  switch i8 %4, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401.thread [
    i8 0, label %bb.bl
    i8 1, label %bb.bm
  ]
end_hunk_17
begin_hunk_18_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.bq:                                            ; preds = %bb.bp
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 5
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.hq, align 1
  %i.hr = icmp eq i8 %4, %.sroa.0.0.copyload.i.i
  br i1 %i.hr, label %bb.br, label %.critedge344

bb.br:                                            ; preds = %bb.bq
end_hunk_18
begin_hunk_19_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.hz, label %bb.bt, label %.critedge344

bb.bt:                                            ; preds = %bb.bs
  %i.ia = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.sroa.0.0.copyload.i.i26.i, i32 %.us-phi850, i8 noundef zeroext %3, i8 %4)
  %i.ib = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.sroa.0.0.copyload.i.i.i406, i32 %i.ia, i8 noundef zeroext %3, i8 %4)
  br label %.critedge374

.critedge344:                                     ; preds = %bb.bp, %bb.bo, %bb.bq, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %bb.bs, %bb.br
end_hunk_19
begin_hunk_20_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.bu:                                            ; preds = %.critedge344
  %i.ic = sub i64 0, %.0765                       ; 2 uses
  %i.id = icmp eq i8 %4, 0
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = icmp eq ptr %i.if, null                 ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE.exit.sink.split, %bb.bv, %bb.bx
  %.sroa.04.0.i = phi i32 [ -1, %bb.bv ], [ -1, %bb.bx ], [ %i.ik, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE.exit.sink.split ]
  %i.il = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.us-phi, i32 %.sroa.04.0.i, i8 noundef zeroext 0, i8 %4)
  br label %.critedge374

bb.bz:                                            ; preds = %.critedge344
end_hunk_21
begin_hunk_22_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.cg:                                            ; preds = %bb.cf
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 5
  %.sroa.0.0.copyload.i.i.i408 = load i8, ptr %i.jc, align 1
  %i.jd = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i408
  br i1 %i.jd, label %bb.ch, label %.critedge346

bb.ch:                                            ; preds = %bb.cg
  %.sroa.0.0.copyload.i.i26.i.i = load i32, ptr %i.iy, align 4
  %i.je = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPl(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, i32 %.sroa.0.0.copyload.i.i26.i.i, i8 %4, ptr noundef nonnull %i.a)
  %i.jf = load i64, ptr %i.a, align 8
  %i.jg = icmp eq i64 %i.jf, -1
  %or.cond = select i1 %i.je, i1 %i.jg, i1 false
end_hunk_22
begin_hunk_23_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.cn:                                            ; preds = %bb.cm
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 5
  %.sroa.0.0.copyload.i.i.i412 = load i8, ptr %i.jr, align 1
  %i.js = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i412
  br i1 %i.js, label %bb.co, label %.thread826

bb.co:                                            ; preds = %bb.cn
end_hunk_23
begin_hunk_24_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit418: ; preds = %bb.cp, %bb.cp, %bb.cp, %bb.cp
  %i.jz = icmp eq i8 %4, 0                        ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.kb = load i64, ptr %i.ka, align 8            ; 2 uses
  %i.kc = and i64 %i.kb, 4294967295
end_hunk_24
begin_hunk_25_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.kh, label %.critedge374, label %bb.cq, !prof !5

bb.cq:                                            ; preds = %.critedge348
  %i.ki = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.sroa.0.0.copyload.i.i.i.i411, i32 %.us-phi850, i8 noundef zeroext 5, i8 %4), !inline_history !571
  br label %.critedge374

bb.cr:                                            ; preds = %.critedge344
end_hunk_25
begin_hunk_26_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.cs:                                            ; preds = %bb.cr
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.kk = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.kj, i64 noundef 0, i8 %4)
  br label %.critedge374

bb.ct:                                            ; preds = %bb.cr
end_hunk_26
begin_hunk_27_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.cu:                                            ; preds = %bb.ct
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.kn = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.km, i64 noundef 0, i8 %4)
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %.critedge374, label %bb.cv, !prof !5

bb.cv:                                            ; preds = %bb.cu
  %i.kr = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %i.kn, i32 %.us-phi, i8 noundef zeroext 7, i8 %4), !inline_history !572
  br label %.critedge374

_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit: ; preds = %bb.ct
end_hunk_27
begin_hunk_28_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.kv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0765, i1 true)
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9ShiftLeftENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEEjNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.ku, i32 %.us-phi, i32 noundef %i.kw, i8 %4)
  br label %.critedge374

bb.cx:                                            ; preds = %.critedge344
end_hunk_28
begin_hunk_29_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.db:                                            ; preds = %bb.cz, %bb.da
  %.pre-phi879 = phi i64 [ %i.bw, %bb.cz ], [ %.pre878, %bb.da ]
  %i.lb = load ptr, ptr %12, align 8, !nonnull !6, !align !7
  %i.lc = load ptr, ptr %i.lb, align 8, !nonnull !6, !align !7
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
end_hunk_29
begin_hunk_30_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

.critedge350:                                     ; preds = %bb.de
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.ls = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.lr, i64 noundef 0, i8 %4)
  br label %.critedge374

.thread:                                          ; preds = %bb.db, %bb.dc, %bb.dd, %bb.de
end_hunk_30
begin_hunk_31_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.df:                                            ; preds = %.thread
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.lv = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.lu, i64 noundef 1, i8 %4)
  br label %.critedge374

bb.dg:                                            ; preds = %.thread
end_hunk_31
begin_hunk_32_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.dh:                                            ; preds = %bb.dg
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.mg = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.mf, i64 noundef 0, i8 %4)
  br label %.critedge374

bb.di:                                            ; preds = %bb.dg, %bb.cy
end_hunk_32
begin_hunk_33_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store i32 -1, ptr %9, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.mo = load ptr, ptr %12, align 8, !nonnull !6, !align !7
  %i.mp = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft16OperationMatcher22MatchConstantLeftShiftINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EENS2_18WordRepresentationEPi(ptr noundef nonnull align 8 dereferenceable(8) %i.mo, i32 %.us-phi, ptr noundef nonnull %9, i8 %4, ptr noundef nonnull %i.b)
  %i.mq = load i32, ptr %i.b, align 4
  %.not332 = icmp sge i32 %i.mq, %i.mn
  %or.cond354.not = select i1 %i.mp, i1 %.not332, i1 false
end_hunk_33
begin_hunk_34_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %or.cond354.not, label %.critedge364, label %bb.dk

bb.dk:                                            ; preds = %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE20IsNegativePowerOfTwoEl.exit.thread
  %i.mr = load ptr, ptr %12, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !nonnull !6, !align !7
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8
end_hunk_34
begin_hunk_35_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.dm:                                            ; preds = %bb.dl
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 5
  %.sroa.0.0.copyload.i.i.i430 = load i8, ptr %i.nd, align 1
  %i.ne = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i430
  br i1 %i.ne, label %bb.dn, label %.critedge366

bb.dn:                                            ; preds = %bb.dm
end_hunk_35
begin_hunk_36_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit436: ; preds = %bb.do, %bb.do, %bb.do, %bb.do
  %i.nl = icmp eq i8 %4, 0
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nn = load i64, ptr %i.nm, align 8            ; 2 uses
  %i.no = and i64 %i.nn, 4294967295
end_hunk_36
begin_hunk_37_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.nu, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit, label %bb.dp, !prof !5

bb.dp:                                            ; preds = %.critedge362
  %i.nv = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.sroa.0.0.copyload.i.i.i.i429, i32 %.us-phi850, i8 noundef zeroext 4, i8 %4), !inline_history !556
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit: ; preds = %.critedge362, %bb.dp
  %.sroa.07.0.i.i = phi i32 [ %i.nv, %bb.dp ], [ -1, %.critedge362 ]
  %i.nw = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.nr, i64 noundef %.1, i8 %4)
  %i.nx = load ptr, ptr %i.ns, align 8
  %i.ny = icmp eq ptr %i.nx, null
  br i1 %i.ny, label %.critedge364, label %bb.dq, !prof !5

bb.dq:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit
  %i.nz = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.sroa.07.0.i.i, i32 %i.nw, i8 noundef zeroext 0, i8 %4), !inline_history !573
  br label %.critedge364

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit436.thread: ; preds = %bb.do, %bb.dn, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit436
end_hunk_37
begin_hunk_38_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.ds:                                            ; preds = %bb.dr
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oc, i64 5
  %.sroa.0.0.copyload.i.i.i440 = load i8, ptr %i.oj, align 1
  %i.ok = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i440
  br i1 %i.ok, label %bb.dt, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordMulINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit.thread

bb.dt:                                            ; preds = %bb.ds
end_hunk_38
begin_hunk_39_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit445: ; preds = %bb.du, %bb.du, %bb.du, %bb.du
  %i.or = icmp eq i8 %4, 0
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.ot = load i64, ptr %i.os, align 8            ; 2 uses
  %i.ou = and i64 %i.ot, 4294967295
end_hunk_39
begin_hunk_40_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.oz, label %.critedge378, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit447, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit447: ; preds = %bb.dv
  %i.pa = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.sroa.0.0.copyload.i.i26.i.i432, i32 %.us-phi850, i8 noundef zeroext 4, i8 %4), !inline_history !556
  %.pre958.a = load ptr, ptr %i.ox, align 8
  %i.pb = icmp eq ptr %.pre958.a, null
  br i1 %i.pb, label %.critedge378, label %bb.dw, !prof !77

bb.dw:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit447
  %i.pc = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.sroa.0.0.copyload.i.i.i.i429, i32 %i.pa, i8 noundef zeroext 0, i8 %4), !inline_history !573
  br label %.critedge378

_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordMulINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit.thread: ; preds = %bb.du, %bb.dt, %bb.dr, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit436.thread, %bb.ds, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit445
end_hunk_40
begin_hunk_41_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.dy:                                            ; preds = %bb.dx
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nh, i64 5
  %.sroa.0.0.copyload.i.i.i451 = load i8, ptr %i.pj, align 1
  %i.pk = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i451
  br i1 %i.pk, label %bb.dz, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordMulINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit454.thread

bb.dz:                                            ; preds = %bb.dy
end_hunk_41
begin_hunk_42_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit457: ; preds = %bb.ea, %bb.ea, %bb.ea, %bb.ea
  %i.pr = icmp eq i8 %4, 0
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pt = load i64, ptr %i.ps, align 8            ; 2 uses
  %i.pu = and i64 %i.pt, 4294967295
end_hunk_42
begin_hunk_43_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.pz, label %.critedge378, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit459, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit459: ; preds = %bb.eb
  %i.qa = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.sroa.0.0.copyload.i.i.i.i429, i32 %.us-phi850, i8 noundef zeroext 4, i8 %4), !inline_history !556
  %.pre959.a = load ptr, ptr %i.px, align 8
  %i.qb = icmp eq ptr %.pre959.a, null
  br i1 %i.qb, label %.critedge378, label %bb.ec, !prof !77

bb.ec:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit459
  %i.qc = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %i.qa, i32 %.sroa.0.0.copyload.i.i26.i.i432, i8 noundef zeroext 0, i8 %4), !inline_history !573
  br label %.critedge378

_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordMulINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit454.thread: ; preds = %bb.ea, %bb.dz, %bb.dx, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordMulINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit.thread, %bb.dy, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.qd = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft16OperationMatcher22MatchConstantLeftShiftINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EENS2_18WordRepresentationEPi(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, i32 %.sroa.0.0.copyload.i.i.i.i429, ptr noundef nonnull %10, i8 %4, ptr noundef nonnull %i.c)
  %i.qe = load i32, ptr %i.c, align 4
  %i.qf = icmp eq i32 %i.qe, %i.mn
  %or.cond358 = select i1 %i.qd, i1 %i.qf, i1 false
end_hunk_43
begin_hunk_44_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.qi, label %.critedge380, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit461, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit461: ; preds = %bb.ed
  %i.qj = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.sroa.0.0.copyload.i.i26.i.i432, i32 %.us-phi850, i8 noundef zeroext 4, i8 %4), !inline_history !556
  %.pre961.a = load ptr, ptr %i.qg, align 8
  %i.qk = icmp eq ptr %.pre961.a, null
  br i1 %i.qk, label %.critedge380, label %bb.ee, !prof !77

bb.ee:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit461
  %i.ql = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.sroa.0123.0.copyload, i32 %i.qj, i8 noundef zeroext 0, i8 %4), !inline_history !573
  br label %.critedge380

bb.ef:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordMulINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit454.thread
  %i.qm = load ptr, ptr %12, align 8, !nonnull !6, !align !7
  %i.qn = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft16OperationMatcher22MatchConstantLeftShiftINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EENS2_18WordRepresentationEPi(ptr noundef nonnull align 8 dereferenceable(8) %i.qm, i32 %.sroa.0.0.copyload.i.i26.i.i432, ptr noundef nonnull %11, i8 %4, ptr noundef nonnull %i.c)
  %i.qo = load i32, ptr %i.c, align 4
  %i.qp = icmp eq i32 %i.qo, %i.mn
  %or.cond360 = select i1 %i.qn, i1 %i.qp, i1 false
end_hunk_44
begin_hunk_45_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit463: ; preds = %bb.eg
  %.sroa.0114.0.copyload = load i32, ptr %9, align 4
  %i.qt = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.sroa.0114.0.copyload, i32 %.us-phi850, i8 noundef zeroext 4, i8 %4), !inline_history !556
  %.pre960 = load ptr, ptr %i.qq, align 8
  %i.qu = icmp eq ptr %.pre960, null
  br i1 %i.qu, label %.critedge380, label %bb.eh, !prof !77

bb.eh:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit463
  %i.qv = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %i.qt, i32 %.sroa.0.0.copyload.i.i26.i.i432, i8 noundef zeroext 0, i8 %4), !inline_history !573
  br label %.critedge380

bb.ei:                                            ; preds = %bb.ef
end_hunk_45
begin_hunk_46_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.ej:                                            ; preds = %bb.dl
  %i.qw = getelementptr inbounds nuw i8, ptr %i.mx, i64 5
  %.sroa.0.0.copyload.i.i.i467 = load i8, ptr %i.qw, align 1
  %i.qx = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i467
  br i1 %i.qx, label %bb.ek, label %.critedge366

bb.ek:                                            ; preds = %bb.ej
end_hunk_46
begin_hunk_47_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit473: ; preds = %bb.el, %bb.el, %bb.el, %bb.el
  %i.re = icmp eq i8 %4, 0
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rg = load i64, ptr %i.rf, align 8            ; 2 uses
  %i.rh = and i64 %i.rg, 4294967295
end_hunk_47
begin_hunk_48_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br label %.critedge374

bb.em:                                            ; preds = %.critedge344
  %i.rk = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceSignedDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEElNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.us-phi, i64 noundef %i.hh, i8 %4)
  br label %.critedge374

bb.en:                                            ; preds = %.critedge344
  %i.rl = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE17ReduceUnsignedDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.us-phi, i64 noundef %.0765, i8 %4)
  br label %.critedge374

bb.eo:                                            ; preds = %.critedge344
end_hunk_48
begin_hunk_49_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

_ZN2v88internal8compiler10turboshafteqIlJiiiEEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread: ; preds = %bb.eo
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.rn = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.rm, i64 noundef 0, i8 %4)
  br label %.critedge374

bb.ep:                                            ; preds = %bb.eo
  %i.ro = icmp eq i8 %4, 0
  %spec.select.i474 = select i1 %i.ro, i64 -2147483648, i64 -9223372036854775808
  %.not = icmp eq i64 %i.hh, %spec.select.i474
  br i1 %.not, label %_ZN2v84base4bits12IsPowerOfTwoIlEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.thread, label %bb.eq
end_hunk_49
begin_hunk_50_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.sp, label %.critedge374, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6IntDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6IntDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit: ; preds = %_ZN2v84base4bits12IsPowerOfTwoIlEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.thread
  %i.sq = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.us-phi, i32 %.us-phi850, i8 noundef zeroext 8, i8 %4), !inline_history !574
  %.pr = load ptr, ptr %i.sn, align 8
  %i.sr = icmp eq ptr %.pr, null
  br i1 %i.sr, label %.critedge374, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit, !prof !77

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6IntDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit
  %i.ss = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %i.sq, i32 %.us-phi850, i8 noundef zeroext 1, i8 %4), !inline_history !575
  %.pr934 = load ptr, ptr %i.sn, align 8
  %i.st = icmp eq ptr %.pr934, null
  br i1 %i.st, label %.critedge374, label %bb.eu, !prof !77

bb.eu:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit
  %i.su = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.us-phi, i32 %i.ss, i8 noundef zeroext 7, i8 %4), !inline_history !572
  br label %.critedge374

bb.ev:                                            ; preds = %.critedge344
end_hunk_50
begin_hunk_51_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.ew:                                            ; preds = %bb.ev
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.sw = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.sv, i64 noundef 0, i8 %4)
  br label %.critedge374

_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit478: ; preds = %bb.ev
end_hunk_51
begin_hunk_52_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.ex:                                            ; preds = %_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit478
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.ta = add i64 %.0765, -1
  %i.tb = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.sz, i64 noundef %i.ta, i8 %4)
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.td = load ptr, ptr %i.tc, align 8
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %.critedge374, label %bb.ey, !prof !5

bb.ey:                                            ; preds = %bb.ex
  %i.tf = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.us-phi, i32 %i.tb, i8 noundef zeroext 4, i8 %4), !inline_history !556
  br label %.critedge374

bb.ez:                                            ; preds = %_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit478
end_hunk_52
begin_hunk_53_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.ti, label %.critedge374, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7UintDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7UintDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit: ; preds = %bb.ez
  %i.tj = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.us-phi, i32 %.us-phi850, i8 noundef zeroext 9, i8 %4), !inline_history !576
  %.pr936 = load ptr, ptr %i.tg, align 8
  %i.tk = icmp eq ptr %.pr936, null
  br i1 %i.tk, label %.critedge374, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit921, !prof !77

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit921: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7UintDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit
  %i.tl = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.us-phi850, i32 %i.tj, i8 noundef zeroext 1, i8 %4), !inline_history !575
  %.pr938 = load ptr, ptr %i.tg, align 8
  %i.tm = icmp eq ptr %.pr938, null
  br i1 %i.tm, label %.critedge374, label %bb.fa, !prof !77

bb.fa:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSO_ILm64EEEEEEEESS_NS2_18WordRepresentationE.exit921
  %i.tn = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.us-phi, i32 %i.tl, i8 noundef zeroext 7, i8 %4), !inline_history !572
  br label %.critedge374

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401.thread: ; preds = %bb.bj, %.critedge, %bb.bk
end_hunk_53
begin_hunk_54_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.fc:                                            ; preds = %bb.fb
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tq, i64 5
  %.sroa.0.0.copyload.i.i.i484 = load i8, ptr %i.tx, align 1
  %i.ty = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i484
  br i1 %i.ty, label %bb.fd, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordSubINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit.thread

bb.fd:                                            ; preds = %bb.fc
end_hunk_54
begin_hunk_55_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.ur, label %.critedge374, label %bb.fj, !prof !5

bb.fj:                                            ; preds = %bb.fi
  %i.us = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.us-phi850, i32 %.sroa.0.0.copyload.i.i26.i.i486, i8 noundef zeroext 7, i8 %4), !inline_history !572
  br label %.critedge374

_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordSubINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit.thread: ; preds = %bb.fe, %bb.fd, %bb.fb, %.thread827, %bb.fc, %bb.ff, %bb.fg, %bb.fh, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher9MatchZeroENS2_1VINS2_3AnyEEE.exit
end_hunk_55
begin_hunk_56_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.fl:                                            ; preds = %bb.fk
  %i.uy = getelementptr inbounds nuw i8, ptr %i.gx, i64 5
  %.sroa.0.0.copyload.i.i.i492 = load i8, ptr %i.uy, align 1
  %i.uz = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i492
  br i1 %i.uz, label %bb.fm, label %.thread826

bb.fm:                                            ; preds = %bb.fl
end_hunk_56
begin_hunk_57_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.vs, label %.critedge374, label %bb.fs, !prof !5

bb.fs:                                            ; preds = %bb.fr
  %i.vt = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.us-phi, i32 %.sroa.0.0.copyload.i.i26.i.i494, i8 noundef zeroext 7, i8 %4), !inline_history !572
  br label %.critedge374

.thread826:                                       ; preds = %.critedge344, %bb.fn, %bb.fm, %bb.fk, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordSubINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit.thread, %bb.fl, %bb.di, %bb.cp, %bb.co, %bb.cm, %bb.cl, %bb.cn, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit418, %_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE20IsNegativePowerOfTwoEl.exit, %.critedge346, %.critedge366, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher9MatchZeroENS2_1VINS2_3AnyEEE.exit500, %bb.fq, %bb.fp, %bb.fo, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401.thread
  %i.vu = load ptr, ptr %12, align 8, !nonnull !6, !align !7
  %i.vv = load ptr, ptr %i.vu, align 8, !nonnull !6, !align !7
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8
end_hunk_57
begin_hunk_58_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %switch842, label %_ZN2v88internal8compiler10turboshafteqINS2_11WordBinopOp4KindEJS5_S5_S5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread, label %.critedge23

_ZN2v88internal8compiler10turboshafteqINS2_11WordBinopOp4KindEJS5_S5_S5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread: ; preds = %bb.fx
  %i.wp = icmp eq i8 %4, 0
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.wr = load ptr, ptr %i.wq, align 8
  %i.ws = icmp eq ptr %i.wr, null                 ; 2 uses
end_hunk_58
begin_hunk_59_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

bb.gd:                                            ; preds = %bb.gc, %bb.gc, %bb.gc, %bb.gc
  %i.wy = icmp eq i8 %4, 0
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.xa = load ptr, ptr %i.wz, align 8
  %i.xb = icmp eq ptr %i.xa, null                 ; 2 uses
end_hunk_59
begin_hunk_60_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br label %.critedge374

bb.gi:                                            ; preds = %bb.gc, %bb.gc
  %i.xg = icmp ne i8 %4, 0                        ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 5 uses
  %i.xi = load ptr, ptr %i.xh, align 8
  %i.xj = icmp eq ptr %i.xi, null
end_hunk_60
begin_hunk_61_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.xm, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ComparisonENS2_7OpIndexESM_NS2_12ComparisonOp4KindENS2_22RegisterRepresentationE.exit, !prof !77

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ComparisonENS2_7OpIndexESM_NS2_12ComparisonOp4KindENS2_22RegisterRepresentationE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE.exit929
  %i.xn = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEEST_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.us-phi, i32 %i.xl, i8 %4), !inline_history !554
  %.pr942.pr = load ptr, ptr %i.xh, align 8
  %i.xo = icmp eq ptr %.pr942.pr, null
  br i1 %i.xo, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESP_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, !prof !77
end_hunk_61
begin_hunk_62_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br label %.critedge374

bb.gl:                                            ; preds = %bb.gc, %.critedge23
  %i.xv = call i64 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerES3_S5_S7_EEEEEEEEEEEEEE14TryReduceToRorENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENST_ILm64EEEEEEEESX_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 %.us-phi, i32 %.us-phi850, i8 noundef zeroext %3, i8 %4) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.xv to i32
  %i.xw = and i64 %i.xv, 4294967296
  %.not843 = icmp eq i64 %i.xw, 0
  br i1 %.not843, label %.critedge376, label %.critedge374

.critedge376:                                     ; preds = %bb.gl
  %i.xx = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESN_NSM_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %.us-phi, i32 %.us-phi850, i8 noundef zeroext %3, i8 %4)
  %i.xy = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_27StringEscapeAnalysisReducerENS2_24JSGenericLoweringReducerENS2_23DataViewLoweringReducerENS2_22MachineLoweringReducerENS2_26FastApiCallLoweringReducerENS2_15VariableReducerENS2_21SelectLoweringReducerENS2_26MachineOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_11WordBinopOpEEENS2_7OpIndexESQ_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.xx)
  br label %.critedge374

end_hunk_62
