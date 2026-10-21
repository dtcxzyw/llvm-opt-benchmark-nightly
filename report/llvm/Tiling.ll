Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Tiling?download=true
inline.NumInlined: 4054
inline.NumDeleted: 2081
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4mlir6linalg21computeMultiTileSizesERNS_9OpBuilderENS0_8LinalgOpEjNS_12OpFoldResultES4_b:bb.a
  %21 = alloca %"class.mlir::AffineExpr", align 8 ; 4 uses
  %22 = alloca [2 x %"class.mlir::OpFoldResult"], align 8 ; 5 uses
  %23 = alloca %"class.mlir::AffineExpr", align 8 ; 4 uses
  %24 = alloca [3 x %"class.mlir::OpFoldResult"], align 8 ; 6 uses
  %25 = alloca [2 x %"class.mlir::OpFoldResult"], align 8 ; 5 uses
  %26 = alloca [2 x %"class.mlir::OpFoldResult"], align 8 ; 5 uses
  %27 = alloca [2 x %"class.mlir::OpFoldResult"], align 8 ; 5 uses
  %28 = alloca %"class.mlir::AffineExpr", align 8 ; 4 uses
  %29 = alloca [4 x %"class.mlir::OpFoldResult"], align 8 ; 6 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  store ptr %2, ptr %10, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = call noundef i32 @_ZN4mlir6linalg8LinalgOp11getNumLoopsEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #16
  %.not = icmp ult i32 %4, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.c, align 8, !tbaa !264
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %10, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 10 uses
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8
  br i1 %7, label %bb.d, label %_ZL28emitIsPositiveIndexAssertionRN4mlir20ImplicitLocOpBuilderENS_12OpFoldResultE.exit108

bb.d:                                             ; preds = %bb.c
  %i.g = and i64 %5, 4
  %i.h = icmp ne i64 %i.g, 0
  %i.i = and i64 %5, -5                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %.not15.i = or i1 %i.h, %i.j
  br i1 %.not15.i, label %bb.e, label %_ZL28emitIsPositiveIndexAssertionRN4mlir20ImplicitLocOpBuilderENS_12OpFoldResultE.exit

bb.e:                                             ; preds = %bb.d
  %i.k = inttoptr i64 %i.i to ptr
  %i.l = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_20ImplicitLocOpBuilderEl(ptr noundef nonnull align 8 dereferenceable(40) %11, i64 noundef 0) #16
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.n = call ptr @_ZN4mlir5arith6CmpIOp6createERNS_20ImplicitLocOpBuilderENS0_13CmpIPredicateENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(40) %11, i64 noundef 4, ptr %i.k, ptr nonnull %i.m) #16
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !48
  store ptr @.str.14, ptr %9, align 8, !tbaa !49
  store i8 3, ptr %i.p, align 8, !tbaa !50
  %i.r = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(34) %9) #16
  %i.s = call ptr @_ZN4mlir2cf8AssertOp6createERNS_20ImplicitLocOpBuilderENS_5ValueENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr nonnull %i.o, ptr %i.r) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %_ZL28emitIsPositiveIndexAssertionRN4mlir20ImplicitLocOpBuilderENS_12OpFoldResultE.exit

_ZL28emitIsPositiveIndexAssertionRN4mlir20ImplicitLocOpBuilderENS_12OpFoldResultE.exit: ; preds = %bb.d, %bb.e
  %i.t = and i64 %6, 4
  %i.u = icmp ne i64 %i.t, 0
  %i.v = and i64 %6, -5                           ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %.not15.i107 = or i1 %i.u, %i.w
  br i1 %.not15.i107, label %bb.f, label %_ZL28emitIsPositiveIndexAssertionRN4mlir20ImplicitLocOpBuilderENS_12OpFoldResultE.exit108

bb.f:                                             ; preds = %_ZL28emitIsPositiveIndexAssertionRN4mlir20ImplicitLocOpBuilderENS_12OpFoldResultE.exit
  %i.x = inttoptr i64 %i.v to ptr
  %i.y = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_20ImplicitLocOpBuilderEl(ptr noundef nonnull align 8 dereferenceable(40) %11, i64 noundef 0) #16
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16
  %i.aa = call ptr @_ZN4mlir5arith6CmpIOp6createERNS_20ImplicitLocOpBuilderENS0_13CmpIPredicateENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(40) %11, i64 noundef 4, ptr %i.x, ptr nonnull %i.z) #16
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.ad, align 1, !tbaa !48
  store ptr @.str.14, ptr %8, align 8, !tbaa !49
  store i8 3, ptr %i.ac, align 8, !tbaa !50
  %i.ae = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(34) %8) #16
  %i.af = call ptr @_ZN4mlir2cf8AssertOp6createERNS_20ImplicitLocOpBuilderENS_5ValueENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr nonnull %i.ab, ptr %i.ae) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZL28emitIsPositiveIndexAssertionRN4mlir20ImplicitLocOpBuilderENS_12OpFoldResultE.exit108

