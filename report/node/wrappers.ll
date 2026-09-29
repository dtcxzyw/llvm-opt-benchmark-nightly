Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wrappers?download=true
inline.NumInlined: 7185
inline.NumDeleted: 2643
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE20BuildJSToWasmWrapperEb:bb.a
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i, %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit83
  %i.ea = phi ptr [ %.pre13.i, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i ], [ %i.dn, %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit83 ] ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4            ; 2 uses
  %.not12.i = icmp eq i32 %i.eb, -1
  br i1 %.not12.i, label %bb.o, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit

bb.o:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 672
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.eg = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ef, i32 noundef -1, i8 4, ptr noundef null)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i: ; preds = %bb.p, %bb.o
  %.sroa.03.0.i.i = phi i32 [ %i.eg, %bb.p ], [ -1, %bb.o ] ; 2 uses
  store i32 %.sroa.03.0.i.i, ptr %i.ea, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit: ; preds = %bb.n, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i
  %.sroa.011.0.copyload.i = phi i32 [ %i.eb, %bb.n ], [ %.sroa.03.0.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i ]
  %i.eh = load ptr, ptr %i.f, align 8, !nonnull !13, !align !14 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 536 ; 4 uses
  %i.ej = add nsw i32 %i.e, 3
  %i.ek = shl i64 %i.d, 32                        ; 3 uses
  %sext = add i64 %i.ek, 17179869184
  %i.el = ashr exact i64 %sext, 32                ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 544 ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %i.eo = load ptr, ptr %i.ei, align 8            ; 3 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 2
  %.not.i92 = icmp ugt i64 %i.es, %i.el
  br i1 %.not.i92, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit
  %sext220 = add i64 %i.ek, 21474836480           ; 2 uses
  %i.et = ashr exact i64 %sext220, 32             ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 552
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = sub i64 %i.ew, %i.eq
  %i.ey = ashr exact i64 %i.ex, 2
  %i.ez = icmp ult i64 %i.ey, %i.et
  br i1 %i.ez, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(136) %i.ei, i64 noundef %i.et)
  %.pre.i.i101 = load ptr, ptr %i.ei, align 8
  %.pre.i102 = load ptr, ptr %i.em, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fa = phi ptr [ %.pre.i102, %bb.r ], [ %i.en, %bb.q ] ; 3 uses
  %i.fb = phi ptr [ %.pre.i.i101, %bb.r ], [ %i.eo, %bb.q ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.et ; 2 uses
  %i.fd = icmp ugt ptr %i.fc, %i.fa
  br i1 %i.fd, label %.lr.ph.i.i.i.i.preheader.i99, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i93

.lr.ph.i.i.i.i.preheader.i99:                     ; preds = %bb.s
  %i.fe = ptrtoaddr ptr %i.fa to i64
  %i.ff = ptrtoaddr ptr %i.fb to i64
  %i.fg = ashr exact i64 %sext220, 30
  %i.fh = add nsw i64 %i.fg, -4
  %i.fi = sub i64 %i.fh, %i.fe
  %i.fj = add i64 %i.fi, %i.ff
  %i.fk = and i64 %i.fj, -4
  %i.fl = add i64 %i.fk, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fa, i8 -1, i64 %i.fl, i1 false)
  %.pre13.pre.i100 = load ptr, ptr %i.ei, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i93

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i93: ; preds = %.lr.ph.i.i.i.i.preheader.i99, %bb.s
  %.pre13.i94 = phi ptr [ %.pre13.pre.i100, %.lr.ph.i.i.i.i.preheader.i99 ], [ %i.fb, %bb.s ]
  store ptr %i.fc, ptr %i.em, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i93, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit
  %i.fm = phi ptr [ %.pre13.i94, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i93 ], [ %i.eo, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.el ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4            ; 2 uses
  %.not12.i95 = icmp eq i32 %i.fo, -1
  br i1 %.not12.i95, label %bb.u, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit103

bb.u:                                             ; preds = %bb.t
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eh, i64 672
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i97, label %bb.v, !prof !11

bb.v:                                             ; preds = %bb.u
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ft = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.fs, i32 noundef %i.ej, i8 4, ptr noundef null)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i97

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i97: ; preds = %bb.v, %bb.u
  %.sroa.03.0.i.i98 = phi i32 [ %i.ft, %bb.v ], [ -1, %bb.u ] ; 2 uses
  store i32 %.sroa.03.0.i.i98, ptr %i.fn, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit103

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit103: ; preds = %bb.t, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i97
  %.sroa.011.0.copyload.i96 = phi i32 [ %i.fo, %bb.t ], [ %.sroa.03.0.i.i98, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i97 ] ; 4 uses
  %i.fu = load ptr, ptr %i.f, align 8, !nonnull !13, !align !14 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 672
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23LoadTrustedPointerFieldENS2_1VINS0_10HeapObjectEEENS2_6LoadOp4KindENS0_18IndirectPointerTagEi.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, !prof !11

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit103
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fz = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.fy, i32 %.sroa.011.0.copyload.i, i32 -1, i8 17, i8 12, i8 4, i32 noundef 32, i8 noundef zeroext 0)
  %.pre = load ptr, ptr %i.f, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre252 = load ptr, ptr %.phi.trans.insert, align 8
  %i.ga = icmp eq ptr %.pre252, null
  br i1 %i.ga, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23LoadTrustedPointerFieldENS2_1VINS0_10HeapObjectEEENS2_6LoadOp4KindENS0_18IndirectPointerTagEi.exit, label %bb.w, !prof !16

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.gc = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.gb, i32 %i.fz, i32 -1, i8 17, i8 12, i8 4, i32 noundef 8, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23LoadTrustedPointerFieldENS2_1VINS0_10HeapObjectEEENS2_6LoadOp4KindENS0_18IndirectPointerTagEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23LoadTrustedPointerFieldENS2_1VINS0_10HeapObjectEEENS2_6LoadOp4KindENS0_18IndirectPointerTagEi.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit103, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, %bb.w
  %.sroa.011.0.i.i.i.i.i = phi i32 [ %i.gc, %bb.w ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit103 ] ; 2 uses
  %i.gd = load ptr, ptr %i.a, align 8
  %i.ge = tail call noundef zeroext i1 @_ZN2v88internal4wasm23IsJSCompatibleSignatureEPKNS1_12CanonicalSigE(ptr noundef %i.gd) #19
  br i1 %i.ge, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23LoadTrustedPointerFieldENS2_1VINS0_10HeapObjectEEENS2_6LoadOp4KindENS0_18IndirectPointerTagEi.exit
  %i.gf = load ptr, ptr %i.f, align 8, !nonnull !13, !align !14 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 536
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15WasmCallRuntimeEPNS0_4ZoneENS0_7Runtime10FunctionIdESt16initializer_listIKNS2_7OpIndexEENS2_1VINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.gg, ptr noundef %i.gi, i32 noundef 571, ptr null, i64 0, i32 %.sroa.011.0.copyload.i96) ; 0 uses
  %i.gk = load ptr, ptr %i.f, align 8, !nonnull !13, !align !14 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 672
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit, label %bb.y, !prof !11

