Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-in-js-inlining-phase?download=true
inline.NumInlined: 28862
inline.NumDeleted: 9814
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm32EEEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS5_EEEERT_NS_14SourceLocationE:bb.a
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
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  store ptr %i.a, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(728) %i.cw, ptr noundef nonnull %i.a)
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.cy, ptr %i.cz, align 8
  %i.da = load ptr, ptr %1, align 8, !noalias !585
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.dc = load i32, ptr %i.db, align 8, !noalias !585
  %i.dd = icmp eq i32 %i.dc, 1
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.df = load ptr, ptr %i.de, align 8, !noalias !585 ; 3 uses
  br i1 %i.dd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dg = load i32, ptr %i.df, align 4, !noalias !585
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

bb.n:                                             ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !585
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.df to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 2                 ; 2 uses
  %i.dn = load ptr, ptr %i.cv, align 8, !noalias !585
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.o, !prof !5

bb.o:                                             ; preds = %bb.n
  %i.dp = icmp ult i64 %i.dm, 2147483648
  br i1 %i.dp, label %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i.i.i, label %bb.p, !prof !8

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #23, !noalias !585
  unreachable

_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i.i.i: ; preds = %bb.o
  %i.dq = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE9ReducePhiENSA_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr %i.df, i64 %i.dm, i8 0), !noalias !585
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit: ; preds = %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i.i.i, %bb.n, %bb.m, %bb.e
  %storemerge.i.i7.sink = phi i32 [ -1, %bb.e ], [ %i.dg, %bb.m ], [ -1, %bb.n ], [ %i.dq, %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i.i.i ]
  %.sink = phi i8 [ 0, %bb.e ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEEE6lengthEv.exit.i.i.i ]
  store i32 %storemerge.i.i7.sink, ptr %0, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sink, ptr %i.dr, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE33RejectSharedWasmObjectsIfUnsharedENS2_1VINS0_10HeapObjectEEENS1_19WasmTypeCheckConfigERNS2_5LabelIJNS2_12WordWithBitsILm32EEEEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i64 %2, i8 %3, ptr noundef nonnull align 8 dereferenceable(105) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::tuple.835", align 4    ; 4 uses
  %6 = alloca %"struct.v8::internal::compiler::WasmTypeCheckConfig", align 8 ; 3 uses
  store i64 %2, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %3, ptr %.sroa.2.0..sroa_idx, align 8
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 836), align 4, !range !11, !noundef !6
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
  %i.e = call i32 @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE16ObjectIsUnsharedENS2_1VINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_GotoIfNotINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSL_17const_or_values_tE.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_GotoIfNotINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSL_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_GotoIfNotINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSL_17const_or_values_tE.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i = phi i32 [ %i.i, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.j = getelementptr inbounds i8, ptr %0, i64 -32
  store i32 %.sroa.0.0.i.i.i, ptr %5, align 4, !alias.scope !590
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS2_12WordWithBitsILm32EEEEE9GotoIfNotINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS5_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %4, ptr noundef nonnull align 8 dereferenceable(920) %i.j, i32 %i.e, i8 noundef zeroext 1, ptr noundef nonnull align 4 dereferenceable(4) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_GotoIfNotINS2_5LabelIJNS2_12WordWithBitsILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSL_17const_or_values_tE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15HasInstanceTypeENS2_1VINS0_6ObjectEEENS0_12InstanceTypeE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, i16 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %4 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN2v88internal8compiler13AccessBuilder6ForMapENS1_16WriteBarrierKindE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %4, i8 noundef zeroext 2) #22
  %i.a = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS0_3MapEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(72) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN2v88internal8compiler13AccessBuilder18ForMapInstanceTypeEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %3) #22
  %i.b = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_12WordWithBitsILm32EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %i.a, ptr noundef nonnull align 8 dereferenceable(72) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i: ; preds = %bb.a
  %i.f = zext i16 %2 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 -728 ; 2 uses
  %i.h = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i8 noundef zeroext 0, i64 noundef %i.f)
  %.pr = load ptr, ptr %i.c, align 8
  %i.i = icmp eq ptr %.pr, null
  br i1 %i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.b, !prof !61

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i
  %i.j = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i32 %i.b, i32 %i.h, i8 noundef zeroext 0, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, %bb.b
  %.sroa.06.0.i.i = phi i32 [ %i.j, %bb.b ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i ], [ -1, %bb.a ]
  ret i32 %.sroa.06.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE16ObjectIsUnsharedENS2_1VINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22BitcastTaggedToWordPtrENS2_1VINS0_6ObjectEEE.exit.i, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22BitcastTaggedToWordPtrENS2_1VINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.d = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESH_NSF_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i8 4, i8 1, i8 noundef zeroext 3)
  %.pr.i = load ptr, ptr %i.a, align 8
  %i.e = icmp eq ptr %.pr.i, null
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22BitcastTaggedToWordPtrENS2_1VINS0_6ObjectEEE.exit.i
  %i.f = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef -262144)
  %.pre.i.i = load ptr, ptr %i.a, align 8
  %i.g = icmp eq ptr %.pre.i.i, null
  br i1 %i.g, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22MemoryChunkFromAddressENS2_1VINS2_12WordWithBitsILm64EEEEE.exit.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22MemoryChunkFromAddressENS2_1VINS2_12WordWithBitsILm64EEEEE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.d, i32 %i.f, i8 noundef zeroext 4, i8 1)
  %.pr12.i = load ptr, ptr %i.a, align 8
  %i.i = icmp eq ptr %.pr12.i, null
  br i1 %i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %bb.b, !prof !61

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22MemoryChunkFromAddressENS2_1VINS2_12WordWithBitsILm64EEEEE.exit.i
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.h, i32 -1, i8 16, i8 7, i8 1, i32 noundef 0, i8 noundef zeroext 0)
  %.pr.a = load ptr, ptr %i.a, align 8
  %i.k = icmp eq ptr %.pr.a, null
  br i1 %i.k, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %bb.b
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef 1)
  %.pre = load ptr, ptr %i.a, align 8
  %i.m = icmp eq ptr %.pre, null
  br i1 %i.m, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.j, i32 %i.l, i8 noundef zeroext 4, i8 1)
  %.pre50 = load ptr, ptr %i.a, align 8
  %i.o = icmp eq ptr %.pre50, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i11, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i11: ; preds = %bb.c
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef 0)
  %.pr48 = load ptr, ptr %i.a, align 8
  %i.q = icmp eq ptr %.pr48, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %bb.d, !prof !603

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i11
  %i.r = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.n, i32 %i.p, i8 noundef zeroext 0, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22BitcastTaggedToWordPtrENS2_1VINS0_6ObjectEEE.exit.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22MemoryChunkFromAddressENS2_1VINS2_12WordWithBitsILm64EEEEE.exit.i, %bb.b, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, %bb.c, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i11, %bb.d
  %.sroa.06.0.i.i13 = phi i32 [ %i.r, %bb.d ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i11 ], [ -1, %bb.c ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i ], [ -1, %bb.b ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22MemoryChunkFromAddressENS2_1VINS2_12WordWithBitsILm64EEEEE.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22BitcastTaggedToWordPtrENS2_1VINS0_6ObjectEEE.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i.i.i ], [ -1, %bb.a ]
  ret i32 %.sroa.06.0.i.i13
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE31AssembleOutputGraphWasmTypeCastERKNS2_14WasmTypeCastOpE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
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
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp ugt i16 %i.n, 1
  br i1 %i.o, label %_ZNK2v88internal8compiler10turboshaft14WasmTypeCastOp3rttEv.exit, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread

_ZNK2v88internal8compiler10turboshaft14WasmTypeCastOp3rttEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i4 = load i32, ptr %i.p, align 4 ; 2 uses
  %.not.i.i5 = icmp eq i32 %.sroa.0.0.copyload.i.i4, -1
  br i1 %.not.i.i5, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft14WasmTypeCastOp3rttEv.exit
  %i.q = lshr i32 %.sroa.0.0.copyload.i.i4, 4
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread16

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread16: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.01.0.copyload.i18 = load i64, ptr %i.u, align 4
  %.sroa.22.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.22.0.copyload.i20 = load i8, ptr %.sroa.22.0..sroa_idx.i19, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.r ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.y = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.y, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft14WasmTypeCastOp3rttEv.exit, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.01.0.copyload.i10 = load i64, ptr %i.z, align 4
  %.sroa.22.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.22.0.copyload.i12 = load i8, ptr %.sroa.22.0..sroa_idx.i11, align 4
  br label %bb.h

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.aa, align 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.01.0.copyload.i = load i64, ptr %i.ab, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.22.0.copyload.i = load i8, ptr %.sroa.22.0..sroa_idx.i, align 4 ; 2 uses
  %.not.i.i6 = icmp eq i32 %.sroa.02.0.copyload.i10.i.i.i, -1
  br i1 %.not.i.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread16, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit
  %.sroa.22.0.copyload.i24 = phi i8 [ %.sroa.22.0.copyload.i20, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread16 ], [ %.sroa.22.0.copyload.i, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit ]
  %.sroa.01.0.copyload.i23 = phi i64 [ %.sroa.01.0.copyload.i18, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread16 ], [ %.sroa.01.0.copyload.i, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit ]
  %.sroa.03.0.i.i22 = phi i32 [ %i.t, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread16 ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit ]
  %i.ac = tail call i32 @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE21ReduceWasmTypeCastRttENS2_1VINS0_6ObjectEEENS2_9OptionalVINS0_3MapEEENS1_19WasmTypeCheckConfigE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %.sroa.014.0.i.i, i32 %.sroa.03.0.i.i22, i64 %.sroa.01.0.copyload.i23, i8 %.sroa.22.0.copyload.i24)
  br label %_ZZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE31AssembleOutputGraphWasmTypeCastERKNS2_14WasmTypeCastOpEENKUlDpT_E_clIJNS2_7OpIndexENS2_15OptionalOpIndexENS1_19WasmTypeCheckConfigEEEEDaST_.exit

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit
  %.sroa.22.0.copyload.i15 = phi i8 [ %.sroa.22.0.copyload.i12, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread ], [ %.sroa.22.0.copyload.i, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit ]
  %.sroa.01.0.copyload.i14 = phi i64 [ %.sroa.01.0.copyload.i10, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit.thread ], [ %.sroa.01.0.copyload.i, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_15OptionalOpIndexE.exit ]
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE26ReduceWasmTypeCastAbstractENS2_1VINS0_6ObjectEEENS1_19WasmTypeCheckConfigE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %.sroa.014.0.i.i, i64 %.sroa.01.0.copyload.i14, i8 %.sroa.22.0.copyload.i15)
  br label %_ZZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE31AssembleOutputGraphWasmTypeCastERKNS2_14WasmTypeCastOpEENKUlDpT_E_clIJNS2_7OpIndexENS2_15OptionalOpIndexENS1_19WasmTypeCheckConfigEEEEDaST_.exit

_ZZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE31AssembleOutputGraphWasmTypeCastERKNS2_14WasmTypeCastOpEENKUlDpT_E_clIJNS2_7OpIndexENS2_15OptionalOpIndexENS1_19WasmTypeCheckConfigEEEEDaST_.exit: ; preds = %bb.g, %bb.h
  %.sroa.022.0.i.i = phi i32 [ %i.ac, %bb.g ], [ %i.ad, %bb.h ]
  ret i32 %.sroa.022.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE21ReduceWasmTypeCastRttENS2_1VINS0_6ObjectEEENS2_9OptionalVINS0_3MapEEENS1_19WasmTypeCheckConfigE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i32 %2, i64 %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::tuple.401", align 1    ; 3 uses
  %6 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %7 = alloca %"class.std::tuple.401", align 1    ; 3 uses
  %8 = alloca %"struct.v8::internal::compiler::WasmTypeCheckConfig", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::compiler::turboshaft::Label.848", align 8 ; 19 uses
  %10 = alloca %"class.std::tuple.844", align 1   ; 3 uses
  store i64 %3, ptr %8, align 8
  %.sroa.282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i8 %4, ptr %.sroa.282.0..sroa_idx, align 8
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %sum.shift = lshr i64 %3, 40
  %i.c = trunc nuw nsw i64 %sum.shift to i32
  %i.d = and i32 %i.c, 1048575
  %i.e = tail call noundef i32 @_ZN2v88internal4wasm17GetSubtypingDepthEPKNS1_10WasmModuleENS1_15ModuleTypeIndexE(ptr noundef %i.a, i32 %i.d) #22 ; 3 uses
  %i.f = trunc i64 %3 to i32                      ; 3 uses
  %i.g = and i32 %i.f, 5
  %i.h = icmp eq i32 %i.g, 5                      ; 2 uses
  %i.i = trunc i64 %3 to i1                       ; 2 uses
  %i.j = and i32 %i.f, -17
  %spec.select.i = select i1 %i.i, i32 %i.j, i32 %i.f ; 2 uses
  %i.k = icmp eq i32 %spec.select.i, 3073
  br i1 %i.k, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8                ; 2 uses
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 3073, i32 %spec.select.i, ptr noundef %i.l, ptr noundef %i.l) #22
  br label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ true, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.n = getelementptr inbounds i8, ptr %0, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit
  tail call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.o)
  %.pre.i.i = load i64, ptr %i.p, align 8
  br label %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit, %bb.c
  %i.u = phi i64 [ %i.q, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit ], [ %.pre.i.i, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.w = add i64 %i.u, 1
  store i64 %i.w, ptr %i.p, align 8
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  %i.z = load ptr, ptr %i.y, align 8              ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.z, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i32 -1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  store i32 -1, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store i32 0, ptr %i.af, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ad, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.ae, align 8
  store ptr %i.z, ptr %9, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %i.ak, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 72
  store ptr null, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 4 uses
  store i8 0, ptr %i.am, align 8
  br i1 %i.i, label %_ZNK2v88internal4wasm9ValueType15is_reference_toENS1_8HeapType14RepresentationE.exit, label %_ZNK2v88internal4wasm9ValueType15is_reference_toENS1_8HeapType14RepresentationE.exit.thread

_ZNK2v88internal4wasm9ValueType15is_reference_toENS1_8HeapType14RepresentationE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit
  %i.an = call noundef i32 @_ZNK2v88internal4wasm13ValueTypeBase23raw_heap_representationEb(ptr noundef nonnull align 4 dereferenceable(4) %8, i1 noundef zeroext true)
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE22ReduceAnyConvertExternENS2_1VINS0_6ObjectEEEb:bb.a
  br i1 %i.io, label %bb.z, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i120, !prof !5

bb.z:                                             ; preds = %bb.y
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %.pre.i.i.i.i.i.i123 = load ptr, ptr %i.z, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i120

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i120: ; preds = %bb.z, %bb.y
  %i.ip = phi ptr [ %.pre.i.i.i.i.i.i123, %bb.z ], [ %i.im, %bb.y ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store ptr %i.iq, ptr %i.z, align 8
  store i32 %1, ptr %i.ip, align 4
  %i.ir = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.is = load ptr, ptr %i.w, align 8
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %bb.aa, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i121, !prof !5

bb.aa:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i120
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  %.pre.i.i4.i.i.i.i122 = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i121

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i121: ; preds = %bb.aa, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i120
  %i.iu = phi ptr [ %.pre.i.i4.i.i.i.i122, %bb.aa ], [ %i.ir, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i120 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store ptr %i.iv, ptr %i.v, align 8
  store ptr %i.ic, ptr %i.iu, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit124

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit124: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE13Int32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit113, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i121
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.844") align 1 %21, ptr noundef nonnull align 8 dereferenceable(81) %20, ptr noundef nonnull align 8 dereferenceable(920) %i.ei, ptr null)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  br i1 %2, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit124
  store i32 %.sroa.07.0.i.i.i.i393397, ptr %22, align 4
  %i.iw = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE31WasmCallBuiltinThroughJumptableINS2_21BuiltinCallDescriptor27WasmInt32ToSharedHeapNumberEEENS2_6detail12IndexTypeForINT_9results_tEE4typeERKNSK_11arguments_tEQntsrTL0__13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(136) %i.dz, ptr noundef nonnull align 4 dereferenceable(4) %22)
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit124
  store i32 %.sroa.07.0.i.i.i.i393397, ptr %23, align 4
  %i.ix = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE31WasmCallBuiltinThroughJumptableINS2_21BuiltinCallDescriptor21WasmInt32ToHeapNumberEEENS2_6detail12IndexTypeForINT_9results_tEE4typeERKNSK_11arguments_tEQntsrTL0__13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(136) %i.dz, ptr noundef nonnull align 4 dereferenceable(4) %23)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.037.0 = phi i32 [ %i.iw, %bb.ab ], [ %i.ix, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.iy = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit132, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i126

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i126: ; preds = %bb.ad
  store i8 1, ptr %i.ac, align 8
  %i.ja = load ptr, ptr %13, align 8              ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 52
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = icmp ne i32 %i.jc, -1
  %i.je = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull %i.ja, i1 noundef zeroext %i.jd), !inline_history !582 ; 0 uses
  %i.jf = load ptr, ptr %13, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 52
  %i.jh = load i32, ptr %i.jg, align 4
  %.not.i.i.i127 = icmp eq i32 %i.jh, -1
  br i1 %.not.i.i.i127, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i126
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #23
  unreachable

bb.af:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i126
  %i.ji = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.jj = load ptr, ptr %i.aa, align 8
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %bb.ag, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i128, !prof !5

bb.ag:                                            ; preds = %bb.af
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %.pre.i.i.i.i.i.i131 = load ptr, ptr %i.z, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i128

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i128: ; preds = %bb.ag, %bb.af
  %i.jl = phi ptr [ %.pre.i.i.i.i.i.i131, %bb.ag ], [ %i.ji, %bb.af ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store ptr %i.jm, ptr %i.z, align 8
  store i32 %.sroa.037.0, ptr %i.jl, align 4
  %i.jn = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.jo = load ptr, ptr %i.w, align 8
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %bb.ah, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i129, !prof !5

bb.ah:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i128
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  %.pre.i.i4.i.i.i.i130 = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i129

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i129: ; preds = %bb.ah, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i128
  %i.jq = phi ptr [ %.pre.i.i4.i.i.i.i130, %bb.ah ], [ %i.jn, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i128 ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store ptr %i.jr, ptr %i.v, align 8
  store ptr %i.iy, ptr %i.jq, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit132

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit132: ; preds = %bb.ad, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.hd)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.844") align 1 %24, ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef nonnull align 8 dereferenceable(920) %i.ei, ptr null)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN2v88internal8compiler13AccessBuilder18ForHeapNumberValueEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %7) #22
  %i.js = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_13FloatWithBitsILm64EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %i.dz, i32 %1, ptr noundef nonnull align 8 dereferenceable(72) %7) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.jt = load ptr, ptr %i.ea, align 8
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit132
  %i.jv = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 3, i64 -4481081629233643520)
  %.pr400 = load ptr, ptr %i.ea, align 8
  %i.jw = icmp eq ptr %.pr400, null
  br i1 %i.jw, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit, label %bb.ai, !prof !61

