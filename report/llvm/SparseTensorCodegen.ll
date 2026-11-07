Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparseTensorCodegen?download=true
inline.NumInlined: 6968
inline.NumDeleted: 3478
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK12_GLOBAL__N_125SparseAssembleOpConverter15matchAndRewriteEN4mlir13sparse_tensor10AssembleOpENS2_17AssembleOpAdaptorERNS1_25ConversionPatternRewriterE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  %.sroa.2132.0.copyload = load ptr, ptr %.sroa.2132.0..sroa_idx, align 8
  %i.o = load <2 x ptr>, ptr %19, align 16
  store <2 x ptr> %i.o, ptr %22, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 12 uses
  store ptr %20, ptr %i.p, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 2 uses
  store ptr %.sroa.2132.0.copyload, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 19 uses
  %i.s = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, i64 noundef 0) #18 ; 0 uses
  %i.t = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, i64 noundef 1) #18
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 6 uses
  %i.v = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, i64 noundef 2) #18
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %.sroa.0.0.copyload.i.i98 = load ptr, ptr %.sroa.2132.0..sroa_idx, align 8
  store ptr %.sroa.0.0.copyload.i.i98, ptr %17, align 8
  %i.x = call noundef i64 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr14getAoSCOOStartEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #18 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.y = load i64, ptr %.sroa.3.0..sroa_idx, align 16, !tbaa !84 ; 3 uses
  %i.z = sub nuw i64 %i.y, %i.x
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.sroa.2.0..sroa_idx.i.i101 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2.0..sroa_idx.i.i104 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %24, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.2.0..sroa_idx.i.i114 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0..sroa_idx.i.i111 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %24, i64 56
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.r
  %.pre138 = load ptr, ptr %i.p, align 8, !tbaa !87
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ak = phi ptr [ %20, %bb.a ], [ %.pre138, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.064.0.lcssa = phi ptr [ %i.u, %bb.a ], [ %.sroa.064.4, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !46
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %.sroa.03.0.copyload.i.i = load ptr, ptr %i.aq, align 8, !tbaa !89
  store ptr %.sroa.03.0.copyload.i.i, ptr %15, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @_ZN4mlir13sparse_tensor21SparseTensorSpecifier17setSpecifierFieldERNS_9OpBuilderENS_8LocationENS_5ValueENS0_20StorageSpecifierKindESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.064.0.lcssa, i32 noundef 3, ptr noundef nonnull byval(%"class.std::optional.423") align 8 %16) #18
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %15, align 8, !tbaa !89
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !87, !nonnull !90, !align !91 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !46
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ax, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.ay = load ptr, ptr %18, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !61
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr %i.az, i64 %i.av) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.ba = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.bb, ptr %14, align 8, !tbaa !61, !alias.scope !724
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !46, !alias.scope !724
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 1, ptr %i.bd, align 4, !tbaa !47, !alias.scope !724
  call void @_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir5ValueELj6EEEE6appendIPKNS2_10ValueRangeEvEEvT_SA_(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull %26, ptr noundef nonnull %i.ba)
  call void @_ZN4mlir25ConversionPatternRewriter21replaceOpWithMultipleEPNS_9OperationEON4llvm11SmallVectorINS4_INS_5ValueELj6EEELj1EEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(80) %14) #18
  %i.be = load ptr, ptr %14, align 8, !tbaa !61   ; 3 uses
  %i.bf = load i32, ptr %i.bc, align 8, !tbaa !46 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %._crit_edge
  %i.bg = zext i32 %i.bf to i64
  %.idx.i.i = shl nuw nsw i64 %i.bg, 6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.bi, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i ], [ %i.bh, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -64 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !61 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  call void @free(ptr noundef %i.bj) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.be, %i.bi
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %14, align 8, !tbaa !61
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i, %._crit_edge
  %i.bm = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i ], [ %i.be, %._crit_edge ] ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.bb
  br i1 %i.bn, label %_ZN4mlir25ConversionPatternRewriter21replaceOpWithMultipleINS_10ValueRangeEEEvPNS_9OperationEN4llvm8ArrayRefIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i.i
  call void @free(ptr noundef %i.bm) #18
  br label %_ZN4mlir25ConversionPatternRewriter21replaceOpWithMultipleINS_10ValueRangeEEEvPNS_9OperationEN4llvm8ArrayRefIT_EE.exit

