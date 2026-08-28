Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wrappers?download=true
inline.NumInlined: 7185
inline.NumDeleted: 2643
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE20BuildWasmToJSWrapperENS1_14ImportCallKindEiNS1_7SuspendE:bb.a
_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit: ; preds = %bb.ar
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 32 ; 2 uses
  %i.mg = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.mf)
  %.pr = load ptr, ptr %i.mc, align 8
  %i.mh = icmp eq ptr %.pr, null
  br i1 %i.mh, label %bb.at, label %bb.as, !prof !15

bb.as:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit
  %i.mi = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.mf, i32 %i.mg, i32 -1, i8 16, i8 14, i8 4, i32 noundef 55176, i8 noundef zeroext 0)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit, %bb.ar
  %.sroa.011.0.i.i.i.i217 = phi i32 [ %i.mi, %bb.as ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit ], [ -1, %bb.ar ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.mj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.mk = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 536
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 672 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8
  %i.mo = icmp eq ptr %i.mn, null
  br i1 %i.mo, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit: ; preds = %bb.at
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 32 ; 2 uses
  %i.mq = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.mp, i8 noundef zeroext 4, i64 0)
  %.pr379 = load ptr, ptr %i.mm, align 8
  %i.mr = icmp eq ptr %.pr379, null
  br i1 %i.mr, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit, label %bb.au, !prof !15

bb.au:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit
  %i.ms = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.mp, i32 %.sroa.011.0.i.i.i.i217, i32 %i.mq, i8 noundef zeroext 0, i8 4)
  %i.mt = zext i32 %i.ms to i64
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit: ; preds = %bb.at, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit, %bb.au
  %.sroa.06.0.i.i.i.i = phi i64 [ %i.mt, %bb.au ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit ], [ 4294967295, %bb.at ]
  %i.mu = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_BindIfENS2_17ConditionWithHintEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.ml, i64 %.sroa.06.0.i.i.i.i, ptr noundef nonnull %9)
  br i1 %i.mu, label %bb.av, label %.critedge.2

bb.av:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit
  %i.mv = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 672
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit220, label %bb.aw, !prof !5

bb.aw:                                            ; preds = %bb.av
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.na = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.mz, i8 noundef zeroext 4, i64 1945620185088)
  %.pre = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit220

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit220: ; preds = %bb.av, %bb.aw
  %i.nb = phi ptr [ %.pre, %bb.aw ], [ %i.mv, %bb.av ] ; 2 uses
  %.sroa.02.0.i.i219 = phi i32 [ %i.na, %bb.aw ], [ -1, %bb.av ]
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 536
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i32 %.sroa.02.0.i.i219, ptr %10, align 4
  %i.nf = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WasmCallRuntimeEPNS0_4ZoneENS0_7Runtime10FunctionIdESt16initializer_listIKNS2_7OpIndexEENS2_1VINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.nc, ptr noundef %i.ne, i32 noundef 561, ptr nonnull %10, i64 1, i32 %.sroa.011.0.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.ng = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 672
  %i.ni = load ptr, ptr %i.nh, align 8
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %.critedge.2, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit221, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit221: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit220
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  %i.nl = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_13UnreachableOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.nk) ; 0 uses
  %.pre406 = load ptr, ptr %i.f, align 8          ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre406, i64 672
  %.pre407 = load ptr, ptr %.phi.trans.insert, align 8
  %i.nm = icmp eq ptr %.pre407, null
  br i1 %i.nm, label %.critedge.2, label %bb.ax

bb.ax:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit221
  %i.nn = load ptr, ptr %i.mj, align 8            ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 52
  %i.np = load i32, ptr %i.no, align 4
  %i.nq = icmp ne i32 %i.np, -1
  %i.nr = getelementptr inbounds nuw i8, ptr %.pre406, i64 32
  %i.ns = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.nr, ptr noundef nonnull %i.nn, i1 noundef zeroext %i.nq), !inline_history !19 ; 0 uses
  br label %.critedge.2

.critedge.2:                                      ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit220, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit221, %bb.ax
  %i.nt = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 536
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.nu, ptr noundef nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.nv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 776), align 8, !range !32, !noundef !9
  %i.nw = trunc nuw i8 %i.nv to i1
  %.pre432.a = load ptr, ptr %i.f, align 8        ; 4 uses
  br i1 %i.nw, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %.critedge.2
  %i.nx = getelementptr inbounds nuw i8, ptr %.pre432.a, i64 672 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit225.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit: ; preds = %bb.ay
  %i.oa = getelementptr inbounds nuw i8, ptr %.pre432.a, i64 32
  %i.ob = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.oa, i32 %.sroa.011.0.i.i.i.i217, i32 -1, i8 17, i8 11, i8 4, i32 noundef 32, i8 noundef zeroext 0)
  %.pre416.a = load ptr, ptr %i.f, align 8        ; 3 uses
  %.phi.trans.insert417 = getelementptr inbounds nuw i8, ptr %.pre416.a, i64 672
  %.pre418 = load ptr, ptr %.phi.trans.insert417, align 8
  %i.oc = icmp eq ptr %.pre418, null
  br i1 %i.oc, label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit225, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i222, !prof !15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i222: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit
  %i.od = getelementptr inbounds nuw i8, ptr %.pre416.a, i64 672
  %i.oe = getelementptr inbounds nuw i8, ptr %.pre416.a, i64 32 ; 2 uses
  %i.of = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.oe)
  %.pr.i223 = load ptr, ptr %i.od, align 8
  %i.og = icmp eq ptr %.pr.i223, null
  br i1 %i.og, label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit225, label %bb.az, !prof !15

bb.az:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i222
  %i.oh = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.oe, i32 %i.of, i32 -1, i8 48, i8 7, i8 1, i32 noundef 520, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit225

_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit225: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i222, %bb.az
  %.sroa.014.0.i224.ph = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i222 ], [ %i.oh, %bb.az ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit ]
  %.pr481 = load ptr, ptr %i.nx, align 8
  %i.oi = icmp eq ptr %.pr481, null
  br i1 %i.oi, label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit225.thread, label %bb.ba, !prof !15

bb.ba:                                            ; preds = %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit225
  %i.oj = getelementptr inbounds nuw i8, ptr %.pre432.a, i64 32
  %i.ok = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.oj, i32 %i.ob, i32 %.sroa.014.0.i224.ph, i8 noundef zeroext 0, i8 4)
  %i.ol = zext i32 %i.ok to i64
  br label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit225.thread

_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit225.thread: ; preds = %bb.ay, %bb.ba, %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit225
  %.sroa.06.0.i.i.i.i226 = phi i64 [ %i.ol, %bb.ba ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit225 ], [ 4294967295, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.om = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.on = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 536
  %i.op = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_BindIfENS2_17ConditionWithHintEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.oo, i64 %.sroa.06.0.i.i.i.i226, ptr noundef nonnull %11)
  br i1 %i.op, label %bb.bb, label %.critedge183.2

bb.bb:                                            ; preds = %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit225.thread
  %i.oq = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 672
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit229, label %bb.bc, !prof !5

