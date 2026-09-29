Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turbolev-graph-builder?download=true
inline.NumInlined: 65942
inline.NumDeleted: 17507
loop-unroll.NumCompletelyUnrolled: 517
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 591
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_15TaggedBitcastOpEEENS2_7OpIndexESM_:bb.a
_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit.thread20: ; preds = %bb.b, %bb.b, %.loopexit, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit, %bb.a
  %.sroa.016.2 = phi i32 [ %1, %bb.a ], [ %.sroa.016.0.copyload, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit ], [ %1, %.loopexit ], [ %1, %bb.b ], [ %1, %bb.b ]
  ret i32 %.sroa.016.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESK_NSI_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i8 %2, i8 %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !344, !align !355 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit, !prof !345

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre12 = ptrtoint ptr %.pre to i64
  %.pre13 = sub i64 %.pre10.i.i.i.i, %.pre12
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi14 = phi i64 [ %i.i, %bb.a ], [ %.pre13, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi14 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi14, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 2, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 16
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  store i8 72, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %4, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %2, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %3, ptr %i.al, align 2
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = zext i32 %1 to i64
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.as, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit, label %bb.c, !prof !345

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit
  %i.at = add nuw i8 %i.as, 1
  store i8 %i.at, ptr %i.ar, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_15TaggedBitcastOpEE3NewIJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationES8_NS4_4KindEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i = load i32, ptr %i.au, align 4
  %i.av = load ptr, ptr %i.a, align 8, !nonnull !344, !align !355 ; 4 uses
  %i.aw = lshr i64 %i.i, 4
  %i.ax = and i64 %i.aw, 268435455                ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 216
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 208 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  %.not.i.i10 = icmp ugt i64 %i.bf, %i.ax
  br i1 %.not.i.i10, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !348

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 200 ; 2 uses
  %i.bh = lshr i64 %i.ax, 1
  %i.bi = add nuw nsw i64 %i.ax, 32
  %i.bj = add nuw nsw i64 %i.bi, %i.bh
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 224
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.ba, align 8
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef %i.bq)
  %.pre.i.i = load ptr, ptr %i.ba, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit, %bb.d
  %i.br = phi ptr [ %.pre.i.i, %bb.d ], [ %i.bb, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_15TaggedBitcastOpEEEvRKT_.exit ]
  %i.bs = trunc i64 %i.i to i32
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ax
  store i32 %.sroa.0.0.copyload.i, ptr %i.bt, align 4
  ret i32 %i.bs
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE12ReduceChangeENS2_1VINS2_13UntaggedUnionIJNSQ_IJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEENSQ_IJNS2_13FloatWithBitsILm32EEENSV_ILm64EEEEEEEEEEENS2_8ChangeOp4KindENS11_10AssumptionENS2_22RegisterRepresentationES14_(ptr noundef nonnull align 8 dereferenceable(666) %0, i32 %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 %4, i8 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.phi.trans.insert291 = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.pre292 = load ptr, ptr %.phi.trans.insert291, align 8
  %.pre293 = load ptr, ptr %.pre292, align 8
  %.phi.trans.insert294 = getelementptr inbounds nuw i8, ptr %.pre293, i64 8
  %.pre295 = load ptr, ptr %.phi.trans.insert294, align 8
  %.pre296 = ptrtoint ptr %.pre295 to i64         ; 5 uses
  switch i8 %4, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread [
    i8 0, label %bb.b
    i8 1, label %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEE.exit.thread
    i8 2, label %bb.p
    i8 3, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64
  %i.b = add i64 %.pre296, %i.a
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = load i8, ptr %i.c, align 4
  %.not.i = icmp eq i8 %i.d, 69
  br i1 %.not.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %.sroa.07.0.copyload.i = load i8, ptr %i.e, align 2
  %i.f = icmp eq i8 %.sroa.07.0.copyload.i, 0
  br i1 %i.f, label %bb.d, label %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %.sroa.04.0.copyload.i = load i8, ptr %i.g, align 1
  %i.h = icmp eq i8 %.sroa.04.0.copyload.i, 1
  br i1 %i.h, label %bb.e, label %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -2
  %switch.i = icmp eq i8 %i.k, 10
  br i1 %switch.i, label %.critedge.i, label %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEE.exit.thread

.critedge.i:                                      ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEE.exit.thread

_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %.critedge.i
  %.sroa.0116.0232 = phi i32 [ %.sroa.0.0.copyload.i.i.i, %.critedge.i ], [ %1, %bb.b ], [ %1, %bb.c ], [ %1, %bb.d ], [ %1, %bb.e ], [ %1, %bb.a ] ; 4 uses
  %i.m = zext i32 %.sroa.0116.0232 to i64
  %i.n = add i64 %.pre296, %i.m
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = load i8, ptr %i.o, align 4
  %.not.i134 = icmp eq i8 %i.p, 75
  br i1 %.not.i134, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEE.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i8, ptr %i.q, align 4
  switch i8 %i.r, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
    i8 1, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
    i8 11, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
    i8 12, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  ]

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit: ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.s = icmp eq i8 %4, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  %.0228 = select i1 %i.s, i64 %i.v, i64 %i.u     ; 7 uses
  %i.w = zext i8 %5 to i16
  %i.x = zext i8 %4 to i16
  %i.y = shl nuw nsw i16 %i.w, 7
  %i.z = shl nuw nsw i16 %i.x, 4
  %i.aa = zext i8 %2 to i16
  %i.ab = add nuw nsw i16 %i.z, %i.aa
  %trunc = add nuw i16 %i.ab, %i.y
  switch i16 %trunc, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread [
    i16 139, label %bb.g
    i16 138, label %bb.h
    i16 141, label %bb.h
    i16 269, label %bb.j
    i16 413, label %bb.k
    i16 390, label %bb.l
    i16 406, label %bb.m
    i16 391, label %bb.n
    i16 28, label %bb.o
  ]

bb.g:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 744
  %sext = shl i64 %.0228, 32
  %i.ad = ashr exact i64 %sext, 32
  %i.ae = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEl(ptr noundef nonnull align 8 dereferenceable(136) %i.ac, i64 noundef %i.ad)
  br label %.critedge5

bb.h:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.critedge5, label %bb.i, !prof !345

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 1, i64 noundef %i.v)
  %i.aj = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.ai)
  br label %.critedge5

