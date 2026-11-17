Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ShapeToStandard?download=true
inline.NumInlined: 5070
inline.NumDeleted: 2869
begin_hunk_0_@_ZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteEN4mlir5shape9ShapeEqOpENS2_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterE:bb.a
  %.not.i59.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i58.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5shape9ShapeTypeEvE2idE
  br i1 %.not.i59.i.i.i.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENS5_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEE3$_0EEbOT_T0_.exit", label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENS5_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENS5_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEE3$_0EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d, %bb.e, %bb.g, %bb.i, %bb.k
  %.sroa.9.0.i.i.i.i.i = phi i64 [ %.sroa.15.1.i.i.i.i.i, %bb.i ], [ %.sroa.15.0.lcssa.i.i.i.i.i, %bb.g ], [ %.sroa.15.2.i.i.i.i.i, %bb.k ], [ %i.w, %bb.c ], [ %i.ae, %bb.d ], [ %i.am, %bb.e ], [ %.sroa.15.093.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bv = icmp eq i64 %i.l, %.sroa.9.0.i.i.i.i.i
  br i1 %i.bv, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENS5_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEE3$_0EEbOT_T0_.exit.thread", label %bb.y

"_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENS5_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.k, %._crit_edge.i.i.i.i.i, %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENS5_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEE3$_0EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.bx = call ptr @_ZN4mlir7Builder9getI1TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) #20 ; 2 uses
  store ptr %i.bx, ptr %7, align 8, !tbaa !134
  %i.by = call i64 @_ZN4mlir5shape9ShapeEqOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #20 ; 3 uses
  %i.bz = load ptr, ptr %6, align 8, !tbaa !63    ; 3 uses
  %i.ca = and i64 %i.by, 4294967295
  %.sroa.5.0.extract.shift.i.i43 = lshr i64 %i.by, 32
  %i.cb = add i64 %.sroa.5.0.extract.shift.i.i43, %i.by
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = sub nsw i64 %i.cc, %i.ca
  %i.ce = icmp ult i64 %i.cd, 2
  br i1 %i.ce, label %bb.l, label %bb.r

bb.l:                                             ; preds = %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENS5_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEE3$_0EEbOT_T0_.exit.thread"
  %i.cf = call ptr @_ZN4mlir7Builder11getBoolAttrEb(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i1 noundef zeroext true) #20 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cg, align 8
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !142 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.n, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, !prof !143

bb.n:                                             ; preds = %bb.m
  %i.cl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 15) #20
  store ptr %i.cm, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !12 ; 2 uses
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !14 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cq, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cn, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cr = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cr ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !12
  %i.ct = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = xor i64 %i.cr, -1
  %i.cw = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i, %i.cv
  %.112.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ct, ptr %i.cu, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ct, i64 %i.cw, i64 %i.cr ; 2 uses
  %i.cx = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cx, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %i.cq, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cn, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %.pre-phi.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.cy
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i
  %i.cz = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !62
  %i.da = icmp eq ptr %i.cz, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.da, label %bb.q, label %_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !145
  br label %_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit

_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit:        ; preds = %bb.l, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, %bb.p, %bb.q
  %i.dd = phi ptr [ null, %bb.l ], [ %i.dc, %bb.q ], [ null, %bb.p ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i ]
  %i.de = call ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr %.sroa.0.0.copyload.i.i, ptr %i.bx, ptr %i.cf, ptr %i.dd) #20
  %i.df = load ptr, ptr %3, align 8, !tbaa !17
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.bz, ptr noundef %i.de) #20, !inline_history !857
  br label %bb.x

bb.r:                                             ; preds = %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENS5_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEE3$_0EEbOT_T0_.exit.thread"
  %i.di = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.0.0.copyload.i.i47 = load ptr, ptr %i.di, align 8 ; 6 uses
  %i.dj = call ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.dk = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr %.sroa.0.0.copyload.i.i47, i64 noundef 0) #20
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -16 ; 2 uses
  store ptr %i.dl, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !110
  %i.do = trunc i64 %i.dn to i32
  %i.dp = call i64 @_ZN4mlir5shape6detail27ShapeEqOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0, i32 noundef %i.do) #20 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.dq, align 8 ; 2 uses
  %i.dr = and i64 %i.dp, 4294967295               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %5, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.dr, ptr %i.ds, align 8
  %i.dt = icmp eq i64 %i.dr, 0
  br i1 %i.dt, label %_ZN4mlir5shape23ShapeEqOpGenericAdaptorINS_10ValueRangeEE9getShapesEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.dr) #20
  %.pre.i.i.i.i = load i64, ptr %i.ds, align 8, !tbaa !112
  br label %_ZN4mlir5shape23ShapeEqOpGenericAdaptorINS_10ValueRangeEE9getShapesEv.exit