bb.y:                                             ; preds = %bb.x
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gp = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_13UnreachableOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.go) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit

bb.z:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23LoadTrustedPointerFieldENS2_1VINS0_10HeapObjectEEENS2_6LoadOp4KindENS0_18IndirectPointerTagEi.exit
  %i.gq = icmp sgt i32 %i.e, 0                    ; 5 uses
  br i1 %i.gq, label %bb.aa, label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE25QualifiesForFastTransformEv.exit

bb.aa:                                            ; preds = %bb.z
  %i.gr = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load i64, ptr %i.gs, align 8            ; 3 uses
  %i.gu = trunc i64 %i.gt to i32
  %.not16.i = icmp slt i32 %i.gu, 1
  br i1 %.not16.i, label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE25QualifiesForFastTransformEv.exit, label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %bb.aa
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.trip.count.i = and i64 %i.gt, 2147483647
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge.i, %.lr.ph.i104
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i104 ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.gt
  br i1 %exitcond.not.i, label %bb.ac, label %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit.i, !prof !11

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #20
  unreachable

_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit.i: ; preds = %bb.ab
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = load i64, ptr %i.gr, align 8
  %i.gy = getelementptr [4 x i8], ptr %i.gw, i64 %i.gx
  %i.gz = getelementptr [4 x i8], ptr %i.gy, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.gz, align 4 ; 2 uses
  %i.ha = and i32 %.sroa.0.0.copyload.i.i, 3
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.ad, label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE25QualifiesForFastTransformEv.exit

