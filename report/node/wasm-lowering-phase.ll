inline.NumInlined: 26486
inline.NumDeleted: 9628
begin_hunk_0_@_ZNK2v88internal8compiler10turboshaft16OperationMatcher23MatchConstantRightShiftINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EENS2_18WordRepresentationEPi:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %1, i32 %2, i8 noundef zeroext %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::turboshaft::WordRepresentation", align 1 ; 8 uses
  %6 = alloca %"class.std::optional.1427", align 4 ; 9 uses
  %7 = alloca %"class.std::optional.1427", align 4 ; 9 uses
  %8 = alloca %"class.v8::internal::compiler::turboshaft::ConstOrV.1435", align 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  %10 = alloca %"class.v8::internal::compiler::turboshaft::V.399", align 4 ; 7 uses
  %11 = alloca %"class.v8::internal::compiler::turboshaft::V.399", align 4 ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i8 %4, ptr %5, align 1
  %i.d = icmp eq i8 %4, 1                         ; 8 uses
  %switch.i389 = icmp ult i8 %3, 7                ; 2 uses
  %13 = load ptr, ptr %12, align 8, !nonnull !6, !align !8 ; 5 uses
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
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
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
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEE.exit.us: ; preds = %.critedge.i.us, %bb.e, %bb.d, %bb.c, %tailrecurse.us852
  %.sroa.017.1.i.us = phi i32 [ %.sroa.0.0.copyload.i.i.i.us, %.critedge.i.us ], [ %.tr844.us853, %bb.e ], [ %.tr844.us853, %tailrecurse.us852 ], [ %.tr844.us853, %bb.c ], [ %.tr844.us853, %bb.d ] ; 4 uses
  %i.ac = zext i32 %.tr845.us854 to i64
  %i.ad = add i64 %i.ac, %14
  %i.ae = inttoptr i64 %i.ad to ptr               ; 5 uses
  %i.af = load i8, ptr %i.ae, align 4
  %.not.i381.us = icmp eq i8 %i.af, 69
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEE.exit388.us855: ; preds = %.critedge.i386.us, %bb.h, %bb.g, %bb.f, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEE.exit.us
  %.sroa.0304.0.us856 = phi i32 [ %.sroa.0.0.copyload.i.i.i387.us, %.critedge.i386.us ], [ %.tr845.us854, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEE.exit.us ], [ %.tr845.us854, %bb.f ], [ %.tr845.us854, %bb.g ], [ %.tr845.us854, %bb.h ] ; 4 uses
  %i.ao = zext i32 %.sroa.017.1.i.us to i64
  %i.ap = add i64 %i.ao, %14
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = icmp eq i8 %i.ar, 75
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEE.exit388.us855
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
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEE.exit: ; preds = %tailrecurse, %bb.j, %bb.k, %bb.l, %.critedge.i
  %.sroa.017.1.i = phi i32 [ %.sroa.0.0.copyload.i.i.i, %.critedge.i ], [ %1, %bb.l ], [ %1, %tailrecurse ], [ %1, %bb.j ], [ %1, %bb.k ] ; 5 uses
  %i.bk = zext i32 %2 to i64
  %i.bl = add i64 %14, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr               ; 5 uses
  %i.bn = load i8, ptr %i.bm, align 4
  %.not.i381 = icmp eq i8 %i.bn, 69
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  %.sroa.0.0.copyload.i.i.i387 = load i32, ptr %i.bv, align 4
  br label %.split849.us

