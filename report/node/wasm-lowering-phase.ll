Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-lowering-phase?download=true
inline.NumInlined: 26486
inline.NumDeleted: 9628
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm32EEEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS5_EEEERT_NS_14SourceLocationE:bb.a
  br i1 %.not5.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i, !llvm.loop !37

_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i: ; preds = %bb.k, %.preheader.i.i
  %.2.lcssa.i.i = phi ptr [ %.116.lcssa.i.i, %.preheader.i.i ], [ %.3.i.i, %bb.k ] ; 2 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 64
  %.0.i4 = load ptr, ptr %.0.in.i, align 8        ; 2 uses
  %.not.i5 = icmp eq ptr %.0.i4, null
  br i1 %.not.i5, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !38

bb.l:                                             ; preds = %bb.h, %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i
  %i.cs = phi i32 [ %.pre.i6, %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i ], [ 0, %bb.h ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 232 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.cu, i32 %i.cs)
  store i32 %.sroa.speculated, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 920 ; 2 uses
  store ptr %i.a, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(752) %i.cw, ptr noundef nonnull %i.a)
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.cy, ptr %i.cz, align 8
  %i.da = load ptr, ptr %1, align 8, !noalias !631
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.dc = load i32, ptr %i.db, align 8, !noalias !631
  %i.dd = icmp eq i32 %i.dc, 1
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.df = load ptr, ptr %i.de, align 8, !noalias !631 ; 3 uses
  br i1 %i.dd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dg = load i32, ptr %i.df, align 4, !noalias !631
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

bb.n:                                             ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !631
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.df to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 2                 ; 2 uses
  %i.dn = load ptr, ptr %i.cv, align 8, !noalias !631
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.dp = icmp ult i64 %i.dm, 2147483648
  br i1 %i.dp, label %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i.i.i, label %bb.p, !prof !9

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #23, !noalias !631
  unreachable

_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i.i.i: ; preds = %bb.o
  %i.dq = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE9ReducePhiENSA_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, ptr %i.df, i64 %i.dm, i8 0), !noalias !631
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit: ; preds = %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i.i.i, %bb.n, %bb.m, %bb.e
  %storemerge.i.i7.sink = phi i32 [ -1, %bb.e ], [ %i.dg, %bb.m ], [ -1, %bb.n ], [ %i.dq, %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i.i.i ]
  %.sink = phi i8 [ 0, %bb.e ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i.i.i ]
  store i32 %storemerge.i.i7.sink, ptr %0, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sink, ptr %i.dr, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE33RejectSharedWasmObjectsIfUnsharedENS2_1VINS0_10HeapObjectEEENS1_19WasmTypeCheckConfigERNS2_5LabelIJNS2_12WordWithBitsILm32EEEEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 %1, i64 %2, i8 %3, ptr noundef nonnull align 8 dereferenceable(105) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::tuple.1662", align 4   ; 4 uses
  %6 = alloca %"struct.v8::internal::compiler::WasmTypeCheckConfig", align 8 ; 3 uses
  store i64 %2, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %3, ptr %.sroa.2.0..sroa_idx, align 8
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 836), align 4, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = and i64 %2, 68719476736
  %.not9 = icmp eq i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 %.not9, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i32 @_ZNK2v88internal4wasm13ValueTypeBase23raw_heap_representationEb(ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext true)
  %.not = icmp eq i32 %i.d, 1000005
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE16ObjectIsUnsharedENS2_1VINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_GotoIfNotINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSL_17const_or_values_tE.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_GotoIfNotINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSL_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_GotoIfNotINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSL_17const_or_values_tE.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i = phi i32 [ %i.i, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.j = getelementptr inbounds i8, ptr %0, i64 -32
  store i32 %.sroa.0.0.i.i.i, ptr %5, align 4, !alias.scope !636
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm32EEEEE9GotoIfNotINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS5_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %4, ptr noundef nonnull align 8 dereferenceable(944) %i.j, i32 %i.e, i8 noundef zeroext 1, ptr noundef nonnull align 4 dereferenceable(4) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_GotoIfNotINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSL_17const_or_values_tE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15HasInstanceTypeENS2_1VINS0_6ObjectEEENS0_12InstanceTypeE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, i16 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %4 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN2v88internal8compiler13AccessBuilder6ForMapENS1_16WriteBarrierKindE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %4, i8 noundef zeroext 2) #22
  %i.a = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS0_3MapEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(72) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN2v88internal8compiler13AccessBuilder18ForMapInstanceTypeEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %3) #22
  %i.b = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_12WordWithBitsILm32EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %i.a, ptr noundef nonnull align 8 dereferenceable(72) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i: ; preds = %bb.a
  %i.f = zext i16 %2 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 -752 ; 2 uses
  %i.h = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i8 noundef zeroext 0, i64 noundef %i.f)
  %.pr = load ptr, ptr %i.c, align 8
  %i.i = icmp eq ptr %.pr, null
  br i1 %i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.b, !prof !61

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i
  %i.j = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEESL_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %i.g, i32 %i.b, i32 %i.h, i8 0) #27, !inline_history !428
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, %bb.b
  %.sroa.07.0.i.i = phi i32 [ %i.j, %bb.b ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i ], [ -1, %bb.a ]
  ret i32 %.sroa.07.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE16ObjectIsUnsharedENS2_1VINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22BitcastTaggedToWordPtrENS2_1VINS0_6ObjectEEE.exit.i, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22BitcastTaggedToWordPtrENS2_1VINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.d = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE19ReduceTaggedBitcastENS2_1VINS2_3AnyEEENS2_22RegisterRepresentationESM_NS2_15TaggedBitcastOp4KindE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %1, i8 4, i8 1, i8 noundef zeroext 3)
  %.pr.i = load ptr, ptr %i.a, align 8
  %i.e = icmp eq ptr %.pr.i, null
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22BitcastTaggedToWordPtrENS2_1VINS0_6ObjectEEE.exit.i
  %i.f = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef -262144)
  %.pre.i.i = load ptr, ptr %i.a, align 8
  %i.g = icmp eq ptr %.pre.i.i, null
  br i1 %i.g, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22MemoryChunkFromAddressENS2_1VINS2_12WordWithBitsILm64EEEEE.exit.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22MemoryChunkFromAddressENS2_1VINS2_12WordWithBitsILm64EEEEE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.d, i32 %i.f, i8 noundef zeroext 4, i8 1)
  %.pr12.i = load ptr, ptr %i.a, align 8
  %i.i = icmp eq ptr %.pr12.i, null
  br i1 %i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %bb.b, !prof !61

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22MemoryChunkFromAddressENS2_1VINS2_12WordWithBitsILm64EEEEE.exit.i
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceLoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.h, i32 -1, i8 16, i8 7, i8 1, i32 noundef 0, i8 noundef zeroext 0), !inline_history !102
  %.pr.a = load ptr, ptr %i.a, align 8
  %i.k = icmp eq ptr %.pr.a, null
  br i1 %i.k, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %bb.b
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef 1)
  %.pre = load ptr, ptr %i.a, align 8
  %i.m = icmp eq ptr %.pre, null
  br i1 %i.m, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.j, i32 %i.l, i8 noundef zeroext 4, i8 1)
  %.pre50 = load ptr, ptr %i.a, align 8
  %i.o = icmp eq ptr %.pre50, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i11, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i11: ; preds = %bb.c
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef 0)
  %.pr48 = load ptr, ptr %i.a, align 8
  %i.q = icmp eq ptr %.pr48, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %bb.d, !prof !649

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i11
  %i.r = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEESL_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.n, i32 %i.p, i8 1), !inline_history !435
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22BitcastTaggedToWordPtrENS2_1VINS0_6ObjectEEE.exit.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22MemoryChunkFromAddressENS2_1VINS2_12WordWithBitsILm64EEEEE.exit.i, %bb.b, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, %bb.c, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i11, %bb.d
  %.sroa.07.0.i.i13 = phi i32 [ %i.r, %bb.d ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i11 ], [ -1, %bb.c ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i ], [ -1, %bb.b ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22MemoryChunkFromAddressENS2_1VINS2_12WordWithBitsILm64EEEEE.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22BitcastTaggedToWordPtrENS2_1VINS0_6ObjectEEE.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i ], [ -1, %bb.a ]
  ret i32 %.sroa.07.0.i.i13
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE31AssembleOutputGraphWasmTypeCastERKNS2_14WasmTypeCastOpE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp ugt i16 %i.n, 1
  br i1 %i.o, label %_ZNK2v88internal8compiler10turboshaft14WasmTypeCastOp3rttEv.exit, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread

