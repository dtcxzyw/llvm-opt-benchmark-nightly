Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-in-js-inlining-phase?download=true
inline.NumInlined: 28862
inline.NumDeleted: 9814
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE9GotoIfNotINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EEEE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.r = add i64 %i.p, 1
  store i64 %i.r, ptr %i.k, align 8
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p
  %i.u = load ptr, ptr %i.t, align 8              ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.u, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  store i32 -1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store i32 0, ptr %i.aa, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.z, align 8
  %i.ab = tail call noundef i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE13BranchAndBindENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESK_NS0_10BranchHintESK_(ptr noundef nonnull align 8 dereferenceable(136) %i.f, i32 %2, ptr noundef nonnull %i.u, ptr noundef %i.g, i8 noundef zeroext %3, ptr noundef nonnull %i.u)
  %i.ac = and i32 %i.ab, 1
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge, %bb.b
  %i.ad = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit._ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread_crit_edge ], [ %i.g, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.af = load i32, ptr %i.ae, align 4
  %.not.i = icmp eq i32 %i.af, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #23
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit.thread
  %.sroa.0.0.copyload.i.i = load i32, ptr %4, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.al)
  %.pre.i.i.i.i = load ptr, ptr %i.ag, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.an, ptr %i.ag, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit, !prof !17

bb.h:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.at)
  %.pre.i.i4.i.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i, %bb.h
  %i.au = phi ptr [ %.pre.i.i4.i.i, %bb.h ], [ %i.ap, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.ao, align 8
  store ptr %i.e, ptr %i.au, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9GotoIfNotENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockENS0_10BranchHintE.exit, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE15ReduceStructGetENS2_1VINS0_5UnionIJNS0_10WasmStructENS0_8WasmNullEEEEEEPKNS0_4wasm10StructTypeENSP_15ModuleTypeIndexEibNS1_12CheckForNullESt8optionalINS0_17AtomicMemoryOrderEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, ptr noundef %2, i32 %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i16 %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %8 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %i.a = icmp eq i32 %4, -1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %.pr.i.i.i.i.i = load ptr, ptr %i.b, align 8
  %i.f = icmp eq ptr %.pr.i.i.i.i.i, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i, !prof !25

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i: ; preds = %bb.d
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %i.e, i32 -1, i8 48, i8 12, i8 4, i32 noundef 1976, i8 noundef zeroext 0)
  %.pr.i.i.i = load ptr, ptr %i.b, align 8
  %i.h = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, !prof !25

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i
  %i.i = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i32 %i.g, i8 noundef zeroext 0, i8 4)
  %.pr = load ptr, ptr %i.b, align 8
  %i.j = icmp eq ptr %.pr, null
  br i1 %i.j, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %bb.e, !prof !25

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %i.k = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_8TrapIfOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEEbNS1_6TrapIdEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.i, i32 -1, i1 noundef zeroext false, i32 noundef 1382) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit: ; preds = %bb.c, %bb.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i, %bb.e, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 728
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN2v88internal8compiler13AccessBuilder6ForMapENS1_16WriteBarrierKindE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %8, i8 noundef zeroext 2) #22
  %i.m = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS0_3MapEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %i.l, i32 %1, ptr noundef nonnull align 8 dereferenceable(72) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, label %bb.f, !prof !17

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit
  %i.q = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.m, i32 -1, i8 49, i8 12, i8 4, i32 noundef 40, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit

bb.g:                                             ; preds = %bb.a
  %i.r = and i16 %7, 256
  %.not = icmp eq i16 %i.r, 0                     ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = zext i32 %4 to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.v, align 4
  %i.w = icmp eq i32 %.sroa.0.0.copyload.i.i, 5904
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = phi i1 [ false, %bb.g ], [ %i.w, %bb.h ]
  br i1 %6, label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE25null_checks_for_struct_opENS1_12CheckForNullEib.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit52