.split849.us:                                     ; preds = %bb.i, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEE.exit388.us855, %bb.b, %tailrecurse.us.us, %.split.us, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEE.exit, %bb.m, %bb.n, %bb.o, %.critedge.i386
  %.us-phi = phi i32 [ %.tr844.us.us, %bb.b ], [ %1, %.split.us ], [ %.sroa.017.1.i, %.critedge.i386 ], [ %.sroa.017.1.i, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEE.exit ], [ %.sroa.017.1.i, %bb.m ], [ %.sroa.017.1.i, %bb.n ], [ %.sroa.017.1.i, %bb.o ], [ %.tr844.us.us, %tailrecurse.us.us ], [ %.sroa.017.1.i.us, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEE.exit388.us855 ], [ %.sroa.017.1.i.us, %bb.i ] ; 34 uses
  %.us-phi850 = phi i32 [ %.tr845.us.us, %bb.b ], [ %2, %.split.us ], [ %.sroa.0.0.copyload.i.i.i387, %.critedge.i386 ], [ %2, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEE.exit ], [ %2, %bb.m ], [ %2, %bb.n ], [ %2, %bb.o ], [ %.tr845.us.us, %tailrecurse.us.us ], [ %.sroa.0304.0.us856, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEE.exit388.us855 ], [ %.sroa.0304.0.us856, %bb.i ] ; 20 uses
  %i.bw = zext i32 %.us-phi to i64                ; 10 uses
  %i.bx = add i64 %i.bw, %14
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = load i8, ptr %i.by, align 4
  %.not.i390 = icmp eq i8 %i.bz, 75
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit: ; preds = %bb.s, %bb.r
  %.0 = phi i64 [ %i.ce, %bb.r ], [ %i.cg, %bb.s ] ; 18 uses
  %i.ch = zext i32 %.us-phi850 to i64
  %i.ci = add i64 %i.ch, %14
  %i.cj = inttoptr i64 %i.ci to ptr               ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 4
  %.not.i391 = icmp eq i8 %i.ck, 75
end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dp = phi i64 [ %i.dk, %bb.ab ], [ %i.do, %bb.ac ]
  %i.dq = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.dj, i64 noundef %i.dp, i8 %4)
  br label %.critedge374

bb.ae:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393
end_hunk_9
begin_hunk_10_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dx = phi i64 [ %i.ds, %bb.af ], [ %i.dw, %bb.ag ]
  %i.dy = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.dr, i64 noundef %i.dx, i8 %4)
  br label %.critedge374

bb.ai:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393
end_hunk_10
begin_hunk_11_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ef = phi i64 [ %i.ea, %bb.aj ], [ %i.ee, %bb.ak ]
  %i.eg = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.dz, i64 noundef %i.ef, i8 %4)
  br label %.critedge374

bb.am:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393
end_hunk_11
begin_hunk_12_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ev = phi i64 [ %i.eq, %bb.as ], [ %i.eu, %bb.at ]
  %i.ew = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.ep, i64 noundef %i.ev, i8 %4)
  br label %.critedge374

bb.av:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393
end_hunk_12
begin_hunk_13_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.fh = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !nonnull !6, !align !8
  call void @_ZN2v88internal8compiler10turboshaft6detail13BitfieldCheck6DetectERKNS2_16OperationMatcherERKNS2_5GraphENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSD_ILm64EEEEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1427") align 4 %6, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(328) %i.fi, i32 %.us-phi850)
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fk = load i8, ptr %i.fj, align 4, !range !5, !noundef !6
  %i.fl = trunc nuw i8 %i.fk to i1
end_hunk_13
begin_hunk_14_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.fm = load ptr, ptr %12, align 8, !nonnull !6, !align !8
  %i.fn = load ptr, ptr %i.fh, align 8, !nonnull !6, !align !8
  call void @_ZN2v88internal8compiler10turboshaft6detail13BitfieldCheck6DetectERKNS2_16OperationMatcherERKNS2_5GraphENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSD_ILm64EEEEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1427") align 4 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull align 8 dereferenceable(328) %i.fn, i32 %.us-phi)
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 16
end_hunk_14
begin_hunk_15_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.bi:                                            ; preds = %bb.ba, %.critedge338
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.pre871.a = load ptr, ptr %12, align 8         ; 2 uses
  %.pre872 = load ptr, ptr %.pre871.a, align 8
  %.phi.trans.insert873 = getelementptr inbounds nuw i8, ptr %.pre872, i64 8
  %.pre874 = load ptr, ptr %.phi.trans.insert873, align 8
end_hunk_15
begin_hunk_16_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread, %bb.bi
  %.pre-phi877 = phi i64 [ %14, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393 ], [ %14, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread ], [ %.pre876, %bb.bi ], [ %14, %bb.q ] ; 10 uses
  %i.gu = phi ptr [ %13, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit393 ], [ %13, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread ], [ %.pre871.a, %bb.bi ], [ %13, %bb.q ]
  %i.gv = zext i32 %.us-phi850 to i64
  %i.gw = add i64 %.pre-phi877, %i.gv
  %i.gx = inttoptr i64 %i.gw to ptr               ; 8 uses