_ZN4mlir5shape23ShapeEqOpGenericAdaptorINS_10ValueRangeEE9getShapesEv.exit: ; preds = %bb.r, %bb.s
  %i.dv = phi i64 [ %.pre.i.i.i.i, %bb.s ], [ 0, %bb.r ]
  %.sroa.0.0.i.i.i.i.i48 = phi i64 [ %i.du, %bb.s ], [ %.sroa.0.0.copyload.i13.i.i, %bb.r ]
  %.sroa.5.0.extract.shift.i.i49 = lshr i64 %i.dp, 32
  %i.dw = add i64 %.sroa.5.0.extract.shift.i.i49, %i.dp
  %i.dx = and i64 %i.dw, 4294967295
  %i.dy = sub nsw i64 %i.dx, %i.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %.sroa.0.0.i.i.i.i.i48, ptr %10, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.dy, ptr %i.dz, align 8
  %i.ea = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef 0) #20 ; 2 uses
  store ptr %i.ea, ptr %9, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.eb = call ptr @_ZN4mlir6tensor5DimOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr %.sroa.0.0.copyload.i.i47, ptr %i.dj, ptr %i.ea, ptr nonnull %i.dl) #20
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -16
  store ptr %i.ec, ptr %11, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr null, ptr %12, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.ed = load i64, ptr %i.dm, align 8, !tbaa !110
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = call i64 @_ZN4mlir5shape6detail27ShapeEqOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0, i32 noundef %i.ee) #20 ; 3 uses
  %.sroa.0.0.copyload.i13.i.i52 = load i64, ptr %i.dq, align 8 ; 2 uses
  %i.eg = and i64 %i.ef, 4294967295               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload.i13.i.i52, ptr %4, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.eg, ptr %i.eh, align 8
  %i.ei = icmp eq i64 %i.eg, 0
  br i1 %i.ei, label %_ZN4mlir5shape23ShapeEqOpGenericAdaptorINS_10ValueRangeEE9getShapesEv.exit58, label %bb.t

bb.t:                                             ; preds = %_ZN4mlir5shape23ShapeEqOpGenericAdaptorINS_10ValueRangeEE9getShapesEv.exit
  %i.ej = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.eg) #20
  %.pre.i.i.i.i53 = load i64, ptr %i.eh, align 8, !tbaa !112
  br label %_ZN4mlir5shape23ShapeEqOpGenericAdaptorINS_10ValueRangeEE9getShapesEv.exit58

_ZN4mlir5shape23ShapeEqOpGenericAdaptorINS_10ValueRangeEE9getShapesEv.exit58: ; preds = %_ZN4mlir5shape23ShapeEqOpGenericAdaptorINS_10ValueRangeEE9getShapesEv.exit, %bb.t
  %i.ek = phi i64 [ %.pre.i.i.i.i53, %bb.t ], [ 0, %_ZN4mlir5shape23ShapeEqOpGenericAdaptorINS_10ValueRangeEE9getShapesEv.exit ]
  %.sroa.0.0.i.i.i.i.i54 = phi i64 [ %i.ej, %bb.t ], [ %.sroa.0.0.copyload.i13.i.i52, %_ZN4mlir5shape23ShapeEqOpGenericAdaptorINS_10ValueRangeEE9getShapesEv.exit ]
  %.sroa.5.0.extract.shift.i.i55 = lshr i64 %i.ef, 32
  %i.el = add i64 %.sroa.5.0.extract.shift.i.i55, %i.ef
  %i.em = and i64 %i.el, 4294967295
  %i.en = sub nsw i64 %i.em, %i.ek                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.i.i.i.i.i54, ptr %13, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.en, ptr %i.eo, align 8
  %i.ep = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef 1) #20
  %i.eq = add nsw i64 %i.en, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store i64 %i.ep, ptr %14, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i64 0, ptr %i.er, align 8
  %.not84 = icmp eq i64 %i.eq, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir5shape23ShapeEqOpGenericAdaptorINS_10ValueRangeEE9getShapesEv.exit58
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ew = ptrtoint ptr %16 to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ey = ptrtoint ptr %18 to i64
  br label %bb.u