bb.bc:                                            ; preds = %bb.bb
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.ov = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ou, i8 noundef zeroext 4, i64 1954210119680)
  %.pre419.a = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit229

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit229: ; preds = %bb.bb, %bb.bc
  %i.ow = phi ptr [ %.pre419.a, %bb.bc ], [ %i.oq, %bb.bb ] ; 2 uses
  %.sroa.02.0.i.i228 = phi i32 [ %i.ov, %bb.bc ], [ -1, %bb.bb ]
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 536
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store i32 %.sroa.02.0.i.i228, ptr %12, align 4
  %i.pa = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WasmCallRuntimeEPNS0_4ZoneENS0_7Runtime10FunctionIdESt16initializer_listIKNS2_7OpIndexEENS2_1VINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.ox, ptr noundef %i.oz, i32 noundef 561, ptr nonnull %12, i64 1, i32 %.sroa.011.0.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.pb = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 672
  %i.pd = load ptr, ptr %i.pc, align 8
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %.critedge183.2, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit230, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit230: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit229
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %i.pg = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_13UnreachableOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.pf) ; 0 uses
  %.pre420 = load ptr, ptr %i.f, align 8          ; 2 uses
  %.phi.trans.insert421 = getelementptr inbounds nuw i8, ptr %.pre420, i64 672
  %.pre422 = load ptr, ptr %.phi.trans.insert421, align 8
  %i.ph = icmp eq ptr %.pre422, null
  br i1 %i.ph, label %.critedge183.2, label %bb.bd

bb.bd:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit230
  %i.pi = load ptr, ptr %i.om, align 8            ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 52
  %i.pk = load i32, ptr %i.pj, align 4
  %i.pl = icmp ne i32 %i.pk, -1
  %i.pm = getelementptr inbounds nuw i8, ptr %.pre420, i64 32
  %i.pn = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.pm, ptr noundef nonnull %i.pi, i1 noundef zeroext %i.pl), !inline_history !19 ; 0 uses
  br label %.critedge183.2

.critedge183.2:                                   ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit229, %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit225.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit230, %bb.bd
  %i.po = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 536
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.pp, ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %.pre431.a = load ptr, ptr %i.f, align 8
  br label %bb.be

bb.be:                                            ; preds = %.critedge183.2, %.critedge.2
  %i.pq = phi ptr [ %.pre431.a, %.critedge183.2 ], [ %.pre432.a, %.critedge.2 ] ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 672 ; 2 uses
  %i.ps = load ptr, ptr %i.pr, align 8
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %bb.bg, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %bb.be
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 32
  %i.pv = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.pu, i8 noundef zeroext 1, i64 noundef 0)
  %.pr381 = load ptr, ptr %i.pr, align 8
  %i.pw = icmp eq ptr %.pr381, null
  br i1 %i.pw, label %bb.bg, label %bb.bf, !prof !15

bb.bf:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %17 = getelementptr inbounds nuw i8, ptr %i.pq, i64 32
  %i.px = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %17, i32 %i.pv, i32 %i.lm, i8 noundef zeroext 0, i8 1)
  %i.py = zext i32 %i.px to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %.sroa.06.0.i.i = phi i64 [ %i.py, %bb.bf ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i ], [ 4294967295, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.pz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.qa = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 536
  %i.qc = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_BindIfENS2_17ConditionWithHintEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.qb, i64 %.sroa.06.0.i.i, ptr noundef nonnull %13)
  br i1 %i.qc, label %bb.bh, label %.critedge187.2

bb.bh:                                            ; preds = %bb.bg
  %i.qd = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 672
  %i.qf = load ptr, ptr %i.qe, align 8
  %i.qg = icmp eq ptr %i.qf, null
  br i1 %i.qg, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit234, label %bb.bi, !prof !5

bb.bi:                                            ; preds = %bb.bh
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  %i.qi = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.qh, i8 noundef zeroext 4, i64 1954210119680)
  %.pre433 = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit234

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit234: ; preds = %bb.bh, %bb.bi
  %i.qj = phi ptr [ %.pre433, %bb.bi ], [ %i.qd, %bb.bh ] ; 2 uses
  %.sroa.02.0.i.i233 = phi i32 [ %i.qi, %bb.bi ], [ -1, %bb.bh ]
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 536
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store i32 %.sroa.02.0.i.i233, ptr %14, align 4
  %i.qn = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WasmCallRuntimeEPNS0_4ZoneENS0_7Runtime10FunctionIdESt16initializer_listIKNS2_7OpIndexEENS2_1VINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.qk, ptr noundef %i.qm, i32 noundef 561, ptr nonnull %14, i64 1, i32 %.sroa.011.0.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.qo = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 672
  %i.qq = load ptr, ptr %i.qp, align 8
  %i.qr = icmp eq ptr %i.qq, null
  br i1 %i.qr, label %.critedge187.2, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit235, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit235: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit234
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qo, i64 32
  %i.qt = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_13UnreachableOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.qs) ; 0 uses
  %.pre434.a = load ptr, ptr %i.f, align 8        ; 2 uses
  %.phi.trans.insert435 = getelementptr inbounds nuw i8, ptr %.pre434.a, i64 672
  %.pre436 = load ptr, ptr %.phi.trans.insert435, align 8
  %i.qu = icmp eq ptr %.pre436, null
  br i1 %i.qu, label %.critedge187.2, label %bb.bj

bb.bj:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit235
  %i.qv = load ptr, ptr %i.pz, align 8            ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 52
  %i.qx = load i32, ptr %i.qw, align 4
  %i.qy = icmp ne i32 %i.qx, -1
  %i.qz = getelementptr inbounds nuw i8, ptr %.pre434.a, i64 32
  %i.ra = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.qz, ptr noundef nonnull %i.qv, i1 noundef zeroext %i.qy), !inline_history !19 ; 0 uses
  br label %.critedge187.2

.critedge187.2:                                   ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11SmiConstantENS0_6TaggedINS0_3SmiEEE.exit234, %bb.bg, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit235, %bb.bj
  %i.rb = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 536
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.rc, ptr noundef nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.bk

bb.bk:                                            ; preds = %.critedge187.2, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit216
  %.sroa.0108.0 = phi i32 [ %.sroa.011.0.i.i.i.i217, %.critedge187.2 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit216 ]
  switch i8 %1, label %bb.bv [
    i8 5, label %bb.bl
    i8 6, label %bb.bq
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.rd = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  %i.rf = load ptr, ptr %i.re, align 8, !nonnull !9, !align !10
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 160
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = add nsw i32 %.sroa.speculated, 1
  %i.rj = call noundef ptr @_ZN2v88internal8compiler7Linkage19GetJSCallDescriptorEPNS0_4ZoneEbiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS6_INS1_8Operator8PropertyEhhEE(ptr noundef %i.rh, i1 noundef zeroext false, i32 noundef %i.ri, i32 0, i8 0) #19
  %i.rk = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %i.rm = load ptr, ptr %i.rl, align 8, !nonnull !9, !align !10
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 160
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.rj, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %i.ro, ptr noundef null) ; 3 uses
  %i.rq = call i32 @_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17BuildReceiverNodeENS4_7OpIndexESB_NS4_1VINS0_9UndefinedEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 %.sroa.011.0.i.i.i.i215, i32 %.sroa.011.0.i.i.i.i, i32 %.sroa.014.0.i)
  %i.rr = load ptr, ptr %6, align 8
  store i32 %i.rq, ptr %i.rr, align 4
  %i.rs = sext i32 %.0167.lcssa to i64            ; 3 uses
  %i.rt = load ptr, ptr %6, align 8
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.rs
  store i32 %.sroa.014.0.i, ptr %i.ru, align 4
  %i.rv = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 672
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = icmp eq ptr %i.rx, null
  br i1 %i.ry, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %bb.bm, !prof !5

