Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Tiling?download=true
inline.NumInlined: 4054
inline.NumDeleted: 2081
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL28calculateTileOffsetsAndSizesRN4mlir12RewriterBaseENS_8LocationENS_3scf8ForallOpEN4llvm8ArrayRefINS_12OpFoldResultEEENS5_11SmallVectorINS_5RangeELj2EEEbSt8optionalIS8_ERNS9_IS7_Lj6EEESF_:bb.a
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store <2 x ptr> %i.d, ptr %i.b, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.m, %bb.n
  ret void

bb.o:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit102
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit102 ] ; 7 uses
  %.09625 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit102 ] ; 4 uses
  %.not = icmp ugt i64 %4, %indvars.iv
  br i1 %.not, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %.sroa.058.0.copyload = load i64, ptr %i.da, align 8
  %i.db = call noundef zeroext i1 @_ZN4mlir13isZeroIntegerENS_12OpFoldResultE(i64 %.sroa.058.0.copyload) #16
  br i1 %i.db, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.o, %bb.p
  %i.dc = load ptr, ptr %5, align 8, !tbaa !22
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %indvars.iv
  %.sroa.057.0.copyload = load i64, ptr %i.dd, align 8 ; 2 uses
  %i.de = load i32, ptr %i.cs, align 8, !tbaa !23 ; 2 uses
  %i.df = load i32, ptr %i.cb, align 4, !tbaa !24
  %.not.i100 = icmp ult i32 %i.de, %i.df
  br i1 %.not.i100, label %bb.r, label %bb.q, !prof !26

bb.q:                                             ; preds = %.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %.sroa.057.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit

bb.r:                                             ; preds = %.thread
  %i.dg = zext i32 %i.de to i64
  %i.dh = load ptr, ptr %6, align 8, !tbaa !22
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg
  store i64 %.sroa.057.0.copyload, ptr %i.di, align 1
  %i.dj = load i32, ptr %i.cs, align 8, !tbaa !23
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.cs, align 8, !tbaa !23
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit: ; preds = %bb.q, %bb.r
  %i.dl = load ptr, ptr %5, align 8, !tbaa !22
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.056.0.copyload = load i64, ptr %i.dn, align 8 ; 2 uses
  %i.do = load i32, ptr %i.cu, align 8, !tbaa !23 ; 2 uses
  %i.dp = load i32, ptr %i.cf, align 4, !tbaa !24
  %.not.i101 = icmp ult i32 %i.do, %i.dp
  br i1 %.not.i101, label %bb.t, label %bb.s, !prof !26

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 %.sroa.056.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit102

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit
  %i.dq = zext i32 %i.do to i64
  %i.dr = load ptr, ptr %7, align 8, !tbaa !22
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dq
  store i64 %.sroa.056.0.copyload, ptr %i.ds, align 1
  %i.dt = load i32, ptr %i.cu, align 8, !tbaa !23
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.cu, align 8, !tbaa !23
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit102

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store ptr null, ptr %14, align 8, !tbaa !346
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store ptr null, ptr %15, align 8, !tbaa !346
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr null, ptr %16, align 8, !tbaa !346
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !139 ; 2 uses
  %i.dw = call ptr @_ZN4mlir16getAffineDimExprEjPNS_11MLIRContextE(i32 noundef 0, ptr noundef %i.dv) #16
  store ptr %i.dw, ptr %14, align 8, !tbaa !140
  %i.dx = call ptr @_ZN4mlir16getAffineDimExprEjPNS_11MLIRContextE(i32 noundef 1, ptr noundef %i.dv) #16
  store ptr %i.dx, ptr %15, align 8, !tbaa !140
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !139 ; 3 uses
  %i.dz = call ptr @_ZN4mlir19getAffineSymbolExprEjPNS_11MLIRContextE(i32 noundef 0, ptr noundef %i.dy) #16
  store ptr %i.dz, ptr %16, align 8, !tbaa !140
  %i.ea = call ptr @_ZN4mlir19getAffineSymbolExprEjPNS_11MLIRContextE(i32 noundef 1, ptr noundef %i.dy) #16 ; 2 uses
  %i.eb = call ptr @_ZN4mlir19getAffineSymbolExprEjPNS_11MLIRContextE(i32 noundef 2, ptr noundef %i.dy) #16 ; 0 uses
  %i.ec = load ptr, ptr %5, align 8, !tbaa !22
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %indvars.iv ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.052.0.copyload = load i64, ptr %i.ee, align 8 ; 4 uses
  %.sroa.049.0.copyload = load i64, ptr %i.ed, align 8 ; 2 uses
  %i.ef = zext i32 %.09625 to i64                 ; 4 uses
  %i.eg = load ptr, ptr %12, align 8, !tbaa !22
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  %.sroa.048.0.copyload = load ptr, ptr %i.eh, align 8, !tbaa !34
  %i.ei = ptrtoint ptr %.sroa.048.0.copyload to i64
  %i.ej = or i64 %i.ei, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %indvars.iv
  %.sroa.042.0.copyload = load i64, ptr %i.ek, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.el = call ptr @_ZNK4mlir10AffineExpr7ceilDivES0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr %i.ea) #16
  store i64 %.sroa.052.0.copyload, ptr %17, align 8
  %i.em = load ptr, ptr %13, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ef
  %i.eo = load i64, ptr %i.en, align 8
  store i64 %i.eo, ptr %i.ck, align 8
  %i.ep = call i64 @_ZN4mlir6affine29makeComposedFoldedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %1, ptr %i.el, ptr nonnull %17, i64 2, i1 noundef zeroext false) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.042.0 = phi i64 [ %.sroa.042.0.copyload, %bb.v ], [ %i.ep, %bb.w ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %.sroa.032.0.copyload = load ptr, ptr %16, align 8, !tbaa !140
  %i.eq = call ptr @_ZNK4mlir10AffineExprmlES0_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr %.sroa.032.0.copyload) #16
  %i.er = call ptr @_ZNK4mlir10AffineExprplES0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr %i.eq) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  store i64 %.sroa.049.0.copyload, ptr %18, align 8
  store i64 %i.ej, ptr %i.cl, align 8
  store i64 %.sroa.042.0, ptr %i.cm, align 8
  %i.es = call i64 @_ZN4mlir6affine29makeComposedFoldedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %1, ptr %i.er, ptr nonnull %18, i64 3, i1 noundef zeroext false) #16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  %.sroa.025.0.copyload = load ptr, ptr %16, align 8, !tbaa !140
  %i.et = call ptr @_ZNK4mlir10AffineExprmlES0_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr %.sroa.025.0.copyload) #16
  %i.eu = call ptr @_ZNK4mlir10AffineExprplES0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr %i.et) #16
  store ptr %i.eu, ptr %19, align 8
  %i.ev = call ptr @_ZNK4mlir10AffineExprmiES0_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr %i.ea) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  store i64 %.sroa.049.0.copyload, ptr %20, align 8
  %i.ew = load ptr, ptr %13, align 8, !tbaa !22
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ef
  %i.ey = load i64, ptr %i.ex, align 8
  store i64 %i.ey, ptr %i.cn, align 8
  store i64 %.sroa.042.0, ptr %i.co, align 8
  store i64 %.sroa.052.0.copyload, ptr %i.cp, align 8
  %i.ez = call i64 @_ZN4mlir6affine29makeComposedFoldedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %1, ptr %i.ev, ptr nonnull %20, i64 4, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.fa = call noundef zeroext i1 @_ZN4mlir13isZeroIntegerENS_12OpFoldResultE(i64 %i.ez) #16
  br i1 %i.fa, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  %i.fb = call ptr @_ZNK4mlir10AffineExprngEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #16
  store ptr %i.fb, ptr %21, align 8
  %.sroa.017.0.copyload = load ptr, ptr %16, align 8, !tbaa !140
  %i.fc = call ptr @_ZNK4mlir10AffineExprplES0_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr %.sroa.017.0.copyload) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  store i64 %i.es, ptr %22, align 8
  store i64 %.sroa.052.0.copyload, ptr %i.cq, align 8
  %i.fd = call i64 @_ZN4mlir6affine29makeComposedFoldedAffineApplyERNS_9OpBuilderENS_8LocationENS_10AffineExprEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %1, ptr %i.fc, ptr nonnull %22, i64 2, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  store i64 %i.fd, ptr %23, align 8
  store i64 %.sroa.042.0, ptr %i.cr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %1, ptr %9, align 8
  %i.fe = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  %i.ff = call ptr @_ZN4mlir9AffineMap22getMultiDimIdentityMapEjPNS_11MLIRContextE(i32 noundef 2, ptr noundef %i.fe) #16
  %i.fg = call i64 @_ZN4mlir6affine27makeComposedFoldedAffineMinERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %1, ptr %i.ff, ptr nonnull %23, i64 2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.042.1 = phi i64 [ %.sroa.042.0, %bb.x ], [ %i.fg, %bb.y ] ; 3 uses
  %i.fh = load i32, ptr %i.cs, align 8, !tbaa !23 ; 2 uses
  %i.fi = load i32, ptr %i.cb, align 4, !tbaa !24
  %.not.i103 = icmp ult i32 %i.fh, %i.fi
  br i1 %.not.i103, label %bb.ab, label %bb.aa, !prof !26

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %i.es)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit104