._crit_edge:                                      ; preds = %bb.w, %_ZN4mlir5shape23ShapeEqOpGenericAdaptorINS_10ValueRangeEE9getShapesEv.exit58
  %.lcssa = phi ptr [ null, %_ZN4mlir5shape23ShapeEqOpGenericAdaptorINS_10ValueRangeEE9getShapesEv.exit58 ], [ %.sroa.03.0, %bb.w ]
  store ptr %.lcssa, ptr %12, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.ez = load ptr, ptr %6, align 8, !tbaa !63
  %i.fa = ptrtoint ptr %12 to i64
  call void @_ZN4mlir25ConversionPatternRewriter9replaceOpEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ez, i64 %i.fa, i64 1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph, %bb.w
  %storemerge85 = phi i64 [ 0, %.lr.ph ], [ %i.fk, %bb.w ]
  %19 = phi ptr [ null, %.lr.ph ], [ %.sroa.03.0, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.fb = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %storemerge85) #20 ; 2 uses
  store ptr %i.fb, ptr %15, align 8
  %.sroa.010.0.copyload = load ptr, ptr %8, align 8, !tbaa !75
  %i.fc = call ptr @_ZN4mlir6tensor5DimOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr %.sroa.0.0.copyload.i.i47, ptr %i.dj, ptr %i.fb, ptr %.sroa.010.0.copyload) #20
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -16
  %.sroa.07.0.copyload = load ptr, ptr %11, align 8, !tbaa !75
  %i.fe = call ptr @_ZN4mlir5arith6CmpIOp6createERNS_9OpBuilderENS_8LocationENS0_13CmpIPredicateENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr %.sroa.0.0.copyload.i.i47, i64 noundef 0, ptr %.sroa.07.0.copyload, ptr nonnull %i.fd) #20
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store ptr %7, ptr %16, align 8, !tbaa !137
  store ptr %8, ptr %i.es, align 8, !tbaa !135
  store ptr %11, ptr %i.et, align 8, !tbaa !135
  store ptr %9, ptr %i.eu, align 8, !tbaa !135
  store ptr %15, ptr %i.ev, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  store ptr %7, ptr %18, align 8, !tbaa !137
  store ptr @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationEEE11callback_fnIZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENSA_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEE3$_2EEvlS3_S4_", ptr %17, align 8, !tbaa !153
  store i64 %i.ey, ptr %i.ex, align 8, !tbaa !154
  %i.fg = call ptr @_ZN4mlir3scf4IfOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm12function_refIFvS3_S4_EEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr %.sroa.0.0.copyload.i.i47, ptr nonnull %i.ff, ptr nonnull @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationEEE11callback_fnIZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENSA_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEE3$_1EEvlS3_S4_", i64 %i.ew, ptr noundef nonnull byval(%"class.llvm::function_ref.1085") align 8 %17) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %.not83 = icmp eq ptr %19, null
  br i1 %.not83, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -16
  %i.fi = call ptr @_ZN4mlir5arith6AndIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr %.sroa.0.0.copyload.i.i47, ptr nonnull %19, ptr nonnull %i.fh) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.pn = phi ptr [ %i.fi, %bb.v ], [ %i.fg, %bb.u ]
  %.sroa.03.0 = getelementptr inbounds i8, ptr %.pn, i64 -16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.fj = load i64, ptr %i.er, align 8, !tbaa !112
  %i.fk = add nsw i64 %i.fj, 1                    ; 3 uses
  store i64 %i.fk, ptr %i.er, align 8
  %.not = icmp eq i64 %i.fk, %i.eq
  br i1 %.not, label %._crit_edge, label %bb.u

bb.x:                                             ; preds = %._crit_edge, %_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.y

bb.y:                                             ; preds = %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENS5_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEE3$_0EEbOT_T0_.exit", %bb.x
  %.sroa.039.1 = phi i8 [ 1, %bb.x ], [ 0, %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENS5_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEE3$_0EEbOT_T0_.exit" ]
  ret i8 %.sroa.039.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_5shape9ShapeEqOpEE15matchAndRewriteES2_NS1_23ShapeEqOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::shape::ShapeEqOpGenericAdaptor.1818") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_5shape9ShapeEqOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::shape::ShapeEqOpGenericAdaptor.1818") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %i.a
}

declare void @_ZN4mlir5shape6detail27ShapeEqOpGenericAdaptorBaseC2ENS0_9ShapeEqOpE(ptr noundef nonnull align 8 dereferenceable(48), ptr) unnamed_addr #4

declare i64 @_ZN4mlir5shape9ShapeEqOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare i64 @_ZN4mlir5shape6detail27ShapeEqOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationEEE11callback_fnIZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENSA_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEE3$_1EEvlS3_S4_"(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::Location", align 8    ; 6 uses
  %4 = alloca %"class.mlir::scf::ForOp", align 8  ; 5 uses
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 4 uses
  %6 = alloca [1 x %"class.mlir::Value"], align 8 ; 4 uses
  %7 = alloca %"class.llvm::function_ref.1532", align 8 ; 5 uses
  %8 = alloca %class.anon.1825, align 8           ; 5 uses
  %9 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %2, ptr %3, align 8
  %i.b = tail call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, i64 noundef 1) #20
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !859, !nonnull !80, !align !88
  %.sroa.09.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.e = tail call ptr @_ZN4mlir7Builder11getBoolAttrEb(ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext true) #20 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !143

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 15) #20
  store ptr %i.k, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !12 ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !14   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.o, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.p = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.p ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !12
  %i.r = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = xor i64 %i.p, -1
  %i.u = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.t
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.r, ptr %i.s, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.r, i64 %i.u, i64 %i.p ; 2 uses
  %i.v = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.v, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.o, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.w
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.x = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !62
  %i.y = icmp eq ptr %i.x, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.y, label %bb.f, label %_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !145
  br label %_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit.i