bb.ai:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i
  %i.jx = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.js, i32 %i.jv, i8 noundef zeroext 1, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit132, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i, %bb.ai
  %.sroa.06.0.i.i135 = phi i32 [ %i.jx, %bb.ai ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i ], [ -1, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit132 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 %1, ptr %6, align 4, !alias.scope !605
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %13, ptr noundef nonnull align 8 dereferenceable(920) %i.ei, i32 %.sroa.06.0.i.i135, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.jy = load ptr, ptr %i.ea, align 8
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i147, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i147: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit
  %i.ka = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 3, i64 4742290407612743680)
  %.pr402 = load ptr, ptr %i.ea, align 8
  %i.kb = icmp eq ptr %.pr402, null
  br i1 %i.kb, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152, label %bb.aj, !prof !61

bb.aj:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i147
  %i.kc = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.ka, i32 %i.js, i8 noundef zeroext 1, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i147, %bb.aj
  %.sroa.06.0.i.i149 = phi i32 [ %i.kc, %bb.aj ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i147 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i32 %1, ptr %5, align 4, !alias.scope !618
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %13, ptr noundef nonnull align 8 dereferenceable(920) %i.ei, i32 %.sroa.06.0.i.i149, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.kd = load ptr, ptr %i.ea, align 8
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i159, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i159: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152
  %i.kf = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef -9223372036854775808)
  %.pr404.a = load ptr, ptr %i.ea, align 8
  %i.kg = icmp eq ptr %.pr404.a, null
  br i1 %i.kg, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i159
  %i.kh = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_19FloatRepresentationENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.js, i8 noundef zeroext 13, i8 noundef zeroext 0, i8 3, i8 1)
  %.pre = load ptr, ptr %i.ea, align 8
  %i.ki = icmp eq ptr %.pre, null
  br i1 %i.ki, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172, label %bb.ak, !prof !61

bb.ak:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %i.kj = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.kh, i32 %i.kf, i8 noundef zeroext 0, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i159, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, %bb.ak
  %.sroa.06.0.i.i166 = phi i32 [ %i.kj, %bb.ak ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i159 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Float64LessThanENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit152 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 %1, ptr %4, align 4, !alias.scope !631
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(105) %13, ptr noundef nonnull align 8 dereferenceable(920) %i.ei, i32 %.sroa.06.0.i.i166, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.kk = load ptr, ptr %i.ea, align 8
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12Float64EqualENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172
  %i.km = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_19FloatRepresentationENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.js, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 3, i8 0) ; 4 uses
  %.pr407 = load ptr, ptr %i.ea, align 8
  %i.kn = icmp eq ptr %.pr407, null
  br i1 %i.kn, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12Float64EqualENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i184, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i184: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177
  %i.ko = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.km, i8 noundef zeroext 6, i8 noundef zeroext 0, i8 0, i8 3)
  %.pr410 = load ptr, ptr %i.ea, align 8
  %i.kp = icmp eq ptr %.pr410, null
  br i1 %i.kp, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12Float64EqualENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit, label %bb.al, !prof !61

bb.al:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i184
  %i.kq = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.js, i32 %i.ko, i8 noundef zeroext 0, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12Float64EqualENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12Float64EqualENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i184, %bb.al
  %.sroa.07.0.i.i174409413 = phi i32 [ %i.km, %bb.al ], [ %i.km, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i184 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172 ], [ %i.km, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177 ]
  %.sroa.06.0.i.i186 = phi i32 [ %i.kq, %bb.al ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i184 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i172 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i177 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJEE(ptr noundef nonnull align 8 dereferenceable(81) %16, ptr noundef nonnull align 8 dereferenceable(920) %i.ei, i32 %.sroa.06.0.i.i186, i8 noundef zeroext 0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.kr = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit199, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i193

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i193: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12Float64EqualENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit
  store i8 1, ptr %i.ac, align 8
  %i.kt = load ptr, ptr %13, align 8              ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 52
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = icmp ne i32 %i.kv, -1
  %i.kx = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull %i.kt, i1 noundef zeroext %i.kw), !inline_history !582 ; 0 uses
  %i.ky = load ptr, ptr %13, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 52
  %i.la = load i32, ptr %i.kz, align 4
  %.not.i.i.i194 = icmp eq i32 %i.la, -1
  br i1 %.not.i.i.i194, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i193
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #23
  unreachable

bb.an:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i193
  %i.lb = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.lc = load ptr, ptr %i.aa, align 8
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %bb.ao, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i195, !prof !5

bb.ao:                                            ; preds = %bb.an
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %.pre.i.i.i.i.i.i198 = load ptr, ptr %i.z, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i195

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i195: ; preds = %bb.ao, %bb.an
  %i.le = phi ptr [ %.pre.i.i.i.i.i.i198, %bb.ao ], [ %i.lb, %bb.an ] ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  store ptr %i.lf, ptr %i.z, align 8
  store i32 %1, ptr %i.le, align 4
  %i.lg = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.lh = load ptr, ptr %i.w, align 8
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %bb.ap, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i196, !prof !5

bb.ap:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i195
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  %.pre.i.i4.i.i.i.i197 = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i196

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i196: ; preds = %bb.ap, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i195
  %i.lj = phi ptr [ %.pre.i.i4.i.i.i.i197, %bb.ap ], [ %i.lg, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i195 ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store ptr %i.lk, ptr %i.v, align 8
  store ptr %i.kr, ptr %i.lj, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit199

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit199: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE12Float64EqualENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEESI_.exit, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i196
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.844") align 1 %25, ptr noundef nonnull align 8 dereferenceable(81) %16, ptr noundef nonnull align 8 dereferenceable(920) %i.ei, ptr null)
  %i.ll = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TagSmiENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %i.dz, i64 0, i32 %.sroa.07.0.i.i174409413)
  %i.lm = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit208, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i202

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i202: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit199
  store i8 1, ptr %i.ac, align 8
  %i.lo = load ptr, ptr %13, align 8              ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 52
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = icmp ne i32 %i.lq, -1
  %i.ls = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull %i.lo, i1 noundef zeroext %i.lr), !inline_history !582 ; 0 uses
  %i.lt = load ptr, ptr %13, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 52
  %i.lv = load i32, ptr %i.lu, align 4
  %.not.i.i.i203 = icmp eq i32 %i.lv, -1
  br i1 %.not.i.i.i203, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i202
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #23
  unreachable

bb.ar:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i202
  %i.lw = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.lx = load ptr, ptr %i.aa, align 8
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %bb.as, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i204, !prof !5