_ZN4mlir25ConversionPatternRewriter21replaceOpWithMultipleINS_10ValueRangeEEEvPNS_9OperationEN4llvm8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.bo = load ptr, ptr %20, align 8, !tbaa !61   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.g
  br i1 %i.bp, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir25ConversionPatternRewriter21replaceOpWithMultipleINS_10ValueRangeEEEvPNS_9OperationEN4llvm8ArrayRefIT_EE.exit
  call void @free(ptr noundef %i.bo) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %_ZN4mlir25ConversionPatternRewriter21replaceOpWithMultipleINS_10ValueRangeEEEvPNS_9OperationEN4llvm8ArrayRefIT_EE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  ret i8 1

bb.e:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.064.0136 = phi ptr [ %i.u, %.lr.ph ], [ %.sroa.064.4, %bb.r ] ; 8 uses
  %.0135 = phi i64 [ 0, %.lr.ph ], [ %i.gf, %bb.r ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18, !noalias !725
  %.sroa.0.0.copyload.i.i99 = load ptr, ptr %.sroa.2132.0..sroa_idx, align 8, !noalias !725
  store ptr %.sroa.0.0.copyload.i.i99, ptr %13, align 8, !noalias !725
  %i.bq = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(40) %19) #18, !noalias !725 ; 2 uses
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1
  call void @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr14translateShapeEN4llvm8ArrayRefIlEENS0_21CrdTransDirectionKindE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.107") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr %i.br, i64 %i.bs, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !725
  %i.bt = load ptr, ptr %23, align 8, !tbaa !61
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.0135
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !44
  %i.bw = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, i64 noundef %i.bv) #18
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -16 ; 2 uses
  %i.by = load ptr, ptr %23, align 8, !tbaa !61   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.aa
  br i1 %i.bz, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.by) #18
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.ca = load ptr, ptr %i.p, align 8, !tbaa !87, !nonnull !90, !align !91 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !46
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %.sroa.03.0.copyload.i.i100 = load ptr, ptr %i.cg, align 8, !tbaa !89
  store ptr %.sroa.03.0.copyload.i.i100, ptr %11, align 8
  store i64 %.0135, ptr %12, align 8
  store i8 1, ptr %.sroa.2.0..sroa_idx.i.i101, align 8
  call void @_ZN4mlir13sparse_tensor21SparseTensorSpecifier17setSpecifierFieldERNS_9OpBuilderENS_8LocationENS_5ValueENS0_20StorageSpecifierKindESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.bx, i32 noundef 0, ptr noundef nonnull byval(%"class.std::optional.423") align 8 %12) #18
  %.sroa.0.0.copyload.i.i.i102 = load ptr, ptr %11, align 8, !tbaa !89
  %i.ch = load ptr, ptr %i.p, align 8, !tbaa !87, !nonnull !90, !align !91 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !61
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !46
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8
  store ptr %.sroa.0.0.copyload.i.i.i102, ptr %i.cn, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.co = icmp ugt i64 %.0135, %i.x
  br i1 %i.co, label %bb.r, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  %i.cp = call i64 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr10getLvlTypeEm(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2132.0..sroa_idx, i64 noundef %.0135) #18
  %27 = and i64 %i.cp, 4294901760                 ; 2 uses
  %28 = call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %27)
  %i.cq = icmp eq i64 %28, 1
  br i1 %i.cq, label %.split, label %bb.o

.split:                                           ; preds = %bb.g
  %29 = call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %27, i1 true)
  switch i64 %29, label %bb.o [
    i64 16, label %bb.h
    i64 17, label %bb.r
    i64 20, label %bb.i
    i64 18, label %bb.j
  ]

bb.h:                                             ; preds = %.split
  %i.cr = call ptr @_ZN4mlir5arith6MulIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_20IntegerOverflowFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.bx, ptr %.sroa.064.0136, i32 noundef 0) #18
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -16 ; 2 uses
  %i.ct = call ptr @_ZN4mlir5arith6SubIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_20IntegerOverflowFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.cs, ptr nonnull %i.u, i32 noundef 0) #18 ; 0 uses
  br label %bb.r

bb.i:                                             ; preds = %.split
  %i.cu = call ptr @_ZN4mlir5arith6MulIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_20IntegerOverflowFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.064.0136, ptr nonnull %i.w, i32 noundef 0) #18
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -16 ; 2 uses
  %i.cw = call ptr @_ZN4mlir5arith6SubIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_20IntegerOverflowFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.cv, ptr nonnull %i.u, i32 noundef 0) #18
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -16
  br label %bb.k