_ZNK2v88internal8compiler10turboshaft14WasmTypeCastOp3rttEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i4 = load i32, ptr %i.p, align 4 ; 2 uses
  %.not.i.i5 = icmp eq i32 %.sroa.0.0.copyload.i.i4, -1
  br i1 %.not.i.i5, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft14WasmTypeCastOp3rttEv.exit
  %i.q = lshr i32 %.sroa.0.0.copyload.i.i4, 4
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread16

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread16: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.01.0.copyload.i18 = load i64, ptr %i.u, align 4
  %.sroa.22.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.22.0.copyload.i20 = load i8, ptr %.sroa.22.0..sroa_idx.i19, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.r ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.y = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.y, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft14WasmTypeCastOp3rttEv.exit, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.01.0.copyload.i10 = load i64, ptr %i.z, align 4
  %.sroa.22.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.22.0.copyload.i12 = load i8, ptr %.sroa.22.0..sroa_idx.i11, align 4
  br label %bb.h

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.aa, align 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.01.0.copyload.i = load i64, ptr %i.ab, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.22.0.copyload.i = load i8, ptr %.sroa.22.0..sroa_idx.i, align 4 ; 2 uses
  %.not.i.i6 = icmp eq i32 %.sroa.02.0.copyload.i10.i.i.i, -1
  br i1 %.not.i.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread16, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit
  %.sroa.22.0.copyload.i24 = phi i8 [ %.sroa.22.0.copyload.i20, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread16 ], [ %.sroa.22.0.copyload.i, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit ]
  %.sroa.01.0.copyload.i23 = phi i64 [ %.sroa.01.0.copyload.i18, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread16 ], [ %.sroa.01.0.copyload.i, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit ]
  %.sroa.03.0.i.i22 = phi i32 [ %i.t, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread16 ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit ]
  %i.ac = tail call i32 @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE21ReduceWasmTypeCastRttENS2_1VINS0_6ObjectEEENS2_9OptionalVINS0_3MapEEENS1_19WasmTypeCheckConfigE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 %.sroa.014.0.i.i, i32 %.sroa.03.0.i.i22, i64 %.sroa.01.0.copyload.i23, i8 %.sroa.22.0.copyload.i24)
  br label %_ZZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE31AssembleOutputGraphWasmTypeCastERKNS2_14WasmTypeCastOpEENKUlDpT_E_clIJNS2_7OpIndexENS2_15OptionalOpIndexENS1_19WasmTypeCheckConfigEEEEDaST_.exit

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit
  %.sroa.22.0.copyload.i15 = phi i8 [ %.sroa.22.0.copyload.i12, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread ], [ %.sroa.22.0.copyload.i, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit ]
  %.sroa.01.0.copyload.i14 = phi i64 [ %.sroa.01.0.copyload.i10, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread ], [ %.sroa.01.0.copyload.i, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit ]
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE26ReduceWasmTypeCastAbstractENS2_1VINS0_6ObjectEEENS1_19WasmTypeCheckConfigE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 %.sroa.014.0.i.i, i64 %.sroa.01.0.copyload.i14, i8 %.sroa.22.0.copyload.i15)
  br label %_ZZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE31AssembleOutputGraphWasmTypeCastERKNS2_14WasmTypeCastOpEENKUlDpT_E_clIJNS2_7OpIndexENS2_15OptionalOpIndexENS1_19WasmTypeCheckConfigEEEEDaST_.exit

_ZZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE31AssembleOutputGraphWasmTypeCastERKNS2_14WasmTypeCastOpEENKUlDpT_E_clIJNS2_7OpIndexENS2_15OptionalOpIndexENS1_19WasmTypeCheckConfigEEEEDaST_.exit: ; preds = %bb.g, %bb.h
  %.sroa.022.0.i.i = phi i32 [ %i.ac, %bb.g ], [ %i.ad, %bb.h ]
  ret i32 %.sroa.022.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE21ReduceWasmTypeCastRttENS2_1VINS0_6ObjectEEENS2_9OptionalVINS0_3MapEEENS1_19WasmTypeCheckConfigE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 %1, i32 %2, i64 %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::turboshaft::ConstOrV.1435", align 8 ; 5 uses
  %6 = alloca %"class.std::tuple.997", align 1    ; 3 uses
  %7 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %8 = alloca %"class.std::tuple.997", align 1    ; 3 uses
  %9 = alloca %"struct.v8::internal::compiler::WasmTypeCheckConfig", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::compiler::turboshaft::Label.1673", align 8 ; 19 uses
  %11 = alloca %"class.std::tuple.1669", align 1  ; 3 uses
  store i64 %3, ptr %9, align 8
  %.sroa.282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i8 %4, ptr %.sroa.282.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %sum.shift = lshr i64 %3, 40
  %i.d = trunc nuw nsw i64 %sum.shift to i32
  %i.e = and i32 %i.d, 1048575
  %i.f = tail call noundef i32 @_ZN2v88internal4wasm17GetSubtypingDepthEPKNS1_10WasmModuleENS1_15ModuleTypeIndexE(ptr noundef %i.b, i32 %i.e) #22 ; 3 uses
  %i.g = trunc i64 %3 to i32                      ; 3 uses
  %i.h = and i32 %i.g, 5
  %i.i = icmp eq i32 %i.h, 5                      ; 2 uses
  %i.j = trunc i64 %3 to i1                       ; 2 uses
  %i.k = and i32 %i.g, -17
  %spec.select.i = select i1 %i.j, i32 %i.k, i32 %i.g ; 2 uses
  %i.l = icmp eq i32 %spec.select.i, 3073
  br i1 %i.l, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.n = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 3073, i32 %spec.select.i, ptr noundef %i.m, ptr noundef %i.m) #22
  br label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.n, %bb.b ], [ true, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.o = getelementptr inbounds i8, ptr %0, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6, !align !8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit
  tail call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.p)
  %.pre.i.i = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit, %bb.c
  %i.v = phi i64 [ %i.r, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit ], [ %.pre.i.i, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.x = add i64 %i.v, 1
  store i64 %i.x, ptr %i.q, align 8
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.v
  %i.aa = load ptr, ptr %i.z, align 8             ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.aa, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i32 -1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  store i32 -1, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store i32 0, ptr %i.ag, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.af, align 8
  store ptr %i.aa, ptr %10, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %i.al, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 72
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 4 uses
  store i8 0, ptr %i.an, align 8
  br i1 %i.j, label %_ZNK2v88internal4wasm9ValueType15is_reference_toENS1_8HeapType14RepresentationE.exit, label %_ZNK2v88internal4wasm9ValueType15is_reference_toENS1_8HeapType14RepresentationE.exit.thread

end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE22ReduceAnyConvertExternENS2_1VINS0_6ObjectEEEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.iy = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit132, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i126

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i126: ; preds = %bb.ae
  store i8 1, ptr %i.ac, align 8
  %i.ja = load ptr, ptr %14, align 8              ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 52
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = icmp ne i32 %i.jc, -1
  %i.je = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull %i.ja, i1 noundef zeroext %i.jd), !inline_history !427 ; 0 uses
  %i.jf = load ptr, ptr %14, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 52
  %i.jh = load i32, ptr %i.jg, align 4
  %.not.i.i.i127 = icmp eq i32 %i.jh, -1
  br i1 %.not.i.i.i127, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i126
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #23
  unreachable