_ZL28emitIsPositiveIndexAssertionRN4mlir20ImplicitLocOpBuilderENS_12OpFoldResultE.exit108: ; preds = %bb.f, %_ZL28emitIsPositiveIndexAssertionRN4mlir20ImplicitLocOpBuilderENS_12OpFoldResultE.exit, %bb.c
  %i.ag = call ptr @_ZN4mlir31getValueOrCreateConstantIndexOpERNS_9OpBuilderENS_8LocationENS_12OpFoldResultE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload.i.i, i64 %5) #16
  %i.ah = call ptr @_ZN4mlir31getValueOrCreateConstantIndexOpERNS_9OpBuilderENS_8LocationENS_12OpFoldResultE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload.i.i, i64 %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8
  call void @_ZN4mlir6linalg8LinalgOp27createFlatListOfOperandDimsERNS_9OpBuilderENS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.2") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr %.sroa.0.0.copyload.i) #16
  %i.ai = call ptr @_ZN4mlir6linalg8LinalgOp19getShapesToLoopsMapEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.aj = load ptr, ptr %10, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.0.0.copyload.i.i109 = load ptr, ptr %i.ak, align 8
  %i.al = load ptr, ptr %12, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !23
  %i.ao = zext i32 %i.an to i64
  call void @_ZN4mlir6affine40makeComposedFoldedMultiResultAffineApplyERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.2") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr %.sroa.0.0.copyload.i.i109, ptr %i.ai, ptr %i.al, i64 %i.ao, i1 noundef zeroext false) #16
  %i.ap = load ptr, ptr %10, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.0.0.copyload.i.i110 = load ptr, ptr %i.aq, align 8
  %i.ar = zext i32 %4 to i64
  %i.as = load ptr, ptr %13, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %.sroa.071.0.copyload = load i64, ptr %i.at, align 8
  %i.au = call ptr @_ZN4mlir31getValueOrCreateConstantIndexOpERNS_9OpBuilderENS_8LocationENS_12OpFoldResultE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr %.sroa.0.0.copyload.i.i110, i64 %.sroa.071.0.copyload) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.av = call ptr @_ZN4mlir7Builder19getAffineSymbolExprEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #16
  store ptr %i.av, ptr %14, align 8
  %i.aw = call ptr @_ZN4mlir7Builder19getAffineSymbolExprEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1) #16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  %i.ax = call ptr @_ZN4mlir7Builder19getAffineSymbolExprEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2) #16 ; 2 uses
  store ptr %i.ax, ptr %15, align 8
  %i.ay = call ptr @_ZNK4mlir10AffineExpr8floorDivES0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr %i.aw) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = or i64 %i.az, 4
  store i64 %i.ba, ptr %16, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bc = ptrtoint ptr %i.ah to i64
  %i.bd = or i64 %i.bc, 4                         ; 4 uses
  store i64 %i.bd, ptr %i.bb, align 8
  %.sroa.0.0.copyload.i.i111 = load ptr, ptr %i.f, align 8
  %i.be = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr %.sroa.0.0.copyload.i.i111, ptr %i.ay, ptr nonnull %16, i64 2, i1 noundef zeroext false) #16
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.bg = call ptr @_ZNK4mlir10AffineExprplES0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr %i.aw) #16
  store ptr %i.bg, ptr %18, align 8
  %i.bh = call ptr @_ZNK4mlir10AffineExprmiEl(ptr noundef nonnull align 8 dereferenceable(8) %18, i64 noundef 1) #16
  store ptr %i.bh, ptr %17, align 8
  %i.bi = call ptr @_ZNK4mlir10AffineExpr8floorDivES0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr %i.aw) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  %i.bj = ptrtoint ptr %i.ag to i64
  %i.bk = or i64 %i.bj, 4
  store i64 %i.bk, ptr %19, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.bd, ptr %i.bl, align 8
  %.sroa.0.0.copyload.i.i112 = load ptr, ptr %i.f, align 8
  %i.bm = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr %.sroa.0.0.copyload.i.i112, ptr %i.bi, ptr nonnull %19, i64 2, i1 noundef zeroext false) #16
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  %i.bo = call ptr @_ZNK4mlir10AffineExprplES0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr %i.aw) #16
  store ptr %i.bo, ptr %21, align 8
  %i.bp = call ptr @_ZNK4mlir10AffineExprmiEl(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 1) #16
  store ptr %i.bp, ptr %20, align 8
  %i.bq = call ptr @_ZNK4mlir10AffineExpr8floorDivES0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr %i.aw) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.br = ptrtoint ptr %i.bf to i64
  %i.bs = or i64 %i.br, 4                         ; 3 uses
  store i64 %i.bs, ptr %22, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = or i64 %i.bu, 4
  store i64 %i.bv, ptr %i.bt, align 8
  %.sroa.0.0.copyload.i.i113 = load ptr, ptr %i.f, align 8
  %i.bw = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr %.sroa.0.0.copyload.i.i113, ptr %i.bq, ptr nonnull %22, i64 2, i1 noundef zeroext false) #16
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  %i.by = call ptr @_ZNK4mlir10AffineExpr8floorDivES0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr %i.aw) #16
  store ptr %i.by, ptr %23, align 8
  %i.bz = call ptr @_ZNK4mlir10AffineExprmlES0_(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr %i.ax) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  store i64 %i.bs, ptr %24, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = or i64 %i.cb, 4                         ; 3 uses
  store i64 %i.cc, ptr %i.ca, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 %i.bd, ptr %i.cd, align 8
  %.sroa.0.0.copyload.i.i114 = load ptr, ptr %i.f, align 8
  %i.ce = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr %.sroa.0.0.copyload.i.i114, ptr %i.bz, ptr nonnull %24, i64 3, i1 noundef zeroext false) #16
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  %i.cg = call ptr @_ZNK4mlir10AffineExprrmES0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr %i.aw) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  store i64 %i.bs, ptr %25, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.cc, ptr %i.ch, align 8
  %.sroa.0.0.copyload.i.i115 = load ptr, ptr %i.f, align 8
  %i.ci = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr %.sroa.0.0.copyload.i.i115, ptr %i.cg, ptr nonnull %25, i64 2, i1 noundef zeroext false) #16
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  %i.ck = call ptr @_ZNK4mlir10AffineExprmiES0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr %i.aw) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  store i64 %i.cc, ptr %26, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = or i64 %i.cm, 4                         ; 2 uses
  store i64 %i.cn, ptr %i.cl, align 8
  %.sroa.0.0.copyload.i.i116 = load ptr, ptr %i.f, align 8
  %i.co = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr %.sroa.0.0.copyload.i.i116, ptr %i.ck, ptr nonnull %26, i64 2, i1 noundef zeroext false) #16 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  %i.cq = call ptr @_ZNK4mlir10AffineExprplES0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr %i.aw) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  %i.cr = ptrtoint ptr %i.cf to i64
  %i.cs = or i64 %i.cr, 4                         ; 2 uses
  store i64 %i.cs, ptr %27, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.bd, ptr %i.ct, align 8
  %.sroa.0.0.copyload.i.i117 = load ptr, ptr %i.f, align 8
  %i.cu = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr %.sroa.0.0.copyload.i.i117, ptr %i.cq, ptr nonnull %27, i64 2, i1 noundef zeroext false) #16 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  br i1 %7, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL28emitIsPositiveIndexAssertionRN4mlir20ImplicitLocOpBuilderENS_12OpFoldResultE.exit108
  %31 = insertelement <2 x ptr> poison, ptr %i.co, i64 0
  %32 = insertelement <2 x ptr> %31, ptr %i.cu, i64 1
  %33 = getelementptr inbounds i8, <2 x ptr> %32, i64 -16
  %i.cw = call ptr @_ZN4mlir7Builder19getAffineSymbolExprEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #16
  %i.cx = call ptr @_ZNK4mlir10AffineExprmlES0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr %i.aw) #16
  store ptr %i.cx, ptr %28, align 8
  %i.cy = call ptr @_ZNK4mlir10AffineExprmlES0_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr %i.cw) #16
  %i.cz = call ptr @_ZNK4mlir10AffineExprplES0_(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr %i.cy) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #16
  store i64 %i.cs, ptr %29, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.db = ptrtoint <2 x ptr> %33 to <2 x i64>
  %i.dc = or <2 x i64> %i.db, splat (i64 4)
  store <2 x i64> %i.dc, ptr %i.da, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i64 %i.cn, ptr %i.dd, align 8
  %.sroa.0.0.copyload.i.i118 = load ptr, ptr %i.f, align 8
  %i.de = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr %.sroa.0.0.copyload.i.i118, ptr %i.cz, ptr nonnull %29, i64 4, i1 noundef zeroext false) #16
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  %i.dg = call ptr @_ZN4mlir5arith6CmpIOp6createERNS_20ImplicitLocOpBuilderENS0_13CmpIPredicateENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(40) %11, i64 noundef 0, ptr nonnull %i.df, ptr %i.au) #16
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #16
  %i.di = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %30, i64 33
  store i8 1, ptr %i.dj, align 1, !tbaa !48
  store ptr @.str, ptr %30, align 8, !tbaa !49
  store i8 3, ptr %i.di, align 8, !tbaa !50
  %i.dk = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(34) %30) #16
  %i.dl = call ptr @_ZN4mlir2cf8AssertOp6createERNS_20ImplicitLocOpBuilderENS_5ValueENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr nonnull %i.dh, ptr %i.dk) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZL28emitIsPositiveIndexAssertionRN4mlir20ImplicitLocOpBuilderENS_12OpFoldResultE.exit108
  store ptr %i.cf, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cp, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cj, ptr %.sroa.10.0..sroa_idx, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.dm, align 8, !tbaa !264
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.dn = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.dn) #16
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.dq = load ptr, ptr %12, align 8, !tbaa !22   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit119, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit
  call void @free(ptr noundef %i.dq) #16
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit119

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit119: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit119, %bb.b
  ret void
}

