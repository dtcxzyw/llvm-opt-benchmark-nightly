inline.NumInlined: 7185
inline.NumDeleted: 2643
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE20BuildWasmToJSWrapperENS1_14ImportCallKindEiNS1_7SuspendE:bb.a

_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i, %bb.v
  %.sroa.0.0.i = phi i8 [ %switch.masked, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i ], [ 4, %bb.v ]
  %i.fs = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 536 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.fu = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 544 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %i.fx = load ptr, ptr %i.ft, align 8            ; 3 uses
  %i.fy = ptrtoint ptr %i.fw to i64               ; 2 uses
  %i.fz = ptrtoint ptr %i.fx to i64               ; 3 uses
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 2
  %.not.i197 = icmp ugt i64 %i.gb, %i.fu
  br i1 %.not.i197, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit
  %i.gc = add nuw nsw i64 %indvars.iv, 3          ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fs, i64 552
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = sub i64 %i.gf, %i.fz
  %i.gh = ashr exact i64 %i.gg, 2
  %i.gi = icmp ult i64 %i.gh, %i.gc
  br i1 %i.gi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(136) %i.ft, i64 noundef %i.gc)
  %.pre.i.i208 = load ptr, ptr %i.ft, align 8     ; 2 uses
  %.pre.i209 = load ptr, ptr %i.fv, align 8       ; 2 uses
  %.pre16.i210 = ptrtoint ptr %.pre.i.i208 to i64
  %.pre17.i211 = ptrtoint ptr %.pre.i209 to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pre-phi18.i198 = phi i64 [ %.pre17.i211, %bb.x ], [ %i.fy, %bb.w ]
  %.pre-phi.i199 = phi i64 [ %.pre16.i210, %bb.x ], [ %i.fz, %bb.w ]
  %i.gj = phi ptr [ %.pre.i209, %bb.x ], [ %i.fw, %bb.w ] ; 2 uses
  %i.gk = phi ptr [ %.pre.i.i208, %bb.x ], [ %i.fx, %bb.w ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gc ; 2 uses
  %i.gm = icmp ugt ptr %i.gl, %i.gj
  br i1 %i.gm, label %.lr.ph.i.i.i.i.preheader.i206, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i200

.lr.ph.i.i.i.i.preheader.i206:                    ; preds = %bb.y
  %i.gn = shl nuw nsw i64 %i.gc, 2
  %i.go = add nsw i64 %i.gn, -4
  %i.gp = sub i64 %i.go, %.pre-phi18.i198
  %i.gq = add i64 %i.gp, %.pre-phi.i199
  %i.gr = and i64 %i.gq, -4
  %i.gs = add i64 %i.gr, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.gj, i8 -1, i64 %i.gs, i1 false)
  %.pre13.pre.i207 = load ptr, ptr %i.ft, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i200

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i200: ; preds = %.lr.ph.i.i.i.i.preheader.i206, %bb.y
  %.pre13.i201 = phi ptr [ %.pre13.pre.i207, %.lr.ph.i.i.i.i.preheader.i206 ], [ %i.gk, %bb.y ]
  store ptr %i.gl, ptr %i.fv, align 8
  br label %bb.z

bb.z:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i200, %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit
  %i.gt = phi ptr [ %.pre13.i201, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i200 ], [ %i.fx, %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.fu ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4            ; 2 uses
  %.not12.i202 = icmp eq i32 %i.gv, -1
  br i1 %.not12.i202, label %bb.aa, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit212

bb.aa:                                            ; preds = %bb.z
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fs, i64 672
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i204, label %bb.ab, !prof !5

bb.ab:                                            ; preds = %bb.aa
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.ha = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.hb = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.gz, i32 noundef %i.ha, i8 %.sroa.0.0.i, ptr noundef null)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i204

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i204: ; preds = %bb.ab, %bb.aa
  %.sroa.03.0.i.i205 = phi i32 [ %i.hb, %bb.ab ], [ -1, %bb.aa ] ; 2 uses
  store i32 %.sroa.03.0.i.i205, ptr %i.gu, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit212

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit212: ; preds = %bb.z, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i204
  %.sroa.011.0.copyload.i203 = phi i32 [ %i.gv, %bb.z ], [ %.sroa.03.0.i.i205, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i204 ]
  %i.hc = load ptr, ptr %5, align 8
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv
  store i32 %.sroa.011.0.copyload.i203, ptr %i.hd, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

bb.ac:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit
  %i.he = getelementptr inbounds nuw i8, ptr %i.fa, i64 536
  %i.hf = load ptr, ptr %0, align 8
  %i.hg = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WasmCallRuntimeEPNS0_4ZoneENS0_7Runtime10FunctionIdESt16initializer_listIKNS2_7OpIndexEENS2_1VINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.he, ptr noundef %i.hf, i32 noundef 571, ptr null, i64 0, i32 %.sroa.011.0.i.i.i.i) ; 0 uses
  %i.hh = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 672
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit, label %bb.ad, !prof !5

bb.ad:                                            ; preds = %bb.ac
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hm = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_13UnreachableOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hl) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit

bb.ae:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fa, i64 672 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i: ; preds = %bb.ae
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fa, i64 32 ; 2 uses
  %i.hr = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hq)
  %.pr.i = load ptr, ptr %i.hn, align 8
  %i.hs = icmp eq ptr %.pr.i, null
  br i1 %i.hs, label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit, label %bb.af, !prof !15

bb.af:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.ht = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hq, i32 %i.hr, i32 -1, i8 48, i8 7, i8 1, i32 noundef 520, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit

_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit: ; preds = %bb.ae, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i, %bb.af
  %.sroa.014.0.i = phi i32 [ -1, %bb.ae ], [ %i.ht, %bb.af ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i ] ; 8 uses
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %2, i32 %i.e) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.hu = add nsw i32 %.sroa.speculated, 4        ; 3 uses
  %i.hv = sext i32 %i.hu to i64                   ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  store ptr %i.hw, ptr %6, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store ptr %i.hw, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.hz, ptr %i.hy, align 8
  %i.ia = icmp ugt i32 %i.hu, 16
  br i1 %i.ia, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit215, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit215.thread

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit215.thread: ; preds = %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hv
  store ptr %i.ib, ptr %i.hx, align 8
  br label %bb.ah

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit215: ; preds = %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %6, i64 noundef %i.hv)
  %.pre.i214 = load ptr, ptr %6, align 8          ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.pre.i214, i64 %i.hv
  store ptr %i.ic, ptr %i.hx, align 8
  %i.id = icmp ult i32 %i.hu, 65535
  br i1 %i.id, label %bb.ah, label %bb.ag, !prof !23

bb.ag:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit215
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19) #20
  unreachable

bb.ah:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit215.thread, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit215
  %i.ie = phi ptr [ %i.hw, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit215.thread ], [ %.pre.i214, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit215 ]
  %i.if = icmp eq i8 %1, 6
  %i.ig = select i1 %i.if, i32 3, i32 1           ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 7 uses
  store ptr %i.ih, ptr %7, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %i.ih, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.ik, ptr %i.ij, align 8
  %i.il = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.im = load ptr, ptr %5, align 8               ; 4 uses
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io                    ; 8 uses
  %i.iq = icmp ugt i64 %i.ip, 64
  br i1 %i.iq, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %7)
  %i.ir = icmp ugt i64 %i.ip, 9223372036854775804
  br i1 %i.ir, label %bb.aj, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i, !prof !5

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i: ; preds = %bb.ai
  %i.is = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ip) #21 ; 9 uses
  store ptr %i.is, ptr %7, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ip
  store ptr %i.it, ptr %i.ij, align 8
  %i.iu = load ptr, ptr %5, align 8               ; 6 uses
  %i.iv = load ptr, ptr %i.dl, align 8            ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.iu, %i.iv
  br i1 %.not9.i.i.i.i.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ERKS7_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i
  %i.iw = ptrtoaddr ptr %i.iu to i64
  %i.ix = ptrtoaddr ptr %i.is to i64
  %i.iy = ptrtoint ptr %i.iv to i64
  %i.iz = ptrtoint ptr %i.iu to i64
  %17 = add i64 %i.iy, -4
  %18 = sub i64 %17, %i.iz                        ; 2 uses
  %i.ja = lshr i64 %18, 2
  %i.jb = add nuw nsw i64 %i.ja, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %18, 44
  %i.jc = sub i64 %i.iw, %i.ix
  %diff.check = icmp ugt i64 %i.jc, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader491, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.jb, 9223372036854775800     ; 3 uses
  %i.jd = shl i64 %n.vec, 2                       ; 2 uses
  %i.je = getelementptr i8, ptr %i.is, i64 %i.jd
  %i.jf = getelementptr i8, ptr %i.iu, i64 %i.jd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jg = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.is, i64 %i.jg ; 2 uses
  %next.gep488 = getelementptr i8, ptr %i.iu, i64 %i.jg ; 2 uses
  %i.jh = getelementptr i8, ptr %next.gep488, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep488, align 4
  %wide.load489 = load <4 x i32>, ptr %i.jh, align 4
  %i.ji = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load489, ptr %i.ji, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jb, %n.vec
  br i1 %cmp.n, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ERKS7_.exit, label %.lr.ph.i.i.i.i.i.preheader491