bb.ab:                                            ; preds = %bb.z
  %i.fj = zext i32 %i.fh to i64
  %i.fk = load ptr, ptr %6, align 8, !tbaa !22
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fj
  store i64 %i.es, ptr %i.fl, align 1
  %i.fm = load i32, ptr %i.cs, align 8, !tbaa !23
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr %i.cs, align 8, !tbaa !23
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit104

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit104: ; preds = %bb.aa, %bb.ab
  %i.fo = load ptr, ptr %13, align 8, !tbaa !22
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.ef
  %.sroa.08.0.copyload = load i64, ptr %i.fp, align 8
  %i.fq = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.042.1) #16 ; 2 uses
  %i.fr = extractvalue { i64, i8 } %i.fq, 1
  %i.fs = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.08.0.copyload) #16 ; 2 uses
  %i.ft = extractvalue { i64, i8 } %i.fs, 1
  %i.fu = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.052.0.copyload) #16 ; 2 uses
  %i.fv = extractvalue { i64, i8 } %i.fu, 1
  %i.fw = trunc nuw i8 %i.fr to i1
  %i.fx = trunc nuw i8 %i.ft to i1
  %or.cond.i = select i1 %i.fw, i1 %i.fx, i1 false
  %i.fy = trunc nuw i8 %i.fv to i1
  %.0.i = select i1 %or.cond.i, i1 %i.fy, i1 false
  br i1 %.0.i, label %_ZL30canOmitTileOffsetInBoundsCheckN4mlir12OpFoldResultES0_S0_.exit, label %bb.ac

_ZL30canOmitTileOffsetInBoundsCheckN4mlir12OpFoldResultES0_S0_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit104
  %25 = extractvalue { i64, i8 } %i.fu, 0
  %26 = extractvalue { i64, i8 } %i.fs, 0
  %27 = extractvalue { i64, i8 } %i.fq, 0
  %28 = add nsw i64 %26, -1
  %29 = mul nsw i64 %28, %27
  %30 = icmp slt i64 %29, %25
  br i1 %30, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit104, %_ZL30canOmitTileOffsetInBoundsCheckN4mlir12OpFoldResultES0_S0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  %i.fz = call ptr @_ZN4mlir7Builder12getIndexAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16
  %i.ga = ptrtoint ptr %i.fz to i64
  store i64 %i.ga, ptr %24, align 8
  store i64 %.sroa.042.1, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %1, ptr %8, align 8
  %i.gb = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #16
  %i.gc = call ptr @_ZN4mlir9AffineMap22getMultiDimIdentityMapEjPNS_11MLIRContextE(i32 noundef 2, ptr noundef %i.gb) #16
  %i.gd = call i64 @_ZN4mlir6affine27makeComposedFoldedAffineMaxERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %1, ptr %i.gc, ptr nonnull %24, i64 2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZL30canOmitTileOffsetInBoundsCheckN4mlir12OpFoldResultES0_S0_.exit
  %.sroa.042.2 = phi i64 [ %i.gd, %bb.ac ], [ %.sroa.042.1, %_ZL30canOmitTileOffsetInBoundsCheckN4mlir12OpFoldResultES0_S0_.exit ] ; 2 uses
  %i.ge = load i32, ptr %i.cu, align 8, !tbaa !23 ; 2 uses
  %i.gf = load i32, ptr %i.cf, align 4, !tbaa !24
  %.not.i105 = icmp ult i32 %i.ge, %i.gf
  br i1 %.not.i105, label %bb.af, label %bb.ae, !prof !26

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 %.sroa.042.2)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit106

bb.af:                                            ; preds = %bb.ad
  %i.gg = zext i32 %i.ge to i64
  %i.gh = load ptr, ptr %7, align 8, !tbaa !22
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gg
  store i64 %.sroa.042.2, ptr %i.gi, align 1
  %i.gj = load i32, ptr %i.cu, align 8, !tbaa !23
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr %i.cu, align 8, !tbaa !23
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit106

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit106: ; preds = %bb.ae, %bb.af
  %i.gl = add i32 %.09625, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit102

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit102: ; preds = %bb.t, %bb.s, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit106
  %.1 = phi i32 [ %i.gl, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit106 ], [ %.09625, %bb.s ], [ %.09625, %bb.t ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ca
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !339
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23   ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = icmp eq ptr %0, %1
  %or.cond = or i1 %i.f, %.not.i
  br i1 %or.cond, label %_ZN4llvm15SmallVectorImplIN4mlir5RangeEEaSERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %i.e, 2
  br i1 %i.g, label %_ZSt4copyIPKN4mlir5RangeEPS1_ET0_T_S6_S5_.exit30.i, label %_ZSt4copyIPKN4mlir5RangeEPS1_ET0_T_S6_S5_.exit30.i.thread

_ZSt4copyIPKN4mlir5RangeEPS1_ET0_T_S6_S5_.exit30.i: ; preds = %bb.b
  %i.h = zext i32 %i.e to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %i.h, i64 noundef 24) #16
  %.pre = load i32, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %.not.i.i = icmp eq i32 %.pre, 0
  br i1 %.not.i.i, label %.sink.split.i, label %_ZSt4copyIPKN4mlir5RangeEPS1_ET0_T_S6_S5_.exit30.i.thread