bb.bm:                                            ; preds = %bb.bl
  %i.rz = add i64 %i.d, 1
  %i.sa = and i64 %i.rz, 4294967295
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.sc = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.sb, i8 noundef zeroext 0, i64 noundef %i.sa)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %bb.bl, %bb.bm
  %.sroa.0.0.i.i.i = phi i32 [ %i.sc, %bb.bm ], [ -1, %bb.bl ]
  %i.sd = load ptr, ptr %6, align 8
  %i.se = getelementptr [4 x i8], ptr %i.sd, i64 %i.rs
  %i.sf = getelementptr i8, ptr %i.se, i64 4
  store i32 %.sroa.0.0.i.i.i, ptr %i.sf, align 4
  %i.sg = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 672
  %i.si = load ptr, ptr %i.sh, align 8
  %i.sj = icmp eq ptr %i.si, null
  br i1 %i.sj, label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE25LoadContextFromJSFunctionENS4_1VINS0_10JSFunctionEEE.exit, label %bb.bn, !prof !5

bb.bn:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 32
  %i.sl = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.sk, i32 %.sroa.011.0.i.i.i.i215, i32 -1, i8 17, i8 12, i8 4, i32 noundef 40, i8 noundef zeroext 0)
  br label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE25LoadContextFromJSFunctionENS4_1VINS0_10JSFunctionEEE.exit

_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE25LoadContextFromJSFunctionENS4_1VINS0_10JSFunctionEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %bb.bn
  %.sroa.011.0.i.i.i.i.i237 = phi i32 [ %i.sl, %bb.bn ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ]
  %i.sm = load ptr, ptr %6, align 8
  %i.sn = getelementptr [4 x i8], ptr %i.sm, i64 %i.rs
  %i.so = getelementptr i8, ptr %i.sn, i64 8
  store i32 %.sroa.011.0.i.i.i.i.i237, ptr %i.so, align 4
  %i.sp = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 672
  %i.sr = load ptr, ptr %i.sq, align 8
  %i.ss = icmp eq ptr %i.sr, null
  br i1 %i.ss, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.bo, !prof !5

bb.bo:                                            ; preds = %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE25LoadContextFromJSFunctionENS4_1VINS0_10JSFunctionEEE.exit
  %i.st = load ptr, ptr %i.ib, align 8
  %i.su = ptrtoint ptr %i.st to i64
  %i.sv = load ptr, ptr %6, align 8               ; 2 uses
  %i.sw = ptrtoint ptr %i.sv to i64
  %i.sx = sub i64 %i.su, %i.sw
  %i.sy = ashr exact i64 %i.sx, 2
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sp, i64 32 ; 4 uses
  %i.ta = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.sz, i32 %.sroa.011.0.i.i.i.i215, i32 -1, ptr %i.sv, i64 %i.sy, ptr noundef %i.rp, i32 487263) ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rp, i64 40
  %i.tc = load i8, ptr %i.tb, align 8
  %i.td = icmp eq i8 %i.tc, 1
  br i1 %i.td, label %bb.bp, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i

bb.bp:                                            ; preds = %bb.bo
  %i.te = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %i.sz, i32 %i.ta)
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i = phi i1 [ %i.te, %bb.bp ], [ false, %bb.bo ]
  %i.tf = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.tg = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.sz, i32 %i.ta, i1 noundef zeroext %.0.i.i.i.i.i, ptr noundef nonnull %i.tf, i32 487263) ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.sp, i64 24
  %i.ti = load ptr, ptr %i.th, align 8, !nonnull !9, !align !10
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tk = load ptr, ptr %i.tj, align 8
  %i.tl = ptrtoint ptr %i.tk to i64
  %i.tm = zext i32 %i.tg to i64
  %i.tn = add i64 %i.tl, %i.tm
  %i.to = inttoptr i64 %i.tn to ptr
  %i.tp = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SM_(ptr noundef nonnull align 1 dereferenceable(1) %i.sz, ptr noundef nonnull align 8 dereferenceable(24) %i.to, i32 %i.tg)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

bb.bq:                                            ; preds = %bb.bk
  %i.tq = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 672
  %i.ts = load ptr, ptr %i.tr, align 8
  %i.tt = icmp eq ptr %i.ts, null
  br i1 %i.tt, label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetBuiltinPointerTargetENS0_7BuiltinE.exit, label %bb.br, !prof !5

bb.br:                                            ; preds = %bb.bq
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 32
  %i.tv = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.tu, i8 noundef zeroext 4, i64 94489280512)
  br label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetBuiltinPointerTargetENS0_7BuiltinE.exit

_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetBuiltinPointerTargetENS0_7BuiltinE.exit: ; preds = %bb.bq, %bb.br
  %.sroa.02.0.i.i.i = phi i32 [ %i.tv, %bb.br ], [ -1, %bb.bq ]
  %i.tw = load ptr, ptr %6, align 8
  store i32 %.sroa.011.0.i.i.i.i215, ptr %i.tw, align 4
  %i.tx = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.ty = add nsw i32 %i.e, 1                     ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 672
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = icmp eq ptr %i.ua, null
  br i1 %i.ub, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit242, label %bb.bs, !prof !5

bb.bs:                                            ; preds = %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetBuiltinPointerTargetENS0_7BuiltinE.exit
  %i.uc = zext i32 %i.ty to i64
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tx, i64 32
  %i.ue = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ud, i8 noundef zeroext 0, i64 noundef %i.uc)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit242

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit242: ; preds = %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetBuiltinPointerTargetENS0_7BuiltinE.exit, %bb.bs
  %.sroa.0.0.i.i.i241 = phi i32 [ %i.ue, %bb.bs ], [ -1, %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetBuiltinPointerTargetENS0_7BuiltinE.exit ]
  %i.uf = load ptr, ptr %6, align 8
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  store i32 %.sroa.0.0.i.i.i241, ptr %i.ug, align 4
  %i.uh = load ptr, ptr %6, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE20BuildCapiCallWrapperEv:bb.a
  %.0.i138 = phi i32 [ %i.ka, %bb.ag ], [ 8, %.lr.ph246 ]
  %i.kb = add nuw nsw i32 %.0.i138, %.0214244
  %i.kc = getelementptr inbounds nuw i8, ptr %.0101245, i64 4
  %i.kd = load i32, ptr %i.kc, align 4            ; 2 uses
  %i.ke = trunc i32 %i.kd to i1
  br i1 %i.ke, label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit139.1, label %bb.ah

bb.ah:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit139
  %i.kf = lshr i32 %i.kd, 8
  %i.kg = add nuw nsw i32 %i.kf, 2
  %i.kh = and i32 %i.kg, 7
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw i8, ptr @__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1
  %i.kl = zext i8 %i.kk to i32
  br label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit139.1