bb.ag:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i126
  %i.ji = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.jj = load ptr, ptr %i.aa, align 8
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %bb.ah, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i128, !prof !7

bb.ah:                                            ; preds = %bb.ag
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %.pre.i.i.i.i.i.i131 = load ptr, ptr %i.z, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i128

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i128: ; preds = %bb.ah, %bb.ag
  %i.jl = phi ptr [ %.pre.i.i.i.i.i.i131, %bb.ah ], [ %i.ji, %bb.ag ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store ptr %i.jm, ptr %i.z, align 8
  store i32 %.sroa.037.0, ptr %i.jl, align 4
  %i.jn = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.jo = load ptr, ptr %i.w, align 8
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %bb.ai, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i129, !prof !7

bb.ai:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i128
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  %.pre.i.i4.i.i.i.i130 = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i129

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i129: ; preds = %bb.ai, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i128
  %i.jq = phi ptr [ %.pre.i.i4.i.i.i.i130, %bb.ai ], [ %i.jn, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i128 ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store ptr %i.jr, ptr %i.v, align 8
  store ptr %i.iy, ptr %i.jq, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit132

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit132: ; preds = %bb.ae, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.hd)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1669") align 1 %25, ptr noundef nonnull align 8 dereferenceable(81) %18, ptr noundef nonnull align 8 dereferenceable(944) %i.ei, ptr null)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN2v88internal8compiler13AccessBuilder18ForHeapNumberValueEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %7) #22
  %i.js = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_13FloatWithBitsILm64EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %i.dz, i32 %1, ptr noundef nonnull align 8 dereferenceable(72) %7) ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.jt = load ptr, ptr %i.ea, align 8
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit132
  %i.jv = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 3, i64 -4481081629233643520)
  %.pr369 = load ptr, ptr %i.ea, align 8
  %i.jw = icmp eq ptr %.pr369, null
  br i1 %i.jw, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit, label %bb.aj, !prof !61

bb.aj:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i
  %i.jx = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE16ReduceComparisonENS2_1VINS2_3AnyEEESL_NS2_12ComparisonOp4KindENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.js, i32 %i.jv, i8 noundef zeroext 1, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit132, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i, %bb.aj
  %.sroa.07.0.i.i135 = phi i32 [ %i.jx, %bb.aj ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i ], [ -1, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit132 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 %1, ptr %6, align 4, !alias.scope !650
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %14, ptr noundef nonnull align 8 dereferenceable(944) %i.ei, i32 %.sroa.07.0.i.i135, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.jy = load ptr, ptr %i.ea, align 8
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i147, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i147: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit
  %i.ka = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 3, i64 4742290407612743680)
  %.pr371 = load ptr, ptr %i.ea, align 8
  %i.kb = icmp eq ptr %.pr371, null
  br i1 %i.kb, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152, label %bb.ak, !prof !61

bb.ak:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i147
  %i.kc = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE16ReduceComparisonENS2_1VINS2_3AnyEEESL_NS2_12ComparisonOp4KindENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.ka, i32 %i.js, i8 noundef zeroext 1, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i147, %bb.ak
  %.sroa.07.0.i.i149 = phi i32 [ %i.kc, %bb.ak ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i147 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i32 %1, ptr %5, align 4, !alias.scope !663
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %14, ptr noundef nonnull align 8 dereferenceable(944) %i.ei, i32 %.sroa.07.0.i.i149, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.kd = load ptr, ptr %i.ea, align 8
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i159, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i159: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152
  %i.kf = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef -9223372036854775808)
  %.pr373 = load ptr, ptr %i.ea, align 8
  %i.kg = icmp eq ptr %.pr373, null
  br i1 %i.kg, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172, label %bb.al, !prof !61

bb.al:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i159
  %.phi.trans.insert319.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre320.i.i = load ptr, ptr %.phi.trans.insert319.i.i, align 8
  %.pre321.i.i = load ptr, ptr %.pre320.i.i, align 8
  %.phi.trans.insert322.i.i = getelementptr inbounds nuw i8, ptr %.pre321.i.i, i64 8
  %.pre323.i.i = load ptr, ptr %.phi.trans.insert322.i.i, align 8
  %.pre324.i.i = ptrtoint ptr %.pre323.i.i to i64
  %i.kh = zext i32 %i.js to i64
  %i.ki = add i64 %.pre324.i.i, %i.kh
  %i.kj = inttoptr i64 %i.ki to ptr               ; 7 uses
  %i.kk = load i8, ptr %i.kj, align 4
  switch i8 %i.kk, label %_ZNK2v88internal8compiler10turboshaft8ChangeOp14IsReversibleByENS3_4KindEb.exit.i [
    i8 75, label %bb.am
    i8 69, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.km = load i8, ptr %i.kl, align 4
  %.not8.i152.i.i = icmp eq i8 %i.km, 3
  br i1 %.not8.i152.i.i, label %bb.an, label %_ZNK2v88internal8compiler10turboshaft8ChangeOp14IsReversibleByENS3_4KindEb.exit.i

bb.an:                                            ; preds = %bb.am
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.ko = load i64, ptr %i.kn, align 8
  %i.kp = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(18) %0, i8 noundef zeroext 1, i64 noundef %i.ko)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i

bb.ao:                                            ; preds = %bb.al
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 6
  %.sroa.025.0.copyload.i.i = load i8, ptr %i.kq, align 2
  %i.kr = icmp eq i8 %.sroa.025.0.copyload.i.i, 1
  br i1 %i.kr, label %bb.ap, label %_ZNK2v88internal8compiler10turboshaft8ChangeOp14IsReversibleByENS3_4KindEb.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kj, i64 7
  %.sroa.023.0.copyload.i.i = load i8, ptr %i.ks, align 1
  %i.kt = icmp eq i8 %.sroa.023.0.copyload.i.i, 3
  br i1 %i.kt, label %bb.aq, label %_ZNK2v88internal8compiler10turboshaft8ChangeOp14IsReversibleByENS3_4KindEb.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kv = load i8, ptr %i.ku, align 4
  %switch.i = icmp ult i8 %i.kv, 12
  br i1 %switch.i, label %_ZNK2v88internal8compiler10turboshaft8ChangeOp14IsReversibleByENS3_4KindEb.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.aq
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.kw, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i

_ZNK2v88internal8compiler10turboshaft8ChangeOp14IsReversibleByENS3_4KindEb.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al
  %i.kx = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_22RegisterRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.js, i8 noundef zeroext 13, i8 noundef zeroext 0, i8 3, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %bb.an, %.critedge.i.i, %_ZNK2v88internal8compiler10turboshaft8ChangeOp14IsReversibleByENS3_4KindEb.exit.i
  %.sroa.08.0.i.i.ph = phi i32 [ %.sroa.0.0.copyload.i.i.i.i, %.critedge.i.i ], [ %i.kx, %_ZNK2v88internal8compiler10turboshaft8ChangeOp14IsReversibleByENS3_4KindEb.exit.i ], [ %i.kp, %bb.an ]
  %.pr401 = load ptr, ptr %i.ea, align 8
  %i.ky = icmp eq ptr %.pr401, null
  br i1 %i.ky, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172, label %bb.ar, !prof !61

