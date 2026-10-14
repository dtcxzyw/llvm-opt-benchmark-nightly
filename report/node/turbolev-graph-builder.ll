Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turbolev-graph-builder?download=true
inline.NumInlined: 65942
inline.NumDeleted: 17507
loop-unroll.NumCompletelyUnrolled: 517
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 591
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE12ReduceChangeENS2_1VINS2_13UntaggedUnionIJNSQ_IJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEENSQ_IJNS2_13FloatWithBitsILm32EEENSV_ILm64EEEEEEEEEEENS2_8ChangeOp4KindENS11_10AssumptionENS2_22RegisterRepresentationES14_:bb.a
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
  %i.x = zext nneg i8 %4 to i16
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
  %i.ad = shl i64 %.0228, 32
  %i.ae = ashr exact i64 %i.ad, 32
  %i.af = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEl(ptr noundef nonnull align 8 dereferenceable(136) %i.ac, i64 noundef %i.ae)
  br label %.critedge5

bb.h:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.critedge5, label %bb.i, !prof !345

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 1, i64 noundef %i.v)
  %i.ak = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.aj)
  br label %.critedge5

bb.j:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.am = trunc i64 %.0228 to i32
  %i.an = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float32ConstantENS0_7Float32E(ptr noundef nonnull align 8 dereferenceable(136) %i.al, i32 %i.am)
  br label %.critedge5

bb.k:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ap = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantENS0_7Float64E(ptr noundef nonnull align 8 dereferenceable(136) %i.ao, i64 %.0228)
  br label %.critedge5

bb.l:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ar = trunc i64 %.0228 to i32
  %i.as = sitofp i32 %i.ar to double
  %i.at = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantEd(ptr noundef nonnull align 8 dereferenceable(136) %i.aq, double noundef %i.as)
  br label %.critedge5

bb.m:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.av = sitofp i64 %.0228 to double
  %i.aw = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantEd(ptr noundef nonnull align 8 dereferenceable(136) %i.au, double noundef %i.av)
  br label %.critedge5

bb.n:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ay = trunc i64 %.0228 to i32
  %i.az = uitofp i32 %i.ay to double
  %i.ba = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantEd(ptr noundef nonnull align 8 dereferenceable(136) %i.ax, double noundef %i.az)
  br label %.critedge5

bb.o:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bc = trunc i64 %.0228 to i32
  %i.bd = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj(ptr noundef nonnull align 8 dereferenceable(136) %i.bb, i32 noundef %i.bc)
  br label %.critedge5