_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit139.1: ; preds = %bb.ah, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit139
  %.0.i138.1 = phi i32 [ %i.kl, %bb.ah ], [ 8, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit139 ]
  %i.km = add nuw nsw i32 %.0.i138.1, %i.kb       ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.0101245, i64 8 ; 2 uses
  %niter360.next.1 = add i64 %niter360, 2         ; 2 uses
  %niter360.ncmp.1 = icmp eq i64 %niter360.next.1, %unroll_iter359
  br i1 %niter360.ncmp.1, label %._crit_edge247.loopexit.unr-lcssa, label %.lr.ph246

bb.ai:                                            ; preds = %._crit_edge247
  br i1 %i.jr, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14IntPtrConstantEl.exit, label %bb.aj, !prof !5

bb.aj:                                            ; preds = %bb.ai
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.kp = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ko, i8 noundef zeroext 1, i64 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14IntPtrConstantEl.exit

bb.ak:                                            ; preds = %._crit_edge247
  br i1 %i.jr, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14IntPtrConstantEl.exit, label %bb.al, !prof !5

bb.al:                                            ; preds = %bb.ak
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.kr = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11StackSlotOpEJiibEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.kq, i32 noundef %.0214.lcssa, i32 noundef 8, i1 noundef zeroext false)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14IntPtrConstantEl.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14IntPtrConstantEl.exit: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.sroa.071.0 = phi i32 [ -1, %bb.ai ], [ %i.kp, %bb.aj ], [ %i.kr, %bb.al ], [ -1, %bb.ak ] ; 3 uses
  %i.ks = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load i64, ptr %i.kt, align 8
  %.not256 = icmp eq i64 %i.ku, 0
  br i1 %.not256, label %._crit_edge251, label %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit148

._crit_edge251:                                   ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit150, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14IntPtrConstantEl.exit
  %i.kv = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 672
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit: ; preds = %._crit_edge251
  %i.kz = load ptr, ptr %2, align 8
  %.sroa.058.0.copyload = load i32, ptr %i.kz, align 4
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.lb = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.la, i32 %.sroa.058.0.copyload, i32 -1, i8 17, i8 11, i8 4, i32 noundef 32, i8 noundef zeroext 0)
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre265 = load ptr, ptr %.phi.trans.insert, align 8
  %i.lc = icmp eq ptr %.pre265, null
  br i1 %i.lc, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE22LoadSharedFunctionInfoENS4_1VINS0_6ObjectEEE.exit, !prof !15

_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE22LoadSharedFunctionInfoENS4_1VINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.le = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ld, i32 %i.lb, i32 -1, i8 17, i8 12, i8 4, i32 noundef 32, i8 noundef zeroext 0)
  %.pre266.a = load ptr, ptr %i.a, align 8        ; 2 uses
  %.phi.trans.insert267 = getelementptr inbounds nuw i8, ptr %.pre266.a, i64 672
  %.pre268 = load ptr, ptr %.phi.trans.insert267, align 8
  %i.lf = icmp eq ptr %.pre268, null
  br i1 %i.lf, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23LoadTrustedPointerFieldENS2_1VINS0_10HeapObjectEEENS2_6LoadOp4KindENS0_18IndirectPointerTagEi.exit, !prof !15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23LoadTrustedPointerFieldENS2_1VINS0_10HeapObjectEEENS2_6LoadOp4KindENS0_18IndirectPointerTagEi.exit: ; preds = %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE22LoadSharedFunctionInfoENS4_1VINS0_6ObjectEEE.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %.pre266.a, i64 32
  %i.lh = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.lg, i32 %i.le, i32 -1, i8 17, i8 12, i8 4, i32 noundef 8, i8 noundef zeroext 0) ; 6 uses
  %.pre269.a = load ptr, ptr %i.a, align 8        ; 2 uses
  %.phi.trans.insert270 = getelementptr inbounds nuw i8, ptr %.pre269.a, i64 672
  %.pre271 = load ptr, ptr %.phi.trans.insert270, align 8
  %i.li = icmp eq ptr %.pre271, null
  br i1 %i.li, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit143, !prof !15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit143: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23LoadTrustedPointerFieldENS2_1VINS0_10HeapObjectEEENS2_6LoadOp4KindENS0_18IndirectPointerTagEi.exit
  %i.lj = getelementptr inbounds nuw i8, ptr %.pre269.a, i64 32
  %i.lk = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.lj, i32 %i.lh, i32 -1, i8 17, i8 11, i8 4, i32 noundef 48, i8 noundef zeroext 0) ; 4 uses
  %.pre272.a = load ptr, ptr %i.a, align 8        ; 2 uses
  %.phi.trans.insert273 = getelementptr inbounds nuw i8, ptr %.pre272.a, i64 672
  %.pre274 = load ptr, ptr %.phi.trans.insert273, align 8
  %i.ll = icmp eq ptr %.pre274, null
  br i1 %i.ll, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit, !prof !15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit143
  %i.lm = getelementptr inbounds nuw i8, ptr %.pre272.a, i64 32
  %i.ln = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.lm)
  %.pre275.a = load ptr, ptr %i.a, align 8        ; 2 uses
  %.phi.trans.insert276 = getelementptr inbounds nuw i8, ptr %.pre275.a, i64 672
  %.pre277 = load ptr, ptr %.phi.trans.insert276, align 8
  %i.lo = icmp eq ptr %.pre277, null
  br i1 %i.lo, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit, !prof !15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit
  %i.lp = getelementptr inbounds nuw i8, ptr %.pre275.a, i64 32
  %i.lq = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15FrameConstantOpEJNSF_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.lp, i8 noundef zeroext 1)
  %.pre278.a = load ptr, ptr %i.a, align 8        ; 2 uses
  %.phi.trans.insert279 = getelementptr inbounds nuw i8, ptr %.pre278.a, i64 672
  %.pre280.a = load ptr, ptr %.phi.trans.insert279, align 8
  %i.lr = icmp eq ptr %.pre280.a, null
  br i1 %i.lr, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %bb.am, !prof !15

