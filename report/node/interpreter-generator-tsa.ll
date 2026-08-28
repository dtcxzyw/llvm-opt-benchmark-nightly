Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/interpreter-generator-tsa?download=true
inline.NumInlined: 9268
inline.NumDeleted: 3684
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE:bb.a
  switch i8 %.sroa.024.0.extract.trunc, label %bb.p [
    i8 1, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit
    i8 2, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit
    i8 3, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit
    i8 4, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit
    i8 5, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.i
    i8 9, label %bb.i
    i8 12, label %bb.i
    i8 10, label %bb.j
    i8 11, label %bb.j
    i8 16, label %bb.k
    i8 17, label %bb.k
    i8 18, label %bb.l
    i8 19, label %bb.m
    i8 20, label %bb.n
    i8 6, label %bb.i
    i8 13, label %bb.h
    i8 14, label %bb.h
    i8 0, label %bb.o
    i8 15, label %bb.o
  ]

bb.h:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.i:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.j:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.k:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.l:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.m:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.n:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.o:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #19
  unreachable

bb.p:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  unreachable

_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit: ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.sroa.0.0.i = phi i8 [ 0, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit ], [ 1, %bb.h ], [ 4, %bb.i ], [ 5, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ], [ 6, %bb.m ], [ 7, %bb.n ], [ 0, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit ], [ 0, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit ], [ 0, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 %.038
  store i8 %.sroa.0.0.i, ptr %i.ak, align 1
  %i.al = add nuw i64 %.038, 1                    ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp ult i64 %i.al, %i.ao
  br i1 %i.ap, label %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, label %._crit_edge, !llvm.loop !141

._crit_edge40.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21
  %.pre = load i64, ptr %i.i, align 8
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft22RegisterRepresentationEA_S5_EENS_4base6VectorIT_EEm.exit16
  %i.aq = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ %i.ab, %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft22RegisterRepresentationEA_S5_EENS_4base6VectorIT_EEm.exit16 ] ; 2 uses
  %i.ar = load i64, ptr %i.g, align 8
  %i.as = sub i64 %i.ar, %i.aq
  %i.at = icmp ult i64 %i.as, 56
  br i1 %i.at, label %bb.q, label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft16TSCallDescriptorEJRPKNS3_14CallDescriptorERNS_4base6VectorINS4_22RegisterRepresentationEEESE_RNS3_8CanThrowERNS3_16LazyDeoptOnThrowERPKNS3_20JSWasmCallParametersEEEEPT_DpOT0_.exit, !prof !7

bb.q:                                             ; preds = %._crit_edge40
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef 56) #18
  %.pre.i.i = load i64, ptr %i.i, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft16TSCallDescriptorEJRPKNS3_14CallDescriptorERNS_4base6VectorINS4_22RegisterRepresentationEEESE_RNS3_8CanThrowERNS3_16LazyDeoptOnThrowERPKNS3_20JSWasmCallParametersEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft16TSCallDescriptorEJRPKNS3_14CallDescriptorERNS_4base6VectorINS4_22RegisterRepresentationEEESE_RNS3_8CanThrowERNS3_16LazyDeoptOnThrowERPKNS3_20JSWasmCallParametersEEEEPT_DpOT0_.exit: ; preds = %._crit_edge40, %bb.q
  %i.au = phi i64 [ %.pre.i.i, %bb.q ], [ %i.aq, %._crit_edge40 ] ; 2 uses
  %i.av = inttoptr i64 %i.au to ptr               ; 9 uses
  %i.aw = add i64 %i.au, 56
  store i64 %i.aw, ptr %i.i, align 8
  store ptr %0, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.n, ptr %i.ax, align 8
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.d, ptr %.sroa.25.0..sroa_idx.i.i, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.aa, ptr %i.ay, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i64 %i.s, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i8 %1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 41
  store i8 %2, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store ptr %4, ptr %i.bb, align 8
  ret ptr %i.av

_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit: ; preds = %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft22RegisterRepresentationEA_S5_EENS_4base6VectorIT_EEm.exit16, %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21
  %i.bc = phi ptr [ %i.bi, %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21 ], [ %i.ac, %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft22RegisterRepresentationEA_S5_EENS_4base6VectorIT_EEm.exit16 ]
  %.01139 = phi i64 [ %i.bh, %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21 ], [ 0, %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft22RegisterRepresentationEA_S5_EENS_4base6VectorIT_EEm.exit16 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.01139
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %i.bf, align 4
  %.sroa.0.4.extract.shift2.i18 = lshr i64 %.sroa.0.0.copyload.i.i17, 32
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.4.extract.shift2.i18 to i8
  switch i8 %.sroa.0.0.extract.trunc, label %bb.z [
    i8 1, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21
    i8 2, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21
    i8 3, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21
    i8 4, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21
    i8 5, label %bb.r
    i8 7, label %bb.s
    i8 8, label %bb.s
    i8 9, label %bb.s
    i8 12, label %bb.s
    i8 10, label %bb.t
    i8 11, label %bb.t
    i8 16, label %bb.u
    i8 17, label %bb.u
    i8 18, label %bb.v
    i8 19, label %bb.w
    i8 20, label %bb.x
    i8 6, label %bb.s
    i8 13, label %bb.r
    i8 14, label %bb.r
    i8 0, label %bb.y
    i8 15, label %bb.y
  ]

bb.r:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.s:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.t:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.u:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.v:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.w:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.x:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.y:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #19
  unreachable

bb.z:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  unreachable

_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21: ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.sroa.0.0.i20 = phi i8 [ 0, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit ], [ 1, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ], [ 2, %bb.u ], [ 3, %bb.v ], [ 6, %bb.w ], [ 7, %bb.x ], [ 0, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit ], [ 0, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit ], [ 0, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.01139
  store i8 %.sroa.0.0.i20, ptr %i.bg, align 1
  %i.bh = add nuw i64 %.01139, 1                  ; 2 uses
  %i.bi = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = icmp ult i64 %i.bh, %i.bj
  br i1 %i.bk, label %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, label %._crit_edge40.loopexit, !llvm.loop !142
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6TagSmiENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 4294967296
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds i8, ptr %0, i64 -712
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 noundef zeroext 0, i64 noundef %i.e)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ -1, %bb.b ], [ %i.g, %bb.c ], [ %2, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
  %i.k = getelementptr inbounds i8, ptr %0, i64 -712 ; 4 uses
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSJ_4KindENSJ_10AssumptionENS2_18WordRepresentationESN_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i32 %.sroa.0.0.i, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 0, i8 1)
  %.pr = load ptr, ptr %i.h, align 8
  %i.m = icmp eq ptr %.pr, null
  br i1 %i.m, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, !prof !13

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %bb.d
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext 0, i64 noundef 32)
  %.pr17.a = load ptr, ptr %i.h, align 8
  %i.o = icmp eq ptr %.pr17.a, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSJ_INSK_ILm32EEEjEE.exit, !prof !13

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSJ_INSK_ILm32EEEjEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7ShiftOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i32 %i.l, i32 %i.n, i8 noundef zeroext 3, i8 1)
  %.pr20.pr = load ptr, ptr %i.h, align 8
  %i.q = icmp eq ptr %.pr20.pr, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %bb.e, !prof !13

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSJ_INSK_ILm32EEEjEE.exit
  %i.r = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESL_NSJ_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i32 %i.p, i8 1, i8 4, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSJ_INSK_ILm32EEEjEE.exit, %bb.e
  %.sroa.06.0.i.i.i = phi i32 [ %i.r, %bb.e ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSJ_INSK_ILm32EEEjEE.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit ], [ -1, %bb.d ]
  ret i32 %.sroa.06.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7ShiftOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i8 noundef zeroext %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_7ShiftOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre13 = ptrtoint ptr %.pre to i64
  %.pre14 = sub i64 %.pre10.i.i.i.i, %.pre13
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_7ShiftOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_7ShiftOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi15 = phi i64 [ %i.i, %bb.a ], [ %.pre14, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi15 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi15, 4
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
  store i8 67, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 2, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  store i32 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %4, ptr %i.al, align 1
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = zext i32 %1 to i64
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.as, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_7ShiftOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %i.at = add nuw i8 %i.as, 1
  store i8 %i.at, ptr %i.ar, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre12.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_7ShiftOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_7ShiftOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.an, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_7ShiftOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre12.i, %bb.c ]
  %i.au = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.av = add i64 %.pre-phi.i, %i.au
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.ay, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7ShiftOpEEEvRKT_.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.az = add nuw i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7ShiftOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7ShiftOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load i32, ptr %i.ba, align 4
  %i.bb = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.bc = lshr i64 %i.i, 4
  %i.bd = and i64 %i.bc, 268435455                ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 216
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 208 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 2
  %.not.i.i10 = icmp ugt i64 %i.bl, %i.bd
  br i1 %.not.i.i10, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !8

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7ShiftOpEEEvRKT_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 200 ; 2 uses
  %i.bn = lshr i64 %i.bd, 1
  %i.bo = add nuw nsw i64 %i.bd, 32
  %i.bp = add nuw nsw i64 %i.bo, %i.bn
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 224
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %i.bg, align 8
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef %i.bw)
  %.pre.i.i = load ptr, ptr %i.bg, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7ShiftOpEEEvRKT_.exit, %bb.e
  %i.bx = phi ptr [ %.pre.i.i, %bb.e ], [ %i.bh, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7ShiftOpEEEvRKT_.exit ]
  %i.by = trunc i64 %i.i to i32
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bd
  store i32 %.sroa.0.0.copyload.i, ptr %i.bz, align 4
  ret i32 %i.by
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSJ_4KindENSJ_10AssumptionENS2_18WordRepresentationESN_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 %4, i8 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8ChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS4_10AssumptionENS2_18WordRepresentationESA_EEERS4_PNS2_5GraphEDpT_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre13 = ptrtoint ptr %.pre to i64
  %.pre14 = sub i64 %.pre10.i.i.i.i, %.pre13
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8ChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS4_10AssumptionENS2_18WordRepresentationESA_EEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8ChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS4_10AssumptionENS2_18WordRepresentationESA_EEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi15 = phi i64 [ %i.i, %bb.a ], [ %.pre14, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi15 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi15, 4
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
  store i8 69, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE20ReloadBytecodeOffsetEv:bb.a
  ret i32 %.sroa.03.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre7 = ptrtoint ptr %.pre to i64
  %.pre8 = sub i64 %.pre10.i.i.i.i, %.pre7
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi9 = phi i64 [ %.pre8, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.s = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi9 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi9, 4
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
  store i8 75, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %1, ptr %i.ai, align 4
  %i.aj = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %switch.load, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %2, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load i32, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.ao = lshr i64 %i.i, 4
  %i.ap = and i64 %i.ao, 268435455                ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 216
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 208 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %.not.i.i = icmp ugt i64 %i.ax, %i.ap
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 200 ; 2 uses
  %i.az = lshr i64 %i.ap, 1
  %i.ba = add nuw nsw i64 %i.ap, 32
  %i.bb = add nuw nsw i64 %i.ba, %i.az
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 224
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.as, align 8
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.bi)
  %.pre.i.i = load ptr, ptr %i.as, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, %bb.c
  %i.bj = phi ptr [ %.pre.i.i, %bb.c ], [ %i.at, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i ]
  %i.bk = trunc i64 %i.i to i32
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ap
  store i32 %.sroa.0.0.copyload.i, ptr %i.bl, align 4
  ret i32 %i.bk
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerES1_S2_S5_S6_S9_EEEEEEEEEEEEEEEEEE26TaggedToWord32OrBigIntImplILNS0_6Object10ConversionE1EEEvNS4_1VINS0_7ContextEEENST_ISR_EENS0_20IsKnownTaggedPointerERNS4_5LabelIJNS4_12WordWithBitsILm32EEEEEEPNSY_IJNS0_6BigIntEEEES15_(ptr noundef nonnull align 8 dereferenceable(592) %0, i32 %1, i32 %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(105) %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.std::tuple.679", align 1    ; 3 uses
  %8 = alloca %"class.std::tuple.870", align 1    ; 3 uses
  %9 = alloca %"class.std::tuple.864", align 4    ; 4 uses
  %10 = alloca %"struct.v8::internal::compiler::turboshaft::FieldAccessTS.879", align 8 ; 8 uses
  %11 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %12 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %13 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry", align 8 ; 6 uses
  %14 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::NumberBuiltinsReducer, v8::internal::interpreter::BytecodeHandlerReducer, v8::internal::BuiltinsReducer, v8::internal::FeedbackCollectorReducer, v8::internal::compiler::turboshaft::MachineLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 5 uses
  %15 = alloca %"class.std::tuple.815", align 4   ; 5 uses
  %16 = alloca %"class.std::tuple.820", align 8   ; 9 uses
  %17 = alloca %"class.std::function", align 8    ; 7 uses
  %18 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::NumberBuiltinsReducer, v8::internal::interpreter::BytecodeHandlerReducer, v8::internal::BuiltinsReducer, v8::internal::FeedbackCollectorReducer, v8::internal::compiler::turboshaft::MachineLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 5 uses
  %19 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::NumberBuiltinsReducer, v8::internal::interpreter::BytecodeHandlerReducer, v8::internal::BuiltinsReducer, v8::internal::FeedbackCollectorReducer, v8::internal::compiler::turboshaft::MachineLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 5 uses
  %20 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::NumberBuiltinsReducer, v8::internal::interpreter::BytecodeHandlerReducer, v8::internal::BuiltinsReducer, v8::internal::FeedbackCollectorReducer, v8::internal::compiler::turboshaft::MachineLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 5 uses
  %21 = alloca %"struct.v8::internal::compiler::turboshaft::FieldAccessTS", align 8 ; 8 uses
  %22 = alloca %"class.std::tuple.860", align 4   ; 4 uses
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i: ; preds = %bb.b
  %i.i = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.c, align 8
  %i.j = icmp eq ptr %.pre.i, null
  br i1 %i.j, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i
  %i.k = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %2, i32 %i.i, i8 noundef zeroext 4, i8 1)
  %.pre45.i = load ptr, ptr %i.c, align 8
  %i.l = icmp eq ptr %.pre45.i, null
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i9.i, !prof !13

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i9.i: ; preds = %bb.c
  %i.m = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef 0)
  %.pr.i = load ptr, ptr %i.c, align 8
  %i.n = icmp eq ptr %.pr.i, null
  br i1 %i.n, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i9.i
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.k, i32 %i.m, i8 noundef zeroext 0, i8 1)
  %i.p = zext i32 %i.o to i64
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit: ; preds = %bb.b, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i, %bb.c, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i9.i, %bb.d
  %.sroa.06.0.i.i11.i = phi i64 [ %i.p, %bb.d ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i9.i ], [ 4294967295, %bb.c ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i ], [ 4294967295, %bb.b ]
  %i.q = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_BindIfENS2_17ConditionWithHintEPNSI_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i64 %.sroa.06.0.i.i11.i, ptr noundef nonnull %14)
  br i1 %i.q, label %bb.e, label %.critedge.1

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit
  call void @_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE15CombineFeedbackEi(ptr noundef nonnull align 8 dereferenceable(580) %0, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.t = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESL_NSJ_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %2, i8 4, i8 1, i8 noundef zeroext 0)
  %.pr.i117 = load ptr, ptr %i.c, align 8
  %i.u = icmp eq ptr %.pr.i117, null
  br i1 %i.u, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i, !prof !13

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i: ; preds = %bb.f
  %i.v = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 32)
  %.pr22.i = load ptr, ptr %i.c, align 8
  %i.w = icmp eq ptr %.pr22.i, null
  br i1 %i.w, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i, !prof !13

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i
  %i.x = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7ShiftOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.t, i32 %i.v, i8 noundef zeroext 0, i8 1)
  %.pr25.pr.i = load ptr, ptr %i.c, align 8
  %i.y = icmp eq ptr %.pr25.pr.i, null
  br i1 %i.y, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, label %bb.g, !prof !13

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i
  %i.z = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSJ_4KindENSJ_10AssumptionENS2_18WordRepresentationESN_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.x, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 1, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit: ; preds = %bb.e, %bb.f, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i, %bb.g
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.z, %bb.g ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i ], [ -1, %bb.e ], [ -1, %bb.f ]
  store i8 0, ptr %i.d, align 4
  store i32 %.sroa.07.0.i.i.i.i, ptr %i.e, align 4
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSO_17const_or_values_tE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(105) %4, ptr noundef nonnull align 4 dereferenceable(12) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.aa = load ptr, ptr %i.c, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge.1, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit
  %i.ac = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp ne i32 %i.ae, -1
  %i.ag = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull %i.ac, i1 noundef zeroext %i.af), !inline_history !14 ; 0 uses
  br label %.critedge.1