.lr.ph.i.i.i.i.i.preheader491:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.preheader ], [ %i.je, %middle.block ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.preheader ], [ %i.jf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader491, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader491 ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader491 ] ; 2 uses
  %i.jk = load i32, ptr %.0810.i.i.i.i.i, align 4
  store i32 %i.jk, ptr %.011.i.i.i.i.i, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.jl, %i.iv
  br i1 %.not.i.i.i.i.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ERKS7_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !27

bb.ak:                                            ; preds = %bb.ah
  %i.jn = icmp samesign ugt i64 %i.ip, 4
  br i1 %i.jn, label %bb.al, label %bb.am, !prof !11

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr align 4 %i.im, i64 %i.ip, i1 false)
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ERKS7_.exit

bb.am:                                            ; preds = %bb.ak
  %i.jo = icmp eq i64 %i.ip, 4
  br i1 %i.jo, label %bb.an, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ERKS7_.exit

bb.an:                                            ; preds = %bb.am
  %i.jp = load i32, ptr %i.im, align 4
  store i32 %i.jp, ptr %i.ih, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ERKS7_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ERKS7_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i, %bb.al, %bb.am, %bb.an
  %i.jq = phi ptr [ %i.is, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i ], [ %i.ih, %bb.an ], [ %i.ih, %bb.am ], [ %i.ih, %bb.al ], [ %i.is, %middle.block ], [ %i.is, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.ip
  store ptr %i.jr, ptr %i.ii, align 8
  %i.js = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i216 = icmp eq ptr %i.il, %i.im
  br i1 %.not.i216, label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE16AddArgumentNodesENS_4base6VectorINS4_7OpIndexEEEiNSB_11SmallVectorISD_Lm16ESaISD_EEEPKNS1_12CanonicalSigENS4_1VINS0_7ContextEEE.exit, label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ERKS7_.exit
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.jv = zext nneg i32 %i.ig to i64
  br label %bb.ao

._crit_edge.loopexit.i:                           ; preds = %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit.i
  %i.jw = trunc nsw i64 %indvars.iv.next.i to i32
  br label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE16AddArgumentNodesENS_4base6VectorINS4_7OpIndexEEEiNSB_11SmallVectorISD_Lm16ESaISD_EEEPKNS1_12CanonicalSigENS4_1VINS0_7ContextEEE.exit

bb.ao:                                            ; preds = %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit.i, %.lr.ph.i217
  %indvars.iv.i = phi i64 [ %i.jv, %.lr.ph.i217 ], [ %indvars.iv.next.i, %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit.i ] ; 2 uses
  %i.jx = phi ptr [ %i.jq, %.lr.ph.i217 ], [ %i.kj, %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit.i ]
  %.01113.i = phi i64 [ 0, %.lr.ph.i217 ], [ %i.kh, %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit.i ] ; 4 uses
  %i.jy = load i64, ptr %i.jt, align 8
  %i.jz = icmp ult i64 %.01113.i, %i.jy
  br i1 %i.jz, label %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit.i, label %bb.ap, !prof !11

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #20
  unreachable

_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit.i: ; preds = %bb.ao
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %.01113.i
  %.sroa.02.0.copyload.i = load i32, ptr %i.ka, align 4
  %i.kb = load ptr, ptr %i.ju, align 8
  %i.kc = load i64, ptr %i.js, align 8
  %i.kd = getelementptr [4 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = getelementptr [4 x i8], ptr %i.kd, i64 %.01113.i
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ke, align 4
  %i.kf = call i32 @_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE4ToJSENS4_7OpIndexENS1_18CanonicalValueTypeENS4_1VINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 %.sroa.02.0.copyload.i, i32 %.sroa.0.0.copyload.i.i, i32 %.sroa.011.0.i.i.i.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.i
  store i32 %i.kf, ptr %i.kg, align 4
  %i.kh = add nuw i64 %.01113.i, 1                ; 2 uses
  %i.ki = load ptr, ptr %i.ii, align 8
  %i.kj = load ptr, ptr %7, align 8               ; 2 uses
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = ashr exact i64 %i.km, 2
  %i.ko = icmp ult i64 %i.kh, %i.kn
  br i1 %i.ko, label %bb.ao, label %._crit_edge.loopexit.i, !llvm.loop !28

_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE16AddArgumentNodesENS_4base6VectorINS4_7OpIndexEEEiNSB_11SmallVectorISD_Lm16ESaISD_EEEPKNS1_12CanonicalSigENS4_1VINS0_7ContextEEE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ERKS7_.exit, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i32 [ %i.ig, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EEC2ERKS7_.exit ], [ %i.jw, %._crit_edge.loopexit.i ] ; 2 uses
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %7)
  %i.kp = icmp sgt i32 %2, %i.e
  br i1 %i.kp, label %.lr.ph391.preheader, label %._crit_edge392

.lr.ph391.preheader:                              ; preds = %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE16AddArgumentNodesENS_4base6VectorINS4_7OpIndexEEEiNSB_11SmallVectorISD_Lm16ESaISD_EEEPKNS1_12CanonicalSigENS4_1VINS0_7ContextEEE.exit
  %i.kq = sext i32 %.0.lcssa.i to i64             ; 2 uses
  %i.kr = sub i32 %2, %i.e
  %xtraiter = and i32 %i.kr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph391.prol.loopexit, label %.lr.ph391.prol

.lr.ph391.prol:                                   ; preds = %.lr.ph391.preheader, %.lr.ph391.prol
  %indvars.iv400.prol = phi i64 [ %indvars.iv.next401.prol, %.lr.ph391.prol ], [ %i.kq, %.lr.ph391.preheader ] ; 2 uses
  %.0168389.prol = phi i32 [ %i.ku, %.lr.ph391.prol ], [ %i.e, %.lr.ph391.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph391.prol ], [ 0, %.lr.ph391.preheader ]
  %indvars.iv.next401.prol = add nsw i64 %indvars.iv400.prol, 1 ; 3 uses
  %i.ks = load ptr, ptr %6, align 8
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv400.prol
  store i32 %.sroa.014.0.i, ptr %i.kt, align 4
  %i.ku = add nsw i32 %.0168389.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph391.prol.loopexit, label %.lr.ph391.prol, !llvm.loop !29

.lr.ph391.prol.loopexit:                          ; preds = %.lr.ph391.prol, %.lr.ph391.preheader
  %indvars.iv.next401.lcssa.unr = phi i64 [ poison, %.lr.ph391.preheader ], [ %indvars.iv.next401.prol, %.lr.ph391.prol ]
  %indvars.iv400.unr = phi i64 [ %i.kq, %.lr.ph391.preheader ], [ %indvars.iv.next401.prol, %.lr.ph391.prol ]
  %.0168389.unr = phi i32 [ %i.e, %.lr.ph391.preheader ], [ %i.ku, %.lr.ph391.prol ]
  %i.kv = sub i32 %i.e, %2
  %i.kw = icmp ugt i32 %i.kv, -4
  br i1 %i.kw, label %._crit_edge392.loopexit, label %.lr.ph391

._crit_edge392.loopexit:                          ; preds = %.lr.ph391, %.lr.ph391.prol.loopexit
  %indvars.iv.next401.lcssa = phi i64 [ %indvars.iv.next401.lcssa.unr, %.lr.ph391.prol.loopexit ], [ %indvars.iv.next401.3, %.lr.ph391 ]
  %i.kx = trunc nsw i64 %indvars.iv.next401.lcssa to i32
  br label %._crit_edge392

._crit_edge392:                                   ; preds = %._crit_edge392.loopexit, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE16AddArgumentNodesENS_4base6VectorINS4_7OpIndexEEEiNSB_11SmallVectorISD_Lm16ESaISD_EEEPKNS1_12CanonicalSigENS4_1VINS0_7ContextEEE.exit
  %.0167.lcssa = phi i32 [ %.0.lcssa.i, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE16AddArgumentNodesENS_4base6VectorINS4_7OpIndexEEEiNSB_11SmallVectorISD_Lm16ESaISD_EEEPKNS1_12CanonicalSigENS4_1VINS0_7ContextEEE.exit ], [ %i.kx, %._crit_edge392.loopexit ] ; 2 uses
  %i.ky = load ptr, ptr %i.f, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 672
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit220, label %bb.aq, !prof !5

bb.aq:                                            ; preds = %._crit_edge392
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.ld = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.lc, i32 %.sroa.011.0.copyload.i, i32 -1, i8 17, i8 12, i8 4, i32 noundef 32, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit220

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit220: ; preds = %._crit_edge392, %bb.aq
  %.sroa.011.0.i.i.i.i219 = phi i32 [ %i.ld, %bb.aq ], [ -1, %._crit_edge392 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.le = call i64 @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE36BuildSwitchToTheCentralStackIfNeededEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 3 uses
  store i64 %i.le, ptr %8, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.lg = icmp eq i32 %3, 0                       ; 2 uses
  %i.lh = trunc i64 %i.le to i32
  %i.li = lshr i64 %i.le, 32
  %i.lj = trunc nuw i64 %i.li to i32
  br i1 %i.lg, label %bb.ar, label %bb.bk

.lr.ph391:                                        ; preds = %.lr.ph391.prol.loopexit, %.lr.ph391
  %indvars.iv400 = phi i64 [ %indvars.iv.next401.3, %.lr.ph391 ], [ %indvars.iv400.unr, %.lr.ph391.prol.loopexit ] ; 5 uses
  %.0168389 = phi i32 [ %i.lv, %.lr.ph391 ], [ %.0168389.unr, %.lr.ph391.prol.loopexit ]
  %i.lk = load ptr, ptr %6, align 8
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv400
  store i32 %.sroa.014.0.i, ptr %i.ll, align 4
  %i.lm = load ptr, ptr %6, align 8
  %i.ln = getelementptr [4 x i8], ptr %i.lm, i64 %indvars.iv400
  %i.lo = getelementptr i8, ptr %i.ln, i64 4
  store i32 %.sroa.014.0.i, ptr %i.lo, align 4
  %i.lp = load ptr, ptr %6, align 8
  %i.lq = getelementptr [4 x i8], ptr %i.lp, i64 %indvars.iv400
  %i.lr = getelementptr i8, ptr %i.lq, i64 8
  store i32 %.sroa.014.0.i, ptr %i.lr, align 4
  %indvars.iv.next401.3 = add nsw i64 %indvars.iv400, 4 ; 2 uses
  %i.ls = load ptr, ptr %6, align 8
  %i.lt = getelementptr [4 x i8], ptr %i.ls, i64 %indvars.iv400
  %i.lu = getelementptr i8, ptr %i.lt, i64 12
end_hunk_0
begin_hunk_1_@_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE4GrowEm:bb.a
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #19
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #12 comdat {
bb.a:
  tail call void @abort() #20
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES8_SB_EEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSD_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSN_13VariableTableES4_S5_E16StartNewSnapshotISV_EEvNSS_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSS_IKT0_EEEEUlSR_RST_S1C_E_EEvS12_S15_RS1A_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.idx = shl nuw nsw i64 %2, 2                   ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not70 = icmp eq ptr %i.o, %i.p
  br i1 %.not70, label %.loopexit, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03465 = load ptr, ptr %i.t, align 8           ; 2 uses
  %.not3766 = icmp eq ptr %.03465, %i.e
  br i1 %.not3766, label %._crit_edge, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.f
  %i.u = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph68

.loopexit63:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, %.lr.ph68
  %.034 = load ptr, ptr %.03467, align 8          ; 2 uses
  %.not37 = icmp eq ptr %.034, %i.e
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !79

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !80

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit63
  %.03467 = phi ptr [ %.034, %.loopexit63 ], [ %.03465, %.lr.ph68.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03467, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.03467, i64 24
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp samesign eq i64 %i.aa, %i.w
  br i1 %i.ab, label %.loopexit63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.aa
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit
  %.sroa.047.064 = phi ptr [ %i.ad, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.047.064, i64 -16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !9, !align !10 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.047.064, i64 -4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp eq i64 %indvars.iv, %i.ai
  br i1 %i.aj, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.h, align 8
  %i.ao = load ptr, ptr %i.i, align 8
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = add nsw i64 %i.as, %2
  %i.au = icmp ult i64 %i.at, 4294967296
  br i1 %i.au, label %bb.j, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #20
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.av = trunc i64 %i.as to i32
  store i32 %i.av, ptr %i.ak, align 4
  %i.aw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ax = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ay = icmp ult ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %i.m, align 8
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = add nsw i64 %i.bd, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.be)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i: ; preds = %bb.k, %bb.j
  %i.bf = phi ptr [ %i.aw, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.j, align 8
  store ptr %i.ae, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bj = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.bk = ptrtoint ptr %i.bh to i64               ; 4 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 5 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = ashr exact i64 %i.bm, 2                 ; 2 uses
  %i.bo = xor i64 %i.bn, -1
  %.not.i42 = icmp ugt i64 %2, %i.bo
  br i1 %.not.i42, label %bb.l, label %bb.m, !prof !5

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #20
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE9push_backEOS8_.exit.i
  %i.bp = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bl                    ; 2 uses
  %i.bs = ashr exact i64 %i.br, 2
  %i.bt = add nsw i64 %i.bn, %2                   ; 2 uses
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit

bb.n:                                             ; preds = %bb.m
  %i.bv = icmp eq ptr %i.bj, %i.bp
  %i.bw = ashr exact i64 %i.br, 1
  %i.bx = select i1 %i.bv, i64 2, i64 %i.bw
  %i.by = tail call noundef i64 @llvm.umax.i64(i64 %i.bx, i64 %i.bt) ; 3 uses
  %i.bz = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.ca = icmp ult i64 %i.by, 4611686018427387903
  br i1 %i.ca, label %bb.p, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #20
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cb = shl nuw i64 %i.by, 2
  %i.cc = add nuw i64 %i.cb, 4
  %i.cd = and i64 %i.cc, -8                       ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.ci = sub i64 %i.cf, %i.ch
  %i.cj = icmp ugt i64 %i.cd, %i.ci
  br i1 %i.cj, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, !prof !5

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.cd) #19
  %.pre.i.i.i44 = load i64, ptr %i.cg, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i: ; preds = %bb.q, %bb.p
  %i.ck = phi i64 [ %.pre.i.i.i44, %bb.q ], [ %i.ch, %bb.p ] ; 2 uses
  %i.cl = inttoptr i64 %i.ck to ptr               ; 4 uses
  %i.cm = add i64 %i.ck, %i.cd
  store i64 %i.cm, ptr %i.cg, align 8
  store ptr %i.cl, ptr %i.i, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.bm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %2
  store ptr %i.co, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.bj, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cl, ptr nonnull align 4 %i.bj, i64 %i.bm, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %.pre.i43 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i, %bb.r
  %i.cp = phi ptr [ %.pre.i43, %bb.r ], [ %i.cl, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.by
  store ptr %i.cq, ptr %i.n, align 8
  br label %._crit_edge.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit: ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %2
  store ptr %i.cr, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread
  %.pn = phi ptr [ %i.bj, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit ], [ %i.cp, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit.thread ] ; 2 uses
  %.pn94 = ptrtoint ptr %.pn to i64               ; 3 uses
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bm ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  %.pre20.i.i = load i32, ptr %i.bi, align 8      ; 2 uses
  %5 = add i64 %i.bl, -1
  %6 = add i64 %.idx, %.pn94
  %i.ct = add i64 %6, %i.bk
  %i.cu = sub i64 %i.ct, %i.bl
  %i.cv = add i64 %.pn94, 4
  %i.cw = add i64 %i.cv, %i.bk
  %7 = sub i64 %i.cw, %i.bl
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %7)
  %i.cx = add i64 %5, %umax
  %8 = add i64 %.pn94, %i.bk
  %9 = sub i64 %i.cx, %8                          ; 2 uses
  %i.cy = lshr i64 %9, 2
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 28
  br i1 %min.iters.check, label %.lr.ph18.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i
  %n.vec = and i64 %i.cz, 9223372036854775800     ; 3 uses
  %i.da = shl i64 %n.vec, 2
  %i.db = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.da
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre20.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dd, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %._crit_edge.i.i, %middle.block
  %.116.i.i.ph = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.db, %middle.block ]
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.df, %.lr.ph18.i.i ], [ %.116.i.i.ph, %.lr.ph18.i.i.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 4 ; 2 uses
  store i32 %.pre20.i.i, ptr %.116.i.i, align 4
  %i.dg = icmp ult ptr %i.df, %i.cs
  br i1 %i.dg, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !82

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i, %middle.block
  %.pre.i = load i32, ptr %i.ak, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.dh = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6insertEPKS4_mRS6_.exit.i ], [ %i.al, %bb.g ]
  %i.di = add i32 %i.dh, %i.u
  %i.dj = zext i32 %i.di to i64
  %i.dk = load ptr, ptr %i.i, align 8
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load i32, ptr %i.af, align 4
  store i32 %i.dm, ptr %i.dl, align 4
  store i32 %i.u, ptr %i.ag, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.s
  %i.dn = icmp eq ptr %i.ad, %i.y
  br i1 %i.dn, label %.loopexit63, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %.03571 = phi ptr [ %i.o, %.lr.ph.i.lr.ph ], [ %i.gy, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.do = load ptr, ptr %.03571, align 8          ; 8 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = zext i32 %i.dq to i64
  %i.ds = load ptr, ptr %i.i, align 8
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dr ; 5 uses
  %i.du = load ptr, ptr %3, align 8               ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 -8
  br label %bb.u

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.023.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.dx, %i.dv
  br i1 %.not.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.023.i = phi ptr [ %i.dt, %.lr.ph.i ], [ %i.dx, %bb.t ] ; 2 uses
  %i.dy = load i32, ptr %.023.i, align 4          ; 2 uses
  %.not21.i = icmp eq i32 %i.dy, -1
  br i1 %.not21.i, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i: ; preds = %bb.u
  %i.dz = load ptr, ptr %i.dw, align 8, !nonnull !9, !align !10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ed = zext i32 %i.dy to i64
  %i.ee = add i64 %i.ec, %i.ed
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load i8, ptr %i.ef, align 4
  %i.eh = icmp eq i8 %i.eg, 76
  br i1 %i.eh, label %bb.v, label %bb.t

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 640
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  %i.el = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.du)
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit

._crit_edge.i:                                    ; preds = %bb.t
  %.sroa.0.0.copyload.i = load i8, ptr %i.do, align 8 ; 2 uses
  %.not.i.i38 = icmp eq i8 %.sroa.0.0.copyload.i, 8
  br i1 %.not.i.i38, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 640
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit, label %bb.y, !prof !5

bb.y:                                             ; preds = %bb.x
  %i.ep = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEEEE9ReducePhiENS8_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(504) %i.du, ptr %i.dt, i64 %2, i8 %.sroa.0.0.copyload.i), !inline_history !83
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit

bb.z:                                             ; preds = %._crit_edge.i
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.dt, align 4
  %i.eq = zext i32 %.sroa.01.0.copyload.i.i to i64
  %i.er = add i64 %i.ec, %i.eq
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = load i8, ptr %i.es, align 4
  %i.eu = icmp eq i8 %i.et, 92
  br i1 %i.eu, label %bb.aa, label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ev = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE15MergeFrameStateENS8_6VectorIKNS2_7OpIndexEEE(ptr noundef nonnull align 8 dereferenceable(504) %i.du, ptr nonnull %i.dt, i64 %2), !inline_history !83
  br label %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit

_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.copyload.i40 = phi i32 [ -1, %bb.z ], [ -1, %bb.v ], [ %i.el, %bb.w ], [ -1, %bb.x ], [ %i.ev, %bb.aa ], [ %i.ep, %bb.y ], [ -1, %bb.u ] ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8            ; 3 uses
  %.not62 = icmp eq i32 %i.ex, %.sroa.0.0.copyload.i40
  br i1 %.not62, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEENS8_6VectorIKSM_EEE_clESO_SR_.exit
  %i.ey = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.ez = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.fa = icmp ult ptr %i.ey, %i.ez
  br i1 %i.fa, label %bb.ad, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.fb = load ptr, ptr %i.f, align 8
  %i.fc = ptrtoint ptr %i.ez to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ashr exact i64 %i.fe, 4
  %i.fg = add nsw i64 %i.ff, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.fg)
  %.pre.i.i.i39 = load ptr, ptr %i.q, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fh = phi ptr [ %i.ey, %bb.ab ], [ %.pre.i.i.i39, %bb.ac ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store ptr %i.fi, ptr %i.q, align 8
  store ptr %i.do, ptr %i.fh, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i32 %i.ex, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  store i32 %.sroa.0.0.copyload.i40, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %.sroa.0.0.copyload.i40, ptr %i.ew, align 8
  %i.fj = load ptr, ptr %4, align 8               ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !range !32, !noundef !9
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i41 = icmp eq i32 %i.ex, -1
  %.not6.i.i = icmp eq i32 %.sroa.0.0.copyload.i40, -1 ; 2 uses
  br i1 %.not.i.i41, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not6.i.i, label %bb.ag, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.ag:                                            ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8            ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 360 ; 4 uses
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  store i64 %i.fo, ptr %i.fs, align 8
  %i.ft = load ptr, ptr %i.fp, align 8
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fj, i64 352
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fo
  %i.fy = load i64, ptr %i.fu, align 8
  store i64 %i.fy, ptr %i.fx, align 8
  store i64 -1, ptr %i.fn, align 8
  %i.fz = load ptr, ptr %i.fp, align 8
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -8
  store ptr %i.ga, ptr %i.fp, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataEE4GrowEm:bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #19
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE12SnapshotDataEA_SA_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE12SnapshotDataEA_SA_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE12SnapshotDataEA_SA_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE12SnapshotDataEA_SA_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE12SnapshotDataEA_SA_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #19
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_7OpIndexENS4_12VariableDataEEEA_S9_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre5 = ptrtoint ptr %.pre to i64
  %.pre6 = sub i64 %.pre10.i.i.i.i, %.pre5
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi7 = phi i64 [ %i.i, %bb.a ], [ %.pre6, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi7 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi7, 4
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
  store i8 76, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 4 uses
  %i.ak = lshr i64 %i.i, 4
  %i.al = and i64 %i.ak, 268435455                ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %.not.i.i = icmp ugt i64 %i.at, %i.al
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  %i.av = lshr i64 %i.al, 1
  %i.aw = add nuw nsw i64 %i.al, 32
  %i.ax = add nuw nsw i64 %i.aw, %i.av
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %i.ao, align 8
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.be)
  %.pre.i.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bf = phi ptr [ %.pre.i.i, %bb.c ], [ %i.ap, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bg = trunc i64 %i.i to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.al
  store i32 %.sroa.0.0.copyload.i, ptr %i.bh, align 4
  ret i32 %i.bg
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !101

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i16 noundef zeroext %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre10 = ptrtoint ptr %.pre to i64
  %.pre11 = sub i64 %.pre10.i.i.i.i, %.pre10
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi12 = phi i64 [ %i.i, %bb.a ], [ %.pre11, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi12 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi12, 4
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
  store i8 97, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i16 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %3, ptr %i.ak, align 2
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = zext i32 %1 to i64
  %i.ao = add i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %i.as = add nuw i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 4 uses
  %i.av = lshr i64 %i.i, 4
  %i.aw = and i64 %i.av, 268435455                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 208 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  %.not.i.i8 = icmp ugt i64 %i.be, %i.aw
  br i1 %.not.i.i8, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 200 ; 2 uses
  %i.bg = lshr i64 %i.aw, 1
  %i.bh = add nuw nsw i64 %i.aw, 32
  %i.bi = add nuw nsw i64 %i.bh, %i.bg
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.az, align 8
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10RttCanonOpEJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEENS2_7OpIndexEDpT0_:bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre10 = ptrtoint ptr %.pre to i64
  %.pre11 = sub i64 %.pre10.i.i.i.i, %.pre10
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi12 = phi i64 [ %i.i, %bb.a ], [ %.pre11, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi12 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi12, 4
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
  store i8 17, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %2, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.f, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %1 to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.aq, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit
  %i.ar = add nuw i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 4 uses
  %i.au = lshr i64 %i.i, 4
  %i.av = and i64 %i.au, 268435455                ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 216
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 208 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2
  %.not.i.i8 = icmp ugt i64 %i.bd, %i.av
  br i1 %.not.i.i8, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 200 ; 2 uses
  %i.bf = lshr i64 %i.av, 1
  %i.bg = add nuw nsw i64 %i.av, 32
  %i.bh = add nuw nsw i64 %i.bg, %i.bf
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 224
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.ay, align 8
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef %i.bo)
  %.pre.i.i = load ptr, ptr %i.ay, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit, %bb.d
  %i.bp = phi ptr [ %.pre.i.i, %bb.d ], [ %i.az, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit ]
  %i.bq = trunc i64 %i.i to i32
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.av
  store i32 %.sroa.0.0.copyload.i, ptr %i.br, align 4
  ret i32 %i.bq
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit

_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #6 comdat align 2 {
_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !105

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12FrameStateOpEJNS2_27ShadowyOpIndexVectorWrapperEbPKNS2_14FrameStateDataEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = add i64 %2, 5
  %i.k = lshr i64 %i.j, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 2) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.n, %i.e
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %.sroa.speculated.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.r = sub i64 %i.n, %i.h
  %i.s = lshr exact i64 %i.r, 3
  %i.t = and i64 %i.s, 4294967295
  %i.u = add nuw i64 %i.t, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.u)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre10 = ptrtoint ptr %.pre to i64
  %.pre11 = sub i64 %.pre10.i.i.i.i, %.pre10
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi12 = phi i64 [ %.pre11, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 10 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi12 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi12, 4
  %i.ac = and i64 %i.ab, 268435455
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac
  store i16 %i.y, ptr %i.ad, align 2
  %i.ae = load ptr, ptr %i.z, align 8
  %.tr.i.i.i.i = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.af = shl i32 %.tr.i.i.i.i, 3
  %i.ag = add i32 %i.af, %i.x
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.aj
  store i16 %i.y, ptr %i.ak, align 2
  store i8 92, ptr %i.v, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.an = trunc i64 %2 to i16                     ; 2 uses
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.ap = icmp ugt i64 %2, 1
  br i1 %i.ap, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i.i = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 4 %1, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.aq = icmp eq i64 %2, 1
  br i1 %i.aq, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread, label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread: ; preds = %bb.d
  %i.ar = load i32, ptr %1, align 4
  store i32 %i.ar, ptr %i.ao, align 4
  %i.as = zext i1 %3 to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.as, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  br label %.lr.ph.i.preheader

_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit: ; preds = %bb.c, %bb.d
  %i.aw = zext i1 %3 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.ay, align 8
  %i.az = shl i64 %2, 2
  %.idx.i = and i64 %i.az, 262140
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.an, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12FrameStateOpEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit
  %i.bb = phi ptr [ %i.av, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit.thread ], [ %i.ba, %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %.011.i = phi ptr [ %i.bk, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ], [ %i.ao, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.bc = load ptr, ptr %i.f, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = zext i32 %.sroa.01.0.copyload.i to i64
  %i.bf = add i64 %i.bd, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.bi, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.e, !prof !5

bb.e:                                             ; preds = %.lr.ph.i
  %i.bj = add nuw i8 %i.bi, 1
  store i8 %i.bj, ptr %i.bh, align 1
end_hunk_3
begin_hunk_4_@_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EEaSERKSA_:bb.a
  %i.bf = icmp ult ptr %i.be, %i.bb
  br i1 %i.bf, label %.lr.ph46, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit.loopexit, !llvm.loop !110

bb.i:                                             ; preds = %bb.d
  store ptr null, ptr %i.e, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit.loopexit: ; preds = %.lr.ph46
  %.pre47 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit: ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit.loopexit, %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EA_SA_EEPT_m.exit, %bb.i
  %i.bg = phi ptr [ %.pre47, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit.loopexit ], [ %i.ay, %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EA_SA_EEPT_m.exit ], [ null, %bb.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ao
  store ptr %i.bh, ptr %i.c, align 8
  %i.bi = load ptr, ptr %i.j, align 8
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bm
  store ptr %i.bn, ptr %i.ak, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEES6_EE16CopyToNewStorageEPS9_PKS9_SD_.exit
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = shl i64 %i.c, 1                          ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.d, i64 32) ; 6 uses
  %i.e = sub i64 %.sroa.speculated, %i.c          ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp ult i64 %i.e, 177372539170284150
  br i1 %i.h, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = mul nuw i64 %i.e, 104                    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %i.o = icmp ugt i64 %i.i, %i.n
  br i1 %i.o, label %bb.d, label %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft5BlockEA_S5_EENS_4base6VectorIT_EEm.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 noundef %i.i) #19
  %.pre.i.i.i = load i64, ptr %i.l, align 8
  br label %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft5BlockEA_S5_EENS_4base6VectorIT_EEm.exit

_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft5BlockEA_S5_EENS_4base6VectorIT_EEm.exit: ; preds = %bb.c, %bb.d
  %i.p = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = add i64 %i.p, %i.i
  store i64 %i.r, ptr %i.l, align 8
  %i.s = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.t = icmp ult i64 %i.d, 2305843009213693951
  br i1 %i.t, label %bb.f, label %bb.e, !prof !11

bb.e:                                             ; preds = %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft5BlockEA_S5_EENS_4base6VectorIT_EEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #20
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft5BlockEA_S5_EENS_4base6VectorIT_EEm.exit
  %i.u = shl nuw i64 %.sroa.speculated, 3         ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = sub i64 %i.w, %i.y
  %i.aa = icmp ugt i64 %i.u, %i.z
  br i1 %i.aa, label %bb.g, label %_ZN2v88internal4Zone14AllocateVectorIPNS0_8compiler10turboshaft5BlockEA_S6_EENS_4base6VectorIT_EEm.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 noundef %i.u) #19
  %.pre.i.i.i11 = load i64, ptr %i.x, align 8
  br label %_ZN2v88internal4Zone14AllocateVectorIPNS0_8compiler10turboshaft5BlockEA_S6_EENS_4base6VectorIT_EEm.exit

_ZN2v88internal4Zone14AllocateVectorIPNS0_8compiler10turboshaft5BlockEA_S6_EENS_4base6VectorIT_EEm.exit: ; preds = %bb.f, %bb.g
  %i.ab = phi i64 [ %.pre.i.i.i11, %bb.g ], [ %i.y, %bb.f ] ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 4 uses
  %i.ad = add i64 %i.ab, %i.u
  store i64 %i.ad, ptr %i.x, align 8
  %i.ae = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.af = load i64, ptr %i.b, align 8             ; 3 uses
  %i.ag = icmp ugt i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %_ZN2v88internal4Zone14AllocateVectorIPNS0_8compiler10turboshaft5BlockEA_S6_EENS_4base6VectorIT_EEm.exit
  %.idx = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ac, ptr align 8 %i.ae, i64 %.idx, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %_ZN2v88internal4Zone14AllocateVectorIPNS0_8compiler10turboshaft5BlockEA_S6_EENS_4base6VectorIT_EEm.exit
  %i.ah = icmp eq i64 %i.af, 1
  br i1 %i.ah, label %bb.j, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.ae, align 8
  store ptr %i.ai, ptr %i.ac, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

_ZSt4copyIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.aj = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aj ; 2 uses
  %.not = icmp eq i64 %.sroa.speculated, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt4copyIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 288230376151711740       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [104 x i8], ptr %i.q, <2 x i64> %vec.ind
  %wide.gep25 = getelementptr inbounds nuw [104 x i8], ptr %i.q, <2 x i64> %step.add
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x ptr> %wide.gep, ptr %i.al, align 8
  store <2 x ptr> %wide.gep25, ptr %i.am, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader26

.lr.ph.preheader26:                               ; preds = %.lr.ph.preheader, %middle.block
  %.020.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.sroa.4.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZSt4copyIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %._crit_edge.loopexit ], [ %i.aj, %_ZSt4copyIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit ]
  store ptr %i.ac, ptr %i.a, align 8
  store i64 %.sroa.speculated, ptr %i.b, align 8
  %i.ao = icmp ult i64 %.sroa.4.0.copyload, 2147483648
  br i1 %i.ao, label %_ZNK2v84base6VectorIPNS_8internal8compiler10turboshaft5BlockEE6lengthEv.exit, label %bb.k, !prof !112

.lr.ph:                                           ; preds = %.lr.ph.preheader26, %.lr.ph
  %.020 = phi i64 [ %i.ar, %.lr.ph ], [ %.020.ph, %.lr.ph.preheader26 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %.020
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.020
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = add nuw i64 %.020, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.e
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !113

bb.k:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #20
  unreachable

_ZNK2v84base6VectorIPNS_8internal8compiler10turboshaft5BlockEE6lengthEv.exit: ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %.not.i.i = icmp ugt i64 %.sroa.speculated, %i.az
  br i1 %.not.i.i, label %bb.l, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE7reserveEm.exit, !prof !5

bb.l:                                             ; preds = %_ZNK2v84base6VectorIPNS_8internal8compiler10turboshaft5BlockEE6lengthEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 noundef %.sroa.speculated)
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE7reserveEm.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE7reserveEm.exit: ; preds = %_ZNK2v84base6VectorIPNS_8internal8compiler10turboshaft5BlockEE6lengthEv.exit, %bb.l
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !115

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 5 uses
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
  %i.n = icmp ult i64 %i.m, 17
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 3
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre8 = ptrtoint ptr %.pre to i64
  %.pre9 = sub i64 %.pre10.i.i.i.i, %.pre8
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi10 = phi i64 [ %i.i, %bb.a ], [ %.pre9, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi10 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi10, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 3, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 24
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 3, ptr %i.af, align 2
  store i8 80, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 %2, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %3, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 4 uses
  %i.an = lshr i64 %i.i, 4
  %i.ao = and i64 %i.an, 268435455                ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 216
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 208 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2
  %.not.i.i = icmp ugt i64 %i.aw, %i.ao
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 200 ; 2 uses
  %i.ay = lshr i64 %i.ao, 1
  %i.az = add nuw nsw i64 %i.ao, 32
  %i.ba = add nuw nsw i64 %i.az, %i.ay
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 224
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ar, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %i.bh)
  %.pre.i.i = load ptr, ptr %i.ar, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bi = phi ptr [ %.pre.i.i, %bb.c ], [ %i.as, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bj = trunc i64 %i.i to i32
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ao
  store i32 %.sroa.0.0.copyload.i, ptr %i.bk, align 4
  ret i32 %i.bj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i8 %3, i8 %4, i8 %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %.not.i = icmp eq i32 %2, -1                    ; 3 uses
  %i.j = select i1 %.not.i, i64 2, i64 3          ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp ult i64 %i.o, %i.j
  br i1 %i.p, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.q = sub i64 %i.m, %i.h
  %i.r = lshr exact i64 %i.q, 3
  %i.s = and i64 %i.r, 4294967295
  %i.t = add nuw nsw i64 %i.s, %i.j
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.t)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre18 = ptrtoint ptr %.pre to i64
  %.pre19 = sub i64 %.pre10.i.i.i.i, %.pre18
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi20 = phi i64 [ %.pre19, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.u = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 12 uses
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_:bb.a
bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %2, ptr %i.at, align 4
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.au = shl nuw nsw i16 %i.am, 2
  %.idx.i = zext nneg i16 %i.au to i64            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %i.aw = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.ax = and i64 %i.aw, 4
  %lcmp.mod.not.not = icmp eq i64 %i.ax, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.as, align 4
  %i.ay = load ptr, ptr %i.f, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.bb = add i64 %i.az, %i.ba
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1             ; 2 uses
  %.not.i.i.prol = icmp eq i8 %i.be, -1
  br i1 %.not.i.i.prol, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, label %bb.d, !prof !5

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.bf = add nuw i8 %i.be, 1
  store i8 %i.bf, ptr %i.bd, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol: ; preds = %bb.d, %.lr.ph.i.prol
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol, %.lr.ph.i.preheader
  %.011.i.unr = phi ptr [ %i.as, %.lr.ph.i.preheader ], [ %i.bg, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.prol ]
  %i.bh = icmp eq i64 %i.aw, 0
  br i1 %i.bh, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1
  %.011.i = phi ptr [ %i.bz, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1 ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.bi = load ptr, ptr %i.f, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = zext i32 %.sroa.01.0.copyload.i to i64
  %i.bl = add i64 %i.bj, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.bo, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.e, !prof !5

bb.e:                                             ; preds = %.lr.ph.i
  %i.bp = add nuw i8 %i.bo, 1
  store i8 %i.bp, ptr %i.bn, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.bq, align 4
  %i.br = load ptr, ptr %i.f, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.bu = add i64 %i.bs, %i.bt
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1             ; 2 uses
  %.not.i.i.1 = icmp eq i8 %i.bx, -1
  br i1 %.not.i.i.1, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, label %bb.f, !prof !5

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.by = add nuw i8 %i.bx, 1
  store i8 %i.by, ptr %i.bw, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1: ; preds = %bb.f, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i15.1 = icmp eq ptr %i.bz, %i.av
  br i1 %.not.i15.1, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, %.lr.ph.i.prol.loopexit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.ca, align 4
  %i.cb = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 4 uses
  %i.cc = lshr i64 %i.i, 4
  %i.cd = and i64 %i.cc, 268435455                ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 216
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 208 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2
  %.not.i.i16 = icmp ugt i64 %i.cl, %i.cd
  br i1 %.not.i.i16, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 200 ; 2 uses
  %i.cn = lshr i64 %i.cd, 1
  %i.co = add nuw nsw i64 %i.cd, 32
  %i.cp = add nuw nsw i64 %i.co, %i.cn
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 224
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.cg, align 8
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef %i.cw)
  %.pre.i.i = load ptr, ptr %i.cg, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit, %bb.g
  %i.cx = phi ptr [ %.pre.i.i, %bb.g ], [ %i.ch, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_6LoadOpEEEvRKT_.exit ]
  %i.cy = trunc i64 %i.i to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cd
  store i32 %.sroa.0.0.copyload.i, ptr %i.cz, align 4
  ret i32 %i.cy
}

declare noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef) local_unnamed_addr #2