bb.p:                                             ; preds = %bb.a
  %i.be = zext i32 %1 to i64
  %i.bf = add i64 %.pre296, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr               ; 5 uses
  %i.bh = load i8, ptr %i.bg, align 4
  %.not.i136 = icmp eq i8 %i.bh, 75
  br i1 %.not.i136, label %bb.q, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bj = load i8, ptr %i.bi, align 4
  %.not8.i = icmp eq i8 %i.bj, 2
  br i1 %.not8.i, label %bb.r, label %bb.ak

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bl = load i32, ptr %i.bk, align 8            ; 2 uses
  switch i8 %2, label %bb.ak [
    i8 0, label %bb.s
    i8 13, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.bm = icmp eq i8 %5, 3
  br i1 %i.bm, label %bb.t, label %bb.ak

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bo = bitcast i32 %i.bl to float
  %i.bp = fpext float %i.bo to double
  %i.bq = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantEd(ptr noundef nonnull align 8 dereferenceable(136) %i.bn, double noundef %i.bp)
  br label %.critedge5

bb.u:                                             ; preds = %bb.r
  %i.br = icmp eq i8 %5, 0
  br i1 %i.br, label %bb.v, label %bb.ak

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bt = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj(ptr noundef nonnull align 8 dereferenceable(136) %i.bs, i32 noundef %i.bl)
  br label %.critedge5

bb.w:                                             ; preds = %bb.a
  %i.bu = zext i32 %1 to i64
  %i.bv = add i64 %.pre296, %i.bu
  %i.bw = inttoptr i64 %i.bv to ptr               ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 4
  %.not.i138 = icmp eq i8 %i.bx, 75
  br i1 %.not.i138, label %bb.x, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = load i8, ptr %i.by, align 4
  %.not8.i140 = icmp eq i8 %i.bz, 3
  br i1 %.not8.i140, label %bb.y, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8            ; 6 uses
  switch i8 %2, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread [
    i8 0, label %bb.z
    i8 13, label %bb.ab
    i8 1, label %bb.ad
    i8 3, label %bb.ag
    i8 8, label %bb.ai
    i8 9, label %bb.aj
  ]

bb.z:                                             ; preds = %bb.y
  %i.cc = icmp eq i8 %5, 2
  br i1 %i.cc, label %bb.aa, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ce = bitcast i64 %i.cb to double
  %i.cf = tail call noundef float @_ZN2v88internal24DoubleToFloat32_NoInlineEd(double noundef %i.ce) #27
  %i.cg = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float32ConstantEf(ptr noundef nonnull align 8 dereferenceable(136) %i.cd, float noundef %i.cf)
  br label %.critedge5

bb.ab:                                            ; preds = %bb.y
  %i.ch = icmp eq i8 %5, 1
  br i1 %i.ch, label %bb.ac, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cj = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm(ptr noundef nonnull align 8 dereferenceable(136) %i.ci, i64 noundef %i.cb)
  br label %.critedge5

bb.ad:                                            ; preds = %bb.y
  %i.ck = bitcast i64 %i.cb to double             ; 3 uses
  %i.cl = tail call double @llvm.trunc.f64(double %i.ck) ; 4 uses
  switch i8 %5, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread [
    i8 1, label %bb.ae
    i8 0, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cm = fcmp oge double %i.cl, f0xC3E0000000000000
  %i.cn = fcmp ole double %i.cl, f0x43DFFFFFFFFFFFFF
  %or.cond = and i1 %i.cm, %i.cn
  %i.co = fptosi double %i.ck to i64
  %spec.select = select i1 %or.cond, i64 %i.co, i64 -9223372036854775808
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cq = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEl(ptr noundef nonnull align 8 dereferenceable(136) %i.cp, i64 noundef %spec.select)
  br label %.critedge5

bb.af:                                            ; preds = %bb.ad
  %i.cr = fcmp ult double %i.cl, f0xC1E0000000000000
  %i.cs = fcmp ugt double %i.cl, f0x41DFFFFFFFC00000
  %i.ct = fptosi double %i.ck to i32
  %i.cu = or i1 %i.cr, %i.cs
  %.0125 = select i1 %i.cu, i32 -2147483648, i32 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cw = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi(ptr noundef nonnull align 8 dereferenceable(136) %i.cv, i32 noundef %.0125)
  br label %.critedge5

bb.ag:                                            ; preds = %bb.y
  %i.cx = icmp eq i8 %5, 0
  br i1 %i.cx, label %bb.ah, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cz = bitcast i64 %i.cb to double
  %i.da = tail call noundef i32 @_ZN2v88internal22DoubleToInt32_NoInlineEd(double noundef %i.cz) #27
  %i.db = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi(ptr noundef nonnull align 8 dereferenceable(136) %i.cy, i32 noundef %i.da)
  br label %.critedge5

bb.ai:                                            ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.dd = lshr i64 %i.cb, 32
  %i.de = trunc nuw i64 %i.dd to i32
  %i.df = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj(ptr noundef nonnull align 8 dereferenceable(136) %i.dc, i32 noundef %i.de)
  br label %.critedge5

bb.aj:                                            ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.dh = trunc i64 %i.cb to i32
  %i.di = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj(ptr noundef nonnull align 8 dereferenceable(136) %i.dg, i32 noundef %i.dh)
  br label %.critedge5

bb.ak:                                            ; preds = %bb.r, %bb.s, %bb.q, %bb.u
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.dk = load i8, ptr %i.dj, align 4
  %.not8.i143 = icmp eq i8 %i.dk, 2
  br i1 %.not8.i143, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher20MatchFloat32ConstantENS2_1VINS2_3AnyEEEPf.exit, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher20MatchFloat32ConstantENS2_1VINS2_3AnyEEEPf.exit: ; preds = %bb.ak
  %i.dl = icmp eq i8 %2, 0
  %i.dm = icmp eq i8 %5, 3
  %or.cond286 = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %or.cond286, label %.critedge18, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread

.critedge18:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher20MatchFloat32ConstantENS2_1VINS2_3AnyEEEPf.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.dq = fpext float %i.do to double
  %i.dr = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantEd(ptr noundef nonnull align 8 dereferenceable(136) %i.dp, double noundef %i.dq)
  br label %.critedge5

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread: ; preds = %bb.a, %bb.p, %bb.y, %bb.ad, %bb.z, %bb.ab, %bb.ak, %bb.ag, %bb.x, %bb.w, %bb.f, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEE.exit.thread, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher20MatchFloat32ConstantENS2_1VINS2_3AnyEEEPf.exit, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit
  %.sroa.0116.0231243.ph255269.ph = phi i32 [ %1, %bb.p ], [ %1, %bb.y ], [ %1, %bb.ad ], [ %1, %bb.z ], [ %1, %bb.ab ], [ %1, %bb.ak ], [ %.sroa.0116.0232, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit ], [ %1, %bb.ag ], [ %1, %bb.x ], [ %1, %bb.w ], [ %.sroa.0116.0232, %bb.f ], [ %.sroa.0116.0232, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE33TryRemoveWord32ToWord64ConversionENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEE.exit.thread ], [ %1, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher20MatchFloat32ConstantENS2_1VINS2_3AnyEEEPf.exit ], [ %1, %bb.a ] ; 2 uses
  %i.ds = zext i32 %.sroa.0116.0231243.ph255269.ph to i64
  %i.dt = add i64 %.pre296, %i.ds
  %i.du = inttoptr i64 %i.dt to ptr               ; 5 uses
  %i.dv = load i8, ptr %i.du, align 4
  %.not = icmp eq i8 %i.dv, 69
  br i1 %.not, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 6
  %.sroa.025.0.copyload = load i8, ptr %i.dw, align 2
  %i.dx = icmp eq i8 %.sroa.025.0.copyload, %5
  br i1 %i.dx, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 7
  %.sroa.023.0.copyload = load i8, ptr %i.dy, align 1
  %i.dz = icmp eq i8 %.sroa.023.0.copyload, %4
  br i1 %i.dz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.eb = load i8, ptr %i.ea, align 8, !range !343, !noundef !344
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = tail call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft8ChangeOp14IsReversibleByENS3_4KindEb(ptr noundef nonnull align 4 dereferenceable(8) %i.du, i8 noundef zeroext %2, i1 noundef zeroext %i.ec)
  br i1 %i.ed, label %.critedge, label %bb.ao

.critedge:                                        ; preds = %bb.an
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ee, align 4
  br label %.critedge5

bb.ao:                                            ; preds = %bb.al, %bb.am, %bb.an, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPmPl.exit.thread
  %i.ef = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSI_4KindENSI_10AssumptionENS2_22RegisterRepresentationESM_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %.sroa.0116.0231243.ph255269.ph, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 %4, i8 %5)
  %i.eg = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_8ChangeOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.ef)
  br label %.critedge5