end_hunk_16
begin_hunk_17_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj, %bb.bj, %bb.bj
  switch i8 %4, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401.thread [
    i8 0, label %bb.bl
    i8 1, label %bb.bm
  ]
end_hunk_17
begin_hunk_18_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.bq:                                            ; preds = %bb.bp
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 5
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.hq, align 1
  %i.hr = icmp eq i8 %4, %.sroa.0.0.copyload.i.i
  br i1 %i.hr, label %bb.br, label %.critedge344

bb.br:                                            ; preds = %bb.bq
end_hunk_18
begin_hunk_19_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.hz, label %bb.bt, label %.critedge344

bb.bt:                                            ; preds = %bb.bs
  %i.ia = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.0.0.copyload.i.i26.i, i32 %.us-phi850, i8 noundef zeroext %3, i8 %4)
  %i.ib = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.0.0.copyload.i.i.i406, i32 %i.ia, i8 noundef zeroext %3, i8 %4)
  br label %.critedge374

.critedge344:                                     ; preds = %bb.bp, %bb.bo, %bb.bq, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401, %bb.bs, %bb.br
end_hunk_19
begin_hunk_20_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.bu:                                            ; preds = %.critedge344
  %i.ic = sub i64 0, %.0765                       ; 2 uses
  %i.id = icmp eq i8 %4, 0
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = icmp eq ptr %i.if, null                 ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE.exit: ; preds = %bb.bv, %bb.bw, %bb.bx, %bb.by
  %.sroa.04.0.i = phi i32 [ -1, %bb.bv ], [ %i.ii, %bb.bw ], [ %i.ij, %bb.by ], [ -1, %bb.bx ]
  %i.ik = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.us-phi, i32 %.sroa.04.0.i, i8 noundef zeroext 0, i8 %4)
  br label %.critedge374

bb.bz:                                            ; preds = %.critedge344
end_hunk_21
begin_hunk_22_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.cg:                                            ; preds = %bb.cf
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 5
  %.sroa.0.0.copyload.i.i.i408 = load i8, ptr %i.jb, align 1
  %i.jc = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i408
  br i1 %i.jc, label %bb.ch, label %.critedge346

bb.ch:                                            ; preds = %bb.cg
  %.sroa.0.0.copyload.i.i26.i.i = load i32, ptr %i.ix, align 4
  %i.jd = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPl(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, i32 %.sroa.0.0.copyload.i.i26.i.i, i8 %4, ptr noundef nonnull %i.a)
  %i.je = load i64, ptr %i.a, align 8
  %i.jf = icmp eq i64 %i.je, -1
  %or.cond = select i1 %i.jd, i1 %i.jf, i1 false
end_hunk_22
begin_hunk_23_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.cn:                                            ; preds = %bb.cm
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 5
  %.sroa.0.0.copyload.i.i.i412 = load i8, ptr %i.jq, align 1
  %i.jr = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i412
  br i1 %i.jr, label %bb.co, label %.thread826

bb.co:                                            ; preds = %bb.cn
end_hunk_23
begin_hunk_24_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit418: ; preds = %bb.cp, %bb.cp, %bb.cp, %bb.cp
  %i.jy = icmp eq i8 %4, 0                        ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.ka = load i64, ptr %i.jz, align 8            ; 2 uses
  %i.kb = and i64 %i.ka, 4294967295
end_hunk_24
begin_hunk_25_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.kg, label %.critedge374, label %bb.cq, !prof !7

bb.cq:                                            ; preds = %.critedge348
  %i.kh = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.0.0.copyload.i.i.i.i411, i32 %.us-phi850, i8 noundef zeroext 5, i8 %4), !inline_history !455
  br label %.critedge374

bb.cr:                                            ; preds = %.critedge344
end_hunk_25
begin_hunk_26_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.cs:                                            ; preds = %bb.cr
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.kj = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.ki, i64 noundef 0, i8 %4)
  br label %.critedge374

bb.ct:                                            ; preds = %bb.cr
end_hunk_26
begin_hunk_27_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.cu:                                            ; preds = %bb.ct
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.km = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.kl, i64 noundef 0, i8 %4)
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %.critedge374, label %bb.cv, !prof !7

bb.cv:                                            ; preds = %bb.cu
  %i.kq = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.km, i32 %.us-phi, i8 noundef zeroext 7, i8 %4), !inline_history !456
  br label %.critedge374