bb.j:                                             ; preds = %.split
  %i.cy = call ptr @_ZN4mlir5arith6AddIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_20IntegerOverflowFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.064.0136, ptr nonnull %i.u, i32 noundef 0) #18
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.064.1 = phi ptr [ %i.cv, %bb.i ], [ %i.cz, %bb.j ]
  %.sroa.066.0 = phi ptr [ %i.cx, %bb.i ], [ %.sroa.064.0136, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.da = load ptr, ptr %i.p, align 8, !tbaa !87, !nonnull !90, !align !91 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !61
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !46
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -8
  %.sroa.03.0.copyload.i.i103 = load ptr, ptr %i.dg, align 8, !tbaa !89
  store ptr %.sroa.03.0.copyload.i.i103, ptr %9, align 8
  store i64 %.0135, ptr %10, align 8
  store i8 1, ptr %.sroa.2.0..sroa_idx.i.i104, align 8
  call void @_ZN4mlir13sparse_tensor21SparseTensorSpecifier17setSpecifierFieldERNS_9OpBuilderENS_8LocationENS_5ValueENS0_20StorageSpecifierKindESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %.sroa.064.1, i32 noundef 1, ptr noundef nonnull byval(%"class.std::optional.423") align 8 %10) #18
  %.sroa.0.0.copyload.i.i.i105 = load ptr, ptr %9, align 8, !tbaa !89
  %i.dh = load ptr, ptr %i.p, align 8, !tbaa !87, !nonnull !90, !align !91 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !61
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !46
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8
  store ptr %.sroa.0.0.copyload.i.i.i105, ptr %i.dn, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %.sroa.0.0.copyload.i.i106 = load ptr, ptr %.sroa.2132.0..sroa_idx, align 8
  store ptr %.sroa.0.0.copyload.i.i106, ptr %8, align 8
  %i.do = call noundef i64 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr15getBatchLvlRankEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #18 ; 4 uses
  %i.dp = trunc i64 %i.do to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.dq = and i64 %i.do, 4294967295               ; 10 uses
  %i.dr = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, i64 noundef 0) #18
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -16 ; 2 uses
  store ptr %i.ab, ptr %24, align 8, !tbaa !61
  store i32 6, ptr %i.ad, align 4, !tbaa !47
  %i.dt = icmp samesign ugt i64 %i.dq, 6
  br i1 %i.dt, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.k
  store i32 0, ptr %i.ac, align 8, !tbaa !46
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull %i.ab, i64 noundef %i.dq, i64 noundef 8) #18
  %i.du = load ptr, ptr %24, align 8, !tbaa !61   ; 3 uses
  %i.dv = ptrtoint ptr %i.ds to i64               ; 2 uses
  %n.vec = and i64 %i.do, 4294967292              ; 3 uses
  %i.dw = shl nuw nsw i64 %n.vec, 3
  %i.dx = getelementptr i8, ptr %i.du, i64 %i.dw
  %i.dy = and i64 %i.do, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dv, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i.i.i.i.i.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.du, i64 %i.dz ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !89
  store <2 x i64> %broadcast.splat, ptr %i.ea, align 8, !tbaa !89
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !718

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dq, %n.vec
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i ], [ %i.dx, %middle.block ] ; 2 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i.i ], [ %i.dy, %middle.block ]
  store i64 %i.dv, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !89
  %i.ec = add nsw i64 %.068.i.i.i.i.i.i, -1       ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !719