bb.as:                                            ; preds = %bb.ar
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %.pre.i.i.i.i.i.i207 = load ptr, ptr %i.z, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i204

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i204: ; preds = %bb.as, %bb.ar
  %i.lz = phi ptr [ %.pre.i.i.i.i.i.i207, %bb.as ], [ %i.lw, %bb.ar ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store ptr %i.ma, ptr %i.z, align 8
  store i32 %i.ll, ptr %i.lz, align 4
  %i.mb = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.mc = load ptr, ptr %i.w, align 8
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %bb.at, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i205, !prof !5

bb.at:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i204
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  %.pre.i.i4.i.i.i.i206 = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i205

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i205: ; preds = %bb.at, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i204
  %i.me = phi ptr [ %.pre.i.i4.i.i.i.i206, %bb.at ], [ %i.mb, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE9push_backES7_.exit.i.i.i.i204 ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store ptr %i.mf, ptr %i.v, align 8
  store ptr %i.lm, ptr %i.me, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit208

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit208: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectEEEEEEvRT_RKNSJ_17const_or_values_tE.exit199, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE12RecordValuesEPNS2_5BlockERNS5_9BlockDataERKSt5tupleIJNS2_1VIS4_EEEE.exit.i.i205
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.877") align 4 %26, ptr noundef nonnull align 8 dereferenceable(105) %13, ptr noundef nonnull align 8 dereferenceable(920) %i.ei, ptr null)
  %.sroa.075.0.copyload = load i32, ptr %26, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  ret i32 %.sroa.075.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE31WasmCallBuiltinThroughJumptableINS2_21BuiltinCallDescriptor27WasmInt32ToSharedHeapNumberEEENS2_6detail12IndexTypeForINT_9results_tEE4typeERKNSK_11arguments_tEQntsrTL0__13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %3 = alloca %"class.v8::base::SmallVector.889", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.d = load i32, ptr %1, align 4, !noalias !659
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !alias.scope !659
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !659
  store i32 %i.d, ptr %i.e, align 8, !alias.scope !659
  store ptr %i.h, ptr %i.f, align 8, !alias.scope !659
  %i.i = getelementptr inbounds i8, ptr %0, i64 -728
  %i.j = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i8 noundef zeroext 12, i64 noundef 1318)
  %.pre = load ptr, ptr %3, align 8               ; 2 uses
  %.pre10 = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 -736
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !7
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
  %i.u = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.t, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %i.n, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit
  %i.x = ptrtoint ptr %.pre10 to i64
  %i.y = ptrtoint ptr %.pre to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = getelementptr inbounds i8, ptr %0, i64 -728
  %i.ac = call i32 @_ZN2v88internal8compiler10turboshaft23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE10ReduceCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i32 %i.j, i32 -1, ptr %.pre, i64 %i.aa, ptr noundef %i.u, i32 155664)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit, %bb.b
  %.sroa.011.0.i.i = phi i32 [ %i.ac, %bb.b ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit
  %.sroa.07.0 = phi i32 [ %.sroa.011.0.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit ], [ -1, %bb.a ]
  ret i32 %.sroa.07.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE31WasmCallBuiltinThroughJumptableINS2_21BuiltinCallDescriptor21WasmInt32ToHeapNumberEEENS2_6detail12IndexTypeForINT_9results_tEE4typeERKNSK_11arguments_tEQntsrTL0__13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %3 = alloca %"class.v8::base::SmallVector.889", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.d = load i32, ptr %1, align 4, !noalias !675
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !alias.scope !675
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !675
  store i32 %i.d, ptr %i.e, align 8, !alias.scope !675
  store ptr %i.h, ptr %i.f, align 8, !alias.scope !675
  %i.i = getelementptr inbounds i8, ptr %0, i64 -728
  %i.j = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i8 noundef zeroext 12, i64 noundef 1317)
  %.pre = load ptr, ptr %3, align 8               ; 2 uses
  %.pre10 = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 -736
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !7
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
  %i.u = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.t, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %i.n, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit
  %i.x = ptrtoint ptr %.pre10 to i64
  %i.y = ptrtoint ptr %.pre to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = getelementptr inbounds i8, ptr %0, i64 -728
  %i.ac = call i32 @_ZN2v88internal8compiler10turboshaft23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE10ReduceCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i32 %i.j, i32 -1, ptr %.pre, i64 %i.aa, ptr noundef %i.u, i32 155664)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit, %bb.b
  %.sroa.011.0.i.i = phi i32 [ %i.ac, %bb.b ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit
  %.sroa.07.0 = phi i32 [ %.sroa.011.0.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit ], [ -1, %bb.a ]
  ret i32 %.sroa.07.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE6TagSmiENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 4294967296
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds i8, ptr %0, i64 -728
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 noundef zeroext 0, i64 noundef %i.e)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ -1, %bb.b ], [ %i.g, %bb.c ], [ %2, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
  %i.k = getelementptr inbounds i8, ptr %0, i64 -728 ; 2 uses
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i32 %.sroa.0.0.i, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 0, i8 1)
  %.pr = load ptr, ptr %i.h, align 8
  %i.m = icmp eq ptr %.pr, null
  br i1 %i.m, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %bb.d
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext 0, i64 noundef 32)
  %.pr17.a = load ptr, ptr %i.h, align 8
  %i.o = icmp eq ptr %.pr17.a, null
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %3 = getelementptr inbounds i8, ptr %0, i64 -728 ; 2 uses
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_7ShiftOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 %i.l, i32 %i.n, i8 noundef zeroext 3, i8 1)
  %.pr20.pr = load ptr, ptr %i.h, align 8
  %i.q = icmp eq ptr %.pr20.pr, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, label %bb.e, !prof !61

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit
  %i.r = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESH_NSF_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 %i.p, i8 1, i8 4, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, %bb.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit, %bb.e
  %.sroa.06.0.i.i.i = phi i32 [ %i.r, %bb.e ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSF_INSG_ILm32EEEjEE.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ], [ -1, %bb.d ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit ]
  ret i32 %.sroa.06.0.i.i.i
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

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
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !676

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
  br i1 %i.ak, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !677

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
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft23WasmInJSInliningReducerINS2_19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE10ReduceCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i32 %2, ptr %3, i64 %4, ptr noundef %5, i32 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, ptr %3, i64 %4, ptr noundef nonnull %5, i32 %6) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.4.0.extract.trunc21.i.i.i.i = or i32 %6, 262144
  %i.g = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.c)
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit: ; preds = %bb.b, %bb.c
  %.sroa.4.0.i.i.i.i = phi i32 [ %.sroa.4.0.extract.trunc21.i.i.i.i, %bb.c ], [ %6, %bb.b ]
  %.0.i.i.i.i = phi i1 [ %i.g, %bb.c ], [ false, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4.0.insert.ext.i.i.i.i = and i32 %.sroa.4.0.i.i.i.i, 16711680
  %i.i = and i32 %6, -16711681
  %.sroa.018.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.4.0.insert.ext.i.i.i.i, %i.i
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.c, i1 noundef zeroext %.0.i.i.i.i, ptr noundef nonnull %i.h, i32 %.sroa.018.0.insert.insert.i.i.i.i)
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 681), align 1, !range !11, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.b, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE12DecodeI64GeSEPSK_NS1_10WasmOpcodeE:bb.a

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7BailoutEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(312) %0)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 -1, ptr %i.x, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_llENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_llENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE12DecodeI64GeUEPSK_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.d, 2
  %.not.i.i.i.i = icmp ugt i32 %i.n, %i.m
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 2) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.g, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.q = getelementptr i8, ptr %i.p, i64 -16      ; 2 uses
  store ptr %i.q, ptr %i.f, align 8
  store i64 -4294961648, ptr %i.q, align 4
  %i.r = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.s, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.u = load i8, ptr %i.t, align 8, !range !11, !noundef !6
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_llENS1_10WasmOpcodeE.exit, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7BailoutEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(312) %0)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 -1, ptr %i.x, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_llENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_llENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11DecodeF32EqEPSK_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.d, 2
  %.not.i.i.i.i = icmp ugt i32 %i.n, %i.m
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 2) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.g, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16      ; 3 uses
  store ptr %i.q, ptr %i.f, align 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.03.0.copyload.i11.i.i = load i64, ptr %i.r, align 4
  store i64 -4294961648, ptr %i.q, align 4
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 896
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %.sroa.4.12.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i11.i.i, 32
  %.sroa.4.12.extract.trunc.i.i = trunc nuw i64 %.sroa.4.12.extract.shift.i.i to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %.sroa.0.4.extract.trunc.i.i, i32 %.sroa.4.12.extract.trunc.i.i, i8 noundef zeroext 0, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit

_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0451.0.i = phi i32 [ %i.ad, %bb.d ], [ -1, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.sroa.0451.0.i, ptr %i.ae, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11DecodeF32NeEPSK_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.d, 2
  %.not.i.i.i.i = icmp ugt i32 %i.n, %i.m
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 2) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.g, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16      ; 3 uses
  store ptr %i.q, ptr %i.f, align 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.03.0.copyload.i11.i.i = load i64, ptr %i.r, align 4
  store i64 -4294961648, ptr %i.q, align 4
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 896 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i731.i, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i731.i: ; preds = %bb.c
  %.sroa.4.12.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i11.i.i, 32
  %.sroa.4.12.extract.trunc.i.i = trunc nuw i64 %.sroa.4.12.extract.shift.i.i to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %.sroa.0.4.extract.trunc.i.i, i32 %.sroa.4.12.extract.trunc.i.i, i8 noundef zeroext 0, i8 2)
  %.pr1557.i = load ptr, ptr %i.z, align 8
  %i.ae = icmp eq ptr %.pr1557.i, null
  br i1 %i.ae, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i734.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i734.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i731.i
  %i.af = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i8 noundef zeroext 0, i64 noundef 0)
  %.pr1560.i = load ptr, ptr %i.z, align 8
  %i.ag = icmp eq ptr %.pr1560.i, null
  br i1 %i.ag, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %bb.d, !prof !61

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i734.i
  %i.ah = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %i.ad, i32 %i.af, i8 noundef zeroext 0, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit

_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i731.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i734.i, %bb.d
  %.sroa.0451.0.i = phi i32 [ -1, %bb.c ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i731.i ], [ %i.ah, %bb.d ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i734.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.sroa.0451.0.i, ptr %i.ai, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11DecodeF32LtEPSK_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.d, 2
  %.not.i.i.i.i = icmp ugt i32 %i.n, %i.m
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 2) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.g, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16      ; 3 uses
  store ptr %i.q, ptr %i.f, align 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.03.0.copyload.i11.i.i = load i64, ptr %i.r, align 4
  store i64 -4294961648, ptr %i.q, align 4
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 896
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %.sroa.4.12.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i11.i.i, 32
  %.sroa.4.12.extract.trunc.i.i = trunc nuw i64 %.sroa.4.12.extract.shift.i.i to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %.sroa.0.4.extract.trunc.i.i, i32 %.sroa.4.12.extract.trunc.i.i, i8 noundef zeroext 1, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit

_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0451.0.i = phi i32 [ %i.ad, %bb.d ], [ -1, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.sroa.0451.0.i, ptr %i.ae, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11DecodeF32GtEPSK_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.d, 2
  %.not.i.i.i.i = icmp ugt i32 %i.n, %i.m
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 2) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.g, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16      ; 3 uses
  store ptr %i.q, ptr %i.f, align 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.03.0.copyload.i11.i.i = load i64, ptr %i.r, align 4
  store i64 -4294961648, ptr %i.q, align 4
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 896
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %.sroa.4.12.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i11.i.i, 32
  %.sroa.4.12.extract.trunc.i.i = trunc nuw i64 %.sroa.4.12.extract.shift.i.i to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %.sroa.4.12.extract.trunc.i.i, i32 %.sroa.0.4.extract.trunc.i.i, i8 noundef zeroext 1, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit

_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0451.0.i = phi i32 [ %i.ad, %bb.d ], [ -1, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.sroa.0451.0.i, ptr %i.ae, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11DecodeF32LeEPSK_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.d, 2
  %.not.i.i.i.i = icmp ugt i32 %i.n, %i.m
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 2) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.g, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16      ; 3 uses
  store ptr %i.q, ptr %i.f, align 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.03.0.copyload.i11.i.i = load i64, ptr %i.r, align 4
  store i64 -4294961648, ptr %i.q, align 4
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 896
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %.sroa.4.12.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i11.i.i, 32
  %.sroa.4.12.extract.trunc.i.i = trunc nuw i64 %.sroa.4.12.extract.shift.i.i to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %.sroa.0.4.extract.trunc.i.i, i32 %.sroa.4.12.extract.trunc.i.i, i8 noundef zeroext 2, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit

_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0451.0.i = phi i32 [ -1, %bb.c ], [ %i.ad, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.sroa.0451.0.i, ptr %i.ae, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11DecodeF32GeEPSK_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.d, 2
  %.not.i.i.i.i = icmp ugt i32 %i.n, %i.m
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 2) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.g, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16      ; 3 uses
  store ptr %i.q, ptr %i.f, align 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.03.0.copyload.i11.i.i = load i64, ptr %i.r, align 4
  store i64 -4294961648, ptr %i.q, align 4
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 896
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %.sroa.4.12.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i11.i.i, 32
  %.sroa.4.12.extract.trunc.i.i = trunc nuw i64 %.sroa.4.12.extract.shift.i.i to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %.sroa.4.12.extract.trunc.i.i, i32 %.sroa.0.4.extract.trunc.i.i, i8 noundef zeroext 2, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit

_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0451.0.i = phi i32 [ -1, %bb.c ], [ %i.ad, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.sroa.0451.0.i, ptr %i.ae, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ffENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11DecodeF64EqEPSK_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.d, 2
  %.not.i.i.i.i = icmp ugt i32 %i.n, %i.m
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 2) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.g, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16      ; 3 uses
  store ptr %i.q, ptr %i.f, align 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.03.0.copyload.i11.i.i = load i64, ptr %i.r, align 4
  store i64 -4294961648, ptr %i.q, align 4
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ddENS1_10WasmOpcodeE.exit, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 896
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %.sroa.4.12.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i11.i.i, 32
  %.sroa.4.12.extract.trunc.i.i = trunc nuw i64 %.sroa.4.12.extract.shift.i.i to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %.sroa.0.4.extract.trunc.i.i, i32 %.sroa.4.12.extract.trunc.i.i, i8 noundef zeroext 0, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit

_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0451.0.i = phi i32 [ -1, %bb.c ], [ %i.ad, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.sroa.0451.0.i, ptr %i.ae, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ddENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ddENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11DecodeF64NeEPSK_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.d, 2
  %.not.i.i.i.i = icmp ugt i32 %i.n, %i.m
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 2) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.g, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16      ; 3 uses
  store ptr %i.q, ptr %i.f, align 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.03.0.copyload.i11.i.i = load i64, ptr %i.r, align 4
  store i64 -4294961648, ptr %i.q, align 4
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ddENS1_10WasmOpcodeE.exit, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 896 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %.sroa.4.12.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i11.i.i, 32
  %.sroa.4.12.extract.trunc.i.i = trunc nuw i64 %.sroa.4.12.extract.shift.i.i to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %.sroa.0.4.extract.trunc.i.i, i32 %.sroa.4.12.extract.trunc.i.i, i8 noundef zeroext 0, i8 3)
  %.pr1563.i = load ptr, ptr %i.z, align 8
  %i.ae = icmp eq ptr %.pr1563.i, null
  br i1 %i.ae, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i858.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i858.i: ; preds = %bb.d
  %i.af = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i8 noundef zeroext 0, i64 noundef 0)
  %.pr1566.i = load ptr, ptr %i.z, align 8
  %i.ag = icmp eq ptr %.pr1566.i, null
  br i1 %i.ag, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %bb.e, !prof !61

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i858.i
  %i.ah = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %i.ad, i32 %i.af, i8 noundef zeroext 0, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit

_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit: ; preds = %bb.c, %bb.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i858.i, %bb.e
  %.sroa.0451.0.i = phi i32 [ %i.ah, %bb.e ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i858.i ], [ -1, %bb.c ], [ -1, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.sroa.0451.0.i, ptr %i.ai, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ddENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ddENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11DecodeF64LtEPSK_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.d, 2
  %.not.i.i.i.i = icmp ugt i32 %i.n, %i.m
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 2) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.g, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16      ; 3 uses
  store ptr %i.q, ptr %i.f, align 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.03.0.copyload.i11.i.i = load i64, ptr %i.r, align 4
  store i64 -4294961648, ptr %i.q, align 4
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ddENS1_10WasmOpcodeE.exit, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 896
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %.sroa.4.12.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i11.i.i, 32
  %.sroa.4.12.extract.trunc.i.i = trunc nuw i64 %.sroa.4.12.extract.shift.i.i to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %.sroa.0.4.extract.trunc.i.i, i32 %.sroa.4.12.extract.trunc.i.i, i8 noundef zeroext 1, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit

_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0451.0.i = phi i32 [ %i.ad, %bb.d ], [ -1, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.sroa.0451.0.i, ptr %i.ae, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ddENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ddENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11DecodeF64GtEPSK_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.d, 2
  %.not.i.i.i.i = icmp ugt i32 %i.n, %i.m
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 2) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.g, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16      ; 3 uses
  store ptr %i.q, ptr %i.f, align 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.03.0.copyload.i11.i.i = load i64, ptr %i.r, align 4
  store i64 -4294961648, ptr %i.q, align 4
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ddENS1_10WasmOpcodeE.exit, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 896
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %.sroa.4.12.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i11.i.i, 32
  %.sroa.4.12.extract.trunc.i.i = trunc nuw i64 %.sroa.4.12.extract.shift.i.i to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %.sroa.4.12.extract.trunc.i.i, i32 %.sroa.0.4.extract.trunc.i.i, i8 noundef zeroext 1, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit

_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0451.0.i = phi i32 [ %i.ad, %bb.d ], [ -1, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.sroa.0451.0.i, ptr %i.ae, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ddENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ddENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11DecodeF64LeEPSK_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.d, 2
  %.not.i.i.i.i = icmp ugt i32 %i.n, %i.m
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 2) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.g, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16      ; 3 uses
  store ptr %i.q, ptr %i.f, align 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.03.0.copyload.i11.i.i = load i64, ptr %i.r, align 4
  store i64 -4294961648, ptr %i.q, align 4
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_ddENS1_10WasmOpcodeE.exit, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESM_EQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 896
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %.sroa.4.12.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i11.i.i, 32
  %.sroa.4.12.extract.trunc.i.i = trunc nuw i64 %.sroa.4.12.extract.shift.i.i to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i32 %.sroa.0.4.extract.trunc.i.i, i32 %.sroa.4.12.extract.trunc.i.i, i8 noundef zeroext 2, i8 3)
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9BinOpImplEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEENSF_10WasmOpcodeENS2_7OpIndexESN_:bb.a
  br i1 %i.gh, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.ag, !prof !5

bb.ag:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i682
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gj = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12FloatBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.gi, i32 %3, i32 %4, i8 noundef zeroext 4, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i693: ; preds = %bb.a
  %i.gk = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 896
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.ah, !prof !5

bb.ah:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i693
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gp = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12FloatBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.go, i32 %3, i32 %4, i8 noundef zeroext 1, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i704: ; preds = %bb.a
  %i.gq = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 896
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.ai, !prof !5

bb.ai:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i704
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gv = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12FloatBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.gu, i32 %3, i32 %4, i8 noundef zeroext 5, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i715: ; preds = %bb.a
  %i.gw = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 896
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.aj, !prof !5

bb.aj:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i715
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.hb = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ha, i32 %3, i32 %4, i8 noundef zeroext 0, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i726: ; preds = %bb.a
  %i.hc = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 896 ; 3 uses
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i731, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i731: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i726
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 32 ; 3 uses
  %i.hh = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hg, i32 %3, i32 %4, i8 noundef zeroext 0, i8 2)
  %.pr1557 = load ptr, ptr %i.hd, align 8
  %i.hi = icmp eq ptr %.pr1557, null
  br i1 %i.hi, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i734, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i734: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i731
  %i.hj = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hg, i8 noundef zeroext 0, i64 noundef 0)
  %.pr1560 = load ptr, ptr %i.hd, align 8
  %i.hk = icmp eq ptr %.pr1560, null
  br i1 %i.hk, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.ak, !prof !61

bb.ak:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i734
  %i.hl = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hg, i32 %i.hh, i32 %i.hj, i8 noundef zeroext 0, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i746: ; preds = %bb.a
  %i.hm = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 896
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.al, !prof !5

bb.al:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i746
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.hr = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hq, i32 %3, i32 %4, i8 noundef zeroext 1, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i757: ; preds = %bb.a
  %i.hs = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 896
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.am, !prof !5

bb.am:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i757
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hx = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hw, i32 %3, i32 %4, i8 noundef zeroext 2, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i768: ; preds = %bb.a
  %i.hy = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 896
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.an, !prof !5

bb.an:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i768
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.id = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ic, i32 %4, i32 %3, i8 noundef zeroext 1, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i780: ; preds = %bb.a
  %i.ie = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 896
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.ao, !prof !5

bb.ao:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i780
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ij = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ii, i32 %4, i32 %3, i8 noundef zeroext 2, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i792: ; preds = %bb.a
  %i.ik = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 896
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.ap, !prof !5