_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit: ; preds = %bb.ct
end_hunk_27
begin_hunk_28_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.ku = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0765, i1 true)
  %i.kv = trunc nuw nsw i64 %i.ku to i32
  %i.kw = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9ShiftLeftENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEEjNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.kt, i32 %.us-phi, i32 noundef %i.kv, i8 %4)
  br label %.critedge374

bb.cx:                                            ; preds = %.critedge344
end_hunk_28
begin_hunk_29_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.db:                                            ; preds = %bb.cz, %bb.da
  %.pre-phi879 = phi i64 [ %i.bw, %bb.cz ], [ %.pre878, %bb.da ]
  %i.la = load ptr, ptr %12, align 8, !nonnull !6, !align !8
  %i.lb = load ptr, ptr %i.la, align 8, !nonnull !6, !align !8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8
end_hunk_29
begin_hunk_30_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

.critedge350:                                     ; preds = %bb.de
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.lr = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.lq, i64 noundef 0, i8 %4)
  br label %.critedge374

.thread:                                          ; preds = %bb.db, %bb.dc, %bb.dd, %bb.de
end_hunk_30
begin_hunk_31_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.df:                                            ; preds = %.thread
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.lu = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.lt, i64 noundef 1, i8 %4)
  br label %.critedge374

bb.dg:                                            ; preds = %.thread
end_hunk_31
begin_hunk_32_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.dh:                                            ; preds = %bb.dg
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.mf = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.me, i64 noundef 0, i8 %4)
  br label %.critedge374

bb.di:                                            ; preds = %bb.dg, %bb.cy
end_hunk_32
begin_hunk_33_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i32 -1, ptr %9, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.mn = load ptr, ptr %12, align 8, !nonnull !6, !align !8
  %i.mo = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft16OperationMatcher22MatchConstantLeftShiftINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EENS2_18WordRepresentationEPi(ptr noundef nonnull align 8 dereferenceable(8) %i.mn, i32 %.us-phi, ptr noundef nonnull %9, i8 %4, ptr noundef nonnull %i.b)
  %i.mp = load i32, ptr %i.b, align 4
  %.not332 = icmp sge i32 %i.mp, %i.mm
  %or.cond354.not = select i1 %i.mo, i1 %.not332, i1 false
end_hunk_33
begin_hunk_34_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %or.cond354.not, label %.critedge364, label %bb.dk

bb.dk:                                            ; preds = %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE20IsNegativePowerOfTwoEl.exit.thread
  %i.mq = load ptr, ptr %12, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !nonnull !6, !align !8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8
end_hunk_34
begin_hunk_35_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.dm:                                            ; preds = %bb.dl
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 5
  %.sroa.0.0.copyload.i.i.i430 = load i8, ptr %i.nc, align 1
  %i.nd = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i430
  br i1 %i.nd, label %bb.dn, label %.critedge366

bb.dn:                                            ; preds = %bb.dm
end_hunk_35
begin_hunk_36_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit436: ; preds = %bb.do, %bb.do, %bb.do, %bb.do
  %i.nk = icmp eq i8 %4, 0
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.nm = load i64, ptr %i.nl, align 8            ; 2 uses
  %i.nn = and i64 %i.nm, 4294967295
end_hunk_36
begin_hunk_37_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.nt, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit, label %bb.dp, !prof !7

bb.dp:                                            ; preds = %.critedge362
  %i.nu = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.0.0.copyload.i.i.i.i429, i32 %.us-phi850, i8 noundef zeroext 4, i8 %4), !inline_history !450
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit: ; preds = %.critedge362, %bb.dp
  %.sroa.07.0.i.i = phi i32 [ %i.nu, %bb.dp ], [ -1, %.critedge362 ]
  %i.nv = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.nq, i64 noundef %.1, i8 %4)
  %i.nw = load ptr, ptr %i.nr, align 8
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %.critedge364, label %bb.dq, !prof !7

bb.dq:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit
  %i.ny = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.07.0.i.i, i32 %i.nv, i8 noundef zeroext 0, i8 %4), !inline_history !457
  br label %.critedge364

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit436.thread: ; preds = %bb.do, %bb.dn, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit436
end_hunk_37
begin_hunk_38_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.ds:                                            ; preds = %bb.dr
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 5
  %.sroa.0.0.copyload.i.i.i440 = load i8, ptr %i.oi, align 1
  %i.oj = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i440
  br i1 %i.oj, label %bb.dt, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordMulINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit.thread