_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %bb.k
  %.not.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.ee = ptrtoint ptr %i.ds to i64               ; 6 uses
  store i64 %i.ee, ptr %i.ab, align 8, !tbaa !89
  %.not.i.i.i.i.i = icmp eq i64 %i.dq, 1
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.preheader.i.i.i.i.i
  store i64 %i.ee, ptr %i.af, align 8, !tbaa !89
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.dq, 2
  br i1 %.not.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  store i64 %i.ee, ptr %i.ag, align 8, !tbaa !89
  %.not.i.i.i.i.i.2 = icmp eq i64 %i.dq, 3
  br i1 %.not.i.i.i.i.i.2, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  store i64 %i.ee, ptr %i.ah, align 8, !tbaa !89
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dq, 4
  br i1 %.not.i.i.i.i.i.3, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %.lr.ph.i.i.i.i.i.3
  store i64 %i.ee, ptr %i.ai, align 8, !tbaa !89
  %.not.i.i.i.i.i.4 = icmp eq i64 %i.dq, 5
  br i1 %.not.i.i.i.i.i.4, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.5:                               ; preds = %.lr.ph.i.i.i.i.i.4
  store i64 %i.ee, ptr %i.aj, align 8, !tbaa !89
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.pre = load i32, ptr %i.ad, align 4, !tbaa !47
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.5, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.loopexit, %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.ef = phi ptr [ %i.ab, %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %i.du, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.loopexit ], [ %i.ab, %.lr.ph.i.i.i.i.i.5 ], [ %i.ab, %.lr.ph.i.i.i.i.i.4 ], [ %i.ab, %.lr.ph.i.i.i.i.i.3 ], [ %i.ab, %.lr.ph.i.i.i.i.i.2 ], [ %i.ab, %.lr.ph.i.i.i.i.i.1 ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ]
  %i.eg = phi i32 [ 6, %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %.pre, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.loopexit ], [ 6, %.lr.ph.i.i.i.i.i.5 ], [ 6, %.lr.ph.i.i.i.i.i.4 ], [ 6, %.lr.ph.i.i.i.i.i.3 ], [ 6, %.lr.ph.i.i.i.i.i.2 ], [ 6, %.lr.ph.i.i.i.i.i.1 ], [ 6, %.lr.ph.preheader.i.i.i.i.i ]
  store i32 %i.dp, ptr %i.ac, align 8, !tbaa !46
  %.not.i107 = icmp ugt i32 %i.eg, %i.dp
  br i1 %.not.i107, label %bb.m, label %bb.l, !prof !93

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr %.sroa.066.0)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.dq
  store ptr %.sroa.066.0, ptr %i.eh, align 1
  %i.ei = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.ac, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.l, %bb.m
  %i.ek = call i64 @_ZNK4mlir13sparse_tensor13StorageLayout22getFieldIndexAndStrideENS0_21SparseTensorFieldKindESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef 1, i64 %.0135, i8 1) #18
  %i.el = load ptr, ptr %i.p, align 8, !tbaa !87, !nonnull !90, !align !91
  %i.em = and i64 %i.ek, 4294967295
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !61
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.em
  %.sroa.0.0.copyload.i.i.i108 = load ptr, ptr %i.eo, align 8, !tbaa !89
  %i.ep = load ptr, ptr %24, align 8, !tbaa !61
  %i.eq = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.er = zext i32 %i.eq to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr %i.ep, i64 %i.er) #18
  %i.es = load i64, ptr %25, align 8
  %i.et = load i64, ptr %i.ae, align 8
  %i.eu = call ptr @_ZN4mlir13sparse_tensor12genIndexLoadERNS_9OpBuilderENS_8LocationENS_5ValueENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i.i108, i64 %i.es, i64 %i.et) #18
  %i.ev = call ptr @_ZN4mlir5arith6SubIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_20IntegerOverflowFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.066.0, ptr nonnull %i.u, i32 noundef 0) #18 ; 0 uses
  %i.ew = load ptr, ptr %24, align 8, !tbaa !61   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ab
  br i1 %i.ex, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit109, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  call void @free(ptr noundef %i.ew) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit109

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit109: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %.split, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit109
  %.sroa.064.2 = phi ptr [ %i.eu, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit109 ], [ %.sroa.064.0136, %.split ], [ %.sroa.064.0136, %bb.g ] ; 4 uses
  %i.ey = icmp eq i64 %.0135, %i.x
  br i1 %i.ey, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ez = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, i64 noundef %i.z) #18
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -16
  %i.fb = call ptr @_ZN4mlir5arith6MulIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_20IntegerOverflowFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.064.2, ptr nonnull %i.fa, i32 noundef 0) #18
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.fd = load ptr, ptr %i.p, align 8, !tbaa !87, !nonnull !90, !align !91 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !61
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !46
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_126SparseTensorEmptyConverter15matchAndRewriteEN4mlir6tensor7EmptyOpENS2_14EmptyOpAdaptorERNS1_25ConversionPatternRewriterE:bb.a

bb.i:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.bq) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i
  %.not.i.i14 = icmp eq ptr %i.bl, %i.bp
  br i1 %.not.i.i14, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i
  %.pre.i15 = load ptr, ptr %11, align 8, !tbaa !61
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.bt = phi ptr [ %.pre.i15, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.bl, %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ay
  br i1 %i.bu, label %_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i
  call void @free(ptr noundef %i.bt) #18
  br label %_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.j
  %i.bv = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit
  call void @free(ptr noundef %i.bv) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.by = load ptr, ptr %10, align 8, !tbaa !61   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ai
  br i1 %i.bz, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit16, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit
  call void @free(ptr noundef %i.by) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit16

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit16: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.ca = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.r
  br i1 %i.cb, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit16
  call void @free(ptr noundef %i.ca) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit17

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit17: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit16, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit17, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor7EmptyOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.013.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit17 ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor7EmptyOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret i8 %.sroa.013.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_6tensor7EmptyOpEE15matchAndRewriteES2_NS1_21EmptyOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::tensor::EmptyOpGenericAdaptor.2292") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6tensor7EmptyOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::tensor::EmptyOpGenericAdaptor.2292") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %i.a
}