bb.ap:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i792
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.ip = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12FloatBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.io, i32 %4, i32 %3, i8 noundef zeroext 2, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i803: ; preds = %bb.a
  %i.iq = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 896
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.aq, !prof !5

bb.aq:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i803
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.iv = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12FloatBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.iu, i32 %4, i32 %3, i8 noundef zeroext 3, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i: ; preds = %bb.a
  %i.iw = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 896
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.ar, !prof !5

bb.ar:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.jb = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12FloatBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ja, i32 %3, i32 %4, i8 noundef zeroext 0, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i812: ; preds = %bb.a
  %i.jc = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 896
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.as, !prof !5

bb.as:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i812
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.jh = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12FloatBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.jg, i32 %3, i32 %4, i8 noundef zeroext 4, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i821: ; preds = %bb.a
  %i.ji = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 896
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.at, !prof !5

bb.at:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i821
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jn = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12FloatBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.jm, i32 %3, i32 %4, i8 noundef zeroext 1, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i830: ; preds = %bb.a
  %i.jo = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 896
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.au, !prof !5

bb.au:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i830
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jt = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12FloatBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.js, i32 %3, i32 %4, i8 noundef zeroext 5, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i839: ; preds = %bb.a
  %i.ju = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 896
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.av, !prof !5

bb.av:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i839
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.jz = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.jy, i32 %3, i32 %4, i8 noundef zeroext 0, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i848: ; preds = %bb.a
  %i.ka = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 896 ; 3 uses
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.aw, !prof !5

bb.aw:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i848
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 32 ; 2 uses
  %i.kf = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ke, i32 %3, i32 %4, i8 noundef zeroext 0, i8 3)
  %.pr1563 = load ptr, ptr %i.kb, align 8
  %i.kg = icmp eq ptr %.pr1563, null
  br i1 %i.kg, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i858, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i858: ; preds = %bb.aw
  %i.kh = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ke, i8 noundef zeroext 0, i64 noundef 0)
  %.pr1566 = load ptr, ptr %i.kb, align 8
  %i.ki = icmp eq ptr %.pr1566, null
  br i1 %i.ki, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.ax, !prof !61

bb.ax:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i858
  %5 = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kj = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %5, i32 %i.kf, i32 %i.kh, i8 noundef zeroext 0, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i866: ; preds = %bb.a
  %i.kk = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 896
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.ay, !prof !5

bb.ay:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i866
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.kp = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ko, i32 %3, i32 %4, i8 noundef zeroext 1, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i875: ; preds = %bb.a
  %i.kq = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 896
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.az, !prof !5

bb.az:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i875
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.kv = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ku, i32 %3, i32 %4, i8 noundef zeroext 2, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i884: ; preds = %bb.a
  %i.kw = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 896
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.ba, !prof !5

bb.ba:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i884
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.lb = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.la, i32 %4, i32 %3, i8 noundef zeroext 1, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i894: ; preds = %bb.a
  %i.lc = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 896
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.bb, !prof !5

bb.bb:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i894
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.lh = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.lg, i32 %4, i32 %3, i8 noundef zeroext 2, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i904: ; preds = %bb.a
  %i.li = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 896
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.bc, !prof !5

bb.bc:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i904
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.ln = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12FloatBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.lm, i32 %3, i32 %4, i8 noundef zeroext 2, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i913: ; preds = %bb.a
  %i.lo = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 896
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.bd, !prof !5

bb.bd:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i913
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %i.lt = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12FloatBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ls, i32 %3, i32 %4, i8 noundef zeroext 3, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

bb.be:                                            ; preds = %bb.a
  %i.lu = load ptr, ptr %0, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 896
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = icmp eq ptr %i.lw, null
  br i1 %i.lx, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.bf, !prof !5

bb.bf:                                            ; preds = %bb.be
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.lz = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ly, i32 %3, i32 %4, i8 noundef zeroext 0, i8 4)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