declare i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler7Linkage24GetRuntimeCallDescriptorEPNS0_4ZoneENS0_7Runtime10FunctionIdEiNS_4base5FlagsINS1_8Operator8PropertyEhhEENS8_INS1_14CallDescriptor4FlagEiiEENS1_16LazyDeoptOnThrowE(ptr noundef, i32 noundef, i32 noundef, i8, i32, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = load ptr, ptr %0, align 8                ; 3 uses
  %i.n = icmp ult i64 %spec.select.i.i, 2305843009213693952
  br i1 %i.n, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = add nuw i64 %i.o, 4
  %i.q = and i64 %i.p, -8                         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sub i64 %i.s, %i.u
  %i.w = icmp ugt i64 %i.q, %i.v
  br i1 %i.w, label %bb.d, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef %i.q) #19
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit: ; preds = %bb.c, %bb.d
  %i.x = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.u, %bb.c ] ; 4 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 6 uses
  %i.z = add i64 %i.x, %i.q
  store i64 %i.z, ptr %i.t, align 8
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.10) #20
  unreachable

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit
  %i.ab = load ptr, ptr %i.c, align 8             ; 6 uses
  %i.ac = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.ae = ptrtoaddr ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ab to i64
  %2 = add i64 %i.af, -4
  %3 = sub i64 %2, %i.ag                          ; 2 uses
  %i.ah = lshr i64 %3, 2
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.aj = sub i64 %i.ae, %i.x
  %diff.check = icmp ugt i64 %i.aj, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ai, 9223372036854775800     ; 3 uses
  %i.ak = shl i64 %n.vec, 2                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.y, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.an ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.ab, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep13, align 4
  %wide.load14 = load <4 x i32>, ptr %i.ao, align 4
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load14, ptr %i.ap, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader16