bb.dt:                                            ; preds = %bb.ds
end_hunk_38
begin_hunk_39_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit445: ; preds = %bb.du, %bb.du, %bb.du, %bb.du
  %i.oq = icmp eq i8 %4, 0
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.os = load i64, ptr %i.or, align 8            ; 2 uses
  %i.ot = and i64 %i.os, 4294967295
end_hunk_39
begin_hunk_40_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.oy, label %.critedge378, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit447, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit447: ; preds = %bb.dv
  %i.oz = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.0.0.copyload.i.i26.i.i432, i32 %.us-phi850, i8 noundef zeroext 4, i8 %4), !inline_history !450
  %.pre958.a = load ptr, ptr %i.ow, align 8
  %i.pa = icmp eq ptr %.pre958.a, null
  br i1 %i.pa, label %.critedge378, label %bb.dw, !prof !67

bb.dw:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit447
  %i.pb = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.0.0.copyload.i.i.i.i429, i32 %i.oz, i8 noundef zeroext 0, i8 %4), !inline_history !457
  br label %.critedge378

_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordMulINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit.thread: ; preds = %bb.du, %bb.dt, %bb.dr, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit436.thread, %bb.ds, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit445
end_hunk_40
begin_hunk_41_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.dy:                                            ; preds = %bb.dx
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ng, i64 5
  %.sroa.0.0.copyload.i.i.i451 = load i8, ptr %i.pi, align 1
  %i.pj = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i451
  br i1 %i.pj, label %bb.dz, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordMulINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit454.thread

bb.dz:                                            ; preds = %bb.dy
end_hunk_41
begin_hunk_42_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit457: ; preds = %bb.ea, %bb.ea, %bb.ea, %bb.ea
  %i.pq = icmp eq i8 %4, 0
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.ps = load i64, ptr %i.pr, align 8            ; 2 uses
  %i.pt = and i64 %i.ps, 4294967295
end_hunk_42
begin_hunk_43_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.py, label %.critedge378, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit459, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit459: ; preds = %bb.eb
  %i.pz = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.0.0.copyload.i.i.i.i429, i32 %.us-phi850, i8 noundef zeroext 4, i8 %4), !inline_history !450
  %.pre959.a = load ptr, ptr %i.pw, align 8
  %i.qa = icmp eq ptr %.pre959.a, null
  br i1 %i.qa, label %.critedge378, label %bb.ec, !prof !67

bb.ec:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit459
  %i.qb = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.pz, i32 %.sroa.0.0.copyload.i.i26.i.i432, i8 noundef zeroext 0, i8 %4), !inline_history !457
  br label %.critedge378

_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordMulINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit454.thread: ; preds = %bb.ea, %bb.dz, %bb.dx, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordMulINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit.thread, %bb.dy, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.qc = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft16OperationMatcher22MatchConstantLeftShiftINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EENS2_18WordRepresentationEPi(ptr noundef nonnull align 8 dereferenceable(8) %i.mq, i32 %.sroa.0.0.copyload.i.i.i.i429, ptr noundef nonnull %10, i8 %4, ptr noundef nonnull %i.c)
  %i.qd = load i32, ptr %i.c, align 4
  %i.qe = icmp eq i32 %i.qd, %i.mm
  %or.cond358 = select i1 %i.qc, i1 %i.qe, i1 false
end_hunk_43
begin_hunk_44_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.qh, label %.critedge380, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit461, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit461: ; preds = %bb.ed
  %i.qi = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.0.0.copyload.i.i26.i.i432, i32 %.us-phi850, i8 noundef zeroext 4, i8 %4), !inline_history !450
  %.pre961.a = load ptr, ptr %i.qf, align 8
  %i.qj = icmp eq ptr %.pre961.a, null
  br i1 %i.qj, label %.critedge380, label %bb.ee, !prof !67

bb.ee:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit461
  %i.qk = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.0123.0.copyload, i32 %i.qi, i8 noundef zeroext 0, i8 %4), !inline_history !457
  br label %.critedge380