bb.bg:                                            ; preds = %bb.a
  tail call void @_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7BailoutEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i848, %bb.aw, %bb.n, %bb.l, %bb.j, %bb.h, %bb.bd, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i913, %bb.bc, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i904, %bb.bb, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i894, %bb.ba, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i884, %bb.az, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i875, %bb.ay, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i866, %bb.av, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i839, %bb.au, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i830, %bb.at, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i821, %bb.as, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i812, %bb.ar, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i726, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i731, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i659, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i558, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i563, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i536, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i521, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i506, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i491, %bb.bf, %bb.be, %bb.ax, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i858, %bb.aq, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i803, %bb.ap, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i792, %bb.ao, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i780, %bb.an, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i768, %bb.am, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i757, %bb.al, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i746, %bb.ak, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i734, %bb.aj, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i715, %bb.ai, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i704, %bb.ah, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i693, %bb.ag, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i682, %bb.af, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i, %bb.ae, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i664, %bb.ab, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i626, %bb.aa, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i618, %bb.z, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i610, %bb.y, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i602, %bb.x, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i595, %bb.w, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i588, %bb.v, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i581, %bb.u, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i574, %bb.t, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i566, %bb.s, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i551, %bb.o, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i544, %bb.m, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i529, %bb.k, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i514, %bb.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i499, %bb.g, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i484, %bb.f, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i477, %bb.e, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i470, %bb.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i463, %bb.c, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i456, %bb.b, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, %bb.bg, %bb.r, %bb.q
  %.sroa.0451.0 = phi i32 [ -1, %bb.bg ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i858 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i456 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i463 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i470 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i477 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i484 ], [ -1, %bb.be ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i491 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i506 ], [ %i.ch, %bb.q ], [ %i.cj, %bb.r ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i521 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i551 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i536 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i574 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i581 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i588 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i595 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i602 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i610 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i618 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i626 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i558 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i682 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i693 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i704 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i715 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i659 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i746 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i757 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i768 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i780 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i792 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i726 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i812 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i821 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i830 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm32EEEfEE.exit10.i803 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i839 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i866 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i875 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i884 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i894 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i904 ], [ %i.f, %bb.b ], [ %i.l, %bb.c ], [ %i.r, %bb.d ], [ %i.x, %bb.e ], [ %i.ad, %bb.f ], [ %i.aj, %bb.g ], [ %i.au, %bb.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i499 ], [ %i.bf, %bb.k ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i514 ], [ %i.bq, %bb.m ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i529 ], [ %i.cb, %bb.o ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i544 ], [ %i.cp, %bb.s ], [ %i.cz, %bb.t ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i566 ], [ %i.df, %bb.u ], [ %i.dl, %bb.v ], [ %i.dr, %bb.w ], [ %i.dx, %bb.x ], [ %i.ed, %bb.y ], [ %i.ej, %bb.z ], [ %i.ep, %bb.aa ], [ %i.ev, %bb.ab ], [ %i.fx, %bb.ae ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i664 ], [ %i.gd, %bb.af ], [ %i.gj, %bb.ag ], [ %i.gp, %bb.ah ], [ %i.gv, %bb.ai ], [ %i.hb, %bb.aj ], [ %i.hl, %bb.ak ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i734 ], [ %i.hr, %bb.al ], [ %i.hx, %bb.am ], [ %i.id, %bb.an ], [ %i.ij, %bb.ao ], [ %i.ip, %bb.ap ], [ %i.iv, %bb.aq ], [ %i.kj, %bb.ax ], [ %i.lz, %bb.bf ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i563 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i731 ], [ %i.jb, %bb.ar ], [ %i.jh, %bb.as ], [ %i.jn, %bb.at ], [ %i.jt, %bb.au ], [ %i.jz, %bb.av ], [ %i.kp, %bb.ay ], [ %i.kv, %bb.az ], [ %i.lb, %bb.ba ], [ %i.lh, %bb.bb ], [ %i.ln, %bb.bc ], [ %i.lt, %bb.bd ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i913 ], [ -1, %bb.n ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %bb.l ], [ -1, %bb.aw ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit7.i848 ]
  ret i32 %.sroa.0451.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1, i32 %2, i64 %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 4294967296
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds i8, ptr %0, i64 -728
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 noundef zeroext 0, i64 noundef %i.e)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ -1, %bb.b ], [ %i.g, %bb.c ], [ %2, %bb.a ]
  %i.h = and i64 %3, 4294967296
  %.not19 = icmp eq i64 %i.h, 0
  br i1 %.not19, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %3, 4294967295
  %i.m = getelementptr inbounds i8, ptr %0, i64 -728
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, i8 noundef zeroext 0, i64 noundef %i.l)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, %bb.d, %bb.e
  %.sroa.0.0.i8 = phi i32 [ -1, %bb.d ], [ %i.n, %bb.e ], [ %4, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableWordBinopIJNS2_1VINS2_12WordWithBitsILm32EEEEESJ_NS2_11WordBinopOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9
  %i.r = getelementptr inbounds i8, ptr %0, i64 -728
  %i.s = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, i32 %.sroa.0.0.i, i32 %.sroa.0.0.i8, i8 noundef zeroext 4, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableWordBinopIJNS2_1VINS2_12WordWithBitsILm32EEEEESJ_NS2_11WordBinopOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableWordBinopIJNS2_1VINS2_12WordWithBitsILm32EEEEESJ_NS2_11WordBinopOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9, %bb.f
  %.sroa.06.0.i = phi i32 [ %i.s, %bb.f ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9 ]
  ret i32 %.sroa.06.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE17Word32RotateRightENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1, i32 %2, i64 %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 4294967296
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds i8, ptr %0, i64 -728
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 noundef zeroext 0, i64 noundef %i.e)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ -1, %bb.b ], [ %i.g, %bb.c ], [ %2, %bb.a ]
  %i.h = and i64 %3, 4294967296
  %.not19 = icmp eq i64 %i.h, 0
  br i1 %.not19, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %3, 4294967295
  %i.m = getelementptr inbounds i8, ptr %0, i64 -728
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, i8 noundef zeroext 0, i64 noundef %i.l)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, %bb.d, %bb.e
  %.sroa.0.0.i8 = phi i32 [ -1, %bb.d ], [ %i.n, %bb.e ], [ %4, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ReduceIfReachableShiftIJNS2_1VINS2_12WordWithBitsILm32EEEEESJ_NS2_7ShiftOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9
  %i.r = getelementptr inbounds i8, ptr %0, i64 -728
  %i.s = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_7ShiftOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, i32 %.sroa.0.0.i, i32 %.sroa.0.0.i8, i8 noundef zeroext 4, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ReduceIfReachableShiftIJNS2_1VINS2_12WordWithBitsILm32EEEEESJ_NS2_7ShiftOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ReduceIfReachableShiftIJNS2_1VINS2_12WordWithBitsILm32EEEEESJ_NS2_7ShiftOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9, %bb.f
  %.sroa.06.0.i = phi i32 [ %i.s, %bb.f ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9 ]
  ret i32 %.sroa.06.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE16Word32RotateLeftENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1, i32 %2, i64 %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 4294967296
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds i8, ptr %0, i64 -728
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 noundef zeroext 0, i64 noundef %i.e)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ -1, %bb.b ], [ %i.g, %bb.c ], [ %2, %bb.a ]
  %i.h = and i64 %3, 4294967296
  %.not19 = icmp eq i64 %i.h, 0
  br i1 %.not19, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %3, 4294967295
  %i.m = getelementptr inbounds i8, ptr %0, i64 -728
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, i8 noundef zeroext 0, i64 noundef %i.l)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, %bb.d, %bb.e
  %.sroa.0.0.i8 = phi i32 [ -1, %bb.d ], [ %i.n, %bb.e ], [ %4, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ReduceIfReachableShiftIJNS2_1VINS2_12WordWithBitsILm32EEEEESJ_NS2_7ShiftOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9
  %i.r = getelementptr inbounds i8, ptr %0, i64 -728
  %i.s = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_7ShiftOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, i32 %.sroa.0.0.i, i32 %.sroa.0.0.i8, i8 noundef zeroext 5, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ReduceIfReachableShiftIJNS2_1VINS2_12WordWithBitsILm32EEEEESJ_NS2_7ShiftOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ReduceIfReachableShiftIJNS2_1VINS2_12WordWithBitsILm32EEEEESJ_NS2_7ShiftOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9, %bb.f
  %.sroa.06.0.i = phi i32 [ %i.s, %bb.f ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9 ]
  ret i32 %.sroa.06.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12FloatBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i8 noundef zeroext %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12FloatBinopOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_19FloatRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, !prof !5

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
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12FloatBinopOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_19FloatRepresentationEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_12FloatBinopOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_19FloatRepresentationEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi15 = phi i64 [ %i.i, %bb.a ], [ %.pre14, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 8 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft19WasmLoweringReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerES3_S6_EEEEEEEEEEEE33ReduceStringPrepareForGetCodeUnitENS2_1VINS0_6ObjectEEE:bb.a
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
  store ptr %i.hk, ptr %32, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 2 uses
  store ptr %i.hs, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %i.hs, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %32, i64 64
  store ptr %i.hv, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %32, i64 72
  store ptr null, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %32, i64 80
  store i8 0, ptr %i.hx, align 8
  %.sroa.053.0.copyload = load i32, ptr %i.gl, align 4
  %i.hy = load ptr, ptr %i.eu, align 8
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i196, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i181, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i181: ; preds = %bb.i
  %i.ia = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 7)
  %.pr546 = load ptr, ptr %i.eu, align 8
  %i.ib = icmp eq ptr %.pr546, null
  br i1 %i.ib, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i196, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i186, !prof !603

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i186: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i181
  %i.ic = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.053.0.copyload, i32 %i.ia, i8 noundef zeroext 4, i8 0)
  %.pr548 = load ptr, ptr %i.eu, align 8
  %i.id = icmp eq ptr %.pr548, null
  br i1 %i.id, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i196, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i189, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i189: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i186
  %i.ie = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 2)
  %.pr551.pr = load ptr, ptr %i.eu, align 8
  %i.if = icmp eq ptr %.pr551.pr, null
  br i1 %i.if, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i196, label %bb.j, !prof !61

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i189
  %i.ig = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.ic, i32 %i.ie, i8 noundef zeroext 0, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i196

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i196: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i181, %bb.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i186, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i189, %bb.j
  %.sroa.06.0.i.i191 = phi i32 [ %i.ig, %bb.j ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i189 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i186 ], [ -1, %bb.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i181 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJEE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(920) %i.ey, i32 %.sroa.06.0.i.i191, i8 noundef zeroext 0, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @_ZN2v88internal8compiler13AccessBuilder28ForSeqOneByteStringCharacterEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::ElementAccess") align 8 %33) #22
  %i.ih = getelementptr inbounds nuw i8, ptr %33, i64 4
  %i.ii = load i32, ptr %i.ih, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.ij = load ptr, ptr %i.eu, align 8
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread614, label %bb.k, !prof !5

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i196
  %.sroa.040.0.copyload = load i32, ptr %31, align 4
  %i.il = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_7ShiftOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.040.0.copyload, i32 %.sroa.06.0.i.i174, i8 noundef zeroext 3, i8 0)
  %.pr554 = load ptr, ptr %i.eu, align 8
  %i.im = icmp eq ptr %.pr554, null
  br i1 %i.im, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread614, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i203, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i203: ; preds = %bb.k
  %i.in = add nsw i32 %i.ii, -1
  %.sroa.0374.0.insert.ext = zext i32 %i.in to i64
  %i.io = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef %.sroa.0374.0.insert.ext)
  %.pr559 = load ptr, ptr %i.eu, align 8
  %i.ip = icmp eq ptr %.pr559, null
  br i1 %i.ip, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i203
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  br label %bb.m

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread614: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i196, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  br label %bb.m

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i203
  %i.iq = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.io, i32 %i.il, i8 noundef zeroext 0, i8 0)
  %.pr562.pr = load ptr, ptr %i.eu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %i.ir = icmp eq ptr %.pr562.pr, null
  br i1 %i.ir, label %bb.m, label %bb.l, !prof !61

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit
  %i.is = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.iq, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 0, i8 1)
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread614, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, %bb.l
  %.sroa.07.0.i.i.i = phi i32 [ %i.is, %bb.l ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9Word32AddENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit.thread614 ]
  %i.it = getelementptr inbounds nuw i8, ptr %34, i64 4
  store i8 0, ptr %i.it, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 %.sroa.06.0.i.i174, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %34, i64 24
  store i8 0, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i32 %.sroa.07.0.i.i.i, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %34, i64 40
  %i.iy = load i32, ptr %i.gk, align 4
  store i32 %i.iy, ptr %i.ix, align 8
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvRT_RKNSM_17const_or_values_tE(ptr noundef nonnull align 1 dereferenceable(1) %i.er, ptr noundef nonnull align 8 dereferenceable(169) %20, ptr noundef nonnull align 8 dereferenceable(44) %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.844") align 1 %35, ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(920) %i.ey, ptr null)
  %.sroa.026.0.copyload = load i32, ptr %i.gl, align 4
  %i.iz = load ptr, ptr %i.eu, align 8
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212: ; preds = %bb.m
  %i.jb = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 16)
  %.pr564 = load ptr, ptr %i.eu, align 8
  %i.jc = icmp eq ptr %.pr564, null
  br i1 %i.jc, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread, !prof !603

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212, %bb.m
  %i.jd = load i32, ptr %i.gk, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212
  %i.je = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.026.0.copyload, i32 %i.jb, i8 noundef zeroext 4, i8 0) ; 3 uses
  %.pre = load ptr, ptr %i.eu, align 8, !noalias !951
  %i.jf = icmp eq ptr %.pre, null
  %i.jg = load i32, ptr %i.gk, align 4            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !964)
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  br i1 %i.jf, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread
  %i.jh = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 1, i64 noundef 0), !noalias !951 ; 2 uses
  %.pr566 = load ptr, ptr %i.eu, align 8, !noalias !951
  %i.ji = icmp eq ptr %.pr566, null
  br i1 %i.ji, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit, label %bb.n, !prof !61

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i
  %i.jj = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 3), !noalias !951
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i, %bb.n
  %i.jk = phi i32 [ %i.jg, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i ], [ %i.jg, %bb.n ], [ %i.jg, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread ], [ %i.jd, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread.thread ]
  %.sroa.06.0.i.i214642 = phi i32 [ %i.je, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i ], [ %i.je, %bb.n ], [ %i.je, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread.thread ]
  %.sroa.0.0.i.i.i.i.i.i.i.i218568 = phi i32 [ %i.jh, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i ], [ %i.jh, %bb.n ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread.thread ]
  %.sroa.0.0.i5.i.i.i.i.i.i.i220 = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i.i.i.i.i ], [ %i.jj, %bb.n ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i212.thread.thread ]
  store i32 %.sroa.0.0.i5.i.i.i.i.i.i.i220, ptr %13, align 4, !alias.scope !951
  %i.jl = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i218568, ptr %i.jl, align 4, !alias.scope !951
  %i.jm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %i.jk, ptr %i.jm, align 4, !alias.scope !951
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectENS2_12WordWithBitsILm64EEENS5_ILm32EEEEE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EENSP_IS6_EENSP_IS7_EEEE(ptr noundef nonnull align 8 dereferenceable(169) %20, ptr noundef nonnull align 8 dereferenceable(920) %i.ey, i32 %.sroa.06.0.i.i214642, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(12) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @_ZN2v88internal8compiler13AccessBuilder29ForExternalStringResourceDataEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %36) #22
  %i.jn = load ptr, ptr %i.eu, align 8
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i228, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i228: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %36, i64 4
  %i.jq = load i32, ptr %i.jp, align 4
  %.sroa.020.0.copyload = load i32, ptr %i.gk, align 4
  %i.jr = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.020.0.copyload, i32 -1, i8 17, i8 7, i8 1, i32 noundef %i.jq, i8 noundef zeroext 0)
  %.pr569 = load ptr, ptr %i.eu, align 8
  %i.js = icmp eq ptr %.pr569, null
  br i1 %i.js, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Word32ShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit231, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Word32ShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit231: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i228
  %.sroa.018.0.copyload = load i32, ptr %31, align 4
  %i.jt = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_7ShiftOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.018.0.copyload, i32 %.sroa.06.0.i.i174, i8 noundef zeroext 3, i8 0)
  %.pr573 = load ptr, ptr %i.eu, align 8
  %i.ju = icmp eq ptr %.pr573, null
  br i1 %i.ju, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Word32ShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit231
  %i.jv = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.jt, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 0, i8 1)
  %.pr577.pr = load ptr, ptr %i.eu, align 8
  %i.jw = icmp eq ptr %.pr577.pr, null
  br i1 %i.jw, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_GotoIfINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvNS2_17ConditionWithHintERT_RKNSN_17const_or_values_tE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i228, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE15Word32ShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit231, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %i.jx = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.jr, i32 %i.jv, i8 noundef zeroext 0, i8 1) ; 2 uses
  %.pre634 = load ptr, ptr %i.eu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %40 = icmp eq ptr %.pre634, null
  br i1 %40, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit, label %bb.o, !prof !61

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit
  %i.jy = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 4, i64 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, %bb.o
  %.sroa.06.0.i.i235644 = phi i32 [ %i.jx, %bb.o ], [ %i.jx, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread ]
  %.sroa.02.0.i.i = phi i32 [ %i.jy, %bb.o ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE10WordPtrAddENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit.thread ]
  %i.jz = getelementptr inbounds nuw i8, ptr %37, i64 4
  store i8 0, ptr %i.jz, align 4
  %i.ka = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i32 %.sroa.06.0.i.i174, ptr %i.ka, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %37, i64 24
  store i8 0, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %37, i64 32
  store i32 %.sroa.06.0.i.i235644, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %37, i64 40
  store i32 %.sroa.02.0.i.i, ptr %i.kd, align 8
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_6ObjectENS2_12WordWithBitsILm64EEENSI_ILm32EEEEEEEEvRT_RKNSM_17const_or_values_tE(ptr noundef nonnull align 1 dereferenceable(1) %i.er, ptr noundef nonnull align 8 dereferenceable(169) %20, ptr noundef nonnull align 8 dereferenceable(44) %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.hr)
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectENS2_12WordWithBitsILm64EEENS5_ILm32EEEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EENSL_IS6_EENSL_IS7_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.2028") align 4 %38, ptr noundef nonnull align 8 dereferenceable(169) %20, ptr noundef nonnull align 8 dereferenceable(920) %i.ey, ptr null)
  %i.ke = getelementptr inbounds nuw i8, ptr %38, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  %i.kf = load <2 x i32>, ptr %i.ke, align 4
  %i.kg = shufflevector <2 x i32> %i.kf, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.kg, ptr %39, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %39, i64 8
  %.sroa.0.0.copyload = load i32, ptr %38, align 4
  store i32 %.sroa.0.0.copyload, ptr %i.kh, align 8
  %i.ki = load ptr, ptr %i.eu, align 8
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleESt16initializer_listINS2_1VINS2_3AnyEEEE.exit, label %bb.p, !prof !5

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit
  %i.kk = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_11MakeTupleOpEJNS2_27ShadowyOpIndexVectorWrapperEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %39, i64 3), !inline_history !970
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleESt16initializer_listINS2_1VINS2_3AnyEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleESt16initializer_listINS2_1VINS2_3AnyEEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit, %bb.p
  %.sroa.03.0.i.i = phi i32 [ %i.kk, %bb.p ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.el)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm64EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.eh)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ed)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.db)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ct)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.br)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bn)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bj)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bf)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.af)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_12WordWithBitsILm32EEEEELm2ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(96) %i.x)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  ret i32 %.sroa.03.0.i.i