.lr.ph.i.i.i.i.preheader16:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader16, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader16 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader16 ] ; 2 uses
  %i.ar = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ar, ptr %.08.i.i.i.i, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.au = icmp eq ptr %i.as, %i.ac
  br i1 %i.au, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !117

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.f
  %i.av = ptrtoint ptr %i.b to i64
  %i.aw = sub i64 %i.av, %i.h
  %i.ax = shl nuw i64 1, %i.l
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  store ptr %i.y, ptr %i.c, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aw
  store ptr %i.ay, ptr %i.a, align 8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ax
  store ptr %i.az, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ENS2_13ZoneAllocatorIS5_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

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
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %switch.load, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %2, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 4 uses
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
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !11

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
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES4_EEEEEEEE21ReduceCatchBlockBeginEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_17CatchBlockBeginOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 5 uses
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
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre5 = ptrtoint ptr %.pre to i64
  %.pre6 = sub i64 %.pre10.i.i.i.i, %.pre5
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi7 = phi i64 [ %i.i, %bb.a ], [ %.pre6, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi7 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi7, 4
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
  store i8 94, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 4 uses
  %i.ak = lshr i64 %i.i, 4
  %i.al = and i64 %i.ak, 268435455                ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %.not.i.i = icmp ugt i64 %i.at, %i.al
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  %i.av = lshr i64 %i.al, 1
  %i.aw = add nuw nsw i64 %i.al, 32
  %i.ax = add nuw nsw i64 %i.aw, %i.av
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %i.ao, align 8
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.be)
  %.pre.i.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bf = phi ptr [ %.pre.i.i, %bb.c ], [ %i.ap, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bg = trunc i64 %i.i to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.al
  store i32 %.sroa.0.0.copyload.i, ptr %i.bh, align 4
  ret i32 %i.bg
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #6 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !131

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i1 noundef zeroext %2), !inline_history !132
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE14AddPredecessorEPNS2_5BlockESE_b(ptr noundef nonnull align 8 dereferenceable(696) %i.a, ptr noundef %i.c, ptr noundef %1, i1 noundef zeroext false), !inline_history !132
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4              ; 5 uses
  %.not34 = icmp eq i32 %i.g, -1
  br i1 %.not34, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.l = load i64, ptr %i.k, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.l, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.o = load i64, ptr %i.n, align 8
  %sext.i.i.i = shl i64 %i.o, 48
  %i.p = ashr exact i64 %sext.i.i.i, 48
  %i.q = zext i32 %i.g to i64
  %i.r = xor i64 %i.p, %i.q
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.z, align 8 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i.i = phi i64 [ %i.w, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i8.i.i.i, %i.i ; 4 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1      ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.i
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, %i.g
  br i1 %i.an, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32, label %bb.f, !prof !11

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not44.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not44.i.i.i.i, label %bb.g, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !133

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit: ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8
  %i.av = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %i.aw = icmp eq i32 %i.av, %i.g
  br i1 %i.aw, label %bb.h, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 %i.g, ptr %3, align 4
  %i.ax = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i8, ptr %i.ay, align 8, !range !32, !noundef !9
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE4ToJSENS4_7OpIndexENS1_18CanonicalValueTypeENS4_1VINS0_7ContextEEE:bb.a
  %i.kw = icmp ne i32 %i.kv, -1
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.ky = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.kx, ptr noundef nonnull %i.kt, i1 noundef zeroext %i.kw), !inline_history !19 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit189

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit189: ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit186, %bb.bm, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit184
  %i.kz = load ptr, ptr %i.if, align 8, !nonnull !9, !align !10
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 536
  %i.lb = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ControlFlowHelper_BindElseEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.la, ptr noundef nonnull %11)
  br i1 %i.lb, label %bb.bn, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit189.2

