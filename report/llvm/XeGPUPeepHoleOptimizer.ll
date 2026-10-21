Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XeGPUPeepHoleOptimizer?download=true
inline.NumInlined: 4540
inline.NumDeleted: 2582
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_113generateLoadsERN4mlir25ConversionPatternRewriterENS0_6detail10TypedValueINS0_10VectorTypeEEEN4llvm11SmallVectorINS0_12OpFoldResultELj6EEENS4_INS0_5xegpu14TensorDescTypeEEENSB_8LoadNdOpE:bb.a
bb.e:                                             ; preds = %_ZN12_GLOBAL__N_114convertToValueERN4mlir25ConversionPatternRewriterENS0_8LocationENS0_12OpFoldResultE.exit
  %i.ag = and i64 %.sroa.050.0.copyload, -5
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %_ZN12_GLOBAL__N_114convertToValueERN4mlir25ConversionPatternRewriterENS0_8LocationENS0_12OpFoldResultE.exit67

_ZN12_GLOBAL__N_114convertToValueERN4mlir25ConversionPatternRewriterENS0_8LocationENS0_12OpFoldResultE.exit67: ; preds = %bb.d, %bb.e
  %.sroa.03.0.i66 = phi ptr [ %i.af, %bb.d ], [ %i.ah, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ai, align 8
  %i.aj = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %i.ak, ptr %7, align 8
  %i.al = call { ptr, i64 } @_ZNK4mlir5xegpu14TensorDescType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #22 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1      ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 6, ptr %i.aq, align 4, !tbaa !22
  %.idx.i = shl nuw nsw i64 %i.an, 3
  %i.ar = icmp ugt i64 %i.an, 6
  br i1 %i.ar, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i: ; preds = %_ZN12_GLOBAL__N_114convertToValueERN4mlir25ConversionPatternRewriterENS0_8LocationENS0_12OpFoldResultE.exit67
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.ao, i64 noundef %i.an, i64 noundef 8) #22
  %.pre8.pre.i.i = load i32, ptr %i.ap, align 8, !tbaa !21
  %i.as = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %6, align 8, !tbaa !20
  br label %bb.f

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i:  ; preds = %_ZN12_GLOBAL__N_114convertToValueERN4mlir25ConversionPatternRewriterENS0_8LocationENS0_12OpFoldResultE.exit67
  %.not.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i
  %i.at = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i ], [ %i.ao, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.as, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 8 %i.am, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.ap, align 8, !tbaa !21
  br label %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i, %bb.f
  %i.av = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.f ]
  %i.aw = trunc i64 %i.an to i32
  %i.ax = add i32 %i.av, %i.aw
  store i32 %i.ax, ptr %i.ap, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ay = load ptr, ptr %5, align 8, !tbaa !617
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.0.copyload.i.i.i.i.i.i68 = load i64, ptr %i.az, align 8
  %i.ba = and i64 %.0.copyload.i.i.i.i.i.i68, -8
  %i.bb = inttoptr i64 %i.ba to ptr
  store ptr %i.bb, ptr %10, align 8
  %i.bc = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #22 ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0
  %i.be = extractvalue { ptr, i64 } %i.bc, 1
  %i.bf = load ptr, ptr %6, align 8, !tbaa !20
  %i.bg = load i32, ptr %i.ap, align 8, !tbaa !21
  %i.bh = zext i32 %i.bg to i64
  call void @_ZN4mlir17computeShapeRatioEN4llvm8ArrayRefIlEES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.462") align 8 %9, ptr %i.bd, i64 %i.be, ptr %i.bf, i64 %i.bh) #22
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !137, !range !76, !noundef !77
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZNOSt8optionalIN4llvm11SmallVectorIlLj6EEEE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNOSt8optionalIN4llvm11SmallVectorIlLj6EEEE5valueEv.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bl, ptr %8, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.bm, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 6, ptr %i.bn, align 4, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !21
  %.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.thread, label %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit

_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.thread:  ; preds = %_ZNOSt8optionalIN4llvm11SmallVectorIlLj6EEEE5valueEv.exit
  store i8 0, ptr %i.bi, align 8, !tbaa !137
  br label %bb.h

_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit:         ; preds = %_ZNOSt8optionalIN4llvm11SmallVectorIlLj6EEEE5valueEv.exit
  %i.bq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %9) ; 0 uses
  %.pre116 = load i8, ptr %i.bi, align 8, !tbaa !137, !range !76
  %i.br = trunc nuw i8 %.pre116 to i1
  store i8 0, ptr %i.bi, align 8, !tbaa !137
  br i1 %i.br, label %bb.h, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.thread, %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit
  %i.bs = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.bs) #22
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bv = load ptr, ptr %8, align 8, !tbaa !20    ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !63 ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %.preheader.lr.ph, label %._crit_edge114

.preheader.lr.ph:                                 ; preds = %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.ce = phi i64 [ %i.bw, %.preheader.lr.ph ], [ %i.cm, %._crit_edge ]
  %i.cf = phi ptr [ %i.bv, %.preheader.lr.ph ], [ %i.cn, %._crit_edge ] ; 2 uses
  %.0113 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.co, %._crit_edge ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !63
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

._crit_edge114:                                   ; preds = %._crit_edge, %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit
  %.lcssa = phi ptr [ %i.bv, %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit ], [ %i.cn, %._crit_edge ] ; 2 uses
  %.sroa.064.0.copyload = load ptr, ptr %5, align 8, !tbaa !149
  %i.cj = icmp eq ptr %.lcssa, %i.bl
  br i1 %i.cj, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge114
  call void @free(ptr noundef nonnull %.lcssa) #22
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %._crit_edge114, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ck = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ao
  br i1 %i.cl, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit69, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  call void @free(ptr noundef %i.ck) #22
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit69

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit69:          ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret ptr %.sroa.064.0.copyload

._crit_edge.loopexit:                             ; preds = %_ZNK4mlir5xegpu14TensorDescType13getLayoutAttrEv.exit
  %.pre117 = load i64, ptr %i.hv, align 8, !tbaa !63
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.cm = phi i64 [ %.pre117, %._crit_edge.loopexit ], [ %i.ce, %.preheader ] ; 2 uses
  %i.cn = phi ptr [ %i.hv, %._crit_edge.loopexit ], [ %i.cf, %.preheader ] ; 2 uses
  %i.co = add nuw nsw i64 %.0113, 1               ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.cm
  br i1 %i.cp, label %.preheader, label %._crit_edge114, !llvm.loop !614