_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE25null_checks_for_struct_opENS1_12CheckForNullEib.exit: ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = icmp sgt i32 %4, 4000
  %or.cond.i = or i1 %i.ab, %i.aa
  %i.ac = or i1 %i.x, %or.cond.i
  br i1 %i.ac, label %bb.j, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit52

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE25null_checks_for_struct_opENS1_12CheckForNullEib.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit52, label %bb.k, !prof !17

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %.pr.i.i.i.i.i44 = load ptr, ptr %i.ad, align 8
  %i.ah = icmp eq ptr %.pr.i.i.i.i.i44, null
  br i1 %i.ah, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit52, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i45, !prof !25

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i45: ; preds = %bb.k
  %i.ai = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %i.ag, i32 -1, i8 48, i8 12, i8 4, i32 noundef 1976, i8 noundef zeroext 0)
  %.pr.i.i.i46 = load ptr, ptr %i.ad, align 8
  %i.aj = icmp eq ptr %.pr.i.i.i46, null
  br i1 %i.aj, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit52, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i50, !prof !25

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i50: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i45
  %i.ak = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i32 %i.ai, i8 noundef zeroext 0, i8 4)
  %.pr81 = load ptr, ptr %i.ad, align 8
  %i.al = icmp eq ptr %.pr81, null
  br i1 %i.al, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit52, label %bb.l, !prof !25

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i50
  %i.am = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_8TrapIfOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEEbNS1_6TrapIdEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.ak, i32 -1, i1 noundef zeroext false, i32 noundef 1382) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit52

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit52: ; preds = %bb.i, %bb.j, %bb.k, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i45, %bb.l, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i50, %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE25null_checks_for_struct_opENS1_12CheckForNullEib.exit
  %spec.select = phi i8 [ 29, %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE25null_checks_for_struct_opENS1_12CheckForNullEib.exit ], [ 17, %bb.j ], [ 17, %bb.k ], [ 17, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i45 ], [ 17, %bb.l ], [ 17, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i50 ], [ 17, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = zext i32 %4 to i64                      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !range !22, !noundef !18
  %i.as = shl nuw nsw i8 %i.ar, 5
  %i.at = or disjoint i8 %i.as, %spec.select
  %.sroa.0.1.v = select i1 %.not, i8 32, i8 96
  %.sroa.0.1 = xor i8 %i.at, %.sroa.0.1.v
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ap
  %.sroa.0.0.copyload.i.i55 = load i32, ptr %i.aw, align 4 ; 3 uses
  %i.ax = and i32 %.sroa.0.0.copyload.i.i55, 3
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit52
  %i.az = and i32 %.sroa.0.0.copyload.i.i55, 268435440
  %i.ba = add nsw i32 %i.az, -5648                ; 2 uses
  %i.bb = tail call i32 @llvm.fshl.i32(i32 %i.ba, i32 %i.ba, i32 24) ; 2 uses
  %i.bc = icmp ult i32 %i.bb, 8
  br i1 %i.bc, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #23
  unreachable

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit52
  %i.bd = and i32 %.sroa.0.0.copyload.i.i55, 268435427
  switch i32 %i.bd, label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE17RepresentationForENS0_4wasm9ValueTypeEb.exit [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i
    i32 514, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i
    i32 2, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i
  ]

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i: ; preds = %bb.m
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.bb to i8
  switch i8 %switch.idx.cast.i.i, label %default.unreachable [
    i8 5, label %bb.p
    i8 6, label %bb.q
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 7, label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE17RepresentationForENS0_4wasm9ValueTypeEb.exit
    i8 2, label %bb.t
    i8 3, label %bb.u
    i8 4, label %bb.v
  ]

bb.p:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  %not..i = xor i1 %5, true
  %spec.select.i = zext i1 %not..i to i8
  br label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE17RepresentationForENS0_4wasm9ValueTypeEb.exit

bb.q:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  %spec.select8.i = select i1 %5, i8 2, i8 3
  br label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE17RepresentationForENS0_4wasm9ValueTypeEb.exit

bb.r:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  %spec.select9.i = select i1 %5, i8 4, i8 5
  br label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE17RepresentationForENS0_4wasm9ValueTypeEb.exit

bb.s:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  %spec.select10.i = select i1 %5, i8 6, i8 7
  br label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE17RepresentationForENS0_4wasm9ValueTypeEb.exit

bb.t:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  br label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE17RepresentationForENS0_4wasm9ValueTypeEb.exit

bb.u:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  br label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE17RepresentationForENS0_4wasm9ValueTypeEb.exit

bb.v:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  br label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE17RepresentationForENS0_4wasm9ValueTypeEb.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i: ; preds = %bb.o, %bb.o, %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #23
  unreachable

default.unreachable:                              ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  unreachable

_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE17RepresentationForENS0_4wasm9ValueTypeEb.exit: ; preds = %bb.o, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.sroa.0.0.i = phi i8 [ 9, %bb.t ], [ 8, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i ], [ 11, %bb.o ], [ %spec.select.i, %bb.p ], [ 20, %bb.v ], [ %spec.select8.i, %bb.q ], [ 10, %bb.u ], [ %spec.select9.i, %bb.r ], [ %spec.select10.i, %bb.s ] ; 2 uses
  %i.be = icmp eq i32 %4, 0
  br i1 %i.be, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE17RepresentationForENS0_4wasm9ValueTypeEb.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bg = load i8, ptr %i.bf, align 2, !range !22, !noundef !18
  %i.bh = shl nuw nsw i8 %i.bg, 3
  %i.bi = zext nneg i8 %i.bh to i32
  br label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE12field_offsetEPKNS0_4wasm10StructTypeEi.exit

bb.x:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE17RepresentationForENS0_4wasm9ValueTypeEb.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = add i32 %4, -1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4
  br label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE12field_offsetEPKNS0_4wasm10StructTypeEi.exit

_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE12field_offsetEPKNS0_4wasm10StructTypeEi.exit: ; preds = %bb.w, %bb.x
  %.0.i.i = phi i32 [ %i.bi, %bb.w ], [ %i.bo, %bb.x ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, label %bb.y, !prof !17

bb.y:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE12field_offsetEPKNS0_4wasm10StructTypeEi.exit
  %i.bs = zext nneg i8 %.sroa.0.0.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE14ReduceArrayGetENS2_1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENSJ_INS2_12WordWithBitsILm32EEEEEPKNS0_4wasm9ArrayTypeEbSt8optionalINS0_17AtomicMemoryOrderEE, i64 %i.bs
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.bt = add i32 %.0.i.i, 16
  %i.bu = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 -1, i8 %.sroa.0.1, i8 %.sroa.0.0.i, i8 %switch.load, i32 noundef %i.bt, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit: ; preds = %bb.y, %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE12field_offsetEPKNS0_4wasm10StructTypeEi.exit, %bb.f, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit
  %.sroa.079.0 = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit ], [ %i.q, %bb.f ], [ %i.bu, %bb.y ], [ -1, %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE12field_offsetEPKNS0_4wasm10StructTypeEi.exit ]
  ret i32 %.sroa.079.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE15ReduceStructSetENS2_1VINS0_5UnionIJNS0_10WasmStructENS0_8WasmNullEEEEEENSJ_INS2_3AnyEEEPKNS0_4wasm10StructTypeENSR_15ModuleTypeIndexEiNS1_12CheckForNullESt8optionalINS0_17AtomicMemoryOrderEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i32 %2, ptr noundef %3, i32 %4, i32 noundef %5, i1 noundef zeroext %6, i16 %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i16 %7, 256
  %.not = icmp eq i16 %i.a, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = zext i32 %5 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.e, align 4
  %i.f = icmp eq i32 %.sroa.0.0.copyload.i.i, 5904
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  br i1 %6, label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE25null_checks_for_struct_opENS1_12CheckForNullEib.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit

_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE25null_checks_for_struct_opENS1_12CheckForNullEib.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp sgt i32 %5, 4000
  %or.cond.i = or i1 %i.k, %i.j
  %i.l = or i1 %i.g, %or.cond.i
  br i1 %i.l, label %bb.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE25null_checks_for_struct_opENS1_12CheckForNullEib.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %.pr.i.i.i.i.i = load ptr, ptr %i.m, align 8
  %i.q = icmp eq ptr %.pr.i.i.i.i.i, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i, !prof !25

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i: ; preds = %bb.e
  %i.r = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %i.p, i32 -1, i8 48, i8 12, i8 4, i32 noundef 1976, i8 noundef zeroext 0)
  %.pr.i.i.i = load ptr, ptr %i.m, align 8
  %i.s = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.s, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, !prof !25

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i
  %i.t = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i32 %i.r, i8 noundef zeroext 0, i8 4)
  %.pr = load ptr, ptr %i.m, align 8
  %i.u = icmp eq ptr %.pr, null
  br i1 %i.u, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %bb.f, !prof !25

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %i.v = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_8TrapIfOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEEbNS1_6TrapIdEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.t, i32 -1, i1 noundef zeroext false, i32 noundef 1382) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i, %bb.f, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE25null_checks_for_struct_opENS1_12CheckForNullEib.exit
  %spec.select = phi i8 [ 29, %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE25null_checks_for_struct_opENS1_12CheckForNullEib.exit ], [ 17, %bb.d ], [ 17, %bb.e ], [ 17, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12RootConstantENS0_9RootIndexE.exit.i.i.i ], [ 17, %bb.f ], [ 17, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ], [ 17, %bb.c ] ; 2 uses
  %i.w = or disjoint i8 %spec.select, 64
  %.sroa.031.0 = select i1 %.not, i8 %spec.select, i8 %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = zext i32 %5 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %.sroa.0.0.copyload.i.i29 = load i32, ptr %i.aa, align 4 ; 4 uses
  %i.ab = and i32 %.sroa.0.0.copyload.i.i29, 3
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit
  %i.ad = and i32 %.sroa.0.0.copyload.i.i29, 268435440
  %i.ae = add nsw i32 %i.ad, -5648                ; 2 uses
  %i.af = tail call i32 @llvm.fshl.i32(i32 %i.ae, i32 %i.ae, i32 24) ; 2 uses
  %i.ag = icmp ult i32 %i.af, 8
  br i1 %i.ag, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #23
  unreachable

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TrapIfENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit
  %i.ah = and i32 %.sroa.0.0.copyload.i.i29, 268435427
  switch i32 %i.ah, label %_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE17RepresentationForENS0_4wasm9ValueTypeEb.exit [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i
    i32 514, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i
end_hunk_0