.critedge.1:                                      ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE.exit, %bb.h
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSI_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.i

bb.i:                                             ; preds = %.critedge.1, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store i64 4, ptr %13, align 8
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i, i8 -1, i64 20, i1 false)
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -32
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.al
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  %i.am = load ptr, ptr %i.ah, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  store ptr %i.an, ptr %i.ah, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.ao, ptr noundef nonnull align 8 dereferenceable(28) %13)
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !noalias !146
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %bb.k ], [ %i.an, %bb.j ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !146
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.m, label %_ZN2v88internal8compiler10turboshaft3VarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEC2INSC_INSD_INSE_INSF_INS2_21EmitProjectionReducerINS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEPT_.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !noalias !146
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 512
  br label %_ZN2v88internal8compiler10turboshaft3VarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEC2INSC_INSD_INSE_INSF_INS2_21EmitProjectionReducerINS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEPT_.exit.i.i

_ZN2v88internal8compiler10turboshaft3VarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEC2INSC_INSD_INSE_INSF_INS2_21EmitProjectionReducerINS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEPT_.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ay = phi ptr [ %i.ax, %bb.m ], [ %i.ap, %bb.l ] ; 5 uses
  %i.az = getelementptr inbounds i8, ptr %0, i64 -32 ; 6 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -32 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 49 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEECI2NS2_3VarIS4_SI_EEINSC_INSD_INSE_INSF_INS2_21EmitProjectionReducerINS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEPT_NS2_1VIS4_EE.exit, label %bb.n, !prof !7

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEC2INSC_INSD_INSE_INSF_INS2_21EmitProjectionReducerINS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEPT_.exit.i.i
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISP_SQ_EESP_(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr nonnull %i.ba, i32 %2)
  br label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEECI2NS2_3VarIS4_SI_EEINSC_INSD_INSE_INSF_INS2_21EmitProjectionReducerINS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEPT_NS2_1VIS4_EE.exit

_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEECI2NS2_3VarIS4_SI_EEINSC_INSD_INSE_INSF_INS2_21EmitProjectionReducerINS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEPT_NS2_1VIS4_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEC2INSC_INSD_INSE_INSF_INS2_21EmitProjectionReducerINS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEPT_.exit.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 10 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.bh, align 8
  %i.bi = ptrtoint ptr %0 to i64
  store i64 %i.bi, ptr %17, align 8
  store ptr @_ZNSt17_Function_handlerIFN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEEvEZNS1_15BuiltinsReducerINS1_24FeedbackCollectorReducerINS3_22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS0_4base3tmp5list1IJNS1_21NumberBuiltinsReducerENS1_11interpreter22BytecodeHandlerReducerES9_SA_SB_SC_SF_EEEEEEEEEEEEEEEEEE26TaggedToWord32OrBigIntImplILNS1_6Object10ConversionE1EEEvNS4_INS1_7ContextEEENS4_ISX_EENS1_20IsKnownTaggedPointerERNS3_5LabelIJS6_EEEPNS13_IJNS1_6BigIntEEEES18_EUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.bg, align 8
  store ptr @_ZNSt17_Function_handlerIFN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEEvEZNS1_15BuiltinsReducerINS1_24FeedbackCollectorReducerINS3_22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS0_4base3tmp5list1IJNS1_21NumberBuiltinsReducerENS1_11interpreter22BytecodeHandlerReducerES9_SA_SB_SC_SF_EEEEEEEEEEEEEEEEEE26TaggedToWord32OrBigIntImplILNS1_6Object10ConversionE1EEEvNS4_INS1_7ContextEEENS4_ISX_EENS1_20IsKnownTaggedPointerERNS3_5LabelIJS6_EEEPNS13_IJNS1_6BigIntEEEES18_EUlvE_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation, ptr %i.bf, align 8
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_WhileESt8functionIFNS2_1VINS2_12WordWithBitsILm32EEEEEvEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.820") align 8 %16, ptr noundef nonnull align 1 dereferenceable(1) %i.be, ptr noundef nonnull %17)
  %i.bj = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEECI2NS2_3VarIS4_SI_EEINSC_INSD_INSE_INSF_INS2_21EmitProjectionReducerINS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEPT_NS2_1VIS4_EE.exit
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3) #18, !inline_history !149 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEECI2NS2_3VarIS4_SI_EEINSC_INSD_INSE_INSF_INS2_21EmitProjectionReducerINS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEPT_NS2_1VIS4_EE.exit, %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 264 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 2 uses
  %i.bn = load i8, ptr %i.bl, align 8, !range !42, !noundef !5
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bp = getelementptr inbounds i8, ptr %i.ay, i64 -16 ; 5 uses
  %i.bq = getelementptr inbounds i8, ptr %0, i64 -8 ; 42 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 868 ; 21 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 62
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.not = icmp eq ptr %6, null
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %21, i64 62
  %i.cq = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.bp, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @_ZN2v88internal8compiler13AccessBuilder6ForMapENS1_16WriteBarrierKindE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %12, i8 noundef zeroext 2) #18
  %i.cr = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS0_3MapEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %i.be, i32 %.sroa.02.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %12) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.cs = zext i32 %i.cr to i64
  br label %bb.u

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_1VIS4_EE.exit, %_ZNSt14_Function_baseD2Ev.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 184
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 96
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %16, i64 8
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.cw = load ptr, ptr %i.bb, align 8
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEED2Ev.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit: ; preds = %._crit_edge
  %i.cy = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_13UnreachableOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0) ; 0 uses
  %.pre1230 = load ptr, ptr %i.bb, align 8
  %i.cz = icmp eq ptr %.pre1230, null
  br i1 %i.cz, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEED2Ev.exit, label %bb.p, !prof !13

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit
  %i.da = getelementptr inbounds i8, ptr %i.ay, i64 -16 ; 2 uses
  %.sroa.07.0.copyload.i.i = load i32, ptr %i.da, align 4 ; 2 uses
  %.not.i.i = icmp eq i32 %.sroa.07.0.copyload.i.i, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %i.df = icmp ult ptr %i.dc, %i.de
  br i1 %i.df, label %bb.s, label %bb.r, !prof !8

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = ptrtoint ptr %i.de to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 4
  %i.dn = add nsw i64 %i.dm, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i64 noundef %i.dn)
  %.pre.i.i.i.i.i = load ptr, ptr %i.db, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.do = phi ptr [ %i.dc, %bb.q ], [ %.pre.i.i.i.i.i, %bb.r ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store ptr %i.dp, ptr %i.db, align 8
  store ptr %i.ba, ptr %i.do, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i32 %.sroa.07.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  store i32 -1, ptr %i.da, align 8
  %i.dq = getelementptr inbounds i8, ptr %i.ay, i64 -31
  %i.dr = load i8, ptr %i.dq, align 1, !range !42, !noundef !5
  %i.ds = trunc nuw i8 %i.dr to i1
end_hunk_1
begin_hunk_2_@_ZN2v88internal15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerES1_S2_S5_S6_S9_EEEEEEEEEEEEEEEEEE26TaggedToWord32OrBigIntImplILNS0_6Object10ConversionE1EEEvNS4_1VINS0_7ContextEEENST_ISR_EENS0_20IsKnownTaggedPointerERNS4_5LabelIJNS4_12WordWithBitsILm32EEEEEEPNSY_IJNS0_6BigIntEEEES15_:bb.a
  store ptr %i.alz, ptr %i.ali, align 8
  %i.ama = trunc i64 %.pre-phi15.i307 to i32
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alh, i64 32 ; 2 uses
  %i.amc = load ptr, ptr %i.amb, align 8
  %i.amd = lshr i64 %.pre-phi15.i307, 4
  %i.ame = and i64 %i.amd, 268435455
  %i.amf = getelementptr inbounds nuw [2 x i8], ptr %i.amc, i64 %i.ame
  store i16 2, ptr %i.amf, align 2
  %i.amg = load ptr, ptr %i.amb, align 8
  %i.amh = add i32 %i.ama, 16
  %i.ami = lshr i32 %i.amh, 4
  %i.amj = add nsw i32 %i.ami, -1
  %i.amk = zext i32 %i.amj to i64
  %i.aml = getelementptr inbounds nuw [2 x i8], ptr %i.amg, i64 %i.amk
  store i16 2, ptr %i.aml, align 2
  store i8 69, ptr %i.aly, align 4
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aly, i64 1
  store i8 0, ptr %i.amm, align 1
  %i.amn = getelementptr inbounds nuw i8, ptr %i.aly, i64 2
  store i16 1, ptr %i.amn, align 2
  %i.amo = getelementptr inbounds nuw i8, ptr %i.aly, i64 8
  store i32 %i.ale, ptr %i.amo, align 4
  %i.amp = getelementptr inbounds nuw i8, ptr %i.aly, i64 4
  store <4 x i8> <i8 3, i8 0, i8 3, i8 0>, ptr %i.amp, align 4
  %i.amq = load ptr, ptr %i.all, align 8
  %i.amr = ptrtoint ptr %i.amq to i64
  %i.ams = and i64 %i.ahw, 4294967295
  %i.amt = add i64 %i.ams, %i.amr
  %i.amu = inttoptr i64 %i.amt to ptr
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 1 ; 2 uses
  %i.amw = load i8, ptr %i.amv, align 1           ; 2 uses
  %.not.i.i.i308 = icmp eq i8 %i.amw, -1
  br i1 %.not.i.i.i308, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit.i, label %bb.cm, !prof !7

bb.cm:                                            ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8ChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS4_10AssumptionENS2_19FloatRepresentationENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit.i
  %i.amx = add nuw i8 %i.amw, 1
  store i8 %i.amx, ptr %i.amv, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit.i

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit.i: ; preds = %bb.cm, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8ChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS4_10AssumptionENS2_19FloatRepresentationENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit.i
  %.sroa.0.0.copyload.i.i309 = load i32, ptr %i.br, align 4
  %i.amy = load ptr, ptr %i.bq, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.amz = lshr i64 %i.alo, 4
  %i.ana = and i64 %i.amz, 268435455              ; 4 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amy, i64 216 ; 3 uses
  %i.anc = load ptr, ptr %i.anb, align 8          ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.amy, i64 208 ; 4 uses
  %i.ane = load ptr, ptr %i.and, align 8          ; 3 uses
  %i.anf = ptrtoint ptr %i.anc to i64
  %i.ang = ptrtoint ptr %i.ane to i64             ; 2 uses
  %i.anh = sub i64 %i.anf, %i.ang
  %i.ani = ashr exact i64 %i.anh, 2
  %.not.i.i11.i = icmp ugt i64 %i.ani, %i.ana
  br i1 %.not.i.i11.i, label %_ZN2v88internal8compiler10turboshaft6detail10ResolveAllINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEESt5tupleIJNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEEEEEDaRT_RKT0_.exit.i, label %bb.cn, !prof !8

bb.cn:                                            ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit.i
  %i.anj = lshr i64 %i.ana, 1
  %i.ank = add nuw nsw i64 %i.ana, 32
  %i.anl = add nuw nsw i64 %i.ank, %i.anj         ; 4 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.amy, i64 224 ; 2 uses
  %i.ann = load ptr, ptr %i.anm, align 8
  %i.ano = ptrtoint ptr %i.ann to i64
  %i.anp = sub i64 %i.ano, %i.ang
  %i.anq = ashr exact i64 %i.anp, 2
  %.not.i.i757 = icmp ugt i64 %i.anl, %i.anq
  br i1 %.not.i.i757, label %bb.co, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i758, !prof !7

bb.co:                                            ; preds = %bb.cn
  %i.anr = getelementptr inbounds nuw i8, ptr %i.amy, i64 200
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.anr, i64 noundef %i.anl)
  %.pre.i761 = load ptr, ptr %i.and, align 8
  %.pre1186 = load ptr, ptr %i.anb, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i758

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i758: ; preds = %bb.co, %bb.cn
  %i.ans = phi ptr [ %i.anc, %bb.cn ], [ %.pre1186, %bb.co ] ; 3 uses
  %i.ant = phi ptr [ %i.ane, %bb.cn ], [ %.pre.i761, %bb.co ] ; 3 uses
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %i.ant, i64 %i.anl ; 4 uses
  %i.anv = icmp ult ptr %i.ans, %i.anu
  br i1 %i.anv, label %.lr.ph.preheader.i759, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i752