.lr.ph:                                           ; preds = %.preheader, %_ZNK4mlir5xegpu14TensorDescType13getLayoutAttrEv.exit
  %.065112 = phi i64 [ %i.hu, %_ZNK4mlir5xegpu14TensorDescType13getLayoutAttrEv.exit ], [ 0, %.preheader ] ; 2 uses
  %i.cq = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !63
  %i.cs = mul nsw i64 %i.cr, %.0113               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !63
  %i.cv = mul nsw i64 %i.cu, %.065112             ; 2 uses
  %i.cw = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr %i.c, i64 noundef %i.cs) #22
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -16
  %i.cy = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 noundef 0) #22
  %i.cz = call ptr @_ZN4mlir5arith6AddIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_20IntegerOverflowFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr %i.c, ptr %.sroa.03.0.i, ptr %i.cy, i32 noundef 0) #22
  %i.da = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr %i.c, i64 noundef %i.cv) #22
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -16
  %i.dc = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i64 noundef 0) #22
  %i.dd = call ptr @_ZN4mlir5arith6AddIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_20IntegerOverflowFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr %i.c, ptr %.sroa.03.0.i66, ptr %i.dc, i32 noundef 0) #22
  %i.de = load ptr, ptr %6, align 8, !tbaa !20
  %i.df = load i32, ptr %i.ap, align 8, !tbaa !21
  %i.dg = zext i32 %i.df to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.dh = load ptr, ptr %5, align 8, !tbaa !617
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.0.copyload.i.i.i.i.i.i70 = load i64, ptr %i.di, align 8
  %i.dj = and i64 %.0.copyload.i.i.i.i.i.i70, -8
  %i.dk = inttoptr i64 %i.dj to ptr
  store ptr %i.dk, ptr %11, align 8
  %i.dl = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #22
  %i.dm = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr %i.de, i64 %i.dg, ptr %i.dl, ptr null, i64 0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %17 = getelementptr inbounds i8, ptr %i.cz, i64 -16
  %18 = getelementptr inbounds i8, ptr %i.dd, i64 -16
  %i.dn = insertelement <2 x ptr> poison, ptr %17, i64 0
  %19 = insertelement <2 x ptr> %i.dn, ptr %18, i64 1
  %i.do = ptrtoint <2 x ptr> %19 to <2 x i64>
  %i.dp = or <2 x i64> %i.do, splat (i64 4)
  store <2 x i64> %i.dp, ptr %12, align 16
  %i.dq = load i32, ptr %i.bz, align 4            ; 2 uses
  %.not.i.i.i71 = icmp ugt i32 %i.dq, 16777215
  call void @llvm.assume(i1 %.not.i.i.i71)
  %i.dr = lshr i32 %i.dq, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.dr, 1
  %i.ds = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.ds ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 112
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !179
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 120
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !179
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !179
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !179
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !179
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %i.ef, null
  br i1 %.not.i, label %_ZN4llvm19dyn_cast_if_presentIN4mlir5xegpu20DistributeLayoutAttrES3_EEDaRT0_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !140 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ej = icmp eq i8 %i.ei, 0
  br i1 %i.ej, label %bb.m, label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i, !prof !141

bb.m:                                             ; preds = %bb.l
  %i.ek = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id) #22
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.el = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.16, i64 49), i64 33) #22
  store ptr %i.el, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id) #22
  br label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !30 ; 2 uses
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !20 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ep, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.em, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.eq = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.eq ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.er, align 8, !tbaa !30
  %i.es = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.eu = xor i64 %i.eq, -1
  %i.ev = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.eu
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.es, ptr %i.et, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.es, i64 %i.ev, i64 %i.eq ; 2 uses
  %i.ew = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ew, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !4

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.ep, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.em, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ex
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23DefaultDoCastIfPossibleIN4mlir5xegpu20DistributeLayoutAttrES3_NS_8CastInfoIS3_S3_vEEE16doCastIfPossibleES3_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ey = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !103
  %i.ez = icmp eq ptr %i.ey, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ez, label %bb.p, label %_ZN4llvm23DefaultDoCastIfPossibleIN4mlir5xegpu20DistributeLayoutAttrES3_NS_8CastInfoIS3_S3_vEEE16doCastIfPossibleES3_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.fa = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !143
  br label %_ZN4llvm23DefaultDoCastIfPossibleIN4mlir5xegpu20DistributeLayoutAttrES3_NS_8CastInfoIS3_S3_vEEE16doCastIfPossibleES3_.exit.i