bb.ad:                                            ; preds = %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit.i
  %i.hc = and i32 %.sroa.0.0.copyload.i.i, 268435440
  %i.hd = add nsw i32 %i.hc, -5648                ; 2 uses
  %i.he = tail call i32 @llvm.fshl.i32(i32 %i.hd, i32 %i.hd, i32 24) ; 2 uses
  %i.hf = icmp ult i32 %i.he, 8
  br i1 %i.hf, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i: ; preds = %bb.ad
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.he to i8
  %switch.tableidx = add nsw i8 %switch.idx.cast.i.i, -1 ; 2 uses
  %i.hg = icmp ult i8 %switch.tableidx, 7
  %switch.shifted = lshr i8 121, %switch.tableidx
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.hg, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE25QualifiesForFastTransformEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond30.not.i, label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE25QualifiesForFastTransformEv.exit, label %bb.ab, !llvm.loop !23

_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE25QualifiesForFastTransformEv.exit: ; preds = %.critedge.i, %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit.i, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i, %bb.aa, %bb.z
  %i.hh = phi i1 [ false, %bb.z ], [ true, %bb.aa ], [ false, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i ], [ true, %.critedge.i ], [ false, %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE8GetParamEm.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %sext221 = add i64 %i.ek, 4294967296
  %i.hi = ashr exact i64 %sext221, 32             ; 7 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.hj, ptr %4, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.hj, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %i.hm, ptr %i.hl, align 8
  %i.hn = icmp ugt i64 %i.hi, 16                  ; 3 uses
  br i1 %i.hn, label %bb.af, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit

bb.af:                                            ; preds = %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE25QualifiesForFastTransformEv.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %4, i64 noundef %i.hi)
  %.pre.i105 = load ptr, ptr %4, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit: ; preds = %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE25QualifiesForFastTransformEv.exit, %bb.af
  %i.ho = phi ptr [ %.pre.i105, %bb.af ], [ %i.hj, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE25QualifiesForFastTransformEv.exit ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hi
  store ptr %i.hp, ptr %i.hk, align 8
  br i1 %i.gq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit
  %not. = xor i1 %1, true
  %i.hq = zext i1 %not. to i64
  %wide.trip.count = and i64 %i.d, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit118, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.hr = load ptr, ptr %i.f, align 8, !nonnull !13, !align !14
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !nonnull !13, !align !14 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 88 ; 3 uses
  %i.hv = load i64, ptr %i.hu, align 8            ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 80
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = icmp eq i64 %i.hv, %i.hx
  br i1 %i.hy, label %bb.ag, label %_ZN2v88internal8compiler10turboshaft5LabelIJNS0_6ObjectEEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit, !prof !11

bb.ag:                                            ; preds = %._crit_edge
  call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.ht)
  %.pre.i.i106 = load i64, ptr %i.hu, align 8
  br label %_ZN2v88internal8compiler10turboshaft5LabelIJNS0_6ObjectEEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft5LabelIJNS0_6ObjectEEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit: ; preds = %._crit_edge, %bb.ag
  %i.hz = phi i64 [ %i.hv, %._crit_edge ], [ %.pre.i.i106, %bb.ag ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 72
  %i.ib = add i64 %i.hz, 1
  store i64 %i.ib, ptr %i.hu, align 8
  %i.ic = load ptr, ptr %i.ia, align 8
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.hz
  %i.ie = load ptr, ptr %i.id, align 8            ; 8 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.ie, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.if, align 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 48
  store i32 -1, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 52
  store i32 -1, ptr %i.ih, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 56
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 88
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 96
  store i32 0, ptr %i.ik, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ii, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.ij, align 8
  store ptr %i.ie, ptr %5, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.im, ptr %i.il, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.im, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 5 uses
  store ptr %i.ip, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  store i64 0, ptr %i.iq, align 8
  store ptr %i.iq, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 7 uses
  store ptr %i.iq, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  store ptr %i.it, ptr %i.is, align 8
  store ptr null, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 3 uses
  store i8 0, ptr %i.iu, align 8
  br i1 %i.hh, label %bb.an, label %bb.bh

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit118
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit118 ] ; 3 uses
  %i.iv = load ptr, ptr %i.f, align 8, !nonnull !13, !align !14 ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 536 ; 4 uses
  %i.ix = add nuw nsw i64 %indvars.iv, %i.hq      ; 3 uses
  %i.iy = add nuw nsw i64 %i.ix, 1                ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 544 ; 3 uses
  %i.ja = load ptr, ptr %i.iz, align 8            ; 2 uses
  %i.jb = load ptr, ptr %i.iw, align 8            ; 3 uses
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64               ; 2 uses
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = ashr exact i64 %i.je, 2
  %.not.i107 = icmp ugt i64 %i.jf, %i.iy
  br i1 %.not.i107, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph
  %i.jg = add nuw nsw i64 %i.ix, 2                ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iv, i64 552
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = sub i64 %i.jj, %i.jd
  %i.jl = ashr exact i64 %i.jk, 2
  %i.jm = icmp ult i64 %i.jl, %i.jg
  br i1 %i.jm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(136) %i.iw, i64 noundef %i.jg)
  %.pre.i.i116 = load ptr, ptr %i.iw, align 8
  %.pre.i117 = load ptr, ptr %i.iz, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.jn = phi ptr [ %.pre.i117, %bb.ai ], [ %i.ja, %bb.ah ] ; 3 uses
  %i.jo = phi ptr [ %.pre.i.i116, %bb.ai ], [ %i.jb, %bb.ah ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jg ; 2 uses
  %i.jq = icmp ugt ptr %i.jp, %i.jn
  br i1 %i.jq, label %.lr.ph.i.i.i.i.preheader.i114, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i108

.lr.ph.i.i.i.i.preheader.i114:                    ; preds = %bb.aj
  %i.jr = ptrtoaddr ptr %i.jn to i64
  %i.js = ptrtoaddr ptr %i.jo to i64
  %i.jt = shl nuw nsw i64 %i.jg, 2
  %i.ju = add nsw i64 %i.jt, -4
  %i.jv = sub i64 %i.ju, %i.jr
  %i.jw = add i64 %i.jv, %i.js
  %i.jx = and i64 %i.jw, -4
  %i.jy = add i64 %i.jx, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.jn, i8 -1, i64 %i.jy, i1 false)
  %.pre13.pre.i115 = load ptr, ptr %i.iw, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i108

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i108: ; preds = %.lr.ph.i.i.i.i.preheader.i114, %bb.aj
  %.pre13.i109 = phi ptr [ %.pre13.pre.i115, %.lr.ph.i.i.i.i.preheader.i114 ], [ %i.jo, %bb.aj ]
  store ptr %i.jp, ptr %i.iz, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i108, %.lr.ph
  %i.jz = phi ptr [ %.pre13.i109, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i108 ], [ %i.jb, %.lr.ph ]
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.iy ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4            ; 2 uses
  %.not12.i110 = icmp eq i32 %i.kb, -1
  br i1 %.not12.i110, label %bb.al, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit118