declare void @_ZN4mlir6tensor6detail25EmptyOpGenericAdaptorBaseC2ENS0_7EmptyOpE(ptr noundef nonnull align 8 dereferenceable(48), ptr) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor7EmptyOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1079, !nonnull !90, !align !91
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #18 ; 0 uses
  ret void
}

declare i64 @_ZN4mlir6tensor6detail25EmptyOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_6tensor7EmptyOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::tensor::EmptyOpGenericAdaptor.2292") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.2293, align 8           ; 4 uses
  %5 = alloca %"class.llvm::FailureOr", align 8   ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %8 = alloca %"class.mlir::tensor::EmptyOpAdaptor", align 8 ; 3 uses
  %9 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !44
  call void @_ZNK4mlir17ConversionPattern26getOneToOneAdaptorOperandsEN4llvm8ArrayRefINS_10ValueRangeEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #18
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !124, !range !125, !noundef !90
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i10 = load ptr, ptr %i.e, align 8, !tbaa !45
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.f, align 8, !tbaa !128, !alias.scope !1087
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.g, align 1, !tbaa !129, !alias.scope !1087
  store ptr @.str.7, ptr %7, align 8, !tbaa !130, !alias.scope !1087
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.0.0.copyload.i10, ptr %i.h, align 8, !tbaa !130, !alias.scope !1087
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.2.0.copyload.i12, ptr %i.i, align 8, !tbaa !130, !alias.scope !1087
  store ptr %7, ptr %6, align 8, !alias.scope !1088
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.8, ptr %i.j, align 8, !alias.scope !1088
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.k, align 8, !tbaa !128, !alias.scope !1088
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.l, align 1, !tbaa !129, !alias.scope !1088
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %6, ptr %4, align 8, !tbaa !132
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor7EmptyOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.o = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #18
  br i1 %i.o, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor7EmptyOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = ptrtoint ptr %4 to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor7EmptyOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.q) #18, !inline_history !1086
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor7EmptyOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor7EmptyOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %5, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !46
  %i.x = zext i32 %i.w to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.u, i64 %i.x) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.z = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::tensor::EmptyOpAdaptor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %3) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor7EmptyOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit
  %.sroa.09.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor7EmptyOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit ], [ %i.ad, %bb.c ]
  %i.ae = load i8, ptr %i.b, align 8, !tbaa !124, !range !125, !noundef !90
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.b, align 8, !tbaa !124
  %i.ag = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ag) #18
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i8 %.sroa.09.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !48}
!1 = distinct !{!1, !48}
!2 = distinct !{!2, !48}
!3 = distinct !{!3, !48}
!4 = distinct !{!4, !48}
!5 = distinct !{!5, !48}
!6 = distinct !{!6, !48}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 _ZTSN4mlir11MLIRContextE", !15, i64 0}
!17 = !{!"p1 _ZTSN4mlir9OperationE", !15, i64 0}
!18 = !{!"_ZTSN4mlir7OpStateE", !17, i64 0}
!19 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !15, i64 0, !12, i64 8, !12, i64 12}
!20 = !{!"_ZTSN4mlir7Pattern8RootKindE", !11, i64 0}
!21 = !{!"short", !11, i64 0}
!22 = !{!"_ZTSN4mlir14PatternBenefitE", !21, i64 0}
!23 = !{!"_ZTSN4llvm6detail13PunnedPointerIPN4mlir11MLIRContextEEE", !11, i64 0}
!24 = !{!"_ZTSN4llvm14PointerIntPairIPN4mlir11MLIRContextELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEE", !23, i64 0}
!25 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN4mlir13OperationNameEvEE", !19, i64 0}
!26 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN4mlir13OperationNameELb1EEE", !25, i64 0}
!27 = !{!"_ZTSN4llvm15SmallVectorImplIN4mlir13OperationNameEEE", !26, i64 0}
!28 = !{!"_ZTSN4llvm18SmallVectorStorageIN4mlir13OperationNameELj2EEE", !11, i64 0}
!29 = !{!"_ZTSN4llvm11SmallVectorIN4mlir13OperationNameELj2EEE", !27, i64 0, !28, i64 16}
!30 = !{!"p1 omnipotent char", !15, i64 0}
!31 = !{!"long", !11, i64 0}
!32 = !{!"_ZTSN4llvm9StringRefE", !30, i64 0, !31, i64 8}
!33 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_9StringRefEvEE", !19, i64 0}
!34 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EEE", !33, i64 0}
!35 = !{!"_ZTSN4llvm15SmallVectorImplINS_9StringRefEEE", !34, i64 0}
!36 = !{!"_ZTSN4llvm11SmallVectorINS_9StringRefELj0EEE", !35, i64 0}
!37 = !{!"_ZTSN4mlir7PatternE", !15, i64 0, !20, i64 8, !22, i64 12, !24, i64 16, !29, i64 24, !32, i64 56, !36, i64 72}
!38 = !{!"_ZTSN4mlir14RewritePatternE", !37, i64 8}
!39 = !{!"p1 _ZTSN4mlir13TypeConverterE", !15, i64 0}
!40 = !{!"_ZTSN4mlir17ConversionPatternE", !38, i64 0, !39, i64 96}
!41 = !{!40, !39, i64 96}
!42 = !{!"vtable pointer", !10, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!31, !31, i64 0}
!45 = !{!30, !30, i64 0}
!46 = !{!19, !12, i64 8}
!47 = !{!19, !12, i64 12}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = !{!"_ZTSN4mlir19OpConversionPatternINS_13bufferization15DeallocTensorOpEEE", !40, i64 0}
!52 = !{!"bool", !11, i64 0}
!53 = !{!"_ZTSN12_GLOBAL__N_128SparseTensorDeallocConverterE", !51, i64 0, !52, i64 104}
!54 = !{!53, !52, i64 104}
!55 = !{!"_ZTSN4mlir19OpConversionPatternINS_13bufferization13AllocTensorOpEEE", !40, i64 0}
!56 = !{!"_ZTSN12_GLOBAL__N_126SparseTensorAllocConverterE", !55, i64 0, !52, i64 104}
!57 = !{!56, !52, i64 104}
!58 = !{!"_ZTSN4mlir19OpConversionPatternINS_6tensor7EmptyOpEEE", !40, i64 0}
!59 = !{!"_ZTSN12_GLOBAL__N_126SparseTensorEmptyConverterE", !58, i64 0, !52, i64 104}
!60 = !{!59, !52, i64 104}
!61 = !{!19, !15, i64 0}
!62 = !{!"p1 _ZTSN4mlir10ValueRangeE", !15, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"p1 _ZTSN4mlir25ConversionPatternRewriterE", !15, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"p1 _ZTSN4llvm11SmallVectorIN4mlir5ValueELj6EEE", !15, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"p1 _ZTSN4mlir13sparse_tensor10AssembleOpE", !15, i64 0}
!69 = !{!"p1 _ZTSN4mlir13sparse_tensor16SparseTensorTypeE", !15, i64 0}
!70 = !{!"p1 _ZTSN4llvm15SmallVectorImplIN4mlir5ValueEEE", !15, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"p1 _ZTSN4mlir11TypeStorageE", !15, i64 0}
!73 = !{!"_ZTSN4mlir4TypeE", !72, i64 0}
!74 = !{!"_ZTSN4mlir10TensorTypeE", !73, i64 0}
!75 = !{!"_ZTSN4mlir6detail15StorageUserBaseINS_16RankedTensorTypeENS_10TensorTypeENS0_23RankedTensorTypeStorageENS0_11TypeUniquerEJNS_10ShapedType5TraitENS_14ValueSemanticsEEEE", !74, i64 0}
!76 = !{!"_ZTSN4mlir16RankedTensorTypeE", !75, i64 0}
!77 = !{!"p1 _ZTSN4mlir16AttributeStorageE", !15, i64 0}
!78 = !{!"_ZTSN4mlir9AttributeE", !77, i64 0}
!79 = !{!"_ZTSN4mlir6detail15StorageUserBaseINS_13sparse_tensor24SparseTensorEncodingAttrENS_9AttributeENS2_6detail31SparseTensorEncodingAttrStorageENS0_16AttributeUniquerEJNS_24VerifiableTensorEncoding5TraitENS_18OpAsmAttrInterface5TraitEEEE", !78, i64 0}
!80 = !{!"_ZTSN4mlir13sparse_tensor24SparseTensorEncodingAttrE", !79, i64 0}
!81 = !{!"p1 _ZTSN4mlir6detail16AffineMapStorageE", !15, i64 0}
!82 = !{!"_ZTSN4mlir9AffineMapE", !81, i64 0}
!83 = !{!"_ZTSN4mlir13sparse_tensor16SparseTensorTypeE", !76, i64 0, !80, i64 8, !31, i64 16, !82, i64 24, !82, i64 32}
!84 = !{!83, !31, i64 16}
!85 = !{!"_ZTSN4mlir13sparse_tensor13StorageLayoutE", !80, i64 0}
!86 = !{!"_ZTSN4mlir13sparse_tensor26SparseTensorDescriptorImplIRN4llvm15SmallVectorImplINS_5ValueEEEEE", !83, i64 0, !70, i64 40, !85, i64 48}
!87 = !{!86, !70, i64 40}
!88 = !{!"p1 _ZTSN4mlir6detail9ValueImplE", !15, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{}
!91 = !{i64 8}
!92 = !{!18, !17, i64 0}
!93 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!94 = !{!"_ZTSN4mlir12LocationAttrE", !78, i64 0}
!95 = !{!"_ZTSN4mlir8LocationE", !94, i64 0}
!96 = !{!"p1 _ZTSN4mlir9OpOperandE", !15, i64 0}
!97 = !{!"_ZTSN4mlir6detail14OperandStorageE", !12, i64 0, !12, i64 3, !12, i64 4, !96, i64 8}
!98 = !{!97, !96, i64 8}
!99 = !{!"p1 _ZTSN4mlir12AbstractTypeE", !15, i64 0}
!100 = !{!"_ZTSN4mlir11TypeStorageE", !99, i64 0}
!101 = !{!100, !99, i64 0}
!102 = !{!"branch_weights", i32 1, i32 1048575}
!103 = !{!"p1 _ZTSN4mlir6TypeID7StorageE", !15, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!"_ZTSN4mlir6TypeIDE", !103, i64 0}
!106 = !{!105, !103, i64 0}
!107 = !{!"_ZTSSt4pairIN4mlir6TypeIDEPvE", !105, i64 0, !15, i64 8}
!108 = !{!107, !15, i64 8}
!109 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!110 = !{!"_ZTSN4llvm6detail13PunnedPointerIPvEE", !11, i64 0}
!111 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN4mlir5ValueEPNS3_9OpOperandEPNS3_6detail12OpResultImplEPKNS_8RepeatedIS4_EEEEELi4EJEEE", !110, i64 0}
!112 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN4mlir5ValueEPNS3_9OpOperandEPNS3_6detail12OpResultImplEPKNS_8RepeatedIS4_EEEEELi3EJSF_EEE", !111, i64 0}
!113 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN4mlir5ValueEPNS3_9OpOperandEPNS3_6detail12OpResultImplEPKNS_8RepeatedIS4_EEEEELi2EJSB_SF_EEE", !112, i64 0}
!114 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN4mlir5ValueEPNS3_9OpOperandEPNS3_6detail12OpResultImplEPKNS_8RepeatedIS4_EEEEELi1EJS8_SB_SF_EEE", !113, i64 0}
!115 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN4mlir5ValueEPNS3_9OpOperandEPNS3_6detail12OpResultImplEPKNS_8RepeatedIS4_EEEEELi0EJS6_S8_SB_SF_EEE", !114, i64 0}
!116 = !{!"_ZTSN4llvm12PointerUnionIJPKN4mlir5ValueEPNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEE", !115, i64 0}
!117 = !{!"_ZTSN4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_EE", !116, i64 0, !31, i64 8}
!118 = !{!117, !31, i64 8}
!119 = !{!"_ZTSN4llvm25indexed_accessor_iteratorINS_6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS3_5ValueEPNS3_9OpOperandEPNS3_6detail12OpResultImplEPKNS_8RepeatedIS6_EEEEES6_S6_S6_E8iteratorESI_S6_S6_S6_EE", !116, i64 0, !31, i64 8}
!120 = !{!119, !31, i64 8}
!121 = !{!12, !12, i64 0}
!122 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!123 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEEE", !11, i64 0, !52, i64 64}
!124 = !{!123, !52, i64 64}
!125 = !{i8 0, i8 2}
!126 = !{!"_ZTSN4llvm5Twine8NodeKindE", !11, i64 0}
!127 = !{!"_ZTSN4llvm5TwineE", !11, i64 0, !11, i64 16, !126, i64 32, !126, i64 33}
!128 = !{!127, !126, i64 32}
!129 = !{!127, !126, i64 33}
!130 = !{!11, !11, i64 0}
!131 = !{!"p1 _ZTSN4llvm5TwineE", !15, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!"_ZTSN4mlir7BuilderE", !16, i64 0}
!134 = !{!"p1 _ZTSN4mlir9OpBuilder8ListenerE", !15, i64 0}
!135 = !{!"p1 _ZTSN4mlir5BlockE", !15, i64 0}
!136 = !{!"p1 _ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEEE", !15, i64 0}
!137 = !{!"_ZTSN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEE", !136, i64 0}
!138 = !{!"_ZTSN4mlir9OpBuilderE", !133, i64 0, !134, i64 8, !135, i64 16, !137, i64 24}
!139 = !{!138, !134, i64 8}
!140 = !{!"_ZTSN4llvm8ArrayRefIN4mlir10ValueRangeEEE", !62, i64 0, !31, i64 8}
!141 = !{!140, !31, i64 8}
!142 = !{!140, !62, i64 0}
!143 = !{!"p1 _ZTSN4mlir13sparse_tensor13DisassembleOpE", !15, i64 0}
!144 = !{!"_ZTSN4mlir10ValueRangeE", !117, i64 0}
!145 = !{!"_ZTSN4mlir13sparse_tensor26SparseTensorDescriptorImplINS_10ValueRangeEEE", !83, i64 0, !144, i64 40, !85, i64 56}
!146 = !{!"_ZTSN4mlir13sparse_tensor22SparseTensorDescriptorE", !145, i64 0}
!147 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !15, i64 0}
!148 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !147, i64 0, !147, i64 8}
!149 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !148, i64 0}
!150 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEEE", !149, i64 0}
!151 = !{!"_ZTSN4llvm10ilist_nodeIN4mlir9OperationEJEEE", !150, i64 0}
!152 = !{!"_ZTSN4llvm22ilist_node_with_parentIN4mlir9OperationENS1_5BlockEJEEE", !151, i64 0}
!153 = !{!"p1 _ZTSN4mlir13OperationName4ImplE", !15, i64 0}
!154 = !{!"_ZTSN4mlir13OperationNameE", !153, i64 0}
!155 = !{!"_ZTSN4mlir6detail15StorageUserBaseINS_14DictionaryAttrENS_9AttributeENS0_21DictionaryAttrStorageENS0_16AttributeUniquerEJEEE", !78, i64 0}
!156 = !{!"_ZTSN4mlir14DictionaryAttrE", !155, i64 0}
!157 = !{!"_ZTSN4mlir9OperationE", !152, i64 0, !135, i64 16, !95, i64 24, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !52, i64 46, !11, i64 47, !154, i64 48, !156, i64 56}
!158 = !{!157, !12, i64 36}
!159 = !{!133, !16, i64 0}
!160 = !{!157, !12, i64 40}
!161 = !{!148, !147, i64 8}
!162 = !{!"p1 _ZTSN4mlir13BlockArgumentE", !15, i64 0}
!163 = !{!"_ZTSNSt12_Vector_baseIN4mlir13BlockArgumentESaIS1_EE17_Vector_impl_dataE", !162, i64 0, !162, i64 8, !162, i64 16}
!164 = !{!163, !162, i64 0}
!165 = !{!72, !72, i64 0}
!166 = !{!77, !77, i64 0}
!167 = !{!138, !135, i64 16}
!168 = !{!157, !135, i64 16}
!169 = !{!"llvm.loop.unroll.disable"}
!170 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN4mlir5ValueEPKNS3_4TypeEPNS3_9OpOperandEPNS3_6detail12OpResultImplEPKNS_8RepeatedIS7_EEPKNSF_IS4_EEEEELi6EJEEE", !110, i64 0}
!171 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN4mlir5ValueEPKNS3_4TypeEPNS3_9OpOperandEPNS3_6detail12OpResultImplEPKNS_8RepeatedIS7_EEPKNSF_IS4_EEEEELi5EJSL_EEE", !170, i64 0}
!172 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN4mlir5ValueEPKNS3_4TypeEPNS3_9OpOperandEPNS3_6detail12OpResultImplEPKNS_8RepeatedIS7_EEPKNSF_IS4_EEEEELi4EJSI_SL_EEE", !171, i64 0}
!173 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN4mlir5ValueEPKNS3_4TypeEPNS3_9OpOperandEPNS3_6detail12OpResultImplEPKNS_8RepeatedIS7_EEPKNSF_IS4_EEEEELi3EJSE_SI_SL_EEE", !172, i64 0}
end_hunk_1