.critedge5:                                       ; preds = %bb.ae, %bb.af, %bb.aj, %bb.ai, %bb.ah, %bb.ac, %bb.aa, %bb.i, %bb.h, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.g, %bb.o, %.critedge18, %bb.t, %bb.v, %bb.ao, %.critedge
  %.sroa.0198.4 = phi i32 [ %i.bt, %bb.v ], [ %i.eg, %bb.ao ], [ %.sroa.0.0.copyload.i.i, %.critedge ], [ %i.dr, %.critedge18 ], [ %i.af, %bb.g ], [ %i.bq, %bb.t ], [ -1, %bb.h ], [ %i.ak, %bb.i ], [ %i.bd, %bb.o ], [ %i.ba, %bb.n ], [ %i.aw, %bb.m ], [ %i.at, %bb.l ], [ %i.ap, %bb.k ], [ %i.an, %bb.j ], [ %i.di, %bb.aj ], [ %i.df, %bb.ai ], [ %i.db, %bb.ah ], [ %i.cw, %bb.af ], [ %i.cq, %bb.ae ], [ %i.cj, %bb.ac ], [ %i.cg, %bb.aa ]
  ret i32 %.sroa.0198.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEl(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm.exit, label %bb.b, !prof !345

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.e = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i8 noundef zeroext 1, i64 noundef %1)
  %i.f = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i32 %i.e)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]
  ret i32 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float32ConstantENS0_7Float32E(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE25ReduceIfReachableConstantIJNS2_10ConstantOp4KindENS0_7Float32EEEENS2_7OpIndexEDpT_.exit, label %bb.b, !prof !345

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.e = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENS0_7Float32EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i8 noundef zeroext 2, i32 %1)
  %i.f = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i32 %i.e)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE25ReduceIfReachableConstantIJNS2_10ConstantOp4KindENS0_7Float32EEEENS2_7OpIndexEDpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE25ReduceIfReachableConstantIJNS2_10ConstantOp4KindENS0_7Float32EEEENS2_7OpIndexEDpT_.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]
  ret i32 %.sroa.02.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float32ConstantEf(ptr noundef nonnull align 8 dereferenceable(136) %0, float noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float32ConstantENS0_7Float32E.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float32ConstantENS0_7Float32E.exit.sink.split, !prof !345

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float32ConstantENS0_7Float32E.exit.sink.split: ; preds = %bb.a
  %i.d = bitcast float %1 to i32
  %i.e = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.f = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENS0_7Float32EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.e, i8 noundef zeroext 2, i32 %i.d)
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.e, i32 %i.f)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float32ConstantENS0_7Float32E.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float32ConstantENS0_7Float32E.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float32ConstantENS0_7Float32E.exit.sink.split
  %.sroa.01.0 = phi i32 [ -1, %bb.a ], [ %i.g, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Float32ConstantENS0_7Float32E.exit.sink.split ]
  ret i32 %.sroa.01.0
}