.lr.ph.preheader.i759:                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i758
  %i.anw = ptrtoaddr ptr %i.ans to i64            ; 2 uses
  %i.anx = ptrtoaddr ptr %i.ant to i64
  %i.any = shl nuw nsw i64 %i.anl, 2
  %i.anz = add nuw i64 %i.any, %i.anx
  %i.aoa = add i64 %i.anw, 4
  %umax.i760 = call i64 @llvm.umax.i64(i64 %i.anz, i64 %i.aoa)
  %i.aob = xor i64 %i.anw, -1
  %i.aoc = add i64 %umax.i760, %i.aob
  %i.aod = and i64 %i.aoc, -4
  %i.aoe = add i64 %i.aod, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ans, i8 -1, i64 %i.aoe, i1 false)
  %.pre1187.a = load ptr, ptr %i.and, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i752

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i752: ; preds = %.lr.ph.preheader.i759, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i758
  %i.aof = phi ptr [ %i.ant, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i758 ], [ %.pre1187.a, %.lr.ph.preheader.i759 ] ; 3 uses
  %i.aog = load ptr, ptr %i.anm, align 8          ; 2 uses
  %i.aoh = ptrtoint ptr %i.aog to i64             ; 2 uses
  %i.aoi = ptrtoint ptr %i.aof to i64
  %i.aoj = sub i64 %i.aoh, %i.aoi
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aof, i64 %i.aoj
  %i.aol = icmp ult ptr %i.anu, %i.aog
  br i1 %i.aol, label %.lr.ph.preheader.i753, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit756

.lr.ph.preheader.i753:                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i752
  %i.aom = ptrtoaddr ptr %i.anu to i64            ; 2 uses
  %i.aon = add i64 %i.aom, 4
  %umax.i754 = call i64 @llvm.umax.i64(i64 %i.aoh, i64 %i.aon)
  %i.aoo = xor i64 %i.aom, -1
  %i.aop = add i64 %umax.i754, %i.aoo
  %i.aoq = and i64 %i.aop, -4
  %i.aor = add i64 %i.aoq, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.anu, i8 -1, i64 %i.aor, i1 false)
  %.pre.i.i.i310.pre = load ptr, ptr %i.and, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit756

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit756: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i752, %.lr.ph.preheader.i753
  %.pre.i.i.i310 = phi ptr [ %i.aof, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i752 ], [ %.pre.i.i.i310.pre, %.lr.ph.preheader.i753 ]
  store ptr %i.aok, ptr %i.anb, align 8
  br label %_ZN2v88internal8compiler10turboshaft6detail10ResolveAllINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEESt5tupleIJNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEEEEEDaRT_RKT0_.exit.i

_ZN2v88internal8compiler10turboshaft6detail10ResolveAllINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEESt5tupleIJNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEEEEEDaRT_RKT0_.exit.i: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit756, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit.i
  %i.aos = phi ptr [ %.pre.i.i.i310, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit756 ], [ %i.ane, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit.i ]
  %i.aot = trunc i64 %i.alo to i32
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %i.ana
  store i32 %.sroa.0.0.copyload.i.i309, ptr %i.aou, align 4
  %.pr1140.pre = load ptr, ptr %i.bb, align 8
  %i.aov = icmp eq ptr %.pr1140.pre, null
  br i1 %i.aov, label %.critedge102, label %bb.cp

bb.cp:                                            ; preds = %_ZN2v88internal8compiler10turboshaft6detail10ResolveAllINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEESt5tupleIJNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEEEEEDaRT_RKT0_.exit.i
  store i8 1, ptr %i.bx, align 8
  %i.aow = load ptr, ptr %i.bb, align 8           ; 2 uses
  %i.aox = icmp eq ptr %i.aow, null
  br i1 %i.aox, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i, label %bb.cq, !prof !7

bb.cq:                                            ; preds = %bb.cp
  %i.aoy = load ptr, ptr %4, align 8              ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 52
  %i.apa = load i32, ptr %i.aoz, align 4
  %i.apb = icmp ne i32 %i.apa, -1
  %i.apc = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull %i.aoy, i1 noundef zeroext %i.apb), !inline_history !14 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i: ; preds = %bb.cq, %bb.cp
  %i.apd = load ptr, ptr %4, align 8
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 52
  %i.apf = load i32, ptr %i.ape, align 4
  %.not.i.i.i = icmp eq i32 %i.apf, -1
  br i1 %.not.i.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #19
  unreachable

bb.cs:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i
  %i.apg = load ptr, ptr %i.by, align 8           ; 2 uses
  %i.aph = load ptr, ptr %i.bz, align 8
  %i.api = icmp eq ptr %i.apg, %i.aph
  br i1 %i.api, label %bb.ct, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i.i, !prof !7

bb.ct:                                            ; preds = %bb.cs
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.by, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i.i: ; preds = %bb.ct, %bb.cs
  %i.apj = phi ptr [ %.pre.i.i.i.i.i.i, %bb.ct ], [ %i.apg, %bb.cs ] ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 4
  store ptr %i.apk, ptr %i.by, align 8
  store i32 %i.aot, ptr %i.apj, align 4
  %i.apl = load ptr, ptr %i.cb, align 8           ; 2 uses
  %i.apm = load ptr, ptr %i.cc, align 8
  %i.apn = icmp eq ptr %i.apl, %i.apm
  br i1 %i.apn, label %bb.cu, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSO_17const_or_values_tE.exit, !prof !7

bb.cu:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cd)
  %.pre.i.i4.i.i.i.i = load ptr, ptr %i.cb, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSO_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSO_17const_or_values_tE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i.i, %bb.cu
  %i.apo = phi ptr [ %.pre.i.i4.i.i.i.i, %bb.cu ], [ %i.apl, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i.i ] ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  store ptr %i.app, ptr %i.cb, align 8
  store ptr %i.aow, ptr %i.apo, align 8
  %.pr1142.pre = load ptr, ptr %i.bb, align 8
  %i.apq = icmp eq ptr %.pr1142.pre, null
  br i1 %i.apq, label %.critedge102, label %bb.cv

bb.cv:                                            ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSO_17const_or_values_tE.exit
  %i.apr = load ptr, ptr %i.ce, align 8           ; 2 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 52
  %i.apt = load i32, ptr %i.aps, align 4
  %i.apu = icmp ne i32 %i.apt, -1
  %i.apv = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull %i.apr, i1 noundef zeroext %i.apu), !inline_history !14 ; 0 uses
  br label %.critedge102

.critedge102:                                     ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i, %_ZN2v88internal8compiler10turboshaft6detail10ResolveAllINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEESt5tupleIJNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEEEEEDaRT_RKT0_.exit.i.thread, %_ZN2v88internal8compiler10turboshaft6detail10ResolveAllINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEESt5tupleIJNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEEEEEDaRT_RKT0_.exit.i, %bb.cv, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSO_17const_or_values_tE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15IsHeapNumberMapENS2_1VINS0_6ObjectEEE.exit, %bb.u
  %i.apw = add nuw nsw i32 %.0861156, 1           ; 2 uses
  %exitcond1160.not.a = icmp eq i32 %i.apw, 3
  br i1 %exitcond1160.not.a, label %.loopexit1375, label %bb.u, !llvm.loop !150

bb.cw:                                            ; preds = %.loopexit1375, %.critedge110
  %.0891158 = phi i32 [ 0, %.loopexit1375 ], [ %i.bsq, %.critedge110 ] ; 2 uses
  switch i32 %.0891158, label %.critedge110 [
    i32 2, label %.critedge110.thread
    i32 0, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i.i
  ]

.critedge110.thread:                              ; preds = %bb.cw
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSI_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.be, ptr noundef nonnull %19)
  br label %.loopexit1374

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i.i: ; preds = %bb.cw
  %i.apx = load ptr, ptr %i.bb, align 8
  %i.apy = icmp eq ptr %i.apx, null
  br i1 %i.apy, label %_ZN2v88internal15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerES1_S2_S5_S6_S9_EEEEEEEEEEEEEEEEEE20IsBigIntInstanceTypeENS4_8ConstOrVINS4_12WordWithBitsILm32EEEjEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i.i, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i.i
  %i.apz = load ptr, ptr %i.bq, align 8, !nonnull !5, !align !6 ; 5 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 16 ; 3 uses
  %i.aqb = load ptr, ptr %i.aqa, align 8          ; 2 uses
  %i.aqc = ptrtoint ptr %i.aqb to i64             ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apz, i64 8 ; 2 uses
  %i.aqe = load ptr, ptr %i.aqd, align 8
  %i.aqf = ptrtoint ptr %i.aqe to i64             ; 2 uses
  %i.aqg = sub i64 %i.aqc, %i.aqf                 ; 3 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.apz, i64 24
  %i.aqi = load ptr, ptr %i.aqh, align 8
  %i.aqj = ptrtoint ptr %i.aqi to i64             ; 2 uses
  %i.aqk = sub i64 %i.aqj, %i.aqc
  %i.aql = icmp ult i64 %i.aqk, 9
  br i1 %i.aql, label %bb.cx, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i352, !prof !7

bb.cx:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i.i
  %i.aqm = sub i64 %i.aqj, %i.aqf
  %i.aqn = lshr exact i64 %i.aqm, 3
  %i.aqo = and i64 %i.aqn, 4294967295
  %i.aqp = add nuw nsw i64 %i.aqo, 2
  call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.apz, i64 noundef %i.aqp)
  %.pre.i.i.i.i.i357 = load ptr, ptr %i.aqa, align 8 ; 2 uses
  %.pre10.i.i.i.i.i358 = ptrtoint ptr %.pre.i.i.i.i.i357 to i64
  %.pre.i359 = load ptr, ptr %i.aqd, align 8
  %.pre6.i360 = ptrtoint ptr %.pre.i359 to i64
  %.pre7.i361 = sub i64 %.pre10.i.i.i.i.i358, %.pre6.i360
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i352

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i352: ; preds = %bb.cx, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i.i
  %.pre-phi8.i353 = phi i64 [ %.pre7.i361, %bb.cx ], [ %i.aqg, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i.i ] ; 2 uses
  %i.aqq = phi ptr [ %.pre.i.i.i.i.i357, %bb.cx ], [ %i.aqb, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i.i ] ; 4 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 16
  store ptr %i.aqr, ptr %i.aqa, align 8
  %i.aqs = trunc i64 %.pre-phi8.i353 to i32
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.apz, i64 32 ; 2 uses
  %i.aqu = load ptr, ptr %i.aqt, align 8
  %i.aqv = lshr i64 %.pre-phi8.i353, 4
  %i.aqw = and i64 %i.aqv, 268435455
  %i.aqx = getelementptr inbounds nuw [2 x i8], ptr %i.aqu, i64 %i.aqw
  store i16 2, ptr %i.aqx, align 2
  %i.aqy = load ptr, ptr %i.aqt, align 8
  %i.aqz = add i32 %i.aqs, 16
  %i.ara = lshr i32 %i.aqz, 4
  %i.arb = add nsw i32 %i.ara, -1
  %i.arc = zext i32 %i.arb to i64
  %i.ard = getelementptr inbounds nuw [2 x i8], ptr %i.aqy, i64 %i.arc
  store i16 2, ptr %i.ard, align 2
  store i8 75, ptr %i.aqq, align 4
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqq, i64 1
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.are, i8 0, i64 5, i1 false)
  store i64 129, ptr %i.arf, align 8
  %.sroa.0.0.copyload.i.i354 = load i32, ptr %i.br, align 4
  %i.arg = load ptr, ptr %i.bq, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.arh = lshr i64 %i.aqg, 4
  %i.ari = and i64 %i.arh, 268435455              ; 4 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arg, i64 216 ; 3 uses
  %i.ark = load ptr, ptr %i.arj, align 8          ; 2 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arg, i64 208 ; 4 uses
  %i.arm = load ptr, ptr %i.arl, align 8          ; 3 uses
  %i.arn = ptrtoint ptr %i.ark to i64
  %i.aro = ptrtoint ptr %i.arm to i64             ; 2 uses
  %i.arp = sub i64 %i.arn, %i.aro
  %i.arq = ashr exact i64 %i.arp, 2
  %.not.i.i.i355 = icmp ugt i64 %i.arq, %i.ari
  br i1 %.not.i.i.i355, label %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_.exit362, label %bb.cy, !prof !8