bb.j:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.al = trunc i64 %.0228 to i32
  %i.am = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float32ConstantENS0_7Float32E(ptr noundef nonnull align 8 dereferenceable(136) %i.ak, i32 %i.al)
  br label %.critedge5

bb.k:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ao = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantENS0_7Float64E(ptr noundef nonnull align 8 dereferenceable(136) %i.an, i64 %.0228)
  br label %.critedge5

bb.l:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.aq = trunc i64 %.0228 to i32
  %i.ar = sitofp i32 %i.aq to double
  %i.as = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantEd(ptr noundef nonnull align 8 dereferenceable(136) %i.ap, double noundef %i.ar)
  br label %.critedge5

bb.m:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.au = sitofp i64 %.0228 to double
  %i.av = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantEd(ptr noundef nonnull align 8 dereferenceable(136) %i.at, double noundef %i.au)
  br label %.critedge5

bb.n:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ax = trunc i64 %.0228 to i32
  %i.ay = uitofp i32 %i.ax to double
  %i.az = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantEd(ptr noundef nonnull align 8 dereferenceable(136) %i.aw, double noundef %i.ay)
  br label %.critedge5

bb.o:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bb = trunc i64 %.0228 to i32
  %i.bc = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj(ptr noundef nonnull align 8 dereferenceable(136) %i.ba, i32 noundef %i.bb)
  br label %.critedge5