bb.am:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit
  %i.ls = getelementptr inbounds nuw i8, ptr %.pre278.a, i64 32
  %i.lt = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ls, i32 %i.ln, i32 -1, i32 %i.lq, i8 16, i8 7, i8 noundef zeroext 0, i32 noundef 200, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit: ; preds = %._crit_edge251, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE22LoadSharedFunctionInfoENS4_1VINS0_6ObjectEEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23LoadTrustedPointerFieldENS2_1VINS0_10HeapObjectEEENS2_6LoadOp4KindENS0_18IndirectPointerTagEi.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit143, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit, %bb.am
  %.sroa.011.0.i.i.i.i.i142322327336 = phi i32 [ %i.lk, %bb.am ], [ %i.lk, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit ], [ %i.lk, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit ], [ %i.lk, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit143 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23LoadTrustedPointerFieldENS2_1VINS0_10HeapObjectEEENS2_6LoadOp4KindENS0_18IndirectPointerTagEi.exit ], [ -1, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE22LoadSharedFunctionInfoENS4_1VINS0_6ObjectEEE.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit ], [ -1, %._crit_edge251 ]
  %.sroa.011.0.i.i.i.i.i141317321328335 = phi i32 [ %i.lh, %bb.am ], [ %i.lh, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit ], [ %i.lh, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit ], [ %i.lh, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit143 ], [ %i.lh, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23LoadTrustedPointerFieldENS2_1VINS0_10HeapObjectEEENS2_6LoadOp4KindENS0_18IndirectPointerTagEi.exit ], [ -1, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE22LoadSharedFunctionInfoENS4_1VINS0_6ObjectEEE.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_6ObjectEEENS2_1VIT_EENSH_ISG_EEiQ12is_subtype_vITL0__SG_E.exit ], [ -1, %._crit_edge251 ]
  %i.lu = call i32 @_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE43BuildLoadCallTargetFromExportedFunctionDataENS4_1VINS0_16WasmFunctionDataEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 %.sroa.011.0.i.i.i.i.i141317321328335)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %.ptr6.i.i146 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 1, ptr %3, align 8, !alias.scope !35
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.lv, align 8, !alias.scope !35
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.ptr6.i.i146, ptr %i.lw, align 8, !alias.scope !35
  store i16 5, ptr %.ptr6.i.i146, align 8, !alias.scope !35
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i32 330249, ptr %i.lx, align 2, !alias.scope !35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 %.sroa.011.0.i.i.i.i.i142322327336, ptr %4, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sroa.071.0, ptr %i.ly, align 4
  %i.lz = call i32 @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS4_7OpIndexESt16initializer_listISG_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, i32 %i.lu, ptr nonnull %4, i64 2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ma = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.mb = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.ao

_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit148: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14IntPtrConstantEl.exit, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit150
  %i.mc = phi ptr [ %i.mu, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit150 ], [ %i.ks, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14IntPtrConstantEl.exit ] ; 2 uses
  %.0103250 = phi i32 [ %i.mt, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit150 ], [ 0, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14IntPtrConstantEl.exit ] ; 2 uses
  %.0104249 = phi i64 [ %i.mi, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit150 ], [ 0, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14IntPtrConstantEl.exit ] ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = load i64, ptr %i.mc, align 8
  %i.mg = getelementptr [4 x i8], ptr %i.me, i64 %i.mf
  %i.mh = getelementptr [4 x i8], ptr %i.mg, i64 %.0104249
  %.sroa.0.0.copyload.i147 = load i32, ptr %i.mh, align 4 ; 3 uses
  %i.mi = add nuw i64 %.0104249, 1                ; 3 uses
  %i.mj = load ptr, ptr %2, align 8
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mi
  %.sroa.060.0.copyload = load i32, ptr %i.mk, align 4
  call void @_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE9SafeStoreEiNS1_18CanonicalValueTypeENS4_7OpIndexESC_(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %.0103250, i32 %.sroa.0.0.copyload.i147, i32 %.sroa.071.0, i32 %.sroa.060.0.copyload)
  %i.ml = trunc i32 %.sroa.0.0.copyload.i147 to i1
  br i1 %i.ml, label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit150, label %bb.an

bb.an:                                            ; preds = %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit148
  %i.mm = lshr i32 %.sroa.0.0.copyload.i147, 8
  %i.mn = add nuw nsw i32 %i.mm, 2
  %i.mo = and i32 %i.mn, 7
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr @__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1
  %i.ms = zext i8 %i.mr to i32
  br label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit150

_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit150: ; preds = %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit148, %bb.an
  %.0.i149 = phi i32 [ %i.ms, %bb.an ], [ 8, %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit148 ]
  %i.mt = add nuw nsw i32 %.0.i149, %.0103250
  %i.mu = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load i64, ptr %i.mv, align 8
  %i.mx = icmp ult i64 %i.mi, %i.mw
  br i1 %i.mx, label %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit148, label %._crit_edge251, !llvm.loop !38

.loopexit:                                        ; preds = %.critedge, %.critedge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.my = load ptr, ptr %i.eq, align 8
  %i.mz = load i64, ptr %i.my, align 8            ; 5 uses
  %i.na = icmp eq i64 %i.mz, 0
  br i1 %i.na, label %bb.aw, label %bb.ay

bb.ao:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, %.critedge
  %.0105252 = phi i32 [ 0, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit ], [ %i.pp, %.critedge ] ; 2 uses
  switch i32 %.0105252, label %.critedge [
    i32 2, label %.critedge.thread
    i32 0, label %bb.ap
  ]

.critedge.thread:                                 ; preds = %bb.ao
  %i.nb = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 536
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.nc, ptr noundef nonnull %5)
  br label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.nd = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 536
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 672 ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %bb.ap
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.nj = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ni, i8 noundef zeroext 1, i64 noundef 0)
  %.pr.a = load ptr, ptr %i.nf, align 8
  %i.nk = icmp eq ptr %.pr.a, null
  br i1 %i.nk, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %bb.aq, !prof !15

bb.aq:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %9 = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.nl = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %9, i32 %i.lz, i32 %i.nj, i8 noundef zeroext 0, i8 1)
  %i.nm = zext i32 %i.nl to i64
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit: ; preds = %bb.ap, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, %bb.aq
  %.sroa.06.0.i.i = phi i64 [ %i.nm, %bb.aq ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i ], [ 4294967295, %bb.ap ]
  %i.nn = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_BindIfNotENS2_17ConditionWithHintEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.ne, i64 %.sroa.06.0.i.i, ptr noundef nonnull %5)
  br i1 %i.nn, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15CallDescriptors21call_descriptor_data_E, i64 33520), ptr %6, align 8
  %i.no = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.nq = load ptr, ptr %i.np, align 8, !nonnull !9, !align !10
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 160
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.ns, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0, i32 0, i8 0, i32 noundef 2) #19
  %i.nu = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8, !nonnull !9, !align !10
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 160
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.nt, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %i.ny, ptr noundef null) ; 3 uses
  %i.oa = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 672
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = icmp eq ptr %i.oc, null
  br i1 %i.od, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinE.exit, !prof !5

_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinE.exit: ; preds = %bb.ar
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  %i.of = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.oe, i8 noundef zeroext 4, i64 5759551143936) ; 2 uses
  %.pre281 = load ptr, ptr %i.a, align 8          ; 3 uses
  %.phi.trans.insert282 = getelementptr inbounds nuw i8, ptr %.pre281, i64 672
  %.pre283.a = load ptr, ptr %.phi.trans.insert282, align 8
  %i.og = icmp eq ptr %.pre283.a, null
  br i1 %i.og, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, label %bb.as, !prof !15