_ZN4llvm23DefaultDoCastIfPossibleIN4mlir5xegpu20DistributeLayoutAttrES3_NS_8CastInfoIS3_S3_vEEE16doCastIfPossibleES3_.exit.i: ; preds = %bb.p, %bb.o, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i
  %i.fc = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.fb, %bb.p ], [ null, %bb.o ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.ef, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %i.fc, 1
  br label %_ZN4llvm19dyn_cast_if_presentIN4mlir5xegpu20DistributeLayoutAttrES3_EEDaRT0_.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir5xegpu20DistributeLayoutAttrES3_EEDaRT0_.exit: ; preds = %.lr.ph, %_ZN4llvm23DefaultDoCastIfPossibleIN4mlir5xegpu20DistributeLayoutAttrES3_NS_8CastInfoIS3_S3_vEEE16doCastIfPossibleES3_.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4llvm23DefaultDoCastIfPossibleIN4mlir5xegpu20DistributeLayoutAttrES3_NS_8CastInfoIS3_S3_vEEE16doCastIfPossibleES3_.exit.i ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.fd = extractvalue { ptr, ptr } %.pn.i, 0
  store ptr %i.fd, ptr %13, align 8
  %i.fe = extractvalue { ptr, ptr } %.pn.i, 1
  store ptr %i.fe, ptr %i.ca, align 8
  %i.ff = ptrtoint ptr %i.dv to i64
  %i.fg = ptrtoint ptr %i.dx to i64
  %i.fh = ptrtoint ptr %i.dz to i64
  %i.fi = ptrtoint ptr %i.eb to i64
  %i.fj = ptrtoint ptr %i.ed to i64
  %i.fk = call ptr @_ZN4mlir5xegpu8LoadNdOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEENS_8UnitAttrENS_6detail18DenseArrayAttrImplIlEENS0_15CachePolicyAttrESF_SF_NS0_20DistributeLayoutAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr %i.c, ptr %i.dm, ptr %3, ptr nonnull %12, i64 2, i64 %i.ff, i64 %i.fg, i64 %i.fh, i64 %i.fi, i64 %i.fj, ptr noundef nonnull byval(%"class.mlir::xegpu::DistributeLayoutAttr") align 8 %13) #22 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %.0.copyload.i.i.i.i.i.i82 = load i64, ptr %i.ai, align 8
  %i.fl = and i64 %.0.copyload.i.i.i.i.i.i82, -8
  %i.fm = inttoptr i64 %i.fl to ptr
  store ptr %i.fm, ptr %14, align 8
  %i.fn = call ptr @_ZNK4mlir5xegpu14TensorDescType9getLayoutEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #22 ; 4 uses
  %.not.i.i83 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i83, label %_ZNK4mlir5xegpu14TensorDescType13getLayoutAttrEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir5xegpu20DistributeLayoutAttrES3_EEDaRT0_.exit
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !140 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.fr = icmp eq i8 %i.fq, 0
  br i1 %i.fr, label %bb.r, label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !141

bb.r:                                             ; preds = %bb.q
  %i.fs = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id) #22
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ft = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.16, i64 49), i64 33) #22
  store ptr %i.ft, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id) #22
  br label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !30 ; 2 uses
  %i.fu = load ptr, ptr %i.fp, align 8, !tbaa !20 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fx, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fu, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fy = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.fy ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i84 = load ptr, ptr %i.fz, align 8, !tbaa !30
  %i.ga = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i84, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gc = xor i64 %i.fy, -1
  %i.gd = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.gc
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.ga, ptr %i.gb, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.ga, i64 %i.gd, i64 %i.fy ; 2 uses
  %i.ge = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ge, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !4

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.fx, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fu, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.gf
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4mlir5xegpu14TensorDescType13getLayoutAttrEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.gg = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !103
  %i.gh = icmp eq ptr %i.gg, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.gh, label %_ZN4llvm8CastInfoIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeEvE10isPossibleES4_.exit.i, label %_ZNK4mlir5xegpu14TensorDescType13getLayoutAttrEv.exit

_ZN4llvm8CastInfoIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeEvE10isPossibleES4_.exit.i: ; preds = %bb.t
  %i.gi = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !143
  %.not.i86 = icmp eq ptr %i.gj, null
  br i1 %.not.i86, label %_ZNK4mlir5xegpu14TensorDescType13getLayoutAttrEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm8CastInfoIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeEvE10isPossibleES4_.exit.i
  %i.gk = load ptr, ptr %i.fn, align 8, !tbaa !140 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %bb.v, label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !141

bb.v:                                             ; preds = %bb.u
  %i.go = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id) #22
  %.not.i.i.i.i.i.i.i.i.i.i.i88 = icmp eq i32 %i.go, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i88, label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gp = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.16, i64 49), i64 33) #22
  store ptr %i.gp, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id) #22
  br label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !30 ; 2 uses
  %i.gq = load ptr, ptr %i.gl, align 8, !tbaa !20 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
end_hunk_0