bb.cy:                                            ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i352
  %i.arr = lshr i64 %i.ari, 1
  %i.ars = add nuw nsw i64 %i.ari, 32
  %i.art = add nuw nsw i64 %i.ars, %i.arr         ; 4 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arg, i64 224 ; 2 uses
  %i.arv = load ptr, ptr %i.aru, align 8
  %i.arw = ptrtoint ptr %i.arv to i64
  %i.arx = sub i64 %i.arw, %i.aro
  %i.ary = ashr exact i64 %i.arx, 2
  %.not.i.i805 = icmp ugt i64 %i.art, %i.ary
  br i1 %.not.i.i805, label %bb.cz, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i806, !prof !7

bb.cz:                                            ; preds = %bb.cy
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arg, i64 200
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.arz, i64 noundef %i.art)
  %.pre.i809 = load ptr, ptr %i.arl, align 8
  %.pre1191.a = load ptr, ptr %i.arj, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i806

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i806: ; preds = %bb.cz, %bb.cy
  %i.asa = phi ptr [ %i.ark, %bb.cy ], [ %.pre1191.a, %bb.cz ] ; 3 uses
  %i.asb = phi ptr [ %i.arm, %bb.cy ], [ %.pre.i809, %bb.cz ] ; 3 uses
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %i.asb, i64 %i.art ; 4 uses
  %i.asd = icmp ult ptr %i.asa, %i.asc
  br i1 %i.asd, label %.lr.ph.preheader.i807, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i800

.lr.ph.preheader.i807:                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i806
  %i.ase = ptrtoaddr ptr %i.asa to i64            ; 2 uses
  %i.asf = ptrtoaddr ptr %i.asb to i64
  %i.asg = shl nuw nsw i64 %i.art, 2
  %i.ash = add nuw i64 %i.asg, %i.asf
  %i.asi = add i64 %i.ase, 4
  %umax.i808 = call i64 @llvm.umax.i64(i64 %i.ash, i64 %i.asi)
  %i.asj = xor i64 %i.ase, -1
  %i.ask = add i64 %umax.i808, %i.asj
  %i.asl = and i64 %i.ask, -4
  %i.asm = add i64 %i.asl, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.asa, i8 -1, i64 %i.asm, i1 false)
  %.pre1192.a = load ptr, ptr %i.arl, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i800

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i800: ; preds = %.lr.ph.preheader.i807, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i806
  %i.asn = phi ptr [ %i.asb, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i806 ], [ %.pre1192.a, %.lr.ph.preheader.i807 ] ; 3 uses
  %i.aso = load ptr, ptr %i.aru, align 8          ; 2 uses
  %i.asp = ptrtoint ptr %i.aso to i64             ; 2 uses
  %i.asq = ptrtoint ptr %i.asn to i64
  %i.asr = sub i64 %i.asp, %i.asq
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asn, i64 %i.asr
  %i.ast = icmp ult ptr %i.asc, %i.aso
  br i1 %i.ast, label %.lr.ph.preheader.i801, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit804

.lr.ph.preheader.i801:                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i800
  %i.asu = ptrtoaddr ptr %i.asc to i64            ; 2 uses
  %i.asv = add i64 %i.asu, 4
  %umax.i802 = call i64 @llvm.umax.i64(i64 %i.asp, i64 %i.asv)
  %i.asw = xor i64 %i.asu, -1
  %i.asx = add i64 %umax.i802, %i.asw
  %i.asy = and i64 %i.asx, -4
  %i.asz = add i64 %i.asy, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.asc, i8 -1, i64 %i.asz, i1 false)
  %.pre.i.i.i356.pre = load ptr, ptr %i.arl, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit804

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit804: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i800, %.lr.ph.preheader.i801
  %.pre.i.i.i356 = phi ptr [ %i.asn, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i800 ], [ %.pre.i.i.i356.pre, %.lr.ph.preheader.i801 ]
  store ptr %i.ass, ptr %i.arj, align 8
  br label %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_.exit362

_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_.exit362: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i352, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit804
  %i.ata = phi ptr [ %.pre.i.i.i356, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit804 ], [ %i.arm, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i352 ]
  %i.atb = trunc i64 %i.aqg to i32                ; 2 uses
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %i.ari
  store i32 %.sroa.0.0.copyload.i.i354, ptr %i.atc, align 4
  %.pre.i127 = load ptr, ptr %i.bb, align 8
  %i.atd = icmp eq ptr %.pre.i127, null
  br i1 %i.atd, label %_ZN2v88internal15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerES1_S2_S5_S6_S9_EEEEEEEEEEEEEEEEEE20IsBigIntInstanceTypeENS4_8ConstOrVINS4_12WordWithBitsILm32EEEjEE.exit, label %bb.da, !prof !13

bb.da:                                            ; preds = %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_.exit362
  %i.ate = load ptr, ptr %i.bq, align 8, !nonnull !5, !align !6 ; 5 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 16 ; 3 uses
  %i.atg = load ptr, ptr %i.atf, align 8          ; 2 uses
  %i.ath = ptrtoint ptr %i.atg to i64             ; 2 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ate, i64 8 ; 4 uses
  %i.atj = load ptr, ptr %i.ati, align 8
  %i.atk = ptrtoint ptr %i.atj to i64             ; 2 uses
  %i.atl = sub i64 %i.ath, %i.atk                 ; 3 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %i.ate, i64 24
  %i.atn = load ptr, ptr %i.atm, align 8
  %i.ato = ptrtoint ptr %i.atn to i64             ; 2 uses
  %i.atp = sub i64 %i.ato, %i.ath
  %i.atq = icmp ult i64 %i.atp, 9
  br i1 %i.atq, label %bb.db, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit.i, !prof !7

bb.db:                                            ; preds = %bb.da
  %i.atr = sub i64 %i.ato, %i.atk
  %i.ats = lshr exact i64 %i.atr, 3
  %i.att = and i64 %i.ats, 4294967295
  %i.atu = add nuw nsw i64 %i.att, 2
  call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.ate, i64 noundef %i.atu)
  %.pre.i.i.i.i.i347 = load ptr, ptr %i.atf, align 8 ; 2 uses
  %.pre10.i.i.i.i.i348 = ptrtoint ptr %.pre.i.i.i.i.i347 to i64
  %.pre.i349 = load ptr, ptr %i.ati, align 8
  %.pre13.i350 = ptrtoint ptr %.pre.i349 to i64
  %.pre14.i351 = sub i64 %.pre10.i.i.i.i.i348, %.pre13.i350
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit.i

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit.i: ; preds = %bb.db, %bb.da
  %.pre-phi15.i334 = phi i64 [ %i.atl, %bb.da ], [ %.pre14.i351, %bb.db ] ; 2 uses
  %i.atv = phi ptr [ %i.atg, %bb.da ], [ %.pre.i.i.i.i.i347, %bb.db ] ; 8 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 16
  store ptr %i.atw, ptr %i.atf, align 8
  %i.atx = trunc i64 %.pre-phi15.i334 to i32
end_hunk_2
begin_hunk_3_@_ZN2v88internal15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerES1_S2_S5_S6_S9_EEEEEEEEEEEEEEEEEE26TaggedToWord32OrBigIntImplILNS0_6Object10ConversionE1EEEvNS4_1VINS0_7ContextEEENST_ISR_EENS0_20IsKnownTaggedPointerERNS4_5LabelIJNS4_12WordWithBitsILm32EEEEEEPNSY_IJNS0_6BigIntEEEES15_:bb.a
  store i64 %i.brn, ptr %i.brl, align 8
  br label %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE15CombineFeedbackEi.exit162

_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE15CombineFeedbackEi.exit162: ; preds = %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS2_21NumberBuiltinsReducerENS2_11interpreter22BytecodeHandlerReducerENS2_15BuiltinsReducerENS2_24FeedbackCollectorReducerENS4_22MachineLoweringReducerES9_SC_EEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i464, %bb.el, %bb.ek, %bb.ej, %bb.eh, %bb.ee, %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE12SmiBitwiseOrENS3_1VINS0_3SmiEEESR_.exit.i159
  %i.bro = load ptr, ptr %i.bb, align 8
  %i.brp = icmp eq ptr %i.bro, null
  br i1 %i.brp, label %.critedge110, label %bb.eo

bb.eo:                                            ; preds = %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE15CombineFeedbackEi.exit162
  store i8 1, ptr %i.cf, align 8
  %i.brq = load ptr, ptr %i.bb, align 8           ; 2 uses
  %i.brr = icmp eq ptr %i.brq, null
  br i1 %i.brr, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i164, label %bb.ep, !prof !7

bb.ep:                                            ; preds = %bb.eo
  %i.brs = load ptr, ptr %5, align 8              ; 2 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brs, i64 52
  %i.bru = load i32, ptr %i.brt, align 4
  %i.brv = icmp ne i32 %i.bru, -1
  %i.brw = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull %i.brs, i1 noundef zeroext %i.brv), !inline_history !14 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i164

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i164: ; preds = %bb.ep, %bb.eo
  %i.brx = load ptr, ptr %5, align 8
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brx, i64 52
  %i.brz = load i32, ptr %i.bry, align 4
  %.not.i.i.i165 = icmp eq i32 %i.brz, -1
  br i1 %.not.i.i.i165, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i164
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #19
  unreachable

bb.er:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i164
  %i.bsa = load ptr, ptr %i.cg, align 8           ; 2 uses
  %i.bsb = load ptr, ptr %i.ch, align 8
  %i.bsc = icmp eq ptr %i.bsa, %i.bsb
  br i1 %i.bsc, label %bb.es, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6BigIntEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i166, !prof !7

bb.es:                                            ; preds = %bb.er
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6BigIntEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ci)
  %.pre.i.i.i.i.i.i169 = load ptr, ptr %i.cg, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6BigIntEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i166

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6BigIntEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i166: ; preds = %bb.es, %bb.er
  %i.bsd = phi ptr [ %.pre.i.i.i.i.i.i169, %bb.es ], [ %i.bsa, %bb.er ] ; 2 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsd, i64 4
  store ptr %i.bse, ptr %i.cg, align 8
  store i32 %.sroa.02.0.copyload.i.i.i129, ptr %i.bsd, align 4
  %i.bsf = load ptr, ptr %i.cj, align 8           ; 2 uses
  %i.bsg = load ptr, ptr %i.ck, align 8
  %i.bsh = icmp eq ptr %i.bsf, %i.bsg
  br i1 %i.bsh, label %bb.et, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6BigIntEEEEEEvRT_RKNSN_17const_or_values_tE.exit170, !prof !7

bb.et:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6BigIntEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i166
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cl)
  %.pre.i.i4.i.i.i.i168 = load ptr, ptr %i.cj, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6BigIntEEEEEEvRT_RKNSN_17const_or_values_tE.exit170

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6BigIntEEEEEEvRT_RKNSN_17const_or_values_tE.exit170: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6BigIntEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i166, %bb.et
  %i.bsi = phi ptr [ %.pre.i.i4.i.i.i.i168, %bb.et ], [ %i.bsf, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6BigIntEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i166 ] ; 2 uses
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsi, i64 8
  store ptr %i.bsj, ptr %i.cj, align 8
  store ptr %i.brq, ptr %i.bsi, align 8
  %.pre1212 = load ptr, ptr %i.bb, align 8
  %i.bsk = icmp eq ptr %.pre1212, null
  br i1 %i.bsk, label %.critedge110, label %bb.eu

bb.eu:                                            ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6BigIntEEEEEEvRT_RKNSN_17const_or_values_tE.exit170
  %i.bsl = load ptr, ptr %i.cm, align 8           ; 2 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 52
  %i.bsn = load i32, ptr %i.bsm, align 4
  %i.bso = icmp ne i32 %i.bsn, -1
  %i.bsp = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull %i.bsl, i1 noundef zeroext %i.bso), !inline_history !14 ; 0 uses
  br label %.critedge110

.critedge110:                                     ; preds = %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE15CombineFeedbackEi.exit162, %bb.eu, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6BigIntEEEEEEvRT_RKNSN_17const_or_values_tE.exit170, %_ZN2v88internal15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerES1_S2_S5_S6_S9_EEEEEEEEEEEEEEEEEE20IsBigIntInstanceTypeENS4_8ConstOrVINS4_12WordWithBitsILm32EEEjEE.exit, %bb.cw
  %i.bsq = add nuw nsw i32 %.0891158, 1           ; 2 uses
  %exitcond1161.not = icmp eq i32 %i.bsq, 3
  br i1 %exitcond1161.not, label %.loopexit1374, label %bb.cw, !llvm.loop !151