_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit.i:      ; preds = %bb.f, %bb.e, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.a
  %i.ab = phi ptr [ null, %bb.a ], [ %i.aa, %bb.f ], [ null, %bb.e ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  %i.ac = tail call ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %.sroa.09.0.copyload.i, ptr %i.e, ptr %i.ab) #20
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %.sroa.06.0.copyload.i = load ptr, ptr %3, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !860, !nonnull !80, !align !88
  %.sroa.05.0.copyload.i = load ptr, ptr %i.af, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !861, !nonnull !80, !align !88
  %.sroa.04.0.copyload.i = load ptr, ptr %i.ah, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.ad, ptr %6, align 8, !tbaa !75
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %6, i64 1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %3, ptr %8, align 8, !tbaa !862
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !135
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !135
  store ptr @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationENS1_5ValueENS1_10ValueRangeEEE11callback_fnIZZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENSC_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEENK3$_1clES3_S4_EUlS3_S4_S5_S6_E_EEvlS3_S4_S5_S6_", ptr %7, align 8, !tbaa !148
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = ptrtoint ptr %8 to i64
  store i64 %i.am, ptr %i.al, align 8, !tbaa !149
  %i.an = call ptr @_ZN4mlir3scf5ForOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_NS_10ValueRangeEN4llvm12function_refIFvS3_S4_S5_S6_EEEb(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.06.0.copyload.i, ptr %.sroa.05.0.copyload.i, ptr %.sroa.04.0.copyload.i, ptr nonnull %i.c, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %5, ptr noundef nonnull byval(%"class.llvm::function_ref.1532") align 8 %7, i1 noundef zeroext false) #20
  store ptr %i.an, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.sroa.02.0.copyload.i = load ptr, ptr %3, align 8
  %i.ao = call i64 @_ZN4mlir3scf5ForOp26getODSResultIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #20 ; 3 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !63    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !171
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 -16 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = select i1 %i.as, ptr null, ptr %i.at
  %i.au = and i64 %i.ao, 4294967295               ; 3 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %"_ZZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteEN4mlir5shape9ShapeEqOpENS2_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEENK3$_1clERNS1_9OpBuilderENS1_8LocationE.exit", label %bb.g

bb.g:                                             ; preds = %_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit.i
  %i.aw = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 noundef %i.au) #20
  br label %"_ZZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteEN4mlir5shape9ShapeEqOpENS2_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEENK3$_1clERNS1_9OpBuilderENS1_8LocationE.exit"

"_ZZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteEN4mlir5shape9ShapeEqOpENS2_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEENK3$_1clERNS1_9OpBuilderENS1_8LocationE.exit": ; preds = %_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit.i, %bb.g
  %i.ax = phi ptr [ %i.aw, %bb.g ], [ %.sroa.0.0.i.i.i.i.i, %_ZNK4mlir8BoolAttrcvNS_9TypedAttrEEv.exit.i ]
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %i.ao, 32
  %i.ay = add i64 %.sroa.5.0.extract.shift.i.i.i, %i.ao
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = sub nsw i64 %i.az, %i.au
  call void @_ZN4mlir10ValueRangeC1ENS_11ResultRangeE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.ax, i64 %i.ba) #20
  %i.bb = load i64, ptr %9, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = call ptr @_ZN4mlir3scf7YieldOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.02.0.copyload.i, i64 %i.bb, i64 %i.bd) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationENS1_5ValueENS1_10ValueRangeEEE11callback_fnIZZNK12_GLOBAL__N_118ShapeEqOpConverter15matchAndRewriteENS1_5shape9ShapeEqOpENSC_16ShapeEqOpAdaptorERNS1_25ConversionPatternRewriterEENK3$_1clES3_S4_EUlS3_S4_S5_S6_E_EEvlS3_S4_S5_S6_"(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree readnone captures(none) %2, ptr %3, i64 %4, i64 %5) #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %7 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %8 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %9 = alloca [1 x %"class.mlir::Value"], align 8 ; 4 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %3, ptr %6, align 8
  store i64 %4, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %i.b, align 8
  %i.c = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 0) #20
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !864, !nonnull !80, !align !88
  %.sroa.014.0.copyload.i = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !865, !nonnull !80, !align !88
  %.sroa.013.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !75
end_hunk_0