bb.ar:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %i.kz = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEESL_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.08.0.i.i.ph, i32 %i.kf, i8 1), !inline_history !435
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i159, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, %bb.ar
  %.sroa.07.0.i.i166 = phi i32 [ %i.kz, %bb.ar ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i159 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 %1, ptr %4, align 4, !alias.scope !676
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %14, ptr noundef nonnull align 8 dereferenceable(944) %i.ei, i32 %.sroa.07.0.i.i166, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.la = load ptr, ptr %i.ea, align 8
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172
  %i.lc = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i8 0, ptr %i.lc, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 %i.js, ptr %i.ld, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE20ChangeInt32ToFloat64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172
  %i.le = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE12ReduceChangeENS2_1VINS2_13UntaggedUnionIJNSK_IJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEENSK_IJNS2_13FloatWithBitsILm32EEENSP_ILm64EEEEEEEEEEENS2_8ChangeOp4KindENSV_10AssumptionENS2_22RegisterRepresentationESY_(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.js, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 3, i8 0) ; 3 uses
  %.pr376 = load ptr, ptr %i.ea, align 8
  %30 = icmp eq ptr %.pr376, null
  %i.lf = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i8 0, ptr %i.lf, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 %i.js, ptr %i.lg, align 8
  br i1 %30, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE20ChangeInt32ToFloat64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.as, !prof !61

bb.as:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177
  %i.lh = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE12ReduceChangeENS2_1VINS2_13UntaggedUnionIJNSK_IJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEENSK_IJNS2_13FloatWithBitsILm32EEENSP_ILm64EEEEEEEEEEENS2_8ChangeOp4KindENSV_10AssumptionENS2_22RegisterRepresentationESY_(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.le, i8 noundef zeroext 6, i8 noundef zeroext 0, i8 0, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE20ChangeInt32ToFloat64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE20ChangeInt32ToFloat64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177, %bb.as
  %.sroa.08.0.i.i174378 = phi i32 [ %i.le, %bb.as ], [ %i.le, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177.thread ]
  %.sroa.08.0.i.i179 = phi i32 [ %i.lh, %bb.as ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177.thread ]
  %i.li = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i8 0, ptr %i.li, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 %.sroa.08.0.i.i179, ptr %i.lj, align 8
  %i.lk = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12Float64EqualENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_(ptr noundef nonnull align 8 dereferenceable(136) %i.dz, ptr noundef nonnull byval(%"class.v8::internal::compiler::turboshaft::ConstOrV.1691") align 8 %26, ptr noundef nonnull byval(%"class.v8::internal::compiler::turboshaft::ConstOrV.1691") align 8 %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJEE(ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef nonnull align 8 dereferenceable(944) %i.ei, i32 %i.lk, i8 noundef zeroext 0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ll = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit190, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i184

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i184: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE20ChangeInt32ToFloat64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
  store i8 1, ptr %i.ac, align 8
  %i.ln = load ptr, ptr %14, align 8              ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 52
  %i.lp = load i32, ptr %i.lo, align 4
  %i.lq = icmp ne i32 %i.lp, -1
  %i.lr = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull %i.ln, i1 noundef zeroext %i.lq), !inline_history !427 ; 0 uses
  %i.ls = load ptr, ptr %14, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 52
  %i.lu = load i32, ptr %i.lt, align 4
  %.not.i.i.i185 = icmp eq i32 %i.lu, -1
  br i1 %.not.i.i.i185, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i184
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #23
  unreachable

bb.au:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i184
  %i.lv = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.lw = load ptr, ptr %i.aa, align 8
  %i.lx = icmp eq ptr %i.lv, %i.lw
  br i1 %i.lx, label %bb.av, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i186, !prof !7

bb.av:                                            ; preds = %bb.au
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %.pre.i.i.i.i.i.i189 = load ptr, ptr %i.z, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i186

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i186: ; preds = %bb.av, %bb.au
  %i.ly = phi ptr [ %.pre.i.i.i.i.i.i189, %bb.av ], [ %i.lv, %bb.au ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store ptr %i.lz, ptr %i.z, align 8
  store i32 %1, ptr %i.ly, align 4
  %i.ma = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.mb = load ptr, ptr %i.w, align 8
  %i.mc = icmp eq ptr %i.ma, %i.mb
  br i1 %i.mc, label %bb.aw, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i187, !prof !7

bb.aw:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i186
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  %.pre.i.i4.i.i.i.i188 = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i187

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i187: ; preds = %bb.aw, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i186
  %i.md = phi ptr [ %.pre.i.i4.i.i.i.i188, %bb.aw ], [ %i.ma, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i186 ] ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store ptr %i.me, ptr %i.v, align 8
  store ptr %i.ll, ptr %i.md, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit190

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit190: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE20ChangeInt32ToFloat64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i187
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1669") align 1 %28, ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef nonnull align 8 dereferenceable(944) %i.ei, ptr null)
  %i.mf = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE6TagSmiENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %i.dz, i64 0, i32 %.sroa.08.0.i.i174378)
  %i.mg = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.mh = icmp eq ptr %i.mg, null
  br i1 %i.mh, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit199, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i193

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i193: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit190
  store i8 1, ptr %i.ac, align 8
  %i.mi = load ptr, ptr %14, align 8              ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 52
  %i.mk = load i32, ptr %i.mj, align 4
  %i.ml = icmp ne i32 %i.mk, -1
  %i.mm = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull %i.mi, i1 noundef zeroext %i.ml), !inline_history !427 ; 0 uses
  %i.mn = load ptr, ptr %14, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 52
  %i.mp = load i32, ptr %i.mo, align 4
  %.not.i.i.i194 = icmp eq i32 %i.mp, -1
  br i1 %.not.i.i.i194, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i193
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #23
  unreachable

bb.ay:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i193
  %i.mq = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.mr = load ptr, ptr %i.aa, align 8
  %i.ms = icmp eq ptr %i.mq, %i.mr
  br i1 %i.ms, label %bb.az, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i195, !prof !7

bb.az:                                            ; preds = %bb.ay
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %.pre.i.i.i.i.i.i198 = load ptr, ptr %i.z, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i195

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i195: ; preds = %bb.az, %bb.ay
  %i.mt = phi ptr [ %.pre.i.i.i.i.i.i198, %bb.az ], [ %i.mq, %bb.ay ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  store ptr %i.mu, ptr %i.z, align 8
  store i32 %i.mf, ptr %i.mt, align 4
  %i.mv = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.mw = load ptr, ptr %i.w, align 8
  %i.mx = icmp eq ptr %i.mv, %i.mw
  br i1 %i.mx, label %bb.ba, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i196, !prof !7

bb.ba:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i195
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  %.pre.i.i4.i.i.i.i197 = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i196

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i196: ; preds = %bb.ba, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i195
  %i.my = phi ptr [ %.pre.i.i4.i.i.i.i197, %bb.ba ], [ %i.mv, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i195 ] ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store ptr %i.mz, ptr %i.v, align 8
  store ptr %i.mg, ptr %i.my, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit199

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit199: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit190, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i196
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1701") align 4 %29, ptr noundef nonnull align 8 dereferenceable(105) %14, ptr noundef nonnull align 8 dereferenceable(944) %i.ei, ptr null)
  %.sroa.075.0.copyload = load i32, ptr %29, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  ret i32 %.sroa.075.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE31WasmCallBuiltinThroughJumptableINS2_21BuiltinCallDescriptor27WasmInt32ToSharedHeapNumberEEENS2_6detail12IndexTypeForINT_9results_tEE4typeERKNSK_11arguments_tEQntsrTL0__13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %3 = alloca %"class.v8::base::SmallVector.1713", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.d = load i32, ptr %1, align 4, !noalias !704
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !alias.scope !704
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !704
  store i32 %i.d, ptr %i.e, align 8, !alias.scope !704
  store ptr %i.h, ptr %i.f, align 8, !alias.scope !704
  %i.i = getelementptr inbounds i8, ptr %0, i64 -752
  %i.j = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i8 noundef zeroext 12, i64 noundef 1318)
  %.pre = load ptr, ptr %3, align 8               ; 2 uses
  %.pre10 = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 -760 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.o = call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef 1318) #22 ; 3 uses
  store ptr %i.o, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = load i32, ptr %i.o, align 8
  %i.s = sub nsw i32 %i.q, %i.r
  %i.t = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.s, i32 0, i8 124, i32 noundef 1) #22
  %i.u = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.t, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %i.n, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.b, !prof !7