.loopexit1374:                                    ; preds = %.critedge110, %.critedge110.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %.sroa.0.0.copyload.i.i.i172 = load ptr, ptr %i.bs, align 8
  %i.bsr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i172, i64 16
  %.sroa.02.0.copyload.i.i.i.i173 = load i32, ptr %i.bsr, align 4
  %i.bss = load ptr, ptr %i.bb, align 8
  %i.bst = icmp eq ptr %i.bss, null
  br i1 %i.bst, label %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE10FeedbackIsEi.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i174, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i174: ; preds = %.loopexit1374
  %i.bsu = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(580) %0, i8 noundef zeroext 4, i64 0)
  %.pre.i175 = load ptr, ptr %i.bb, align 8
  %i.bsv = icmp eq ptr %.pre.i175, null
  br i1 %i.bsv, label %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE10FeedbackIsEi.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE19BitcastSmiToWordPtrENS2_1VINS0_3SmiEEE.exit.i.i176, !prof !13

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE19BitcastSmiToWordPtrENS2_1VINS0_3SmiEEE.exit.i.i176: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i174
  %i.bsw = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESL_NSJ_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(580) %0, i32 %.sroa.02.0.copyload.i.i.i.i173, i8 4, i8 1, i8 noundef zeroext 0)
  %.pr.i.i177 = load ptr, ptr %i.bb, align 8
  %i.bsx = icmp eq ptr %.pr.i.i177, null
  br i1 %i.bsx, label %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE10FeedbackIsEi.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i178, !prof !13

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i178: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE19BitcastSmiToWordPtrENS2_1VINS0_3SmiEEE.exit.i.i176
  %i.bsy = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESL_NSJ_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(580) %0, i32 %i.bsu, i8 4, i8 1, i8 noundef zeroext 0)
  %.pr23.i.i = load ptr, ptr %i.bb, align 8
  %i.bsz = icmp eq ptr %.pr23.i.i, null
  br i1 %i.bsz, label %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE10FeedbackIsEi.exit, label %bb.ev, !prof !13

bb.ev:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i178
  %i.bta = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(580) %0, i32 %i.bsw, i32 %i.bsy, i8 noundef zeroext 0, i8 1) ; 0 uses
  br label %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE10FeedbackIsEi.exit

_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE10FeedbackIsEi.exit: ; preds = %bb.ev, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i178, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE19BitcastSmiToWordPtrENS2_1VINS0_3SmiEEE.exit.i.i176, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i174, %.loopexit1374
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  br label %bb.fc

.loopexit:                                        ; preds = %.critedge114, %.critedge114.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.btb = load ptr, ptr %i.bb, align 8
  %i.btc = icmp eq ptr %i.btb, null
  br i1 %i.btc, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i180, label %bb.ew, !prof !7

bb.ew:                                            ; preds = %.loopexit
  %i.btd = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(580) %0, i8 noundef zeroext 4, i64 2194728288256)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i180

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i180: ; preds = %bb.ew, %.loopexit
  %.sroa.02.0.i.i.i = phi i32 [ %i.btd, %bb.ew ], [ -1, %.loopexit ]
  %i.bte = load ptr, ptr %i.bt, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 880
  %i.btg = load ptr, ptr %i.btf, align 8
  %i.bth = icmp eq ptr %i.btg, null
  br i1 %i.bth, label %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE17OverwriteFeedbackEi.exit, label %bb.ex, !prof !7

bb.ex:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i180
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bte, i64 32
  %.sroa.02.0.copyload.i.i.i181 = load ptr, ptr %i.bs, align 8
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISP_SQ_EESP_(ptr noundef nonnull align 8 dereferenceable(504) %i.bti, ptr %.sroa.02.0.copyload.i.i.i181, i32 %.sroa.02.0.i.i.i)
  br label %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE17OverwriteFeedbackEi.exit

_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE17OverwriteFeedbackEi.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i180, %bb.ex
  %i.btj = load ptr, ptr %i.az, align 8
  %i.btk = getelementptr inbounds nuw i8, ptr %i.btj, i64 48
  %i.btl = load ptr, ptr %i.btk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %.sroa.02.0.copyload.i.i.i183 = load i32, ptr %i.bp, align 4
  store i32 %.sroa.02.0.copyload.i.i.i183, ptr %22, align 4
  %i.btm = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11CallBuiltinINS2_21BuiltinCallDescriptor18NonNumberToNumericEEENS2_6detail12IndexTypeForINT_9results_tEE4typeEPNS0_7IsolateENS2_1VINS0_7ContextEEERKNSO_11arguments_tEQaantsrTL0__16kNeedsFrameStatesrS10_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(136) %i.be, ptr noundef %i.btl, i32 %1, ptr noundef nonnull align 4 dereferenceable(4) %22) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.btn = load ptr, ptr %i.bb, align 8
  %i.bto = icmp eq ptr %i.btn, null
  br i1 %i.bto, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSP_17const_or_values_tE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i184, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i184: ; preds = %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE17OverwriteFeedbackEi.exit
  %i.btp = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef 1)
  %.pre.i185 = load ptr, ptr %i.bb, align 8
  %i.btq = icmp eq ptr %.pre.i185, null
  br i1 %i.btq, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSP_17const_or_values_tE.exit, label %bb.ey, !prof !13

bb.ey:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i184
  %i.btr = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.btm, i32 %i.btp, i8 noundef zeroext 4, i8 1)
  %.pre45.i186 = load ptr, ptr %i.bb, align 8
  %i.bts = icmp eq ptr %.pre45.i186, null
  br i1 %i.bts, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSP_17const_or_values_tE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i9.i187, !prof !13

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i9.i187: ; preds = %bb.ey
  %i.btt = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef 0)
  %.pr.i188 = load ptr, ptr %i.bb, align 8
  %i.btu = icmp eq ptr %.pr.i188, null
  br i1 %i.btu, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSP_17const_or_values_tE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit190, !prof !13

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit190: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i9.i187
  %i.btv = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.btr, i32 %i.btt, i8 noundef zeroext 0, i8 1) ; 5 uses
  %.pr1143 = load ptr, ptr %i.bb, align 8
  %i.btw = icmp eq ptr %.pr1143, null
  br i1 %i.btw, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSP_17const_or_values_tE.exit, label %bb.ez, !prof !13

bb.ez:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit190
  %i.btx = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESL_NSJ_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.btm, i8 4, i8 1, i8 noundef zeroext 0)
  %.pr.i191 = load ptr, ptr %i.bb, align 8
  %i.bty = icmp eq ptr %.pr.i191, null
  br i1 %i.bty, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSP_17const_or_values_tE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i192, !prof !13

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i192: ; preds = %bb.ez
  %i.btz = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 32)
  %.pr22.i193 = load ptr, ptr %i.bb, align 8
  %i.bua = icmp eq ptr %.pr22.i193, null
  br i1 %i.bua, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSP_17const_or_values_tE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i194, !prof !13

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i194: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i192
  %i.bub = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7ShiftOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.btx, i32 %i.btz, i8 noundef zeroext 0, i8 1)
  %.pr25.pr.i195 = load ptr, ptr %i.bb, align 8
  %i.buc = icmp eq ptr %.pr25.pr.i195, null
  br i1 %i.buc, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSP_17const_or_values_tE.exit, label %bb.fa, !prof !13

bb.fa:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i194
  %i.bud = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSJ_4KindENSJ_10AssumptionENS2_18WordRepresentationESN_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.bub, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 1, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSP_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSP_17const_or_values_tE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i9.i187, %bb.ey, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i184, %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE17OverwriteFeedbackEi.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit190, %bb.ez, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i192, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i194, %bb.fa
  %.sroa.06.0.i.i11.i1891145 = phi i32 [ %i.btv, %bb.fa ], [ %i.btv, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i194 ], [ %i.btv, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i192 ], [ %i.btv, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit190 ], [ %i.btv, %bb.ez ], [ -1, %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE17OverwriteFeedbackEi.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i184 ], [ -1, %bb.ey ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i9.i187 ]
  %.sroa.07.0.i.i.i.i196 = phi i32 [ %i.bud, %bb.fa ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i194 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i192 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE.exit190 ], [ -1, %bb.ez ], [ -1, %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE17OverwriteFeedbackEi.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i184 ], [ -1, %bb.ey ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i9.i187 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i32 %.sroa.07.0.i.i.i.i196, ptr %9, align 4, !alias.scope !152
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm32EEEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS5_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %4, ptr noundef nonnull align 8 dereferenceable(904) %i.az, i32 %.sroa.06.0.i.i11.i1891145, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.bue = load ptr, ptr %i.bb, align 8
  %i.buf = icmp eq ptr %i.bue, null
  br i1 %i.buf, label %_ZN2v88internal8compiler10turboshaft3VarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_1VIS4_EE.exit, label %bb.fb, !prof !7

bb.fb:                                            ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSP_17const_or_values_tE.exit
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISP_SQ_EESP_(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr nonnull %i.ba, i32 %i.btm)
  br label %_ZN2v88internal8compiler10turboshaft3VarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_1VIS4_EE.exit

_ZN2v88internal8compiler10turboshaft3VarINS0_10HeapObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_1VIS4_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSP_17const_or_values_tE.exit, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN2v88internal8compiler10turboshaft9LoopLabelIJEE4GotoINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEEvRT_RKSt5tupleIJEE(ptr noundef nonnull align 8 dereferenceable(170) %i.bm, ptr noundef nonnull align 8 dereferenceable(904) %i.az, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN2v88internal8compiler10turboshaft9LoopLabelIJEE7EndLoopINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(170) %i.bm, ptr noundef nonnull align 8 dereferenceable(904) %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.870") align 1 %8, ptr noundef nonnull align 8 dereferenceable(81) %16, ptr noundef nonnull align 8 dereferenceable(904) %i.az, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  store i8 0, ptr %i.bl, align 8
  br label %._crit_edge

bb.fc:                                            ; preds = %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE10FeedbackIsEi.exit, %.critedge114
  %.0951159 = phi i32 [ 0, %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE10FeedbackIsEi.exit ], [ %i.cpw, %.critedge114 ] ; 2 uses
  switch i32 %.0951159, label %.critedge114 [
    i32 2, label %.critedge114.thread
    i32 0, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i203
  ]

.critedge114.thread:                              ; preds = %bb.fc
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSI_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.be, ptr noundef nonnull %20)
  br label %.loopexit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i203: ; preds = %bb.fc
  %i.bug = load ptr, ptr %i.bb, align 8
  %i.buh = icmp eq ptr %i.bug, null
  br i1 %i.buh, label %_ZN2v88internal15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerES1_S2_S5_S6_S9_EEEEEEEEEEEEEEEEEE17InstanceTypeEqualENS4_8ConstOrVINS4_12WordWithBitsILm32EEEjEEST_.exit, label %bb.fd, !prof !7

bb.fd:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i203
  %i.bui = load ptr, ptr %i.bq, align 8, !nonnull !5, !align !6 ; 5 uses
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bui, i64 16 ; 3 uses
  %i.buk = load ptr, ptr %i.buj, align 8          ; 2 uses
  %i.bul = ptrtoint ptr %i.buk to i64             ; 2 uses
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bui, i64 8 ; 2 uses
  %i.bun = load ptr, ptr %i.bum, align 8
  %i.buo = ptrtoint ptr %i.bun to i64             ; 2 uses
  %i.bup = sub i64 %i.bul, %i.buo                 ; 3 uses
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bui, i64 24
  %i.bur = load ptr, ptr %i.buq, align 8
  %i.bus = ptrtoint ptr %i.bur to i64             ; 2 uses
  %i.but = sub i64 %i.bus, %i.bul
  %i.buu = icmp ult i64 %i.but, 9
  br i1 %i.buu, label %bb.fe, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i556, !prof !7

bb.fe:                                            ; preds = %bb.fd
  %i.buv = sub i64 %i.bus, %i.buo
  %i.buw = lshr exact i64 %i.buv, 3
  %i.bux = and i64 %i.buw, 4294967295
  %i.buy = add nuw nsw i64 %i.bux, 2
  call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.bui, i64 noundef %i.buy)
  %.pre.i.i.i.i.i561 = load ptr, ptr %i.buj, align 8 ; 2 uses
  %.pre10.i.i.i.i.i562 = ptrtoint ptr %.pre.i.i.i.i.i561 to i64
  %.pre.i563 = load ptr, ptr %i.bum, align 8
  %.pre6.i564 = ptrtoint ptr %.pre.i563 to i64
  %.pre7.i565 = sub i64 %.pre10.i.i.i.i.i562, %.pre6.i564
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i556

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i556: ; preds = %bb.fe, %bb.fd
  %.pre-phi8.i557 = phi i64 [ %.pre7.i565, %bb.fe ], [ %i.bup, %bb.fd ] ; 2 uses
  %i.buz = phi ptr [ %.pre.i.i.i.i.i561, %bb.fe ], [ %i.buk, %bb.fd ] ; 4 uses
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buz, i64 16
  store ptr %i.bva, ptr %i.buj, align 8
  %i.bvb = trunc i64 %.pre-phi8.i557 to i32
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bui, i64 32 ; 2 uses
  %i.bvd = load ptr, ptr %i.bvc, align 8
  %i.bve = lshr i64 %.pre-phi8.i557, 4
  %i.bvf = and i64 %i.bve, 268435455
  %i.bvg = getelementptr inbounds nuw [2 x i8], ptr %i.bvd, i64 %i.bvf
  store i16 2, ptr %i.bvg, align 2
  %i.bvh = load ptr, ptr %i.bvc, align 8
  %i.bvi = add i32 %i.bvb, 16
  %i.bvj = lshr i32 %i.bvi, 4
  %i.bvk = add nsw i32 %i.bvj, -1
  %i.bvl = zext i32 %i.bvk to i64
  %i.bvm = getelementptr inbounds nuw [2 x i8], ptr %i.bvh, i64 %i.bvl
  store i16 2, ptr %i.bvm, align 2
  store i8 75, ptr %i.buz, align 4
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.buz, i64 1
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.buz, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bvn, i8 0, i64 5, i1 false)
  store i64 131, ptr %i.bvo, align 8
  %.sroa.0.0.copyload.i.i558 = load i32, ptr %i.br, align 4
  %i.bvp = load ptr, ptr %i.bq, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.bvq = lshr i64 %i.bup, 4
  %i.bvr = and i64 %i.bvq, 268435455              ; 4 uses
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvp, i64 216 ; 3 uses
  %i.bvt = load ptr, ptr %i.bvs, align 8          ; 2 uses
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvp, i64 208 ; 4 uses
  %i.bvv = load ptr, ptr %i.bvu, align 8          ; 3 uses
  %i.bvw = ptrtoint ptr %i.bvt to i64
  %i.bvx = ptrtoint ptr %i.bvv to i64             ; 2 uses
  %i.bvy = sub i64 %i.bvw, %i.bvx
  %i.bvz = ashr exact i64 %i.bvy, 2
  %.not.i.i.i559 = icmp ugt i64 %i.bvz, %i.bvr
  br i1 %.not.i.i.i559, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i, label %bb.ff, !prof !8