bb.bn:                                            ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit189
  %i.lc = load ptr, ptr %i.ig, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 672
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit186.1, label %bb.bo, !prof !5

bb.bo:                                            ; preds = %bb.bn
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %.sroa.02.0.copyload.i.i187.1 = load ptr, ptr %9, align 8
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISL_SM_EESL_(ptr noundef nonnull align 8 dereferenceable(504) %i.lg, ptr %.sroa.02.0.copyload.i.i187.1, i32 %.sroa.011.0.i.i.i.i177)
  br label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit186.1

_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit186.1: ; preds = %bb.bo, %bb.bn
  %i.lh = load ptr, ptr %i.if, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 672
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit189.2, label %bb.bp

bb.bp:                                            ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit186.1
  %i.ll = load ptr, ptr %i.ih, align 8            ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 52
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = icmp ne i32 %i.ln, -1
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %i.lq = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.lp, ptr noundef nonnull %i.ll, i1 noundef zeroext %i.lo), !inline_history !19 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit189.2

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit189.2: ; preds = %bb.bp, %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit186.1, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit189
  %i.lr = load ptr, ptr %i.if, align 8, !nonnull !9, !align !10
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 536
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.ls, ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit174.thread283

_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit174.thread283: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit189.2, %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit172, %bb.bf
  %i.lt = load ptr, ptr %i.if, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 672
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit190, label %bb.bq