bb.as:                                            ; preds = %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinE.exit
  %i.oh = load ptr, ptr %2, align 8
  %.sroa.020.0.copyload = load i32, ptr %i.oh, align 4
  %i.oi = getelementptr inbounds nuw i8, ptr %.pre281, i64 32
  %i.oj = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.oi, i32 %.sroa.020.0.copyload, i32 -1, i8 17, i8 12, i8 4, i32 noundef 24, i8 noundef zeroext 0)
  %.pre284.a = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit: ; preds = %bb.ar, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinE.exit, %bb.as
  %.sroa.01.0.i.i338 = phi i32 [ %i.of, %bb.as ], [ %i.of, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinE.exit ], [ -1, %bb.ar ]
  %i.ok = phi ptr [ %.pre284.a, %bb.as ], [ %.pre281, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinE.exit ], [ %i.oa, %bb.ar ] ; 3 uses
  %.sroa.011.0.i.i.i.i = phi i32 [ %i.oj, %bb.as ], [ -1, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinE.exit ], [ -1, %bb.ar ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 %i.lz, ptr %7, align 4
  store i32 %.sroa.011.0.i.i.i.i, ptr %i.ma, align 4
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 672
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = icmp eq ptr %i.om, null
  br i1 %i.on, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEESt16initializer_listINS2_7OpIndexEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit.thread, label %bb.at, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEESt16initializer_listINS2_7OpIndexEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread

bb.at:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 32 ; 4 uses
  %i.op = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.oo, i32 %.sroa.01.0.i.i338, i32 -1, ptr nonnull %7, i64 2, ptr noundef %i.nz, i32 487263) ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nz, i64 40
  %i.or = load i8, ptr %i.oq, align 8
  %i.os = icmp eq i8 %i.or, 1
  br i1 %i.os, label %bb.au, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEESt16initializer_listINS2_7OpIndexEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

bb.au:                                            ; preds = %bb.at
  %i.ot = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %i.oo, i32 %i.op)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEESt16initializer_listINS2_7OpIndexEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEESt16initializer_listINS2_7OpIndexEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %bb.at, %bb.au
  %.0.i.i.i.i.i.i = phi i1 [ %i.ot, %bb.au ], [ false, %bb.at ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.ov = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.oo, i32 %i.op, i1 noundef zeroext %.0.i.i.i.i.i.i, ptr noundef nonnull %i.ou, i32 487263) ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !nonnull !9, !align !10
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8
  %i.pa = ptrtoint ptr %i.oz to i64
  %i.pb = zext i32 %i.ov to i64
  %i.pc = add i64 %i.pa, %i.pb
  %i.pd = inttoptr i64 %i.pc to ptr
  %i.pe = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SM_(ptr noundef nonnull align 1 dereferenceable(1) %i.oo, ptr noundef nonnull align 8 dereferenceable(24) %i.pd, i32 %i.ov) ; 0 uses
  %.pre285 = load ptr, ptr %i.a, align 8          ; 2 uses
  %.phi.trans.insert286 = getelementptr inbounds nuw i8, ptr %.pre285, i64 672
  %.pre287.a = load ptr, ptr %.phi.trans.insert286, align 8
  %i.pf = icmp eq ptr %.pre287.a, null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br i1 %i.pf, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit, !prof !15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEESt16initializer_listINS2_7OpIndexEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEESt16initializer_listINS2_7OpIndexEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.critedge

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEESt16initializer_listINS2_7OpIndexEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit
  %i.pg = getelementptr inbounds nuw i8, ptr %.pre285, i64 32
  %i.ph = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_13UnreachableOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.pg) ; 0 uses
  %.pre288 = load ptr, ptr %i.a, align 8          ; 2 uses
  %.phi.trans.insert289 = getelementptr inbounds nuw i8, ptr %.pre288, i64 672
  %.pre290.a = load ptr, ptr %.phi.trans.insert289, align 8
  %i.pi = icmp eq ptr %.pre290.a, null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %i.pi, label %.critedge, label %bb.av

bb.av:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit
  %i.pj = load ptr, ptr %i.mb, align 8            ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 52
  %i.pl = load i32, ptr %i.pk, align 4
  %i.pm = icmp ne i32 %i.pl, -1
  %i.pn = getelementptr inbounds nuw i8, ptr %.pre288, i64 32
  %i.po = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.pn, ptr noundef nonnull %i.pj, i1 noundef zeroext %i.pm), !inline_history !19 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread, %bb.av, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, %bb.ao
  %i.pp = add nuw nsw i32 %.0105252, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.pp, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.ao, !llvm.loop !39

bb.aw:                                            ; preds = %.loopexit
  %i.pq = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 672 ; 3 uses
  %i.ps = load ptr, ptr %i.pr, align 8
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.thread.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %bb.aw
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 32 ; 3 uses
  %i.pv = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.pu, i8 noundef zeroext 0, i64 noundef 0)
  %.pr217 = load ptr, ptr %i.pr, align 8
  %i.pw = icmp eq ptr %.pr217, null
  br i1 %i.pw, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.thread.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.i, !prof !15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.thread.i: ; preds = %bb.aw, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6ReturnENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  %i.px = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.pu, i8 noundef zeroext 0, i64 noundef 0)
  %.pr.i = load ptr, ptr %i.pr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i32 %i.pv, ptr %1, align 4
  %i.py = icmp eq ptr %.pr.i, null
  br i1 %i.py, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6ReturnENS2_7OpIndexE.exit, label %bb.ax, !prof !15

bb.ax:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.i
  %i.pz = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ReturnOpEJNS2_14ShadowyOpIndexENS2_27ShadowyOpIndexVectorWrapperEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.pu, i32 %i.px, ptr nonnull %1, i64 1, i1 noundef zeroext false) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6ReturnENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6ReturnENS2_7OpIndexE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.thread.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.bf

bb.ay:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.qa = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.qa, ptr %8, align 8
  %i.qb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.qa, ptr %i.qb, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.qd = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %i.qd, ptr %i.qc, align 8
  %i.qe = icmp ugt i64 %i.mz, 8
  br i1 %i.qe, label %bb.az, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE6resizeEm.exit

bb.az:                                            ; preds = %bb.ay
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %8, i64 noundef %i.mz)
  %.pre.i155 = load ptr, ptr %8, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE6resizeEm.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE6resizeEm.exit: ; preds = %bb.ay, %bb.az
  %i.qf = phi ptr [ %.pre.i155, %bb.az ], [ %i.qa, %bb.ay ]
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %i.mz
  store ptr %i.qg, ptr %i.qb, align 8
  br label %bb.bc

bb.ba:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit162
  %i.qh = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 672 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8
  %i.qk = icmp eq ptr %i.qj, null
  br i1 %i.qk, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6ReturnENS2_1VINS2_12WordWithBitsILm32EEEEENS5_6VectorIKNS2_7OpIndexEEEb.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit157, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit157: ; preds = %bb.ba
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  %i.qm = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ql, i8 noundef zeroext 0, i64 noundef 0)
  %.pre291 = load ptr, ptr %i.qi, align 8
  %i.qn = icmp eq ptr %.pre291, null
  br i1 %i.qn, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6ReturnENS2_1VINS2_12WordWithBitsILm32EEEEENS5_6VectorIKNS2_7OpIndexEEEb.exit, label %bb.bb, !prof !15