bb.al:                                            ; preds = %bb.ak
  %i.kc = getelementptr inbounds nuw i8, ptr %i.iv, i64 672
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i112, label %bb.am, !prof !11

bb.am:                                            ; preds = %bb.al
  %i.kf = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.kg = trunc nuw nsw i64 %i.ix to i32
  %i.kh = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.kf, i32 noundef %i.kg, i8 4, ptr noundef null)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i112

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i112: ; preds = %bb.am, %bb.al
  %.sroa.03.0.i.i113 = phi i32 [ %i.kh, %bb.am ], [ -1, %bb.al ] ; 2 uses
  store i32 %.sroa.03.0.i.i113, ptr %i.ka, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit118

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9ParameterEiNS2_22RegisterRepresentationEPKc.exit118: ; preds = %bb.ak, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i112
  %.sroa.011.0.copyload.i111 = phi i32 [ %i.kb, %bb.ak ], [ %.sroa.03.0.i.i113, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i112 ]
  %i.ki = load ptr, ptr %4, align 8
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv
  store i32 %.sroa.011.0.copyload.i111, ptr %i.kj, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

bb.an:                                            ; preds = %_ZN2v88internal8compiler10turboshaft5LabelIJNS0_6ObjectEEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit
  %i.kk = load ptr, ptr %i.f, align 8, !nonnull !13, !align !14
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8, !nonnull !13, !align !14 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 88 ; 3 uses
  %i.ko = load i64, ptr %i.kn, align 8            ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 80
  %i.kq = load i64, ptr %i.kp, align 8
  %i.kr = icmp eq i64 %i.ko, %i.kq
end_hunk_0