bb.ff:                                            ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i556
  %i.bwa = lshr i64 %i.bvr, 1
  %i.bwb = add nuw nsw i64 %i.bvr, 32
  %i.bwc = add nuw nsw i64 %i.bwb, %i.bwa         ; 4 uses
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bvp, i64 224 ; 2 uses
  %i.bwe = load ptr, ptr %i.bwd, align 8
  %i.bwf = ptrtoint ptr %i.bwe to i64
  %i.bwg = sub i64 %i.bwf, %i.bvx
  %i.bwh = ashr exact i64 %i.bwg, 2
  %.not.i.i961 = icmp ugt i64 %i.bwc, %i.bwh
  br i1 %.not.i.i961, label %bb.fg, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i962, !prof !7

bb.fg:                                            ; preds = %bb.ff
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bvp, i64 200
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bwi, i64 noundef %i.bwc)
  %.pre.i965 = load ptr, ptr %i.bvu, align 8
  %.pre1213.a = load ptr, ptr %i.bvs, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i962

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i962: ; preds = %bb.fg, %bb.ff
  %i.bwj = phi ptr [ %i.bvt, %bb.ff ], [ %.pre1213.a, %bb.fg ] ; 3 uses
  %i.bwk = phi ptr [ %i.bvv, %bb.ff ], [ %.pre.i965, %bb.fg ] ; 3 uses
  %i.bwl = getelementptr inbounds nuw [4 x i8], ptr %i.bwk, i64 %i.bwc ; 4 uses
  %i.bwm = icmp ult ptr %i.bwj, %i.bwl
  br i1 %i.bwm, label %.lr.ph.preheader.i963, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i956

.lr.ph.preheader.i963:                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i962
  %i.bwn = ptrtoaddr ptr %i.bwj to i64            ; 2 uses
  %i.bwo = ptrtoaddr ptr %i.bwk to i64
  %i.bwp = shl nuw nsw i64 %i.bwc, 2
  %i.bwq = add nuw i64 %i.bwp, %i.bwo
  %i.bwr = add i64 %i.bwn, 4
  %umax.i964 = call i64 @llvm.umax.i64(i64 %i.bwq, i64 %i.bwr)
  %i.bws = xor i64 %i.bwn, -1
  %i.bwt = add i64 %umax.i964, %i.bws
  %i.bwu = and i64 %i.bwt, -4
  %i.bwv = add i64 %i.bwu, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.bwj, i8 -1, i64 %i.bwv, i1 false)
  %.pre1214.a = load ptr, ptr %i.bvu, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i956

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i956: ; preds = %.lr.ph.preheader.i963, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i962
  %i.bww = phi ptr [ %i.bwk, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i962 ], [ %.pre1214.a, %.lr.ph.preheader.i963 ] ; 3 uses
  %i.bwx = load ptr, ptr %i.bwd, align 8          ; 2 uses
  %i.bwy = ptrtoint ptr %i.bwx to i64             ; 2 uses
  %i.bwz = ptrtoint ptr %i.bww to i64
  %i.bxa = sub i64 %i.bwy, %i.bwz
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bww, i64 %i.bxa
  %i.bxc = icmp ult ptr %i.bwl, %i.bwx
  br i1 %i.bxc, label %.lr.ph.preheader.i957, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit960

.lr.ph.preheader.i957:                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i956
  %i.bxd = ptrtoaddr ptr %i.bwl to i64            ; 2 uses
  %i.bxe = add i64 %i.bxd, 4
  %umax.i958 = call i64 @llvm.umax.i64(i64 %i.bwy, i64 %i.bxe)
  %i.bxf = xor i64 %i.bxd, -1
  %i.bxg = add i64 %umax.i958, %i.bxf
  %i.bxh = and i64 %i.bxg, -4
  %i.bxi = add i64 %i.bxh, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bwl, i8 -1, i64 %i.bxi, i1 false)
  %.pre.i.i.i560.pre = load ptr, ptr %i.bvu, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit960

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit960: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i956, %.lr.ph.preheader.i957
  %.pre.i.i.i560 = phi ptr [ %i.bww, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i956 ], [ %.pre.i.i.i560.pre, %.lr.ph.preheader.i957 ]
  store ptr %i.bxb, ptr %i.bvs, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit960, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i556
  %i.bxj = phi ptr [ %.pre.i.i.i560, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit960 ], [ %i.bvv, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i.i556 ]
  %i.bxk = trunc i64 %i.bup to i32                ; 2 uses
  %i.bxl = getelementptr inbounds nuw [4 x i8], ptr %i.bxj, i64 %i.bvr
  store i32 %.sroa.0.0.copyload.i.i558, ptr %i.bxl, align 4
  %.pr1146 = load ptr, ptr %i.bb, align 8
  %i.bxm = icmp eq ptr %.pr1146, null
  br i1 %i.bxm, label %_ZN2v88internal15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerES1_S2_S5_S6_S9_EEEEEEEEEEEEEEEEEE17InstanceTypeEqualENS4_8ConstOrVINS4_12WordWithBitsILm32EEEjEEST_.exit, label %bb.fh, !prof !165

bb.fh:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i
  %i.bxn = load ptr, ptr %i.bq, align 8, !nonnull !5, !align !6 ; 5 uses
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bxn, i64 16 ; 3 uses
  %i.bxp = load ptr, ptr %i.bxo, align 8          ; 2 uses
  %i.bxq = ptrtoint ptr %i.bxp to i64             ; 2 uses
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bxn, i64 8 ; 4 uses
  %i.bxs = load ptr, ptr %i.bxr, align 8
  %i.bxt = ptrtoint ptr %i.bxs to i64             ; 2 uses
  %i.bxu = sub i64 %i.bxq, %i.bxt                 ; 3 uses
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxn, i64 24
  %i.bxw = load ptr, ptr %i.bxv, align 8
  %i.bxx = ptrtoint ptr %i.bxw to i64             ; 2 uses
  %i.bxy = sub i64 %i.bxx, %i.bxq
  %i.bxz = icmp ult i64 %i.bxy, 9
  br i1 %i.bxz, label %bb.fi, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12ComparisonOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit.i536, !prof !7

end_hunk_3
begin_hunk_4_@_ZN2v88internal15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerES1_S2_S5_S6_S9_EEEEEEEEEEEEEEEEEE26TaggedToWord32OrBigIntImplILNS0_6Object10ConversionE1EEEvNS4_1VINS0_7ContextEEENST_ISR_EENS0_20IsKnownTaggedPointerERNS4_5LabelIJNS4_12WordWithBitsILm32EEEEEEPNSY_IJNS0_6BigIntEEEES15_:bb.a
  store ptr %i.clz, ptr %i.cli, align 8
  %i.cma = trunc i64 %.pre-phi15.i629 to i32
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.clh, i64 32 ; 2 uses
  %i.cmc = load ptr, ptr %i.cmb, align 8
  %i.cmd = lshr i64 %.pre-phi15.i629, 4
  %i.cme = and i64 %i.cmd, 268435455
  %i.cmf = getelementptr inbounds nuw [2 x i8], ptr %i.cmc, i64 %i.cme
  store i16 2, ptr %i.cmf, align 2
  %i.cmg = load ptr, ptr %i.cmb, align 8
  %i.cmh = add i32 %i.cma, 16
  %i.cmi = lshr i32 %i.cmh, 4
  %i.cmj = add nsw i32 %i.cmi, -1
  %i.cmk = zext i32 %i.cmj to i64
  %i.cml = getelementptr inbounds nuw [2 x i8], ptr %i.cmg, i64 %i.cmk
  store i16 2, ptr %i.cml, align 2
  store i8 69, ptr %i.cly, align 4
  %i.cmm = getelementptr inbounds nuw i8, ptr %i.cly, i64 1
  store i8 0, ptr %i.cmm, align 1
  %i.cmn = getelementptr inbounds nuw i8, ptr %i.cly, i64 2
  store i16 1, ptr %i.cmn, align 2
  %i.cmo = getelementptr inbounds nuw i8, ptr %i.cly, i64 8
  store i32 %i.cle, ptr %i.cmo, align 4
  %i.cmp = getelementptr inbounds nuw i8, ptr %i.cly, i64 4
  store <4 x i8> <i8 3, i8 0, i8 3, i8 0>, ptr %i.cmp, align 4
  %i.cmq = load ptr, ptr %i.cll, align 8
  %i.cmr = ptrtoint ptr %i.cmq to i64
  %i.cms = and i64 %i.chw, 4294967295
  %i.cmt = add i64 %i.cms, %i.cmr
  %i.cmu = inttoptr i64 %i.cmt to ptr
  %i.cmv = getelementptr inbounds nuw i8, ptr %i.cmu, i64 1 ; 2 uses
  %i.cmw = load i8, ptr %i.cmv, align 1           ; 2 uses
  %.not.i.i.i630 = icmp eq i8 %i.cmw, -1
  br i1 %.not.i.i.i630, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit.i631, label %bb.gt, !prof !7

bb.gt:                                            ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8ChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS4_10AssumptionENS2_19FloatRepresentationENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit.i628
  %i.cmx = add nuw i8 %i.cmw, 1
  store i8 %i.cmx, ptr %i.cmv, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit.i631

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit.i631: ; preds = %bb.gt, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8ChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS4_10AssumptionENS2_19FloatRepresentationENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit.i628
  %.sroa.0.0.copyload.i.i632 = load i32, ptr %i.br, align 4
  %i.cmy = load ptr, ptr %i.bq, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.cmz = lshr i64 %i.clo, 4
  %i.cna = and i64 %i.cmz, 268435455              ; 4 uses
  %i.cnb = getelementptr inbounds nuw i8, ptr %i.cmy, i64 216 ; 3 uses
  %i.cnc = load ptr, ptr %i.cnb, align 8          ; 2 uses
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.cmy, i64 208 ; 4 uses
  %i.cne = load ptr, ptr %i.cnd, align 8          ; 3 uses
  %i.cnf = ptrtoint ptr %i.cnc to i64
  %i.cng = ptrtoint ptr %i.cne to i64             ; 2 uses
  %i.cnh = sub i64 %i.cnf, %i.cng
  %i.cni = ashr exact i64 %i.cnh, 2
  %.not.i.i11.i633 = icmp ugt i64 %i.cni, %i.cna
  br i1 %.not.i.i11.i633, label %_ZN2v88internal8compiler10turboshaft6detail10ResolveAllINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEESt5tupleIJNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEEEEEDaRT_RKT0_.exit.i218, label %bb.gu, !prof !8

bb.gu:                                            ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit.i631
  %i.cnj = lshr i64 %i.cna, 1
  %i.cnk = add nuw nsw i64 %i.cna, 32
  %i.cnl = add nuw nsw i64 %i.cnk, %i.cnj         ; 4 uses
  %i.cnm = getelementptr inbounds nuw i8, ptr %i.cmy, i64 224 ; 2 uses
  %i.cnn = load ptr, ptr %i.cnm, align 8
  %i.cno = ptrtoint ptr %i.cnn to i64
  %i.cnp = sub i64 %i.cno, %i.cng
  %i.cnq = ashr exact i64 %i.cnp, 2
  %.not.i.i1015 = icmp ugt i64 %i.cnl, %i.cnq
  br i1 %.not.i.i1015, label %bb.gv, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i1016, !prof !7