end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE31WasmCallBuiltinThroughJumptableINS2_21BuiltinCallDescriptor21WasmInt32ToHeapNumberEEENS2_6detail12IndexTypeForINT_9results_tEE4typeERKNSK_11arguments_tEQntsrTL0__13kNeedsContext:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.o = call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef 1317) #22 ; 3 uses
  store ptr %i.o, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = load i32, ptr %i.o, align 8
  %i.s = sub nsw i32 %i.q, %i.r
  %i.t = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.s, i32 0, i8 124, i32 noundef 1) #22
  %i.u = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.t, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %i.n, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit
  %i.x = ptrtoint ptr %.pre10 to i64
  %i.y = ptrtoint ptr %.pre to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = getelementptr inbounds i8, ptr %0, i64 -752 ; 4 uses
  %i.ac = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i32 %i.j, i32 -1, ptr %.pre, i64 %i.aa, ptr noundef %i.u, i32 155664) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = icmp eq i8 %i.ae, 1
  br i1 %i.af, label %bb.c, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ag = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i32 %i.ac)
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.4.0.i.i.i.i.i = phi i32 [ 417808, %bb.c ], [ 155664, %bb.b ]
  %.0.i.i.i.i.i = phi i1 [ %i.ag, %bb.c ], [ false, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ai = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i32 %i.ac, i1 noundef zeroext %.0.i.i.i.i.i, ptr noundef nonnull %i.ah, i32 %.sroa.4.0.i.i.i.i.i) ; 2 uses
  %i.aj = load ptr, ptr %i.k, align 8, !nonnull !6, !align !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = zext i32 %i.ai to i64
  %i.ao = add i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SM_(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i32 %i.ai)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i
  %.sroa.010.0.i.i = phi i32 [ %i.aq, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit
  %.sroa.07.0 = phi i32 [ %.sroa.010.0.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit ], [ -1, %bb.a ]
  ret i32 %.sroa.07.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE12Float64EqualENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef byval(%"class.v8::internal::compiler::turboshaft::ConstOrV.1691") align 8 %1, ptr noundef byval(%"class.v8::internal::compiler::turboshaft::ConstOrV.1691") align 8 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantENS0_7Float64E.exit.sink.split.i.i, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantENS0_7Float64E.exit.sink.split.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 -752
  %i.i = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, i8 noundef zeroext 3, i64 %i.g)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.j, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit: ; preds = %bb.b, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantENS0_7Float64E.exit.sink.split.i.i, %bb.c
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.c ], [ -1, %bb.b ], [ %i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantENS0_7Float64E.exit.sink.split.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !5, !noundef !6
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantENS0_7Float64E.exit.sink.split.i.i6, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantENS0_7Float64E.exit.sink.split.i.i6: ; preds = %bb.d
  %i.q = load i64, ptr %2, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 -752
  %i.s = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, i8 noundef zeroext 3, i64 %i.q)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i4 = load i32, ptr %i.t, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantENS0_7Float64E.exit.sink.split.i.i6, %bb.e
  %.sroa.0.0.i5 = phi i32 [ %.sroa.0.0.copyload.i.i4, %bb.e ], [ -1, %bb.d ], [ %i.s, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Float64ConstantENS0_7Float64E.exit.sink.split.i.i6 ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableComparisonIJNS2_1VINS2_13FloatWithBitsILm64EEEEESJ_NS2_12ComparisonOp4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT_.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7
  %i.x = getelementptr inbounds i8, ptr %0, i64 -752 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %0, i64 -744
  %.pre.i = load ptr, ptr %i.y, align 8
  %i.z = load ptr, ptr %.pre.i, align 8, !nonnull !6, !align !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.g, %bb.f
  %.tr408.i = phi i32 [ %.sroa.0.0.i, %bb.f ], [ %.tr409.i, %bb.g ] ; 3 uses
  %.tr409.i = phi i32 [ %.sroa.0.0.i5, %bb.f ], [ %.tr408.i, %bb.g ] ; 3 uses
  %i.ad = zext i32 %.tr408.i to i64
  %i.ae = add i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = icmp eq i8 %i.ag, 75
  br i1 %i.ah, label %bb.g, label %.thread356.i

bb.g:                                             ; preds = %tailrecurse.i
  %i.ai = zext i32 %.tr409.i to i64
  %i.aj = add i64 %i.ac, %i.ai
  %i.ak = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = icmp eq i8 %i.al, 75
  br i1 %i.am, label %bb.h, label %tailrecurse.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ao = load i8, ptr %i.an, align 4
  %.not8.i137.i = icmp eq i8 %i.ao, 3
  br i1 %.not8.i137.i, label %bb.i, label %.thread356.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.aq = load i8, ptr %i.ap, align 4
  %.not8.i140.i = icmp eq i8 %i.aq, 3
  br i1 %.not8.i140.i, label %bb.j, label %.thread356.i

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.as = load double, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.au = load double, ptr %i.at, align 8
  %i.av = fcmp oeq double %i.as, %i.au
  %i.aw = zext i1 %i.av to i64
  %i.ax = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(18) %i.x, i8 noundef zeroext 0, i64 noundef %i.aw), !inline_history !721
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableComparisonIJNS2_1VINS2_13FloatWithBitsILm64EEEEESJ_NS2_12ComparisonOp4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT_.exit