bb.p:                                             ; preds = %bb.a
  %i.bd = zext i32 %1 to i64
  %i.be = add i64 %.pre296, %i.bd
  %i.bf = inttoptr i64 %i.be to ptr               ; 5 uses
  %i.bg = load i8, ptr %i.bf, align 4
  %.not.i136 = icmp eq i8 %i.bg, 75
  br i1 %.not.i136, label %bb.q, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bi = load i8, ptr %i.bh, align 4
  %.not8.i = icmp eq i8 %i.bi, 2
  br i1 %.not8.i, label %bb.r, label %bb.ak

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bk = load i32, ptr %i.bj, align 8            ; 2 uses
  switch i8 %2, label %bb.ak [
    i8 0, label %bb.s
    i8 13, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.bl = icmp eq i8 %5, 3
  br i1 %i.bl, label %bb.t, label %bb.ak

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bn = bitcast i32 %i.bk to float
  %i.bo = fpext float %i.bn to double
  %i.bp = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantEd(ptr noundef nonnull align 8 dereferenceable(136) %i.bm, double noundef %i.bo)
  br label %.critedge5

bb.u:                                             ; preds = %bb.r
  %i.bq = icmp eq i8 %5, 0
  br i1 %i.bq, label %bb.v, label %bb.ak

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bs = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj(ptr noundef nonnull align 8 dereferenceable(136) %i.br, i32 noundef %i.bk)
  br label %.critedge5

bb.w:                                             ; preds = %bb.a
  %i.bt = zext i32 %1 to i64
  %i.bu = add i64 %.pre296, %i.bt
  %i.bv = inttoptr i64 %i.bu to ptr               ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 4
  %.not.i138 = icmp eq i8 %i.bw, 75
  br i1 %.not.i138, label %bb.x, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.by = load i8, ptr %i.bx, align 4
  %.not8.i140 = icmp eq i8 %i.by, 3
  br i1 %.not8.i140, label %bb.y, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ca = load i64, ptr %i.bz, align 8            ; 6 uses
  switch i8 %2, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread [
    i8 0, label %bb.z
    i8 13, label %bb.ab
    i8 1, label %bb.ad
    i8 3, label %bb.ag
    i8 8, label %bb.ai
    i8 9, label %bb.aj
  ]

bb.z:                                             ; preds = %bb.y
  %i.cb = icmp eq i8 %5, 2
  br i1 %i.cb, label %bb.aa, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cd = bitcast i64 %i.ca to double
  %i.ce = tail call noundef float @_ZN2v88internal24DoubleToFloat32_NoInlineEd(double noundef %i.cd) #27
  %i.cf = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float32ConstantEf(ptr noundef nonnull align 8 dereferenceable(136) %i.cc, float noundef %i.ce)
  br label %.critedge5

bb.ab:                                            ; preds = %bb.y
  %i.cg = icmp eq i8 %5, 1
  br i1 %i.cg, label %bb.ac, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ci = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm(ptr noundef nonnull align 8 dereferenceable(136) %i.ch, i64 noundef %i.ca)
  br label %.critedge5

bb.ad:                                            ; preds = %bb.y
  %i.cj = bitcast i64 %i.ca to double
  %i.ck = tail call double @llvm.trunc.f64(double %i.cj) ; 6 uses
  switch i8 %5, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread [
    i8 1, label %bb.ae
    i8 0, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cl = fcmp oge double %i.ck, f0xC3E0000000000000
  %i.cm = fcmp ole double %i.ck, f0x43DFFFFFFFFFFFFF
  %or.cond = and i1 %i.cl, %i.cm
  %i.cn = fptosi double %i.ck to i64
  %spec.select = select i1 %or.cond, i64 %i.cn, i64 -9223372036854775808
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cp = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEl(ptr noundef nonnull align 8 dereferenceable(136) %i.co, i64 noundef %spec.select)
  br label %.critedge5

bb.af:                                            ; preds = %bb.ad
  %i.cq = fcmp ult double %i.ck, f0xC1E0000000000000
  %i.cr = fcmp ugt double %i.ck, f0x41DFFFFFFFC00000
  %i.cs = fptosi double %i.ck to i32
  %i.ct = or i1 %i.cq, %i.cr
  %.0125 = select i1 %i.ct, i32 -2147483648, i32 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cv = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi(ptr noundef nonnull align 8 dereferenceable(136) %i.cu, i32 noundef %.0125)
  br label %.critedge5

bb.ag:                                            ; preds = %bb.y
  %i.cw = icmp eq i8 %5, 0
  br i1 %i.cw, label %bb.ah, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cy = bitcast i64 %i.ca to double
  %i.cz = tail call noundef i32 @_ZN2v88internal22DoubleToInt32_NoInlineEd(double noundef %i.cy) #27
  %i.da = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi(ptr noundef nonnull align 8 dereferenceable(136) %i.cx, i32 noundef %i.cz)
  br label %.critedge5

bb.ai:                                            ; preds = %bb.y
end_hunk_0