bb.bb:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit157
  %i.qo = load ptr, ptr %i.qb, align 8
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = load ptr, ptr %8, align 8               ; 2 uses
  %i.qr = ptrtoint ptr %i.qq to i64
  %i.qs = sub i64 %i.qp, %i.qr
  %i.qt = ashr exact i64 %i.qs, 2
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE12BuildSuspendENS4_1VINS0_6ObjectEEESD_SD_PNSB_INS4_12WordWithBitsILm64EEEEESG_:bb.a
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i124

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i124: ; preds = %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i.i, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinE.exit
  %.sroa.010.0.i.i.i = phi i32 [ %i.gh, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i.i ], [ -1, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.gi = call i32 @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE28BuildSwitchToTheCentralStackENS4_1VINS4_12WordWithBitsILm64EEEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %5)
  %i.gj = load ptr, ptr %i.au, align 8
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm64EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_8ConstOrVIS5_mEE.exit, label %bb.v, !prof !5

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i124
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISL_SM_EESL_(ptr noundef nonnull align 8 dereferenceable(504) %i.at, ptr nonnull %i.as, i32 %i.gi)
  br label %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm64EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_8ConstOrVIS5_mEE.exit

_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm64EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_8ConstOrVIS5_mEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i124, %bb.v
  %i.gl = load ptr, ptr %i.v, align 8
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit, label %bb.w, !prof !5

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm64EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_8ConstOrVIS5_mEE.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISL_SM_EESL_(ptr noundef nonnull align 8 dereferenceable(504) %i.gn, ptr nonnull %i.u, i32 %.sroa.010.0.i.i.i)
  br label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit

_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm64EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_8ConstOrVIS5_mEE.exit, %bb.w
  %i.go = getelementptr inbounds i8, ptr %i.ar, i64 -16 ; 3 uses
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.go, align 4
  store i32 %.sroa.02.0.copyload.i.i.i, ptr %4, align 4
  %i.gp = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 3 uses
  %.sroa.02.0.copyload.i.i.i128 = load i32, ptr %i.gp, align 4
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.gq = load ptr, ptr %i.au, align 8
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm64EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit, label %bb.x, !prof !5

bb.x:                                             ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit
  %.sroa.07.0.copyload.i.i = load i32, ptr %i.go, align 4 ; 2 uses
  %.not.i.i = icmp eq i32 %.sroa.07.0.copyload.i.i, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm64EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gs = getelementptr inbounds nuw i8, ptr %i.z, i64 248 ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8            ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.z, i64 256
  %i.gv = load ptr, ptr %i.gu, align 8            ; 2 uses
  %i.gw = icmp ult ptr %i.gt, %i.gv
  br i1 %i.gw, label %bb.aa, label %bb.z, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.gx = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  %i.gy = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = ptrtoint ptr %i.gv to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = ashr exact i64 %i.hc, 4
  %i.he = add nsw i64 %i.hd, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gx, i64 noundef %i.he)
  %.pre.i.i.i.i.i = load ptr, ptr %i.gs, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.hf = phi ptr [ %i.gt, %bb.y ], [ %.pre.i.i.i.i.i, %bb.z ] ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store ptr %i.hg, ptr %i.gs, align 8
  store ptr %i.as, ptr %i.hf, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i32 %.sroa.07.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  store i32 -1, ptr %i.go, align 8
  %i.hh = getelementptr inbounds i8, ptr %i.ar, i64 -31
  %i.hi = load i8, ptr %i.hh, align 1, !range !32, !noundef !9
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm64EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hk = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8            ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.z, i64 392 ; 4 uses
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 -8
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  store i64 %i.hl, ptr %i.hp, align 8
  %i.hq = load ptr, ptr %i.hm, align 8
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.z, i64 384
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hl
  %i.hv = load i64, ptr %i.hr, align 8
  store i64 %i.hv, ptr %i.hu, align 8
  store i64 -1, ptr %i.hk, align 8
  %i.hw = load ptr, ptr %i.hm, align 8
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -8
  store ptr %i.hx, ptr %i.hm, align 8
  br label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm64EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit

_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm64EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit: ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit, %bb.x, %bb.aa, %bb.ab
  %i.hy = load ptr, ptr %i.v, align 8
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit, label %bb.ac, !prof !5

bb.ac:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm64EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit
  %.sroa.07.0.copyload.i.i130 = load i32, ptr %i.gp, align 4 ; 2 uses
  %.not.i.i131 = icmp eq i32 %.sroa.07.0.copyload.i.i130, -1
  br i1 %.not.i.i131, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 3 uses
  %i.ib = load ptr, ptr %i.ia, align 8            ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.id = load ptr, ptr %i.ic, align 8            ; 2 uses
  %i.ie = icmp ult ptr %i.ib, %i.id
  br i1 %i.ie, label %bb.af, label %bb.ae, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = ptrtoint ptr %i.id to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = ashr exact i64 %i.ik, 4
  %i.im = add nsw i64 %i.il, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.if, i64 noundef %i.im)
  %.pre.i.i.i.i.i132 = load ptr, ptr %i.ia, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.in = phi ptr [ %i.ib, %bb.ad ], [ %.pre.i.i.i.i.i132, %bb.ae ] ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  store ptr %i.io, ptr %i.ia, align 8
  store ptr %i.u, ptr %i.in, align 8
  %.sroa.4.0..sroa_idx.i.i.i133 = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store i32 %.sroa.07.0.copyload.i.i130, ptr %.sroa.4.0..sroa_idx.i.i.i133, align 8
  %.sroa.5.0..sroa_idx.i.i.i134 = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i.i134, align 4
  store i32 -1, ptr %i.gp, align 8
  %i.ip = getelementptr inbounds i8, ptr %i.t, i64 -31
  %i.iq = load i8, ptr %i.ip, align 1, !range !32, !noundef !9
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.is = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8            ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 4 uses
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 -8
  %.sroa.0.0.copyload.i.i.i.i135 = load ptr, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i135, i64 8
  store i64 %i.it, ptr %i.ix, align 8
  %i.iy = load ptr, ptr %i.iu, align 8
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.it
  %i.jd = load i64, ptr %i.iz, align 8
  store i64 %i.jd, ptr %i.jc, align 8
  store i64 -1, ptr %i.is, align 8
  %i.je = load ptr, ptr %i.iu, align 8
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -8
  store ptr %i.jf, ptr %i.iu, align 8
  br label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit

_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit: ; preds = %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm64EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit, %bb.ac, %bb.af, %bb.ag
  ret i32 %.sroa.02.0.copyload.i.i.i128
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE31BuildSwitchBackFromCentralStackENS4_1VINS4_12WordWithBitsILm64EEEEESE_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::SelectLoweringReducer, v8::internal::compiler::turboshaft::DataViewLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

.loopexit:                                        ; preds = %.critedge, %.critedge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.b:                                             ; preds = %bb.a, %.critedge
  %.066 = phi i32 [ 0, %bb.a ], [ %i.bh, %.critedge ] ; 2 uses
  switch i32 %.066, label %.critedge [
    i32 2, label %.critedge.thread
    i32 0, label %bb.c
  ]