.thread356.i:                                     ; preds = %tailrecurse.i, %bb.i, %bb.h
  %i.ay = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(18) %i.x, i32 %.tr408.i, i32 %.tr409.i, i8 noundef zeroext 0, i8 3), !inline_history !721
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableComparisonIJNS2_1VINS2_13FloatWithBitsILm64EEEEESJ_NS2_12ComparisonOp4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableComparisonIJNS2_1VINS2_13FloatWithBitsILm64EEEEESJ_NS2_12ComparisonOp4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT_.exit: ; preds = %.thread356.i, %bb.j, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7
  %.sroa.07.0.i = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7 ], [ %i.ay, %.thread356.i ], [ %i.ax, %bb.j ]
  ret i32 %.sroa.07.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE6TagSmiENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 4294967296
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds i8, ptr %0, i64 -752
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 noundef zeroext 0, i64 noundef %i.e)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ -1, %bb.b ], [ %i.g, %bb.c ], [ %2, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
  %i.k = getelementptr inbounds i8, ptr %0, i64 -752 ; 2 uses
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE12ReduceChangeENS2_1VINS2_13UntaggedUnionIJNSK_IJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEENSK_IJNS2_13FloatWithBitsILm32EEENSP_ILm64EEEEEEEEEEENS2_8ChangeOp4KindENSV_10AssumptionENS2_22RegisterRepresentationESY_(ptr noundef nonnull align 8 dereferenceable(18) %i.k, i32 %.sroa.0.0.i, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 0, i8 1)
  %.pr = load ptr, ptr %i.h, align 8
  %i.m = icmp eq ptr %.pr, null
  br i1 %i.m, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %bb.d
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext 0, i64 noundef 32)
  %.pr17.a = load ptr, ptr %i.h, align 8
  %i.o = icmp eq ptr %.pr17.a, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %3 = getelementptr inbounds i8, ptr %0, i64 -752 ; 3 uses
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE11ReduceShiftENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEENSJ_ISM_EENS2_7ShiftOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %3, i32 %i.l, i32 %i.n, i8 noundef zeroext 3, i8 1) ; 2 uses
  %.pr20.pr = load ptr, ptr %i.h, align 8
  %i.q = icmp eq ptr %.pr20.pr, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %bb.e, !prof !61

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit
  %i.r = getelementptr inbounds i8, ptr %0, i64 -744
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !6, !align !8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !6, !align !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = zext i32 %i.p to i64
  %i.y = add i64 %i.w, %i.x
  %i.z = inttoptr i64 %i.y to ptr                 ; 6 uses
  %i.aa = load i8, ptr %i.z, align 4
  switch i8 %i.aa, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i.i [
    i8 72, label %bb.f
    i8 75, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm.exit.thread169.i.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %.sroa.02.0.copyload.i.i.i.i = load i8, ptr %i.ab, align 2
  %i.ac = icmp eq i8 %.sroa.02.0.copyload.i.i.i.i, 1
  br i1 %i.ac, label %bb.g, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  %.sroa.02.0.copyload.i.i87.i.i = load i8, ptr %i.ad, align 1
  %i.ae = icmp eq i8 %.sroa.02.0.copyload.i.i87.i.i, 4
  br i1 %i.ae, label %.critedge.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i.i

.critedge.i.i:                                    ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.0.0.copyload.i.i90.i.i = load i32, ptr %i.af, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm.exit.thread169.i.i: ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ah = load i8, ptr %i.ag, align 4
  switch i8 %i.ah, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i.i [
    i8 0, label %bb.h
    i8 1, label %bb.h
    i8 11, label %bb.h
    i8 12, label %bb.h
    i8 14, label %bb.h
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm.exit.thread169.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm.exit.thread169.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm.exit.thread169.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm.exit.thread169.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm.exit.thread169.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm.exit.thread169.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 2147483648
  br i1 %i.ak, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.al = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(18) %3, i8 noundef zeroext 4, i64 %i.aj)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i.i: ; preds = %bb.h, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm.exit.thread169.i.i, %bb.g, %bb.f, %bb.e
  %i.am = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESH_NSF_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(18) %3, i32 %i.p, i8 1, i8 4, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, %bb.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit, %.critedge.i.i, %bb.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i.i
  %.sroa.07.0.i.i.i = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit ], [ %.sroa.0.0.copyload.i.i90.i.i, %.critedge.i.i ], [ %i.am, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i.i ], [ %i.al, %bb.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ], [ -1, %bb.d ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit ]
  ret i32 %.sroa.07.0.i.i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.k, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 4, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 7 uses
  %i.p = load ptr, ptr %0, align 8                ; 5 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.s = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.t = ptrtoaddr ptr %i.o to i64
  %i.u = ptrtoaddr ptr %i.q to i64
  %i.v = add i64 %i.u, -4
  %i.w = sub i64 %i.v, %i.s                       ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 44
  %i.z = sub i64 %i.s, %i.t
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.p, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ad ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.p, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ae, align 4
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.af, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !722

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ah = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ah, ptr %.08.i.i.i.i, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ak = icmp eq ptr %i.ai, %i.q
  br i1 %i.ak, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !723

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.al = shl nuw i64 1, %i.j
  %i.am = ptrtoint ptr %i.m to i64
  %i.an = sub i64 %i.am, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.an
  store ptr %i.ao, ptr %i.a, align 8
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.al
  store ptr %i.ap, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::SmallVector.370", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %i.c = icmp ugt i64 %.sroa.2.0.copyload.i, 1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.0.0.copyload.i11 = load ptr, ptr %i.b, align 8
  %i.h = trunc i64 %.sroa.2.0.copyload.i to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.l = zext i32 %2 to i64
  %wide.trip.count = and i64 %.sroa.2.0.copyload.i, 2147483647
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %._crit_edge
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = ptrtoint ptr %i.p to i64
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE33ReduceStringPrepareForGetCodeUnitENS2_1VINS0_6ObjectEEE:bb.a
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hf
  %i.hk = load ptr, ptr %i.hj, align 8            ; 8 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.hk, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.hl, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  store i32 -1, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 52
  store i32 -1, ptr %i.hn, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 56
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 88
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  store i32 0, ptr %i.hq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ho, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.hp, align 8
  store ptr %i.hk, ptr %33, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 2 uses
  store ptr %i.hs, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %i.hs, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %33, i64 64
  store ptr %i.hv, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %33, i64 72
  store ptr null, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %33, i64 80
  store i8 0, ptr %i.hx, align 8
  %.sroa.053.0.copyload = load i32, ptr %i.gl, align 4
  %i.hy = load ptr, ptr %i.eu, align 8
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i195, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i180, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i180: ; preds = %bb.i
  %i.ia = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 7), !inline_history !431
  %.pr545 = load ptr, ptr %i.eu, align 8
  %i.ib = icmp eq ptr %.pr545, null
  br i1 %i.ib, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i195, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i185, !prof !649

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i185: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i180
  %i.ic = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.053.0.copyload, i32 %i.ia, i8 noundef zeroext 4, i8 0) #27, !inline_history !431
  %.pr547 = load ptr, ptr %i.eu, align 8
  %i.id = icmp eq ptr %.pr547, null
  br i1 %i.id, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i195, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i188, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i188: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i185
  %i.ie = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 2), !inline_history !449
  %.pr550.pr = load ptr, ptr %i.eu, align 8
  %i.if = icmp eq ptr %.pr550.pr, null
  br i1 %i.if, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i195, label %bb.j, !prof !61

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i188
  %i.ig = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEESL_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.ic, i32 %i.ie, i8 0) #27, !inline_history !428
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i195

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i195: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i180, %bb.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i185, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i188, %bb.j
  %.sroa.07.0.i.i190 = phi i32 [ %i.ig, %bb.j ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i188 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i185 ], [ -1, %bb.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i180 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJEE(ptr noundef nonnull align 8 dereferenceable(81) %33, ptr noundef nonnull align 8 dereferenceable(944) %i.ey, i32 %.sroa.07.0.i.i190, i8 noundef zeroext 0, ptr noundef nonnull align 1 dereferenceable(1) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @_ZN2v88internal8compiler13AccessBuilder28ForSeqOneByteStringCharacterEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::ElementAccess") align 8 %34) #22
  %i.ih = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.ii = load i32, ptr %i.ih, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  %i.ij = load ptr, ptr %i.eu, align 8
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread611, label %bb.k, !prof !7

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i195
  %.sroa.040.0.copyload = load i32, ptr %32, align 4
  %i.il = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE11ReduceShiftENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEENSJ_ISM_EENS2_7ShiftOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.040.0.copyload, i32 %.sroa.07.0.i.i173, i8 noundef zeroext 3, i8 0)
  %.pr553 = load ptr, ptr %i.eu, align 8
  %i.im = icmp eq ptr %.pr553, null
  br i1 %i.im, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread611, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i202, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i202: ; preds = %bb.k
  %i.in = add nsw i32 %i.ii, -1
  %.sroa.0373.0.insert.ext = zext i32 %i.in to i64
  %i.io = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef %.sroa.0373.0.insert.ext)
  %.pr558 = load ptr, ptr %i.eu, align 8
  %i.ip = icmp eq ptr %.pr558, null
  br i1 %i.ip, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i202
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  br label %bb.m

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread611: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i195, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  br label %bb.m

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i202
  %i.iq = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.io, i32 %i.il, i8 noundef zeroext 0, i8 0)
  %.pr561.pr = load ptr, ptr %i.eu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.ir = icmp eq ptr %.pr561.pr, null
  br i1 %i.ir, label %bb.m, label %bb.l, !prof !61

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit
  %i.is = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE12ReduceChangeENS2_1VINS2_13UntaggedUnionIJNSK_IJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEENSK_IJNS2_13FloatWithBitsILm32EEENSP_ILm64EEEEEEEEEEENS2_8ChangeOp4KindENSV_10AssumptionENS2_22RegisterRepresentationESY_(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.iq, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 0, i8 1)
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread611, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, %bb.l
  %.sroa.08.0.i.i.i = phi i32 [ %i.is, %bb.l ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread611 ]
  %i.it = getelementptr inbounds nuw i8, ptr %35, i64 4
  store i8 0, ptr %i.it, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i32 %.sroa.07.0.i.i173, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %35, i64 24
  store i8 0, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i32 %.sroa.08.0.i.i.i, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %35, i64 40
  %i.iy = load i32, ptr %i.gk, align 4
  store i32 %i.iy, ptr %i.ix, align 8
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvRT_RKNSM_17const_or_values_tE(ptr noundef nonnull align 1 dereferenceable(1) %i.er, ptr noundef nonnull align 8 dereferenceable(169) %21, ptr noundef nonnull align 8 dereferenceable(44) %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1669") align 1 %36, ptr noundef nonnull align 8 dereferenceable(81) %33, ptr noundef nonnull align 8 dereferenceable(944) %i.ey, ptr null)
  %.sroa.026.0.copyload = load i32, ptr %i.gl, align 4
  %i.iz = load ptr, ptr %i.eu, align 8
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211: ; preds = %bb.m
  %i.jb = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 16), !inline_history !431
  %.pr563 = load ptr, ptr %i.eu, align 8
  %i.jc = icmp eq ptr %.pr563, null
  br i1 %i.jc, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread, !prof !649

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211, %bb.m
  %i.jd = load i32, ptr %i.gk, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211
  %i.je = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.026.0.copyload, i32 %i.jb, i8 noundef zeroext 4, i8 0) #27, !inline_history !431 ; 3 uses
  %.pre = load ptr, ptr %i.eu, align 8, !noalias !825
  %i.jf = icmp eq ptr %.pre, null
  %i.jg = load i32, ptr %i.gk, align 4            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  call void @llvm.experimental.noalias.scope.decl(metadata !840)
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  call void @llvm.experimental.noalias.scope.decl(metadata !843)
  br i1 %i.jf, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread
  %i.jh = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef 0), !noalias !825 ; 2 uses
  %.pr565 = load ptr, ptr %i.eu, align 8, !noalias !825
  %i.ji = icmp eq ptr %.pr565, null
  br i1 %i.ji, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit, label %bb.n, !prof !61

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i
  %i.jj = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 3), !noalias !825
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i, %bb.n
  %i.jk = phi i32 [ %i.jg, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i ], [ %i.jg, %bb.n ], [ %i.jg, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread ], [ %i.jd, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread.thread ]
  %.sroa.07.0.i.i213639 = phi i32 [ %i.je, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i ], [ %i.je, %bb.n ], [ %i.je, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread.thread ]
  %.sroa.0.0.i.i.i.i.i.i.i.i217567 = phi i32 [ %i.jh, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i ], [ %i.jh, %bb.n ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread.thread ]
  %.sroa.0.0.i5.i.i.i.i.i.i.i219 = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i ], [ %i.jj, %bb.n ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i211.thread.thread ]
  store i32 %.sroa.0.0.i5.i.i.i.i.i.i.i219, ptr %14, align 4, !alias.scope !825
  %i.jl = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i217567, ptr %i.jl, align 4, !alias.scope !825
  %i.jm = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %i.jk, ptr %i.jm, align 4, !alias.scope !825
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectENS2_12WordWithBitsILm64EEENS5_ILm32EEEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EENSP_IS6_EENSP_IS7_EEEE(ptr noundef nonnull align 8 dereferenceable(169) %21, ptr noundef nonnull align 8 dereferenceable(944) %i.ey, i32 %.sroa.07.0.i.i213639, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(12) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  call void @_ZN2v88internal8compiler13AccessBuilder29ForExternalStringResourceDataEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %37) #22
  %i.jn = load ptr, ptr %i.eu, align 8
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i227, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i227: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.jq = load i32, ptr %i.jp, align 4
  %.sroa.020.0.copyload = load i32, ptr %i.gk, align 4
  %i.jr = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceLoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.020.0.copyload, i32 -1, i8 17, i8 7, i8 1, i32 noundef %i.jq, i8 noundef zeroext 0), !inline_history !102
  %.pr568 = load ptr, ptr %i.eu, align 8
  %i.js = icmp eq ptr %.pr568, null
  br i1 %i.js, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Word32ShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit230, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Word32ShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit230: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i227
  %.sroa.018.0.copyload = load i32, ptr %32, align 4
  %i.jt = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE11ReduceShiftENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEENSJ_ISM_EENS2_7ShiftOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.018.0.copyload, i32 %.sroa.07.0.i.i173, i8 noundef zeroext 3, i8 0)
  %.pr572 = load ptr, ptr %i.eu, align 8
  %i.ju = icmp eq ptr %.pr572, null
  br i1 %i.ju, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Word32ShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit230
  %i.jv = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE12ReduceChangeENS2_1VINS2_13UntaggedUnionIJNSK_IJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEENSK_IJNS2_13FloatWithBitsILm32EEENSP_ILm64EEEEEEEEEEENS2_8ChangeOp4KindENSV_10AssumptionENS2_22RegisterRepresentationESY_(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.jt, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 0, i8 1)
  %.pr576.pr = load ptr, ptr %i.eu, align 8
  %i.jw = icmp eq ptr %.pr576.pr, null
  br i1 %i.jw, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i227, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE15Word32ShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit230, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %i.jx = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.jr, i32 %i.jv, i8 noundef zeroext 0, i8 1) ; 2 uses
  %.pre631 = load ptr, ptr %i.eu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  %41 = icmp eq ptr %.pre631, null
  br i1 %41, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit, label %bb.o, !prof !61

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit
  %i.jy = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 4, i64 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, %bb.o
  %.sroa.07.0.i.i234641 = phi i32 [ %i.jx, %bb.o ], [ %i.jx, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread ]
  %.sroa.02.0.i.i = phi i32 [ %i.jy, %bb.o ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread ]
  %i.jz = getelementptr inbounds nuw i8, ptr %38, i64 4
  store i8 0, ptr %i.jz, align 4
  %i.ka = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %.sroa.07.0.i.i173, ptr %i.ka, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %38, i64 24
  store i8 0, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %38, i64 32
  store i32 %.sroa.07.0.i.i234641, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %38, i64 40
  store i32 %.sroa.02.0.i.i, ptr %i.kd, align 8
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvRT_RKNSM_17const_or_values_tE(ptr noundef nonnull align 1 dereferenceable(1) %i.er, ptr noundef nonnull align 8 dereferenceable(169) %21, ptr noundef nonnull align 8 dereferenceable(44) %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.hr)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectENS2_12WordWithBitsILm64EEENS5_ILm32EEEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EENSL_IS6_EENSL_IS7_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.2093") align 4 %39, ptr noundef nonnull align 8 dereferenceable(169) %21, ptr noundef nonnull align 8 dereferenceable(944) %i.ey, ptr null)
  %i.ke = getelementptr inbounds nuw i8, ptr %39, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  %i.kf = load <2 x i32>, ptr %i.ke, align 4
  %i.kg = shufflevector <2 x i32> %i.kf, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.kg, ptr %40, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %40, i64 8
  %.sroa.0.0.copyload = load i32, ptr %39, align 4
  store i32 %.sroa.0.0.copyload, ptr %i.kh, align 8
  %i.ki = load ptr, ptr %i.eu, align 8
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleESt16initializer_listINS2_1VINS2_3AnyEEEE.exit, label %bb.p, !prof !7

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit
  %i.kk = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_11MakeTupleOpEJNS2_27ShadowyOpIndexVectorWrapperEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %40, i64 3), !inline_history !844
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleESt16initializer_listINS2_1VINS2_3AnyEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleESt16initializer_listINS2_1VINS2_3AnyEEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit, %bb.p
  %.sroa.03.0.i.i = phi i32 [ %i.kk, %bb.p ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.el)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.eh)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ed)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.db)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ct)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.br)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bn)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bj)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bf)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.af)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(96) %i.x)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  ret i32 %.sroa.03.0.i.i