bb.gv:                                            ; preds = %bb.gu
  %i.cnr = getelementptr inbounds nuw i8, ptr %i.cmy, i64 200
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cnr, i64 noundef %i.cnl)
  %.pre.i1019 = load ptr, ptr %i.cnd, align 8
  %.pre1225.a = load ptr, ptr %i.cnb, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i1016

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i1016: ; preds = %bb.gv, %bb.gu
  %i.cns = phi ptr [ %i.cnc, %bb.gu ], [ %.pre1225.a, %bb.gv ] ; 3 uses
  %i.cnt = phi ptr [ %i.cne, %bb.gu ], [ %.pre.i1019, %bb.gv ] ; 3 uses
  %i.cnu = getelementptr inbounds nuw [4 x i8], ptr %i.cnt, i64 %i.cnl ; 4 uses
  %i.cnv = icmp ult ptr %i.cns, %i.cnu
  br i1 %i.cnv, label %.lr.ph.preheader.i1017, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i1010

.lr.ph.preheader.i1017:                           ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i1016
  %i.cnw = ptrtoaddr ptr %i.cns to i64            ; 2 uses
  %i.cnx = ptrtoaddr ptr %i.cnt to i64
  %i.cny = shl nuw nsw i64 %i.cnl, 2
  %i.cnz = add nuw i64 %i.cny, %i.cnx
  %i.coa = add i64 %i.cnw, 4
  %umax.i1018 = call i64 @llvm.umax.i64(i64 %i.cnz, i64 %i.coa)
  %i.cob = xor i64 %i.cnw, -1
  %i.coc = add i64 %umax.i1018, %i.cob
  %i.cod = and i64 %i.coc, -4
  %i.coe = add i64 %i.cod, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.cns, i8 -1, i64 %i.coe, i1 false)
  %.pre1226 = load ptr, ptr %i.cnd, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i1010

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i1010: ; preds = %.lr.ph.preheader.i1017, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i1016
  %i.cof = phi ptr [ %i.cnt, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i1016 ], [ %.pre1226, %.lr.ph.preheader.i1017 ] ; 3 uses
  %i.cog = load ptr, ptr %i.cnm, align 8          ; 2 uses
  %i.coh = ptrtoint ptr %i.cog to i64             ; 2 uses
  %i.coi = ptrtoint ptr %i.cof to i64
  %i.coj = sub i64 %i.coh, %i.coi
  %i.cok = getelementptr inbounds nuw i8, ptr %i.cof, i64 %i.coj
  %i.col = icmp ult ptr %i.cnu, %i.cog
  br i1 %i.col, label %.lr.ph.preheader.i1011, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit1014

.lr.ph.preheader.i1011:                           ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i1010
  %i.com = ptrtoaddr ptr %i.cnu to i64            ; 2 uses
  %i.con = add i64 %i.com, 4
  %umax.i1012 = call i64 @llvm.umax.i64(i64 %i.coh, i64 %i.con)
  %i.coo = xor i64 %i.com, -1
  %i.cop = add i64 %umax.i1012, %i.coo
  %i.coq = and i64 %i.cop, -4
  %i.cor = add i64 %i.coq, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cnu, i8 -1, i64 %i.cor, i1 false)
  %.pre.i.i.i634.pre = load ptr, ptr %i.cnd, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit1014

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit1014: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i1010, %.lr.ph.preheader.i1011
  %.pre.i.i.i634 = phi ptr [ %i.cof, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i1010 ], [ %.pre.i.i.i634.pre, %.lr.ph.preheader.i1011 ]
  store ptr %i.cok, ptr %i.cnb, align 8
  br label %_ZN2v88internal8compiler10turboshaft6detail10ResolveAllINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEESt5tupleIJNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEEEEEDaRT_RKT0_.exit.i218

_ZN2v88internal8compiler10turboshaft6detail10ResolveAllINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEESt5tupleIJNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEEEEEDaRT_RKT0_.exit.i218: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit1014, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit.i631
  %i.cos = phi ptr [ %.pre.i.i.i634, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit1014 ], [ %i.cne, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit.i631 ]
  %i.cot = trunc i64 %i.clo to i32
  %i.cou = getelementptr inbounds nuw [4 x i8], ptr %i.cos, i64 %i.cna
  store i32 %.sroa.0.0.copyload.i.i632, ptr %i.cou, align 4
  %.pr1150.pre = load ptr, ptr %i.bb, align 8
  %i.cov = icmp eq ptr %.pr1150.pre, null
  br i1 %i.cov, label %.critedge114, label %bb.gw

bb.gw:                                            ; preds = %_ZN2v88internal8compiler10turboshaft6detail10ResolveAllINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEESt5tupleIJNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEEEEEDaRT_RKT0_.exit.i218
  store i8 1, ptr %i.bx, align 8
  %i.cow = load ptr, ptr %i.bb, align 8           ; 2 uses
  %i.cox = icmp eq ptr %i.cow, null
  br i1 %i.cox, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i220, label %bb.gx, !prof !7

bb.gx:                                            ; preds = %bb.gw
  %i.coy = load ptr, ptr %4, align 8              ; 2 uses
  %i.coz = getelementptr inbounds nuw i8, ptr %i.coy, i64 52
  %i.cpa = load i32, ptr %i.coz, align 4
  %i.cpb = icmp ne i32 %i.cpa, -1
  %i.cpc = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull %i.coy, i1 noundef zeroext %i.cpb), !inline_history !14 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i220

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i220: ; preds = %bb.gx, %bb.gw
  %i.cpd = load ptr, ptr %4, align 8
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.cpd, i64 52
  %i.cpf = load i32, ptr %i.cpe, align 4
  %.not.i.i.i221 = icmp eq i32 %i.cpf, -1
  br i1 %.not.i.i.i221, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i220
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #19
  unreachable

bb.gz:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i220
  %i.cpg = load ptr, ptr %i.by, align 8           ; 2 uses
  %i.cph = load ptr, ptr %i.bz, align 8
  %i.cpi = icmp eq ptr %i.cpg, %i.cph
  br i1 %i.cpi, label %bb.ha, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i.i222, !prof !7

bb.ha:                                            ; preds = %bb.gz
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
  %.pre.i.i.i.i.i.i225 = load ptr, ptr %i.by, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i.i222

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i.i222: ; preds = %bb.ha, %bb.gz
  %i.cpj = phi ptr [ %.pre.i.i.i.i.i.i225, %bb.ha ], [ %i.cpg, %bb.gz ] ; 2 uses
  %i.cpk = getelementptr inbounds nuw i8, ptr %i.cpj, i64 4
  store ptr %i.cpk, ptr %i.by, align 8
  store i32 %i.cot, ptr %i.cpj, align 4
  %i.cpl = load ptr, ptr %i.cb, align 8           ; 2 uses
  %i.cpm = load ptr, ptr %i.cc, align 8
  %i.cpn = icmp eq ptr %i.cpl, %i.cpm
  br i1 %i.cpn, label %bb.hb, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSO_17const_or_values_tE.exit226, !prof !7

bb.hb:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i.i222
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cd)
  %.pre.i.i4.i.i.i.i224 = load ptr, ptr %i.cb, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSO_17const_or_values_tE.exit226

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSO_17const_or_values_tE.exit226: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i.i222, %bb.hb
  %i.cpo = phi ptr [ %.pre.i.i4.i.i.i.i224, %bb.hb ], [ %i.cpl, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE9push_backES8_.exit.i.i.i.i222 ] ; 2 uses
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.cpo, i64 8
  store ptr %i.cpp, ptr %i.cb, align 8
  store ptr %i.cow, ptr %i.cpo, align 8
  %.pr1152.pre = load ptr, ptr %i.bb, align 8
  %i.cpq = icmp eq ptr %.pr1152.pre, null
  br i1 %i.cpq, label %.critedge114, label %bb.hc

bb.hc:                                            ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSO_17const_or_values_tE.exit226
  %i.cpr = load ptr, ptr %i.cq, align 8           ; 2 uses
  %i.cps = getelementptr inbounds nuw i8, ptr %i.cpr, i64 52
  %i.cpt = load i32, ptr %i.cps, align 4
  %i.cpu = icmp ne i32 %i.cpt, -1
  %i.cpv = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull %i.cpr, i1 noundef zeroext %i.cpu), !inline_history !14 ; 0 uses
  br label %.critedge114

