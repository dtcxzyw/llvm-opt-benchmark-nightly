inline.NumInlined: 9268
inline.NumDeleted: 3684
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2v88internal11interpreter34TurboshaftBytecodeHandlerAssemblerINS0_21NumberBuiltinsReducerEE25EmitBytecodeHandlerPrologEv:bb.a
  %i.fr = add i64 %i.fq, 16
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fm, i8 -1, i64 %i.fr, i1 false)
  %.pre13.pre.i.i39 = load ptr, ptr %i.dc, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i32

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i32: ; preds = %.lr.ph.i.i.i.i.preheader.i.i38, %bb.y
  %.pre13.i.i33 = phi ptr [ %.pre13.pre.i.i39, %.lr.ph.i.i.i.i.preheader.i.i38 ], [ %i.fn, %bb.y ]
  store ptr %i.fo, ptr %i.dd, align 8
  br label %bb.z

bb.z:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i32, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS2_12WordWithBitsILm64EEEEENS2_1VIT_EEiPKc.exit
  %i.fs = phi ptr [ %i.fo, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i32 ], [ %i.fd, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS2_12WordWithBitsILm64EEEEENS2_1VIT_EEiPKc.exit ]
  %i.ft = phi ptr [ %.pre13.i.i33, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i32 ], [ %i.fc, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS2_12WordWithBitsILm64EEEEENS2_1VIT_EEiPKc.exit ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 12 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4            ; 2 uses
  %.not12.i.i34 = icmp eq i32 %i.fv, -1
  br i1 %.not12.i.i34, label %bb.aa, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS0_13BytecodeArrayEEENS2_1VIT_EEiPKc.exit

bb.aa:                                            ; preds = %bb.z
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i36, label %bb.ab, !prof !7

bb.ab:                                            ; preds = %bb.aa
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ga = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.fz, i32 noundef 2, i8 4, ptr noundef null)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i36

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i36: ; preds = %bb.ab, %bb.aa
  %.sroa.03.0.i.i.i37 = phi i32 [ %i.ga, %bb.ab ], [ -1, %bb.aa ] ; 2 uses
  store i32 %.sroa.03.0.i.i.i37, ptr %i.fu, align 4
  %.pre73 = load ptr, ptr %i.dd, align 8
  %.pre74 = load ptr, ptr %i.dc, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS0_13BytecodeArrayEEENS2_1VIT_EEiPKc.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS0_13BytecodeArrayEEENS2_1VIT_EEiPKc.exit: ; preds = %bb.z, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i36
  %i.gb = phi ptr [ %i.ft, %bb.z ], [ %.pre74, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i36 ] ; 3 uses
  %i.gc = phi ptr [ %i.fs, %bb.z ], [ %.pre73, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i36 ] ; 2 uses
  %.sroa.011.0.copyload.i.i35 = phi i32 [ %i.fv, %bb.z ], [ %.sroa.03.0.i.i.i37, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i36 ]
  %i.gd = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.ge = ptrtoint ptr %i.gb to i64               ; 3 uses
  %i.gf = sub i64 %i.gd, %i.ge
  %.not.i.i44 = icmp ugt i64 %i.gf, 16
  br i1 %.not.i.i44, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS0_13BytecodeArrayEEENS2_1VIT_EEiPKc.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = sub i64 %i.gi, %i.ge
  %i.gk = icmp ult i64 %i.gj, 17
  br i1 %i.gk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(136) %i.dc, i64 noundef 5)
  %.pre.i.i.i55 = load ptr, ptr %i.dc, align 8    ; 2 uses
  %.pre.i.i56 = load ptr, ptr %i.dd, align 8      ; 2 uses
  %.pre16.i.i57 = ptrtoint ptr %.pre.i.i.i55 to i64
  %.pre17.i.i58 = ptrtoint ptr %.pre.i.i56 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pre-phi18.i.i45 = phi i64 [ %.pre17.i.i58, %bb.ad ], [ %i.gd, %bb.ac ]
  %.pre-phi.i.i46 = phi i64 [ %.pre16.i.i57, %bb.ad ], [ %i.ge, %bb.ac ]
  %i.gl = phi ptr [ %.pre.i.i56, %bb.ad ], [ %i.gc, %bb.ac ] ; 2 uses
  %i.gm = phi ptr [ %.pre.i.i.i55, %bb.ad ], [ %i.gb, %bb.ac ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 20 ; 2 uses
  %i.go = icmp ugt ptr %i.gn, %i.gl
  br i1 %i.go, label %.lr.ph.i.i.i.i.preheader.i.i53, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i47

.lr.ph.i.i.i.i.preheader.i.i53:                   ; preds = %bb.ae
  %reass.sub68 = sub i64 %.pre-phi.i.i46, %.pre-phi18.i.i45
  %i.gp = and i64 %reass.sub68, -4
  %i.gq = add i64 %i.gp, 20
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gl, i8 -1, i64 %i.gq, i1 false)
  %.pre13.pre.i.i54 = load ptr, ptr %i.dc, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i47

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i47: ; preds = %.lr.ph.i.i.i.i.preheader.i.i53, %bb.ae
  %.pre13.i.i48 = phi ptr [ %.pre13.pre.i.i54, %.lr.ph.i.i.i.i.preheader.i.i53 ], [ %i.gm, %bb.ae ]
  store ptr %i.gn, ptr %i.dd, align 8
  br label %bb.af