bb.ef:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordMulINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit454.thread
  %i.ql = load ptr, ptr %12, align 8, !nonnull !6, !align !8
  %i.qm = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft16OperationMatcher22MatchConstantLeftShiftINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EENS2_18WordRepresentationEPi(ptr noundef nonnull align 8 dereferenceable(8) %i.ql, i32 %.sroa.0.0.copyload.i.i26.i.i432, ptr noundef nonnull %11, i8 %4, ptr noundef nonnull %i.c)
  %i.qn = load i32, ptr %i.c, align 4
  %i.qo = icmp eq i32 %i.qn, %i.mm
  %or.cond360 = select i1 %i.qm, i1 %i.qo, i1 false
end_hunk_44
begin_hunk_45_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit463: ; preds = %bb.eg
  %.sroa.0114.0.copyload = load i32, ptr %9, align 4
  %i.qs = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.0114.0.copyload, i32 %.us-phi850, i8 noundef zeroext 4, i8 %4), !inline_history !450
  %.pre960 = load ptr, ptr %i.qp, align 8
  %i.qt = icmp eq ptr %.pre960, null
  br i1 %i.qt, label %.critedge380, label %bb.eh, !prof !67

bb.eh:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit463
  %i.qu = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.qs, i32 %.sroa.0.0.copyload.i.i26.i.i432, i8 noundef zeroext 0, i8 %4), !inline_history !457
  br label %.critedge380

bb.ei:                                            ; preds = %bb.ef
end_hunk_45
begin_hunk_46_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.ej:                                            ; preds = %bb.dl
  %i.qv = getelementptr inbounds nuw i8, ptr %i.mw, i64 5
  %.sroa.0.0.copyload.i.i.i467 = load i8, ptr %i.qv, align 1
  %i.qw = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i467
  br i1 %i.qw, label %bb.ek, label %.critedge366

bb.ek:                                            ; preds = %bb.ej
end_hunk_46
begin_hunk_47_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit473: ; preds = %bb.el, %bb.el, %bb.el, %bb.el
  %i.rd = icmp eq i8 %4, 0
  %i.re = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rf = load i64, ptr %i.re, align 8            ; 2 uses
  %i.rg = and i64 %i.rf, 4294967295
end_hunk_47
begin_hunk_48_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br label %.critedge374

bb.em:                                            ; preds = %.critedge344
  %i.rj = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceSignedDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEElNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.us-phi, i64 noundef %i.hh, i8 %4)
  br label %.critedge374

bb.en:                                            ; preds = %.critedge344
  %i.rk = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE17ReduceUnsignedDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.us-phi, i64 noundef %.0765, i8 %4)
  br label %.critedge374

bb.eo:                                            ; preds = %.critedge344
end_hunk_48
begin_hunk_49_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

_ZN2v88internal8compiler10turboshafteqIlJiiiEEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread: ; preds = %bb.eo
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.rm = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.rl, i64 noundef 0, i8 %4)
  br label %.critedge374

bb.ep:                                            ; preds = %bb.eo
  %i.rn = icmp eq i8 %4, 0
  %spec.select.i474 = select i1 %i.rn, i64 -2147483648, i64 -9223372036854775808
  %.not = icmp eq i64 %i.hh, %spec.select.i474
  br i1 %.not, label %_ZN2v84base4bits12IsPowerOfTwoIlEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.thread, label %bb.eq
end_hunk_49
begin_hunk_50_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.so, label %.critedge374, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE6IntDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE6IntDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit: ; preds = %_ZN2v84base4bits12IsPowerOfTwoIlEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.thread
  %i.sp = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.us-phi, i32 %.us-phi850, i8 noundef zeroext 8, i8 %4), !inline_history !458
  %.pr = load ptr, ptr %i.sm, align 8
  %i.sq = icmp eq ptr %.pr, null
  br i1 %i.sq, label %.critedge374, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit, !prof !67

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE6IntDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit
  %i.sr = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.sp, i32 %.us-phi850, i8 noundef zeroext 1, i8 %4), !inline_history !459
  %.pr934 = load ptr, ptr %i.sm, align 8
  %i.ss = icmp eq ptr %.pr934, null
  br i1 %i.ss, label %.critedge374, label %bb.eu, !prof !67

bb.eu:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit
  %i.st = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.us-phi, i32 %i.sr, i8 noundef zeroext 7, i8 %4), !inline_history !456
  br label %.critedge374