bb.q:                                             ; preds = %.lr.ph
  call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.ge)
  %.pre.i.i239 = load i64, ptr %i.gf, align 8
  br label %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit240

_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit240: ; preds = %.lr.ph, %bb.q
  %i.kl = phi i64 [ %i.gg, %.lr.ph ], [ %.pre.i.i239, %bb.q ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  %i.kn = add i64 %i.kl, 1
  store i64 %i.kn, ptr %i.gf, align 8
  %i.ko = load ptr, ptr %i.km, align 8
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.kl
  %i.kq = load ptr, ptr %i.kp, align 8            ; 8 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.kq, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.kr, align 4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 48
  store i32 -1, ptr %i.ks, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 52
  store i32 -1, ptr %i.kt, align 4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 56
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 88
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 96
  store i32 0, ptr %i.kw, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ku, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.kv, align 8
  store ptr %i.kq, ptr %23, align 8
  store ptr %i.fh, ptr %i.fg, align 8
  store ptr %i.fh, ptr %i.fi, align 8
  store ptr %i.fk, ptr %i.fj, align 8
  store ptr null, ptr %i.fl, align 8
  store i8 0, ptr %i.fm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.kx = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 88 ; 3 uses
  %i.kz = load i64, ptr %i.ky, align 8            ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 80
  %i.lb = load i64, ptr %i.la, align 8
  %i.lc = icmp eq i64 %i.kz, %i.lb
  br i1 %i.lc, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit240
  call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.kx)
  %.pre.i.i242 = load i64, ptr %i.ky, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit240, %bb.r
  %i.ld = phi i64 [ %i.kz, %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit240 ], [ %.pre.i.i242, %bb.r ] ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 72
  %i.lf = add i64 %i.ld, 1
  store i64 %i.lf, ptr %i.ky, align 8
  %i.lg = load ptr, ptr %i.le, align 8
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.ld
  %i.li = load ptr, ptr %i.lh, align 8            ; 8 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.li, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.lj, align 4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 48
  store i32 -1, ptr %i.lk, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 52
  store i32 -1, ptr %i.ll, align 4
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 56
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 88
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 96
  store i32 0, ptr %i.lo, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.lm, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.ln, align 8
  store ptr %i.li, ptr %24, align 8
  store ptr %i.fo, ptr %i.fn, align 8
  store ptr %i.fo, ptr %i.fp, align 8
  store ptr %i.fr, ptr %i.fq, align 8
  store ptr null, ptr %i.fs, align 8
  store i8 0, ptr %i.ft, align 8
  %.sroa.0130.0.copyload = load i32, ptr %i.fd, align 4
  %i.lp = load ptr, ptr %i.eu, align 8
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i256.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i248, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i248: ; preds = %bb.s
  %i.lr = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 1), !inline_history !431
  %.pr579 = load ptr, ptr %i.eu, align 8
  %i.ls = icmp eq ptr %.pr579, null
  br i1 %i.ls, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i256.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i253, !prof !649

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i253: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i248
  %i.lt = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.0130.0.copyload, i32 %i.lr, i8 noundef zeroext 4, i8 0) #27, !inline_history !431
  %.pr581 = load ptr, ptr %i.eu, align 8
  %i.lu = icmp eq ptr %.pr581, null
  br i1 %i.lu, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i256.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i256, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i256: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i253
  %i.lv = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 0), !inline_history !449
  %.pr584.pr = load ptr, ptr %i.eu, align 8
  %i.lw = icmp eq ptr %.pr584.pr, null
  br i1 %i.lw, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i256.thread, label %bb.t, !prof !61

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i256
  %i.lx = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEESL_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %i.lt, i32 %i.lv, i8 0) #27, !inline_history !428
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i256.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i256.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i248, %bb.s, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i253, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i256, %bb.t
  %.sroa.07.0.i.i258 = phi i32 [ %i.lx, %bb.t ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i256 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i253 ], [ -1, %bb.s ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i248 ]
  %i.ly = load i32, ptr %i.fc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.lz = load <2 x i32>, ptr %22, align 8
  store <2 x i32> %i.lz, ptr %13, align 8, !alias.scope !845
  store i32 %i.ly, ptr %i.fu, align 8, !alias.scope !845
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectENS2_12WordWithBitsILm32EEES6_EE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EENSO_IS6_EESQ_EE(ptr noundef nonnull align 8 dereferenceable(169) %20, ptr noundef nonnull align 8 dereferenceable(944) %i.ey, i32 %.sroa.07.0.i.i258, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(12) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %.sroa.0119.0.copyload = load i32, ptr %i.fd, align 4
  %i.ma = load ptr, ptr %i.eu, align 8
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i283.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i275, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i275: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i256.thread
  %i.mc = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 7), !inline_history !431
  %.pr587 = load ptr, ptr %i.eu, align 8
  %i.md = icmp eq ptr %.pr587, null
  br i1 %i.md, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i283.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i280, !prof !649

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i280: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i275
  %i.me = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerES3_S6_EEEEEEEEEEEE15ReduceWordBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_11WordBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 %.sroa.0119.0.copyload, i32 %i.mc, i8 noundef zeroext 4, i8 0) #27, !inline_history !431 ; 4 uses
  %.pr589 = load ptr, ptr %i.eu, align 8
  %i.mf = icmp eq ptr %.pr589, null
  br i1 %i.mf, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i283.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i283, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i283: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i280
  %i.mg = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 5), !inline_history !449
  %.pr592.pr = load ptr, ptr %i.eu, align 8
  %i.mh = icmp eq ptr %.pr592.pr, null
  br i1 %i.mh, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_19WasmLoweringReducerENS2_26MachineOptimizationReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i283.thread, label %bb.u, !prof !61
end_hunk_3