.critedge114:                                     ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i211, %_ZN2v88internal8compiler10turboshaft6detail10ResolveAllINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEESt5tupleIJNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEEEEEDaRT_RKT0_.exit.i218.thread, %_ZN2v88internal8compiler10turboshaft6detail10ResolveAllINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEESt5tupleIJNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEEEEEDaRT_RKT0_.exit.i218, %bb.hc, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvRT_RKNSO_17const_or_values_tE.exit226, %_ZN2v88internal15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerES1_S2_S5_S6_S9_EEEEEEEEEEEEEEEEEE17InstanceTypeEqualENS4_8ConstOrVINS4_12WordWithBitsILm32EEEjEEST_.exit, %bb.fc
  %i.cpw = add nuw nsw i32 %.0951159, 1           ; 2 uses
  %exitcond1162.not = icmp eq i32 %i.cpw, 3
  br i1 %exitcond1162.not, label %.loopexit, label %bb.fc, !llvm.loop !166
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSI_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 20 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %0, i64 -744
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load i8, ptr %i.c, align 8
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i6 = icmp eq ptr %i.g, null
  br i1 %.not.i6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(904) %i.b, ptr noundef nonnull %i.g)
  %i.h = getelementptr inbounds i8, ptr %0, i64 -712
  %i.i = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.j = getelementptr inbounds i8, ptr %0, i64 -720
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  %.not74 = icmp eq ptr %i.s, null
  br i1 %.not74, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit7, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.v, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load ptr, ptr %i.m, align 8
  %i.ad = load ptr, ptr %i.o, align 8
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ult ptr %i.ak, %i.am
  br i1 %i.an, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %i.at = add nsw i64 %i.as, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.at)
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.g, %bb.h
  %i.au = phi ptr [ %i.ak, %bb.g ], [ %.pre.i, %bb.h ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.m, align 8
  store ptr %i.a, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.i, label %.preheader.i, !prof !7

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.a, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  br label %bb.m

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.ax, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = sub nsw i32 %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = sub nsw i32 %i.bg, %i.bj
  %i.bl = icmp eq i32 %i.bh, %i.bk
  br i1 %i.bl, label %bb.j, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.j, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.bn, %bb.j ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.07.lcssa.i, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.0.i.i, ptr %i.bp, align 8
  %i.bq = load i32, ptr %i.bd, align 4
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  store ptr %i.bx, ptr %i.a, align 8
  store ptr %i.a, ptr %i.bw, align 8
  %.pre.i12 = load i32, ptr %i.bs, align 4
  br label %bb.m

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i
  %.012.i = phi ptr [ %.0.i10, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %.09.i, %.preheader.i ] ; 4 uses
  %.0711.i = phi ptr [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %i.ax, %.preheader.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i, i64 20
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.0711.i, i64 20
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp sgt i32 %i.bz, %i.cb               ; 2 uses
  %spec.select.i.i = select i1 %i.cc, ptr %.012.i, ptr %.0711.i ; 3 uses
  %spec.select17.i.i = select i1 %i.cc, ptr %.0711.i, ptr %.012.i ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %spec.select17.i.i, i64 20
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 20
  %i.cg = load i32, ptr %i.cf, align 4
  %.not18.i.i = icmp eq i32 %i.cg, %i.ce
  br i1 %.not18.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.116.lcssa.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i ], [ %storemerge7.i.i, %.lr.ph.i.i ] ; 3 uses
  %.not520.i.i = icmp eq ptr %.116.lcssa.i.i, %spec.select17.i.i
  br i1 %.not520.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.11619.i.i = phi ptr [ %storemerge7.i.i, %.lr.ph.i.i ], [ %spec.select.i.i, %.lr.ph.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 16
  %i.ci = load i32, ptr %i.ch, align 8
  %.not6.i.i = icmp slt i32 %i.ci, %i.ce
  %storemerge7.in.v.i.i = select i1 %.not6.i.i, i64 24, i64 32
  %storemerge7.in.i.i = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 %storemerge7.in.v.i.i
  %storemerge7.i.i = load ptr, ptr %storemerge7.in.i.i, align 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge7.i.i, i64 20
  %i.ck = load i32, ptr %i.cj, align 4
  %.not.i.i = icmp eq i32 %i.ck, %i.ce
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !9

.lr.ph23.i.i:                                     ; preds = %.preheader.i.i, %bb.l
  %.122.i.i = phi ptr [ %storemerge.i.i, %bb.l ], [ %spec.select17.i.i, %.preheader.i.i ] ; 2 uses
  %.221.i.i = phi ptr [ %.3.i.i, %bb.l ], [ %.116.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 32
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph23.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 24
  %storemerge.pre.i.i = load ptr, ptr %i.cs, align 8
  br label %bb.l
end_hunk_4
begin_hunk_5_@_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE23StoreFeedbackVectorSlotENS3_1VINS0_14FeedbackVectorEEENSP_INS3_12WordWithBitsILm64EEEEENSP_INS0_6ObjectEEENS0_16WriteBarrierModeEi:bb.a

bb.c:                                             ; preds = %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE16IsOffsetInBoundsENS3_1VINS3_12WordWithBitsILm64EEEEESS_iNS0_12ElementsKindE.exit
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESJ_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESK_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %i.e, i32 %3, i8 17, i8 11, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESJ_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit

bb.e:                                             ; preds = %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE16IsOffsetInBoundsENS3_1VINS3_12WordWithBitsILm64EEEEESS_iNS0_12ElementsKindE.exit, %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE16IsOffsetInBoundsENS3_1VINS3_12WordWithBitsILm64EEEEESS_iNS0_12ElementsKindE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.25) #19
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE16IsOffsetInBoundsENS3_1VINS3_12WordWithBitsILm64EEEEESS_iNS0_12ElementsKindE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.25) #19
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE16IsOffsetInBoundsENS3_1VINS3_12WordWithBitsILm64EEEEESS_iNS0_12ElementsKindE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #19
  unreachable

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexENS2_15OptionalOpIndexESJ_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE.exit: ; preds = %bb.d, %bb.c, %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE16IsOffsetInBoundsENS3_1VINS3_12WordWithBitsILm64EEEEESS_iNS0_12ElementsKindE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerES1_S2_S5_S6_S9_EEEEEEEEEEEEEEEEEE22ElementOffsetFromIndexENS4_8ConstOrVINS4_12WordWithBitsILm64EEEmEENS0_12ElementsKindEl(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef byval(%"class.v8::internal::compiler::turboshaft::ConstOrV") align 8 %1, i8 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i8 %2, label %bb.f [
    i8 18, label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
    i8 19, label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
    i8 26, label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
    i8 30, label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
    i8 31, label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
    i8 38, label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
    i8 20, label %bb.b
    i8 21, label %bb.b
    i8 29, label %bb.b
    i8 41, label %bb.b
    i8 32, label %bb.b
    i8 33, label %bb.b
    i8 22, label %bb.c
    i8 23, label %bb.c
    i8 27, label %bb.c
    i8 34, label %bb.c
    i8 35, label %bb.c
    i8 39, label %bb.c
    i8 4, label %bb.d
    i8 5, label %bb.d
    i8 28, label %bb.d
    i8 25, label %bb.d
    i8 24, label %bb.d
    i8 40, label %bb.d
    i8 37, label %bb.d
    i8 36, label %bb.d
    i8 0, label %bb.d
    i8 2, label %bb.d
    i8 10, label %bb.d
    i8 8, label %bb.d
    i8 6, label %bb.d
    i8 1, label %bb.d
    i8 3, label %bb.d
    i8 11, label %bb.d
    i8 9, label %bb.d
    i8 7, label %bb.d
    i8 13, label %bb.d
    i8 14, label %bb.d
    i8 15, label %bb.d
    i8 16, label %bb.d
    i8 17, label %bb.d
    i8 12, label %bb.d
    i8 42, label %bb.e
    i8 43, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit

bb.e:                                             ; preds = %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #19
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #19
  unreachable

_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d
  %i.a = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  %.0.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ] ; 2 uses
  %.sroa.041.0.copyload = load i64, ptr %1, align 8
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.242.0.copyload = load i8, ptr %.sroa.242.0..sroa_idx, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.444.0.copyload = load i32, ptr %.sroa.444.0..sroa_idx, align 8 ; 3 uses
  %i.b = trunc nuw i8 %.sroa.242.0.copyload to i1
  br i1 %i.b, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = zext i32 %.sroa.444.0.copyload to i64
  %i.i = add i64 %i.g, %i.h
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %i.k = load i8, ptr %i.j, align 4
  %.not.i.i.i.i.i = icmp eq i8 %i.k, 75
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i8, ptr %i.l, align 4
  switch i8 %i.m, label %bb.n [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 11, label %bb.k
    i8 12, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %sext.i26.i.i.i.i.i = shl i64 %i.o, 32
  %i.p = ashr exact i64 %sext.i26.i.i.i.i.i, 32
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load i64, ptr %i.q, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #19
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.j, %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
  %.sroa.02.1.i.ph = phi i64 [ %.sroa.041.0.copyload, %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit ], [ %i.r, %bb.j ], [ %i.p, %bb.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WordPtrConstantEm.exit.thread, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.v = shl i64 %.sroa.02.1.i.ph, %.0.i
  %i.w = add nsw i64 %i.v, %3
  %i.x = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef %i.w)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WordPtrConstantEm.exit.thread

bb.n:                                             ; preds = %bb.g, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, null                  ; 2 uses
  br i1 %i.a, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WordPtrConstantEm.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %bb.o
  %i.ab = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef %3)
  %.pre88 = load ptr, ptr %i.y, align 8
  %i.ac = icmp eq ptr %.pre88, null
  br i1 %i.ac, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WordPtrConstantEm.exit.thread, label %bb.p, !prof !13

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.ab, i32 %.sroa.444.0.copyload, i8 noundef zeroext 0, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WordPtrConstantEm.exit.thread

bb.q:                                             ; preds = %bb.n
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WordPtrConstantEm.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %bb.q
  %i.ae = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef %.0.i)
  %.pre = load ptr, ptr %i.y, align 8
  %i.af = icmp eq ptr %.pre, null
  br i1 %i.af, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WordPtrConstantEm.exit.thread, label %bb.r, !prof !13

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %i.ag = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7ShiftOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.444.0.copyload, i32 %i.ae, i8 noundef zeroext 3, i8 1)
  %.pr.a = load ptr, ptr %i.y, align 8
  %i.ah = icmp eq ptr %.pr.a, null
  br i1 %i.ah, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WordPtrConstantEm.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i19, !prof !13

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i19: ; preds = %bb.r
  %i.ai = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef %3)
  %.pre87 = load ptr, ptr %i.y, align 8
  %i.aj = icmp eq ptr %.pre87, null
  br i1 %i.aj, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WordPtrConstantEm.exit.thread, label %bb.s, !prof !13

bb.s:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i19
  %i.ak = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.ai, i32 %i.ag, i8 noundef zeroext 0, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WordPtrConstantEm.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WordPtrConstantEm.exit.thread: ; preds = %bb.q, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %bb.r, %bb.o, %bb.s, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i19, %bb.p, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, %bb.m, %bb.l
  %.sroa.09.1 = phi i32 [ %i.x, %bb.m ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i ], [ -1, %bb.l ], [ %i.ad, %bb.p ], [ %i.ak, %bb.s ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i19 ], [ -1, %bb.o ], [ -1, %bb.r ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ], [ -1, %bb.q ]
  ret i32 %.sroa.09.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE24LoadFeedbackVectorLengthENS3_1VINS0_14FeedbackVectorEEE(ptr noundef nonnull align 8 dereferenceable(580) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::compiler::turboshaft::FieldAccessTS.1102", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.b = tail call noundef ptr @_ZN2v88internal8compiler9TypeCache3GetEv() #18, !noalias !245
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.sroa.02.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !245
  store i8 1, ptr %2, align 8, !alias.scope !245
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 8, ptr %.sroa.46.0..sroa_idx.i, align 4, !alias.scope !245
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !245
  store i64 %.sroa.02.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !245
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i16 516, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !245
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 2, !alias.scope !245
  %.sroa.107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 58
  %.sroa.179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %.sroa.179.0..sroa_idx.i, align 8, !alias.scope !245
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.107.0..sroa_idx.i, i8 0, i64 17, i1 false), !alias.scope !245
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %.sroa.138.0..sroa_idx.i, i8 0, i64 5, i1 false), !alias.scope !245
  %i.d = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_12WordWithBitsILm32EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 %1, ptr noundef nonnull align 8 dereferenceable(72) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE27ChangePositiveInt32ToIntPtrENS3_1VINS3_12WordWithBitsILm32EEEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i: ; preds = %bb.a
  %i.h = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(580) %0, i8 noundef zeroext 0, i64 noundef 0)
  %.pre.i = load ptr, ptr %i.e, align 8
  %i.i = icmp eq ptr %.pre.i, null
  br i1 %i.i, label %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE27ChangePositiveInt32ToIntPtrENS3_1VINS3_12WordWithBitsILm32EEEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE20Int32LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESM_.exit.i, !prof !13

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE20Int32LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESM_.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i
  %i.j = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(580) %0, i32 %i.h, i32 %i.d, i8 noundef zeroext 2, i8 0) ; 0 uses
  %.pr.i = load ptr, ptr %i.e, align 8
  %i.k = icmp eq ptr %.pr.i, null
  br i1 %i.k, label %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE27ChangePositiveInt32ToIntPtrENS3_1VINS3_12WordWithBitsILm32EEEEE.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE20Int32LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESM_.exit.i
  %i.l = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSJ_4KindENSJ_10AssumptionENS2_18WordRepresentationESN_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(580) %0, i32 %i.d, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 0, i8 1)
  br label %_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE27ChangePositiveInt32ToIntPtrENS3_1VINS3_12WordWithBitsILm32EEEEE.exit

_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE27ChangePositiveInt32ToIntPtrENS3_1VINS3_12WordWithBitsILm32EEEEE.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE20Int32LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESM_.exit.i, %bb.b
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.l, %bb.b ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE20Int32LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESM_.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i.i ], [ -1, %bb.a ]
  ret i32 %.sroa.07.0.i.i.i.i
}

declare noundef ptr @_ZN2v88internal8compiler9TypeCache3GetEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE7AdvanceENS6_8ConstOrVINS6_12WordWithBitsILm64EEEmEE(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef byval(%"class.v8::internal::compiler::turboshaft::ConstOrV") align 8 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5
  %i.c = load i8, ptr %i.b, align 1
  %i.d = tail call noundef zeroext i1 @_ZN2v88internal11interpreter9Bytecodes26MakesCallAlongCriticalPathENS1_8BytecodeE(i8 noundef zeroext %i.c) #18
  br i1 %i.d, label %bb.b, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.g = load i8, ptr %i.f, align 1, !range !42, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i.i.i.i = load i32, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.sroa.01.0.copyload.i = load i32, ptr %i.k, align 8
  %i.l = icmp eq i32 %.sroa.02.0.copyload.i.i.i.i, %.sroa.01.0.copyload.i
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i: ; preds = %bb.c
  %i.m = tail call i32 @_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE20ReloadBytecodeOffsetEv(ptr noundef nonnull align 8 dereferenceable(704) %0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 880
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISP_SQ_EESP_(ptr noundef nonnull align 8 dereferenceable(504) %i.s, ptr %.sroa.02.0.copyload.i.i.i, i32 %i.m)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i: ; preds = %bb.a, %bb.b, %bb.c, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %.sroa.0.0.copyload.i.i4.i = load ptr, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i, i64 16
  %.sroa.02.0.copyload.i.i.i5.i = load i32, ptr %i.u, align 4
  %.sroa.017.0.copyload = load i64, ptr %1, align 8
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.218.0.copyload = load i8, ptr %.sroa.218.0..sroa_idx, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.420.0.copyload = load i32, ptr %.sroa.420.0..sroa_idx, align 8
  %i.v = trunc nuw i8 %.sroa.218.0.copyload to i1
  br i1 %i.v, label %bb.e, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSJ_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef %.sroa.017.0.copyload)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i, %bb.f, %bb.e
  %.sroa.0.0.i5.i = phi i32 [ -1, %bb.e ], [ %i.z, %bb.f ], [ %.sroa.420.0.copyload, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i, label %bb.g, !prof !7

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESK_NSJ_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.02.0.copyload.i.i.i5.i, i32 %.sroa.0.0.i5.i, i8 noundef zeroext 0, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %.sroa.06.0.i.i = phi i32 [ %i.ad, %bb.g ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 880
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm64EEENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_8ConstOrVIS5_mEE.exit, label %bb.h, !prof !7

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.t, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  tail call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISP_SQ_EESP_(ptr noundef nonnull align 8 dereferenceable(504) %i.aj, ptr %.sroa.02.0.copyload.i.i, i32 %.sroa.06.0.i.i)
  br label %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm64EEENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_8ConstOrVIS5_mEE.exit

_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm64EEENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_8ConstOrVIS5_mEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i, %bb.h
  ret i32 %.sroa.06.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE12LoadBytecodeENS6_1VINS6_12WordWithBitsILm64EEEEE(ptr noundef nonnull align 8 dereferenceable(704) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.d = load i8, ptr %i.c, align 1, !range !42, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE26BytecodeArrayTaggedPointerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE26GetInterpretedFramePointerEv(ptr noundef nonnull align 8 dereferenceable(704) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE12LoadRegisterENS1_8RegisterE.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSJ_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(704) %0, i32 %i.f, i32 -1, i8 16, i8 11, i8 4, i32 noundef -32, i8 noundef zeroext 0)
  br label %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE12LoadRegisterENS1_8RegisterE.exit.i

_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE12LoadRegisterENS1_8RegisterE.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.011.0.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.c ], [ -1, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 880
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_1VIS4_EE.exit.i, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE12LoadRegisterENS1_8RegisterE.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.p, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISP_SQ_EESP_(ptr noundef nonnull align 8 dereferenceable(504) %i.q, ptr %.sroa.02.0.copyload.i.i.i, i32 %.sroa.011.0.i.i.i.i.i.i.i)
  br label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_1VIS4_EE.exit.i

_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_1VIS4_EE.exit.i: ; preds = %bb.d, %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE12LoadRegisterENS1_8RegisterE.exit.i
  %i.r = load ptr, ptr %i.a, align 8, !nonnull !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  store i8 1, ptr %i.s, align 1
  br label %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE26BytecodeArrayTaggedPointerEv.exit

_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE26BytecodeArrayTaggedPointerEv.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_1VIS4_EE.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
end_hunk_5