bb.ev:                                            ; preds = %.critedge344
end_hunk_50
begin_hunk_51_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a

bb.ew:                                            ; preds = %bb.ev
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.sv = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.su, i64 noundef 0, i8 %4)
  br label %.critedge374

_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit478: ; preds = %bb.ev
end_hunk_51
begin_hunk_52_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.ex:                                            ; preds = %_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit478
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.sz = add i64 %.0765, -1
  %i.ta = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %i.sy, i64 noundef %i.sz, i8 %4)
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.tc = load ptr, ptr %i.tb, align 8
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %.critedge374, label %bb.ey, !prof !7

bb.ey:                                            ; preds = %bb.ex
  %i.te = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.us-phi, i32 %i.ta, i8 noundef zeroext 4, i8 %4), !inline_history !450
  br label %.critedge374

bb.ez:                                            ; preds = %_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit478
end_hunk_52
begin_hunk_53_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.th, label %.critedge374, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7UintDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7UintDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit: ; preds = %bb.ez
  %i.ti = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.us-phi, i32 %.us-phi850, i8 noundef zeroext 9, i8 %4), !inline_history !460
  %.pr936 = load ptr, ptr %i.tf, align 8
  %i.tj = icmp eq ptr %.pr936, null
  br i1 %i.tj, label %.critedge374, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit921, !prof !67

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit921: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7UintDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit
  %i.tk = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.us-phi850, i32 %i.ti, i8 noundef zeroext 1, i8 %4), !inline_history !459
  %.pr938 = load ptr, ptr %i.tf, align 8
  %i.tl = icmp eq ptr %.pr938, null
  br i1 %i.tl, label %.critedge374, label %bb.fa, !prof !67

bb.fa:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit921
  %i.tm = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.us-phi, i32 %i.tk, i8 noundef zeroext 7, i8 %4), !inline_history !456
  br label %.critedge374

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401.thread: ; preds = %bb.bj, %.critedge, %bb.bk
end_hunk_53
begin_hunk_54_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.fc:                                            ; preds = %bb.fb
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tp, i64 5
  %.sroa.0.0.copyload.i.i.i484 = load i8, ptr %i.tw, align 1
  %i.tx = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i484
  br i1 %i.tx, label %bb.fd, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordSubINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit.thread

bb.fd:                                            ; preds = %bb.fc
end_hunk_54
begin_hunk_55_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.uq, label %.critedge374, label %bb.fj, !prof !7

bb.fj:                                            ; preds = %bb.fi
  %i.ur = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.us-phi850, i32 %.sroa.0.0.copyload.i.i26.i.i486, i8 noundef zeroext 7, i8 %4), !inline_history !456
  br label %.critedge374

_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordSubINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit.thread: ; preds = %bb.fe, %bb.fd, %bb.fb, %.thread827, %bb.fc, %bb.ff, %bb.fg, %bb.fh, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher9MatchZeroENS2_1VINS2_3AnyEEE.exit
end_hunk_55
begin_hunk_56_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
bb.fl:                                            ; preds = %bb.fk
  %i.ux = getelementptr inbounds nuw i8, ptr %i.gx, i64 5
  %.sroa.0.0.copyload.i.i.i492 = load i8, ptr %i.ux, align 1
  %i.uy = icmp eq i8 %4, %.sroa.0.0.copyload.i.i.i492
  br i1 %i.uy, label %bb.fm, label %.thread826

bb.fm:                                            ; preds = %bb.fl
end_hunk_56
begin_hunk_57_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.vr, label %.critedge374, label %bb.fs, !prof !7

bb.fs:                                            ; preds = %bb.fr
  %i.vs = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.us-phi, i32 %.sroa.0.0.copyload.i.i26.i.i494, i8 noundef zeroext 7, i8 %4), !inline_history !456
  br label %.critedge374