bb.af:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i47, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS0_13BytecodeArrayEEENS2_1VIT_EEiPKc.exit
  %i.gr = phi ptr [ %.pre13.i.i48, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i47 ], [ %i.gb, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS0_13BytecodeArrayEEENS2_1VIT_EEiPKc.exit ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4            ; 2 uses
  %.not12.i.i49 = icmp eq i32 %i.gt, -1
  br i1 %.not12.i.i49, label %bb.ag, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS2_12WordWithBitsILm64EEEEENS2_1VIT_EEiPKc.exit59

bb.ag:                                            ; preds = %bb.af
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i51, label %bb.ah, !prof !7

bb.ah:                                            ; preds = %bb.ag
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gy = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.gx, i32 noundef 3, i8 1, ptr noundef null)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i51

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i51: ; preds = %bb.ah, %bb.ag
  %.sroa.03.0.i.i.i52 = phi i32 [ %i.gy, %bb.ah ], [ -1, %bb.ag ] ; 2 uses
  store i32 %.sroa.03.0.i.i.i52, ptr %i.gs, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS2_12WordWithBitsILm64EEEEENS2_1VIT_EEiPKc.exit59

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS2_12WordWithBitsILm64EEEEENS2_1VIT_EEiPKc.exit59: ; preds = %bb.af, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i51
  %.sroa.011.0.copyload.i.i50 = phi i32 [ %i.gt, %bb.af ], [ %.sroa.03.0.i.i.i52, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i51 ]
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ha = load ptr, ptr %i.gz, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 880
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_1VIS4_EE.exit.i, label %bb.ai, !prof !7

bb.ai:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS2_12WordWithBitsILm64EEEEENS2_1VIT_EEiPKc.exit59
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.he, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISP_SQ_EESP_(ptr noundef nonnull align 8 dereferenceable(504) %i.hf, ptr %.sroa.02.0.copyload.i.i.i, i32 %.sroa.011.0.copyload.i.i)
  br label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_1VIS4_EE.exit.i

_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_1VIS4_EE.exit.i: ; preds = %bb.ai, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterINS2_12WordWithBitsILm64EEEEENS2_1VIT_EEiPKc.exit59
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.hh = load ptr, ptr %i.hg, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 880
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i, label %bb.aj, !prof !7

bb.aj:                                            ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_1VIS4_EE.exit.i
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %.sroa.02.0.copyload.i.i8.i = load ptr, ptr %i.hl, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISP_SQ_EESP_(ptr noundef nonnull align 8 dereferenceable(504) %i.hm, ptr %.sroa.02.0.copyload.i.i8.i, i32 %.sroa.011.0.copyload.i.i35)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i: ; preds = %bb.aj, %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEaSENS2_1VIS4_EE.exit.i
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ho = load ptr, ptr %i.hn, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 880
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i17.i, label %bb.ak, !prof !7

bb.ak:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 688
  %.sroa.02.0.copyload.i.i10.i = load ptr, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  tail call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISP_SQ_EESP_(ptr noundef nonnull align 8 dereferenceable(504) %i.ht, ptr %.sroa.02.0.copyload.i.i10.i, i32 %.sroa.011.0.copyload.i.i20)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i17.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i17.i: ; preds = %bb.ak, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.hv = load ptr, ptr %i.hu, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 880
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE20InitializeParametersENS6_1VINS0_6ObjectEEENSR_INS0_13BytecodeArrayEEENSR_INS6_12WordWithBitsILm64EEEEESY_.exit, label %bb.al, !prof !7