bb.bq:                                            ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit174.thread283
  %i.lx = load ptr, ptr %i.ii, align 8            ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 52
  %i.lz = load i32, ptr %i.ly, align 4
  %i.ma = icmp ne i32 %i.lz, -1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.mc = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.mb, ptr noundef nonnull %i.lx, i1 noundef zeroext %i.ma), !inline_history !19 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit190

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit190: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit168, %bb.bg, %bb.bq, %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit174.thread283
  %i.md = add nuw nsw i32 %.0120294, 1
  br label %bb.ba

bb.br:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEECI2NS2_3VarIS4_S9_EEINS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_NS2_1VIS4_EE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %0, i32 -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.mh = load ptr, ptr %i.me, align 8, !nonnull !9, !align !10 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 536
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 672 ; 3 uses
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit198, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i193, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i193: ; preds = %bb.br
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 32 ; 2 uses
  %i.mn = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.mm)
  %.pr.i194 = load ptr, ptr %i.mj, align 8
  %i.mo = icmp eq ptr %.pr.i194, null
  br i1 %i.mo, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit198, label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit196, !prof !15

_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit196: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i193
  %i.mp = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.mm, i32 %i.mn, i32 -1, i8 48, i8 7, i8 1, i32 noundef 1976, i8 noundef zeroext 0)
  %.pre302 = load ptr, ptr %i.mj, align 8
  %i.mq = icmp eq ptr %.pre302, null
  br i1 %i.mq, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit198, label %bb.bs, !prof !15

bb.bs:                                            ; preds = %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit196
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %i.ms = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.mr, i32 %1, i32 %i.mp, i8 noundef zeroext 0, i8 4)
  %i.mt = zext i32 %i.ms to i64
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit198

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit198: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i193, %bb.br, %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit196, %bb.bs
  %.sroa.06.0.i.i.i.i197 = phi i64 [ %i.mt, %bb.bs ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit196 ], [ 4294967295, %bb.br ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i193 ]
  %i.mu = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_BindIfENS2_17ConditionWithHintEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.mi, i64 %.sroa.06.0.i.i.i.i197, ptr noundef nonnull %13)
  br i1 %i.mu, label %bb.bt, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit203

bb.bt:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit198
  %i.mv = load ptr, ptr %i.me, align 8, !nonnull !9, !align !10
  %i.mw = call i32 @_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(696) %i.mv, i16 noundef zeroext 2)
  %i.mx = load ptr, ptr %i.mf, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 672
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = icmp eq ptr %i.mz, null
  br i1 %i.na, label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit200, label %bb.bu, !prof !5

bb.bu:                                            ; preds = %bb.bt
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  %.sroa.02.0.copyload.i.i199 = load ptr, ptr %12, align 8
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISL_SM_EESL_(ptr noundef nonnull align 8 dereferenceable(504) %i.nb, ptr %.sroa.02.0.copyload.i.i199, i32 %i.mw)
  br label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit200

_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit200: ; preds = %bb.bt, %bb.bu
  %i.nc = load ptr, ptr %i.me, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 672
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit203, label %bb.bv

bb.bv:                                            ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit200
  %i.ng = load ptr, ptr %i.mg, align 8            ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 52
  %i.ni = load i32, ptr %i.nh, align 4
  %i.nj = icmp ne i32 %i.ni, -1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.nl = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.nk, ptr noundef nonnull %i.ng, i1 noundef zeroext %i.nj), !inline_history !19 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit203

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit203: ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit200, %bb.bv, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit198
  %i.nm = load ptr, ptr %i.me, align 8, !nonnull !9, !align !10
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 536
  %i.no = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ControlFlowHelper_BindElseEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.nn, ptr noundef nonnull %13)
  br i1 %i.no, label %bb.bw, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit203.2

bb.bw:                                            ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit203
  %i.np = load ptr, ptr %i.mf, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 672
  %i.nr = load ptr, ptr %i.nq, align 8
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit200.1, label %bb.bx, !prof !5

bb.bx:                                            ; preds = %bb.bw
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 32
  %.sroa.02.0.copyload.i.i201.1 = load ptr, ptr %12, align 8
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISL_SM_EESL_(ptr noundef nonnull align 8 dereferenceable(504) %i.nt, ptr %.sroa.02.0.copyload.i.i201.1, i32 %1)
  br label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit200.1

_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit200.1: ; preds = %bb.bx, %bb.bw
  %i.nu = load ptr, ptr %i.me, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 672
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit203.2, label %bb.by

bb.by:                                            ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit200.1
  %i.ny = load ptr, ptr %i.mg, align 8            ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 52
  %i.oa = load i32, ptr %i.nz, align 4
  %i.ob = icmp ne i32 %i.oa, -1
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.od = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.oc, ptr noundef nonnull %i.ny, i1 noundef zeroext %i.ob), !inline_history !19 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit203.2

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit203.2: ; preds = %bb.by, %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_1VIS4_EE.exit200.1, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit203
  %i.oe = load ptr, ptr %i.me, align 8, !nonnull !9, !align !10
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 536
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.of, ptr noundef nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %.sroa.0.0.copyload.i.i191 = load ptr, ptr %12, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i191, i64 16
  %.sroa.02.0.copyload.i.i.i192 = load i32, ptr %i.og, align 4
  call void @_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE24BuildChangeInt32ToNumberENS4_1VINS4_12WordWithBitsILm32EEEEE.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, %bb.d, %bb.d, %bb.d, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

default.unreachable:                              ; preds = %bb.ba, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  unreachable

_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE24BuildChangeInt32ToNumberENS4_1VINS4_12WordWithBitsILm32EEEEE.exit: ; preds = %bb.am, %bb.al, %bb.ai, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit160.2, %bb.w, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i140, %bb.v, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread269, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread269, %bb.n, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267, %bb.h, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i11.i.i, %bb.f, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit203.2, %bb.az, %.critedge.2, %bb.k, %bb.j, %bb.i
  %.sroa.0265.0 = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i140 ], [ %i.w, %bb.i ], [ %i.x, %bb.j ], [ %i.y, %bb.k ], [ %.sroa.02.0.copyload.i.i.i, %.critedge.2 ], [ %1, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267 ], [ -1, %bb.f ], [ %.sroa.02.0.copyload.i.i.i162, %bb.az ], [ %.sroa.02.0.copyload.i.i.i192, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit203.2 ], [ %1, %bb.n ], [ %1, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread269 ], [ %i.v, %bb.h ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i11.i.i ], [ %1, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267 ], [ %1, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267 ], [ %1, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267 ], [ %1, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267 ], [ %1, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267 ], [ %1, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267 ], [ %1, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267 ], [ %1, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267 ], [ %1, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread267 ], [ %1, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread269 ], [ -1, %bb.v ], [ %i.ci, %bb.w ], [ %.sroa.02.0.copyload.i.i.i145, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit160.2 ], [ -1, %bb.ai ], [ %.sroa.02.0.copyload.i.i.i145, %bb.al ], [ %.sroa.02.0.copyload.i.i.i145, %bb.am ]
  ret i32 %.sroa.0265.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm1ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(28) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !145

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler21GetWasmCallDescriptorINS0_4wasm18CanonicalValueTypeEEEPNS1_14CallDescriptorEPNS0_4ZoneEPKNS0_9SignatureIT_EENS1_12WasmCallKindEb(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE24BuildChangeInt64ToBigIntENS4_1VINS4_12WordWithBitsILm64EEEEENS0_12StubCallModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %4 = alloca [1 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 4 uses
  %i.a = icmp eq i32 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !align !10 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 672
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinENS0_12StubCallModeE.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i8 noundef zeroext 12, i64 noundef 148)
  br label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinENS0_12StubCallModeE.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinENS0_12StubCallModeE.exit, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i8 noundef zeroext 4, i64 635655159808)
  br label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinENS0_12StubCallModeE.exit