bb.q:                                             ; preds = %.lr.ph
  call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.ge)
  %.pre.i.i240 = load i64, ptr %i.gf, align 8
  br label %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit241

_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit241: ; preds = %.lr.ph, %bb.q
  %i.kl = phi i64 [ %i.gg, %.lr.ph ], [ %.pre.i.i240, %bb.q ] ; 2 uses
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
  store ptr %i.kq, ptr %22, align 8
  store ptr %i.fh, ptr %i.fg, align 8
  store ptr %i.fh, ptr %i.fi, align 8
  store ptr %i.fk, ptr %i.fj, align 8
  store ptr null, ptr %i.fl, align 8
  store i8 0, ptr %i.fm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.kx = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 88 ; 3 uses
  %i.kz = load i64, ptr %i.ky, align 8            ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 80
  %i.lb = load i64, ptr %i.la, align 8
  %i.lc = icmp eq i64 %i.kz, %i.lb
  br i1 %i.lc, label %bb.r, label %bb.s, !prof !5

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit241
  call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.kx)
  %.pre.i.i243 = load i64, ptr %i.ky, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit241, %bb.r
  %i.ld = phi i64 [ %i.kz, %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEPT_NS_14SourceLocationE.exit241 ], [ %.pre.i.i243, %bb.r ] ; 2 uses
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
  store ptr %i.li, ptr %23, align 8
  store ptr %i.fo, ptr %i.fn, align 8
  store ptr %i.fo, ptr %i.fp, align 8
  store ptr %i.fr, ptr %i.fq, align 8
  store ptr null, ptr %i.fs, align 8
  store i8 0, ptr %i.ft, align 8
  %.sroa.0130.0.copyload = load i32, ptr %i.fd, align 4
  %i.lp = load ptr, ptr %i.eu, align 8
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i257.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i249, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i249: ; preds = %bb.s
  %i.lr = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 1)
  %.pr580 = load ptr, ptr %i.eu, align 8
  %i.ls = icmp eq ptr %.pr580, null
  br i1 %i.ls, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i257.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i254, !prof !603

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i254: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i249
  %i.lt = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.0130.0.copyload, i32 %i.lr, i8 noundef zeroext 4, i8 0)
  %.pr582 = load ptr, ptr %i.eu, align 8
  %i.lu = icmp eq ptr %.pr582, null
  br i1 %i.lu, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i257.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i257, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i257: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i254
  %i.lv = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 0)
  %.pr585.pr = load ptr, ptr %i.eu, align 8
  %i.lw = icmp eq ptr %.pr585.pr, null
  br i1 %i.lw, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i257.thread, label %bb.t, !prof !61

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i257
  %i.lx = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %i.lt, i32 %i.lv, i8 noundef zeroext 0, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i257.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i257.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i249, %bb.s, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i254, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i257, %bb.t
  %.sroa.06.0.i.i259 = phi i32 [ %i.lx, %bb.t ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i257 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i254 ], [ -1, %bb.s ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i249 ]
  %i.ly = load i32, ptr %i.fc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.lz = load <2 x i32>, ptr %21, align 8
  store <2 x i32> %i.lz, ptr %12, align 8, !alias.scope !971
  store i32 %i.ly, ptr %i.fu, align 8, !alias.scope !971
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_6ObjectENS2_12WordWithBitsILm32EEES6_EE6GotoIfINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEEEvRT_NS2_7OpIndexENS0_10BranchHintERKSt5tupleIJNS2_1VIS4_EENSO_IS6_EESQ_EE(ptr noundef nonnull align 8 dereferenceable(169) %19, ptr noundef nonnull align 8 dereferenceable(920) %i.ey, i32 %.sroa.06.0.i.i259, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(12) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %.sroa.0119.0.copyload = load i32, ptr %i.fd, align 4
  %i.ma = load ptr, ptr %i.eu, align 8
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i284.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i276, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i276: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i257.thread
  %i.mc = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 7)
  %.pr588 = load ptr, ptr %i.eu, align 8
  %i.md = icmp eq ptr %.pr588, null
  br i1 %i.md, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i284.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i281, !prof !603

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i281: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i276
  %i.me = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_11WordBinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.0119.0.copyload, i32 %i.mc, i8 noundef zeroext 4, i8 0) ; 4 uses
  %.pr590 = load ptr, ptr %i.eu, align 8
  %i.mf = icmp eq ptr %.pr590, null
  br i1 %i.mf, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i284.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i284, !prof !61

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i284: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i281
  %i.mg = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext 0, i64 noundef 5)
  %.pr593.pr = load ptr, ptr %i.eu, align 8
  %i.mh = icmp eq ptr %.pr593.pr, null
  br i1 %i.mh, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i284.thread, label %bb.u, !prof !61
end_hunk_4