bb.al:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i17.i
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 720
  %.sroa.02.0.copyload.i.i16.i = load ptr, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  tail call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISP_SQ_EESP_(ptr noundef nonnull align 8 dereferenceable(504) %i.ia, ptr %.sroa.02.0.copyload.i.i16.i, i32 %.sroa.011.0.copyload.i.i50)
  br label %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE20InitializeParametersENS6_1VINS0_6ObjectEEENSR_INS0_13BytecodeArrayEEENSR_INS6_12WordWithBitsILm64EEEEESY_.exit

_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE20InitializeParametersENS6_1VINS0_6ObjectEEENSR_INS0_13BytecodeArrayEEENSR_INS6_12WordWithBitsILm64EEEEESY_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i17.i, %bb.al
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter21BitwiseNotAssemblerTS22GenerateBitwiseNotImplEv(ptr noundef nonnull align 8 dereferenceable(904) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::turboshaft::ConstOrV", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %i.f = or i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i.i.i.i = load i32, ptr %i.h, align 4
  %i.i = tail call i32 @_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE26GetInterpretedFramePointerEv(ptr noundef nonnull align 8 dereferenceable(704) %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE10GetContextEv.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSJ_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(704) %i.a, i32 %i.i, i32 -1, i8 16, i8 11, i8 4, i32 noundef -8, i8 noundef zeroext 0)
  br label %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE10GetContextEv.exit

_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE10GetContextEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.011.0.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.b ], [ -1, %bb.a ]
  %i.n = load ptr, ptr %i.b, align 8, !nonnull !5 ; 2 uses
  %2 = load i8, ptr %i.n, align 1                 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.o = load i8, ptr %3, align 1
  %i.p = icmp ult i8 %2, -44
  tail call void @llvm.assume(i1 %i.p)
  %i.q = zext i8 %2 to i64                        ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandCountE, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE23BytecodeOperandIdxInt32Ei.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE10GetContextEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18) #19
  unreachable

_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE23BytecodeOperandIdxInt32Ei.exit: ; preds = %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE10GetContextEv.exit
  %i.u = lshr i8 %i.o, 1
  %i.v = zext nneg i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandSizesE, i64 %i.v
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.q
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = tail call i32 @_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE15BytecodeOperandEiNS1_11OperandSizeE(ptr noundef nonnull align 8 dereferenceable(704) %i.a, i32 noundef 0, i8 noundef zeroext %i.z)
  %i.ab = load ptr, ptr %i.j, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint32ToUintPtrENS2_1VINS2_12WordWithBitsILm32EEEEE.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE23BytecodeOperandIdxInt32Ei.exit
  %i.ad = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSJ_4KindENSJ_10AssumptionENS2_18WordRepresentationESN_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, i32 %i.aa, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 0, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint32ToUintPtrENS2_1VINS2_12WordWithBitsILm32EEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint32ToUintPtrENS2_1VINS2_12WordWithBitsILm32EEEEE.exit: ; preds = %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE23BytecodeOperandIdxInt32Ei.exit, %bb.d
  %.sroa.07.0.i.i.i = phi i32 [ %i.ad, %bb.d ], [ -1, %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE23BytecodeOperandIdxInt32Ei.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i32 %.sroa.07.0.i.i.i, ptr %i.ae, align 8
  tail call void @_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE38LoadFeedbackVectorOrUndefinedIfJitlessEv(ptr noundef nonnull align 8 dereferenceable(580) %i.a)
  %i.af = tail call i32 @_ZN2v88internal21NumberBuiltinsReducerINS0_11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS7_15VariableReducerINS7_21EmitProjectionReducerINS7_18GenericReducerBaseINS7_13TSReducerBaseINS7_11StackBottomINS_4base3tmp5list1IJS1_S3_S4_S5_S8_S9_SC_EEEEEEEEEEEEEEEEEEEEEE10BitwiseNotENS7_1VINS0_7ContextEEENSS_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(712) %i.a, i32 %.sroa.011.0.i.i.i.i.i.i.i, i32 %.sroa.02.0.copyload.i.i.i.i)
  %i.ag = load ptr, ptr %i.b, align 8, !nonnull !5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = or i8 %i.ai, 2
  store i8 %i.aj, ptr %i.ah, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 880
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE14SetAccumulatorENS6_1VINS0_6ObjectEEE.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint32ToUintPtrENS2_1VINS2_12WordWithBitsILm32EEEEE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.g, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISP_SQ_EESP_(ptr noundef nonnull align 8 dereferenceable(504) %i.ap, ptr %.sroa.02.0.copyload.i.i.i, i32 %i.af)
  br label %_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE14SetAccumulatorENS6_1VINS0_6ObjectEEE.exit