_ZSt4copyIPKN4mlir5RangeEPS1_ET0_T_S6_S5_.exit30.i.thread: ; preds = %bb.b, %_ZSt4copyIPKN4mlir5RangeEPS1_ET0_T_S6_S5_.exit30.i
  %i.i = phi i32 [ %.pre, %_ZSt4copyIPKN4mlir5RangeEPS1_ET0_T_S6_S5_.exit30.i ], [ %i.e, %bb.b ]
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %1, align 8, !tbaa !22
  %i.l = load ptr, ptr %0, align 8, !tbaa !22
  %gepdiff.i = mul nuw nsw i64 %i.j, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 8 %i.k, i64 %gepdiff.i, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZSt4copyIPKN4mlir5RangeEPS1_ET0_T_S6_S5_.exit30.i.thread, %_ZSt4copyIPKN4mlir5RangeEPS1_ET0_T_S6_S5_.exit30.i
  store i32 %i.e, ptr %i.b, align 8, !tbaa !23
  br label %_ZN4llvm15SmallVectorImplIN4mlir5RangeEEaSERKS3_.exit

_ZN4llvm15SmallVectorImplIN4mlir5RangeEEaSERKS3_.exit: ; preds = %.sink.split.i, %bb.a
  ret void
}

declare { ptr, i64 } @_ZN4mlir3scf8ForallOp17getRegionIterArgsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN4mlir3scf8ForallOp13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4mlir27DestinationStyleOpInterface11getDpsInitsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZN4mlir27DestinationStyleOpInterface18getDpsInitsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  %i.a = call { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4mlir19MutableOperandRangeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.c) #16
  br label %_ZN4mlir19MutableOperandRangeD2Ev.exit

_ZN4mlir19MutableOperandRangeD2Ev.exit:           ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret { ptr, i64 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir3scf8ForallOp16getInductionVarsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::optional.202", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN4mlir3scf8ForallOp20getLoopInductionVarsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.202") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23   ; 5 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  %i.f = icmp eq ptr %0, %2
  %or.cond.i = or i1 %i.f, %.not.i.i
  br i1 %or.cond.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %i.e, 6
  br i1 %i.g, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i: ; preds = %bb.b
  %i.h = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a, i64 noundef %i.h, i64 noundef 8) #16
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !22
  br label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge, %bb.b
  %i.i = phi ptr [ %.pre, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.a, %bb.b ]
  %i.j = phi i32 [ %.pre.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.e, %bb.b ]
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %2, align 8, !tbaa !22
  %gepdiff.i.i = shl nuw nsw i64 %i.k, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 8 %i.l, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i
  store i32 %i.e, ptr %i.b, align 8, !tbaa !23
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit: ; preds = %bb.a, %.sink.split.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !85, !range !86, !noundef !87
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit
  store i8 0, ptr %i.m, align 8, !tbaa !85
  %i.p = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.p) #16
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

declare ptr @_ZN4mlir6tensor14ExtractSliceOp6createERNS_9OpBuilderENS_8LocationENS_16RankedTensorTypeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_SA_NS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef") align 8, ptr noundef byval(%"class.llvm::ArrayRef") align 8, ptr noundef byval(%"class.llvm::ArrayRef.293") align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef ptr @_ZN4mlir9OpBuilder5cloneERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS_6linalg24tileReductionUsingForallERS0_NS_27PartialReductionOpInterfaceEN4llvm8ArrayRefINS_12OpFoldResultEEES8_St8optionalINS_9ArrayAttrEEE3$_1EEvPNS_9OperationEOT_"(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr nofree readonly captures(none) %.0.val, ptr %.8.val) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::detail::zippy.745", align 8 ; 9 uses
  %3 = alloca %"class.mlir::MutableOperandRange", align 8 ; 8 uses
  %4 = alloca %"class.mlir::DestinationStyleOpInterface", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.d = load ptr, ptr %.0.val, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir27DestinationStyleOpInterfaceENS1_9OperationEEEDcPT0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_27DestinationStyleOpInterfaceENS_6detail42DestinationStyleOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.d)
  br label %_ZN4llvm4castIN4mlir27DestinationStyleOpInterfaceENS1_9OperationEEEDcPT0_.exit.i

end_hunk_0