.thread826:                                       ; preds = %.critedge344, %bb.fn, %bb.fm, %bb.fk, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher12MatchWordSubINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENS6_ILm64EEEEEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNSB_ISA_EESF_NS2_18WordRepresentationE.exit.thread, %bb.fl, %bb.di, %bb.cp, %bb.co, %bb.cm, %bb.cl, %bb.cn, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit418, %_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE20IsNegativePowerOfTwoEl.exit, %.critedge346, %.critedge366, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher9MatchZeroENS2_1VINS2_3AnyEEE.exit500, %bb.fq, %bb.fp, %bb.fo, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit401.thread
  %i.vt = load ptr, ptr %12, align 8, !nonnull !6, !align !8
  %i.vu = load ptr, ptr %i.vt, align 8, !nonnull !6, !align !8
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8
end_hunk_57
begin_hunk_58_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %switch842, label %_ZN2v88internal8compiler10turboshafteqINS2_11WordBinopOp4KindEJS5_S5_S5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread, label %.critedge23

_ZN2v88internal8compiler10turboshafteqINS2_11WordBinopOp4KindEJS5_S5_S5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread: ; preds = %bb.fx
  %i.wo = icmp eq i8 %4, 0
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.wq = load ptr, ptr %i.wp, align 8
  %i.wr = icmp eq ptr %i.wq, null                 ; 2 uses
end_hunk_58
begin_hunk_59_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  ]

bb.gd:                                            ; preds = %bb.gc, %bb.gc, %bb.gc, %bb.gc
  %i.wv = icmp eq i8 %4, 0
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.wx = load ptr, ptr %i.ww, align 8
  %i.wy = icmp eq ptr %i.wx, null                 ; 2 uses
end_hunk_59
begin_hunk_60_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br label %.critedge374

bb.gi:                                            ; preds = %bb.gc, %bb.gc
  %i.xb = icmp ne i8 %4, 0                        ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 5 uses
  %i.xd = load ptr, ptr %i.xc, align 8
  %i.xe = icmp eq ptr %i.xd, null
end_hunk_60
begin_hunk_61_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br i1 %i.xg, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10ComparisonENS2_7OpIndexESF_NS2_12ComparisonOp4KindENS2_22RegisterRepresentationE.exit, !prof !67

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10ComparisonENS2_7OpIndexESF_NS2_12ComparisonOp4KindENS2_22RegisterRepresentationE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE.exit929
  %i.xh = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEESL_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.us-phi, i32 %i.xf, i8 %4), !inline_history !448
  %.pr942.pr = load ptr, ptr %i.xc, align 8
  %i.xi = icmp eq ptr %.pr942.pr, null
  br i1 %i.xi, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, !prof !67
end_hunk_61
begin_hunk_62_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE:bb.a
  br label %.critedge374

bb.gl:                                            ; preds = %bb.gc, %.critedge23
  %i.xo = call i64 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE14TryReduceToRorENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.us-phi, i32 %.us-phi850, i8 noundef zeroext %3, i8 %4) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.xo to i32
  %i.xp = and i64 %i.xo, 4294967296
  %.not843 = icmp eq i64 %i.xp, 0
  br i1 %.not843, label %.critedge376, label %.critedge374

.critedge376:                                     ; preds = %bb.gl
  %i.xq = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.us-phi, i32 %.us-phi850, i8 noundef zeroext %3, i8 %4)
  br label %.critedge374

.critedge374:                                     ; preds = %bb.gi, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7WordAddENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit912, %bb.ez, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7UintDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit, %_ZN2v84base4bits12IsPowerOfTwoIlEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE6IntDivENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit, %bb.fs, %bb.fr, %bb.fj, %bb.fi, %bb.fa, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit921, %bb.eu, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7WordMulENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit, %bb.et, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14WordBitwiseAndENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSH_ILm64EEEEEEEESL_NS2_18WordRepresentationE.exit476, %bb.cv, %bb.cu, %bb.cq, %.critedge348, %bb.db, %_ZN2v84base4bits13UnsignedMod64Emm.exit, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.ad, %bb.ah, %bb.al, %_ZN2v84base4bits13UnsignedDiv64Emm.exit, %bb.au, %bb.gl, %bb.gk, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gc, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.bt, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordConstantEmNS2_18WordRepresentationE.exit, %bb.cc, %bb.ci, %bb.cs, %bb.cw, %.critedge364, %bb.em, %bb.en, %_ZN2v88internal8compiler10turboshafteqIlJiiiEEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread, %bb.ew, %bb.bz, %bb.ca, %bb.cj, %bb.ck, %bb.cr, %bb.cx, %bb.cy, %bb.ex, %bb.ey, %.critedge350, %bb.dh, %bb.df, %.critedge376, %.critedge340
end_hunk_62