_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE14SetAccumulatorENS6_1VINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint32ToUintPtrENS2_1VINS2_12WordWithBitsILm32EEEEE.exit, %bb.e
  tail call void @_ZN2v88internal24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS3_15VariableReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerES1_S4_S5_S8_EEEEEEEEEEEEEEEE14UpdateFeedbackEv(ptr noundef nonnull align 8 dereferenceable(580) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.aq = load ptr, ptr %i.b, align 8, !nonnull !5 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.at = load i8, ptr %i.as, align 1
  %i.au = lshr i8 %i.at, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.av
  %i.ax = zext i8 %i.ar to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i64
  store i64 %i.ba, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 1, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -1, ptr %i.bc, align 8
  %i.bd = tail call i32 @_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE7AdvanceENS6_8ConstOrVINS6_12WordWithBitsILm64EEEmEE(ptr noundef nonnull align 8 dereferenceable(704) %i.a, ptr noundef nonnull byval(%"class.v8::internal::compiler::turboshaft::ConstOrV") align 8 %1)
  %i.be = tail call i32 @_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE12LoadBytecodeENS6_1VINS6_12WordWithBitsILm64EEEEE(ptr noundef nonnull align 8 dereferenceable(704) %i.a, i32 %i.bd)
  tail call void @_ZN2v88internal11interpreter22BytecodeHandlerReducerINS0_15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS6_15VariableReducerINS6_21EmitProjectionReducerINS6_18GenericReducerBaseINS6_13TSReducerBaseINS6_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerES2_S3_S4_S7_S8_SB_EEEEEEEEEEEEEEEEEEEE43DispatchToBytecodeWithOptionalStarLookaheadENS6_1VINS6_12WordWithBitsILm64EEEEE(ptr noundef nonnull align 8 dereferenceable(704) %i.a, i32 %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15BuiltinsReducerINS0_24FeedbackCollectorReducerINS0_8compiler10turboshaft22MachineLoweringReducerINS4_15VariableReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerES1_S2_S5_S6_S9_EEEEEEEEEEEEEEEEEE10EmitEpilogEPNS4_5BlockE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.697", align 4    ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(904) %i.a, ptr noundef nonnull %i.f)
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i1 noundef zeroext false) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !6 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  %.not17 = icmp eq ptr %i.q, null
  br i1 %.not17, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS0_21NumberBuiltinsReducerENS0_11interpreter22BytecodeHandlerReducerENS0_15BuiltinsReducerENS0_24FeedbackCollectorReducerENS2_22MachineLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.t, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = load ptr, ptr %i.k, align 8
  %i.ab = load ptr, ptr %i.m, align 8
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp ult ptr %i.ai, %i.ak
  br i1 %i.al, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.m, align 8
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = add nsw i64 %i.aq, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.ar)
  %.pre.i = load ptr, ptr %i.k, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.g, %bb.h
  %i.as = phi ptr [ %i.ai, %bb.g ], [ %.pre.i, %bb.h ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.k, align 8
  store ptr %1, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = load ptr, ptr %i.au, align 8            ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.i, label %.preheader.i, !prof !7

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  br label %bb.m

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.av, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = sub nsw i32 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = sub nsw i32 %i.be, %i.bh
  %i.bj = icmp eq i32 %i.bf, %i.bi
  br i1 %i.bj, label %bb.j, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.j, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.bl, %bb.j ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.07.lcssa.i, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.0.i.i, ptr %i.bn, align 8
  %i.bo = load i32, ptr %i.bb, align 4
  %i.bp = add nsw i32 %i.bo, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  store i32 %i.bp, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.bs, ptr %i.bt, align 8
end_hunk_0