.critedge.thread:                                 ; preds = %bb.b
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 536
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull %3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 536
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 672 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i8 noundef zeroext 1, i64 noundef 0)
  %.pr.a = load ptr, ptr %i.g, align 8
  %i.l = icmp eq ptr %.pr.a, null
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, label %bb.d, !prof !15

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %4 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, i32 %1, i32 %i.k, i8 noundef zeroext 0, i8 1)
  %i.n = zext i32 %i.m to i64
  %i.o = or disjoint i64 %i.n, 4294967296
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, %bb.d
  %.sroa.06.0.i.i = phi i64 [ %i.o, %bb.d ], [ 8589934591, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i ], [ 8589934591, %bb.c ]
  %i.p = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_BindIfNotENS2_17ConditionWithHintEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i64 %.sroa.06.0.i.i, ptr noundef nonnull %3)
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit
  %i.q = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 672
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.u) ; 4 uses
  %.pre = load ptr, ptr %i.a, align 8             ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre67.a = load ptr, ptr %.phi.trans.insert, align 8
  %i.w = icmp eq ptr %.pre67.a, null
  br i1 %i.w, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, !prof !15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 2 uses
  %i.z = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, i8 noundef zeroext 0, i64 noundef 0)
  %.pr62.a = load ptr, ptr %i.x, align 8
  %i.aa = icmp eq ptr %.pr62.a, null
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %bb.f, !prof !15

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  %i.ab = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, i32 %i.v, i32 -1, i32 %i.z, i8 16, i8 1, i8 noundef zeroext 0, i32 noundef 320, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %bb.f
  %.sroa.0.0.i.i3575 = phi i32 [ %i.v, %bb.f ], [ %i.v, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit ], [ %i.v, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ], [ -1, %bb.e ] ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 672
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit37, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ah = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, i32 %.sroa.0.0.i.i3575, i32 -1, i8 16, i8 7, i8 1, i32 noundef 55168, i8 noundef zeroext 0)
  %.pre68 = load ptr, ptr %i.a, align 8           ; 3 uses
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %.pre68, i64 672
  %.pre70.a = load ptr, ptr %.phi.trans.insert69, align 8
  %i.ai = icmp eq ptr %.pre70.a, null
  br i1 %i.ai, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit37, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15UintPtrConstantEm.exit, !prof !15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15UintPtrConstantEm.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre68, i64 672
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre68, i64 32 ; 2 uses
  %i.al = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, i8 noundef zeroext 1, i64 noundef 0)
  %.pr64 = load ptr, ptr %i.aj, align 8
  %i.am = icmp eq ptr %.pr64, null
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit37, label %bb.g, !prof !15

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15UintPtrConstantEm.exit
  %i.an = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, i32 %i.ah, i32 -1, i32 %i.al, i8 16, i8 7, i8 noundef zeroext 0, i32 noundef 88, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit37

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit37: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15UintPtrConstantEm.exit, %bb.g
  %i.ao = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 672
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit40, label %bb.h, !prof !5

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit37
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.at = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.as, i32 %.sroa.0.0.i.i3575, i32 -1, i8 16, i8 7, i8 1, i32 noundef -112, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit40

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit40: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit37, %bb.h
  %.sroa.011.0.i.i.i.i39 = phi i32 [ %i.at, %bb.h ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit37 ]
  call void @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE21BuildSetNewStackLimitENS4_1VINS4_12WordWithBitsILm64EEEEESE_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %.sroa.011.0.i.i.i.i39, i32 %2)
  %i.au = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 672
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.critedge, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15SetStackPointerENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15SetStackPointerENS2_1VINS2_12WordWithBitsILm64EEEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.az = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_17SetStackPointerOpEJNS2_14ShadowyOpIndexEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ay, i32 %1) ; 0 uses
  %.pre71 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %.pre71, i64 672
  %.pre73 = load ptr, ptr %.phi.trans.insert72, align 8
  %i.ba = icmp eq ptr %.pre73, null
  br i1 %i.ba, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15SetStackPointerENS2_1VINS2_12WordWithBitsILm64EEEEE.exit
  %i.bb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 52
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp ne i32 %i.bd, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre71, i64 32
  %i.bg = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.bf, ptr noundef nonnull %i.bb, i1 noundef zeroext %i.be), !inline_history !19 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit40, %bb.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15SetStackPointerENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, %bb.b
  %i.bh = add nuw nsw i32 %.066, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bh, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !181
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE28BuildSwitchToTheCentralStackENS4_1VINS4_12WordWithBitsILm64EEEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f) ; 4 uses
  %.pre = load ptr, ptr %i.a, align 8             ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre55 = load ptr, ptr %.phi.trans.insert, align 8
  %i.h = icmp eq ptr %.pre55, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, !prof !15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %i.j = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 2 uses
  %i.k = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i8 noundef zeroext 0, i64 noundef 1)
  %.pr = load ptr, ptr %i.i, align 8
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  %i.m = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i32 %i.g, i32 -1, i32 %i.k, i8 16, i8 1, i8 noundef zeroext 0, i32 noundef 320, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %bb.b
  %.sroa.0.0.i.i69 = phi i32 [ %i.g, %bb.b ], [ %i.g, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit ], [ %i.g, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ], [ -1, %bb.a ] ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 672
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit38, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, i32 %.sroa.0.0.i.i69, i32 -1, i8 16, i8 7, i8 1, i32 noundef 55168, i8 noundef zeroext 0) ; 4 uses
  %.pre56 = load ptr, ptr %i.a, align 8           ; 3 uses
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %.pre56, i64 672
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8
  %i.t = icmp eq ptr %.pre58, null
  br i1 %i.t, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit38, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit, !prof !15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.pre56, i64 672
  %i.v = getelementptr inbounds nuw i8, ptr %.pre56, i64 32 ; 2 uses
  %i.w = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15FrameConstantOpEJNSF_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.v, i8 noundef zeroext 1)
  %.pr53 = load ptr, ptr %i.u, align 8
  %i.x = icmp eq ptr %.pr53, null
  br i1 %i.x, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit38, label %bb.c, !prof !15

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit
  %i.y = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.v, i32 %i.s, i32 -1, i32 %i.w, i8 16, i8 7, i8 noundef zeroext 0, i32 noundef 88, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit38

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit38: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit, %bb.c
  %.sroa.011.0.i.i.i.i71 = phi i32 [ %i.s, %bb.c ], [ %i.s, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit ], [ %i.s, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit ]
  %i.z = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 672
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit45, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit41, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit41: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ae = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i32 %.sroa.0.0.i.i69, i32 -1, i8 16, i8 7, i8 1, i32 noundef 400, i8 noundef zeroext 0) ; 4 uses
  %.pre59 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %.pre59, i64 672
  %.pre61 = load ptr, ptr %.phi.trans.insert60, align 8
  %i.af = icmp eq ptr %.pre61, null
  br i1 %i.af, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit45, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit42, !prof !15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit42: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit41
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre59, i64 32
  %i.ah = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, i32 %.sroa.011.0.i.i.i.i71, i32 -1, i32 %i.ae, i8 16, i8 7, i8 noundef zeroext 0, i32 noundef 96, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0) ; 0 uses
  %.pre62 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %.pre62, i64 672
  %.pre64 = load ptr, ptr %.phi.trans.insert63, align 8
  %i.ai = icmp eq ptr %.pre64, null
  br i1 %i.ai, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit45, label %bb.d, !prof !15

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit42
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre62, i64 32
  %i.ak = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, i32 %.sroa.0.0.i.i69, i32 -1, i8 16, i8 7, i8 1, i32 noundef 408, i8 noundef zeroext 0)
end_hunk_2