_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinENS0_12StubCallModeE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.01.0.i = phi i32 [ -1, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.e ], [ -1, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.k = tail call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef 148) #19
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr %i.b, align 8, !nonnull !9, !align !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !9, !align !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0, i32 0, i8 0, i32 noundef %2) #19
  %i.r = load ptr, ptr %i.b, align 8, !nonnull !9, !align !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !9, !align !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.q, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %i.v, ptr noundef null) ; 3 uses
  %i.x = load ptr, ptr %i.b, align 8, !nonnull !9, !align !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 %1, ptr %4, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 672
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEESt16initializer_listINS2_7OpIndexEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinENS0_12StubCallModeE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 4 uses
  %i.ac = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6CallOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEENS2_27ShadowyOpIndexVectorWrapperEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i32 %.sroa.01.0.i, i32 -1, ptr nonnull %4, i64 1, ptr noundef %i.w, i32 487263) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = icmp eq i8 %i.ae, 1
  br i1 %i.af, label %bb.g, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ag = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES4_EEEEEEEE19CatchIfInCatchScopeENS2_7OpIndexE(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i32 %i.ac)
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i.i

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i1 [ %i.ag, %bb.g ], [ false, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ai = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12DidntThrowOpEJNS2_14ShadowyOpIndexEbPKNS5_6VectorIKNS2_22RegisterRepresentationEEENS2_9OpEffectsEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i32 %i.ac, i1 noundef zeroext %.0.i.i.i.i.i.i, ptr noundef nonnull %i.ah, i32 487263) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !9, !align !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = zext i32 %i.ai to i64
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_12DidntThrowOpEEENS2_1VINS2_3AnyEEERKT_SM_(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i32 %i.ai)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEESt16initializer_listINS2_7OpIndexEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSK_INSG_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSN_ILm32EEEEEEEESt16initializer_listINS2_7OpIndexEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinENS0_12StubCallModeE.exit, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i.i
  %.sroa.010.0.i.i.i = phi i32 [ %i.ar, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE10ReduceCallIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS8_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEEDaDpT_.exit.i.i ], [ -1, %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE23GetTargetForBuiltinCallENS0_7BuiltinENS0_12StubCallModeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i32 %.sroa.010.0.i.i.i
}

declare noundef ptr @_ZN2v88internal4wasm20GetTypeCanonicalizerEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal4wasm17TypeCanonicalizer19IsFunctionSignatureENS1_18CanonicalTypeIndexE(ptr noundef nonnull align 8 dereferenceable(8056), i32) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEECI2NS2_3VarIS4_S9_EEINS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_NS2_1VIS4_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 %2) unnamed_addr #9 comdat align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i64 4, ptr %3, align 8
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i, i8 -1, i64 20, i1 false)
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i32 %3, i8 %4, i8 %5, i8 noundef zeroext %6, i32 noundef %7, i8 noundef zeroext %8, i1 noundef zeroext %9, i64 noundef %10) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %.not.i = icmp eq i32 %2, -1                    ; 4 uses
  %i.j = select i1 %.not.i, i64 3, i64 4          ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp ult i64 %i.o, %i.j
  br i1 %i.p, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.q = sub i64 %i.m, %i.h
  %i.r = lshr exact i64 %i.q, 3
  %i.s = and i64 %i.r, 4294967295
  %i.t = add nuw nsw i64 %i.s, %i.j
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.t)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre21 = ptrtoint ptr %.pre to i64
  %.pre22 = sub i64 %.pre10.i.i.i.i, %.pre21
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi23 = phi i64 [ %.pre22, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.u = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 16 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.j
  store ptr %i.v, ptr %i.c, align 8
  %i.w = trunc i64 %.pre-phi23 to i32
  %i.x = trunc nuw nsw i64 %i.j to i16            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = lshr i64 %.pre-phi23, 4
  %i.ab = and i64 %i.aa, 268435455
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ab
  store i16 %i.x, ptr %i.ac, align 2
  %i.ad = load ptr, ptr %i.y, align 8
  %.tr.i.i.i.i = trunc nuw nsw i64 %i.j to i32
  %i.ae = shl nuw nsw i32 %.tr.i.i.i.i, 3
  %i.af = add i32 %i.ae, %i.w
  %i.ag = lshr i32 %i.af, 4
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ai
  store i16 %i.x, ptr %i.aj, align 2
  %i.ak = zext i1 %9 to i8
  store i8 78, ptr %i.u, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.an = select i1 %.not.i, i16 2, i16 3
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i8 %4, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  store i8 %5, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i8 %6, ptr %i.aq, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  store i8 %8, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %7, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i8 %i.ak, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %i.av = lshr i64 %10, 48
  %i.aw = trunc nuw i64 %i.av to i16
  store i16 %i.aw, ptr %i.au, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store i32 %1, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  store i32 %3, ptr %i.ay, align 4
  br i1 %.not.i, label %.lr.ph.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %2, ptr %i.az, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, %bb.c
  %.sroa.01.0.copyload.i = load i32, ptr %i.ax, align 4
  %i.ba = load ptr, ptr %i.f, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = zext i32 %.sroa.01.0.copyload.i to i64
  %i.bd = add i64 %i.bb, %i.bc
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.bg, -1
  br i1 %.not.i.i, label %.lr.ph.i.1, label %bb.d, !prof !5

bb.d:                                             ; preds = %.lr.ph.i
  %i.bh = add nuw i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.bi, align 4
  %i.bj = load ptr, ptr %i.f, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.bm = add i64 %i.bk, %i.bl
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1             ; 2 uses
  %.not.i.i.1 = icmp eq i8 %i.bp, -1
  br i1 %.not.i.i.1, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1, label %bb.e, !prof !5

bb.e:                                             ; preds = %.lr.ph.i.1
  %i.bq = add nuw i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bo, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1: ; preds = %bb.e, %.lr.ph.i.1
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7StoreOpEEEvRKT_.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.01.0.copyload.i.2 = load i32, ptr %i.br, align 4
  %i.bs = load ptr, ptr %i.f, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = zext i32 %.sroa.01.0.copyload.i.2 to i64
  %i.bv = add i64 %i.bt, %i.bu
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1             ; 2 uses
  %.not.i.i.2 = icmp eq i8 %i.by, -1
  br i1 %.not.i.i.2, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7StoreOpEEEvRKT_.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %.lr.ph.i.2
  %i.bz = add nuw i8 %i.by, 1
  store i8 %i.bz, ptr %i.bx, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7StoreOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7StoreOpEEEvRKT_.exit: ; preds = %.lr.ph.i.2, %bb.f, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i.1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.ca, align 4
  %i.cb = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 4 uses
  %i.cc = lshr i64 %i.i, 4
  %i.cd = and i64 %i.cc, 268435455                ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 216
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 208 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2
  %.not.i.i19 = icmp ugt i64 %i.cl, %i.cd
  br i1 %.not.i.i19, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7StoreOpEEEvRKT_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 200 ; 2 uses
  %i.cn = lshr i64 %i.cd, 1
  %i.co = add nuw nsw i64 %i.cd, 32
  %i.cp = add nuw nsw i64 %i.co, %i.cn
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 224
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.cg, align 8
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef %i.cw)
  %.pre.i.i = load ptr, ptr %i.cg, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7StoreOpEEEvRKT_.exit, %bb.g
  %i.cx = phi ptr [ %.pre.i.i, %bb.g ], [ %i.ch, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_7StoreOpEEEvRKT_.exit ]
  %i.cy = trunc i64 %i.i to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cd
  store i32 %.sroa.0.0.copyload.i, ptr %i.cz, align 4
  ret i32 %i.cy
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -4
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ac, ptr %.08.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !150

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_6ObjectEEELm2ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS1_6ObjectEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE16BuildCheckStringENS4_7OpIndexESB_NS1_18CanonicalValueTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !align !10 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.d)
  %.pre.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.f, %bb.a ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.l = add i64 %i.j, 1
  store i64 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j
  %i.o = load ptr, ptr %i.n, align 8              ; 24 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 44 ; 2 uses
end_hunk_8