declare noundef float @_ZN2v88internal24DoubleToFloat32_NoInlineEd(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #23

declare noundef i32 @_ZN2v88internal22DoubleToInt32_NoInlineEd(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft8ChangeOp14IsReversibleByENS3_4KindEb(ptr noundef nonnull align 4 dereferenceable(8) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.d = load i8, ptr %i.c, align 1               ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.01.0.copyload = load i8, ptr %i.e, align 2 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.0.0.copyload = load i8, ptr %i.f, align 1 ; 3 uses
  switch i8 %i.b, label %bb.m [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %_ZN2v88internal8compiler10turboshaft8ChangeOp12IsReversibleENS3_4KindENS3_10AssumptionENS2_22RegisterRepresentationES6_S4_b.exit
    i8 4, label %_ZN2v88internal8compiler10turboshaft8ChangeOp12IsReversibleENS3_4KindENS3_10AssumptionENS2_22RegisterRepresentationES6_S4_b.exit
    i8 5, label %_ZN2v88internal8compiler10turboshaft8ChangeOp12IsReversibleENS3_4KindENS3_10AssumptionENS2_22RegisterRepresentationES6_S4_b.exit
    i8 6, label %bb.f
    i8 7, label %bb.h
    i8 8, label %_ZN2v88internal8compiler10turboshaft8ChangeOp12IsReversibleENS3_4KindENS3_10AssumptionENS2_22RegisterRepresentationES6_S4_b.exit
    i8 9, label %_ZN2v88internal8compiler10turboshaft8ChangeOp12IsReversibleENS3_4KindENS3_10AssumptionENS2_22RegisterRepresentationES6_S4_b.exit
    i8 10, label %bb.j
    i8 11, label %bb.j
    i8 12, label %bb.k
    i8 13, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %.sroa.01.0.copyload, 2
  br i1 %i.g, label %bb.c, label %_ZN2v88internal8compiler10turboshaft8ChangeOp12IsReversibleENS3_4KindENS3_10AssumptionENS2_22RegisterRepresentationES6_S4_b.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i8 %.sroa.0.0.copyload, 3
  %i.i = icmp eq i8 %1, 0
  %or.cond.i = and i1 %i.i, %i.h
  %i.j = xor i1 %2, true
  %spec.select.i = and i1 %or.cond.i, %i.j
  br label %_ZN2v88internal8compiler10turboshaft8ChangeOp12IsReversibleENS3_4KindENS3_10AssumptionENS2_22RegisterRepresentationES6_S4_b.exit

bb.d:                                             ; preds = %bb.a
  %i.k = icmp eq i8 %i.d, 2
end_hunk_0