declare void @_ZN4mlir6linalg8LinalgOp27createFlatListOfOperandDimsERNS_9OpBuilderENS_8LocationE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.2") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir6linalg8LinalgOp19getShapesToLoopsMapEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare ptr @_ZNK4mlir10AffineExprplES0_(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #2

declare ptr @_ZNK4mlir10AffineExprmiEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare ptr @_ZNK4mlir10AffineExprmlES0_(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #2

declare ptr @_ZNK4mlir10AffineExprmiES0_(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir5arith6CmpIOp6createERNS_20ImplicitLocOpBuilderENS0_13CmpIPredicateENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir2cf8AssertOp6createERNS_20ImplicitLocOpBuilderENS_5ValueENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(40), ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6linalg24tileReductionUsingForallERNS_12RewriterBaseENS_27PartialReductionOpInterfaceEN4llvm8ArrayRefINS_12OpFoldResultEEES7_St8optionalINS_9ArrayAttrEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr.145") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %2, ptr %3, ptr %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.std::optional.136") align 8 captures(none) %7) local_unnamed_addr #0 {
_ZN4llvm4castIN4mlir15TilingInterfaceENS1_9OperationEEEDcPT0_.exit:
  %8 = alloca %"class.std::optional.202", align 8 ; 8 uses
  %9 = alloca %"class.std::optional.202", align 8 ; 8 uses
  %10 = alloca %class.anon.731, align 8           ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %class.anon.731, align 8           ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %class.anon.731, align 8           ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %class.anon.731, align 8           ; 4 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %class.anon.731, align 8           ; 4 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %20 = alloca %"class.mlir::PartialReductionOpInterface", align 8 ; 15 uses
  %21 = alloca %"class.mlir::TilingInterface", align 8 ; 7 uses
  %22 = alloca %"class.mlir::DestinationStyleOpInterface", align 8 ; 5 uses
  %23 = alloca %"class.mlir::linalg::LinalgOp", align 8 ; 5 uses
  %24 = alloca %"class.llvm::SmallVector.64", align 8 ; 6 uses
  %25 = alloca %"class.llvm::SmallVector.187", align 8 ; 5 uses
  %26 = alloca %"class.llvm::SmallVector.192", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %27 = alloca %"class.llvm::SetVector", align 8  ; 12 uses
  %28 = alloca %"class.llvm::FailureOr.201", align 8 ; 9 uses
  %29 = alloca %"class.llvm::SmallVector.9", align 8 ; 9 uses
  %30 = alloca %"class.llvm::SmallVector.2", align 8 ; 7 uses
  %31 = alloca %"class.llvm::SmallVector.9", align 8 ; 8 uses
  %32 = alloca %"class.mlir::scf::ForallOp", align 8 ; 14 uses
  %33 = alloca %"class.llvm::SmallVector.2", align 8 ; 7 uses
  %34 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %35 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %36 = alloca %"class.llvm::function_ref", align 8 ; 2 uses
  %37 = alloca %"class.llvm::SmallVector.2", align 8 ; 10 uses
  %38 = alloca %"class.llvm::SmallVector.2", align 8 ; 11 uses
  %39 = alloca %"class.llvm::SmallVector.64", align 8 ; 4 uses
  %40 = alloca %"class.llvm::SmallVector.9", align 8 ; 10 uses
  %41 = alloca %"class.llvm::SmallVector.9", align 8 ; 12 uses
  %42 = alloca %"class.llvm::SmallVector.2", align 8 ; 11 uses
  %43 = alloca %"class.llvm::SmallVector.2", align 8 ; 12 uses
  %44 = alloca %"class.llvm::SmallVector.2", align 8 ; 11 uses
  %45 = alloca %"class.llvm::SmallVector.9", align 8 ; 10 uses
  %46 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %47 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %48 = alloca %"class.llvm::ArrayRef.293", align 8 ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %49 = alloca %"class.llvm::FailureOr.295", align 8 ; 10 uses
  %50 = alloca %"class.mlir::TilingInterface", align 8 ; 5 uses
  %51 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %52 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 4 uses
  %53 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %54 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %55 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %56 = alloca %"struct.mlir::linalg::LinalgTilingOptions", align 8 ; 19 uses
  %57 = alloca %"class.llvm::FailureOr.347", align 8 ; 8 uses
  %58 = alloca %"class.llvm::SmallVector.9", align 8 ; 7 uses
  %59 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 4 uses
  %60 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %61 = alloca %"class.llvm::SmallVector.9", align 8 ; 6 uses
  %62 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %63 = alloca %"class.llvm::SmallVector.2", align 8 ; 9 uses
  %64 = alloca %"class.llvm::SmallVector.2", align 8 ; 9 uses
  %65 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %66 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 7 uses
  %67 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %68 = alloca %"class.llvm::SmallVector.2", align 8 ; 12 uses
  %69 = alloca %"class.llvm::SmallVector.2", align 8 ; 12 uses
  %70 = alloca %"class.llvm::SmallVector.9", align 8 ; 10 uses
  %71 = alloca %"class.llvm::SmallVector.2", align 8 ; 15 uses
  %72 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %73 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %74 = alloca %"class.llvm::ArrayRef.293", align 8 ; 2 uses
  %75 = alloca %"class.llvm::FailureOr.447", align 8 ; 8 uses
  %76 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %77 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %78 = alloca %"struct.mlir::linalg::ForallReductionTilingResult", align 8 ; 18 uses
  store ptr %2, ptr %20, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.i = load <2 x ptr>, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  %i.k = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_15TilingInterfaceENS_6detail30TilingInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %2)
  store ptr %2, ptr %21, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.k, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.m = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_27DestinationStyleOpInterfaceENS_6detail42DestinationStyleOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %2)
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN4llvm8dyn_castIN4mlir27DestinationStyleOpInterfaceENS1_9OperationEEEDcPT0_.exit, label %_ZN4llvm20ValueFromPointerCastIN4mlir27DestinationStyleOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir27DestinationStyleOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i: ; preds = %_ZN4llvm4castIN4mlir15TilingInterfaceENS1_9OperationEEEDcPT0_.exit
  %i.n = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_27DestinationStyleOpInterfaceENS_6detail42DestinationStyleOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %2)
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %2, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %i.n, 1
  br label %_ZN4llvm8dyn_castIN4mlir27DestinationStyleOpInterfaceENS1_9OperationEEEDcPT0_.exit

_ZN4llvm8dyn_castIN4mlir27DestinationStyleOpInterfaceENS1_9OperationEEEDcPT0_.exit: ; preds = %_ZN4llvm4castIN4mlir15TilingInterfaceENS1_9OperationEEEDcPT0_.exit, %_ZN4llvm20ValueFromPointerCastIN4mlir27DestinationStyleOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4llvm20ValueFromPointerCastIN4mlir27DestinationStyleOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i ], [ zeroinitializer, %_ZN4llvm4castIN4mlir15TilingInterfaceENS1_9OperationEEEDcPT0_.exit ] ; 2 uses
  %i.o = extractvalue { ptr, ptr } %.pn.i.i, 0    ; 2 uses
  store ptr %i.o, ptr %22, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.q = extractvalue { ptr, ptr } %.pn.i.i, 1
  store ptr %i.q, ptr %i.p, align 8
  %.not362 = icmp eq ptr %i.o, null
  br i1 %.not362, label %bb.a, label %bb.c

bb.a:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir27DestinationStyleOpInterfaceENS1_9OperationEEEDcPT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  %i.r = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.s, align 1, !tbaa !48
  store ptr @.str.1, ptr %19, align 8, !tbaa !49
end_hunk_0
