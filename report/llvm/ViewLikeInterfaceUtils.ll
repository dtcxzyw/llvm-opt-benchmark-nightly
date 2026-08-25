Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ViewLikeInterfaceUtils?download=true
begin_hunk_0_@_ZN4mlir6affine27mergeOffsetsSizesAndStridesERNS_9OpBuilderENS_8LocationENS_30OffsetSizeAndStrideOpInterfaceES4_RKN4llvm14SmallBitVectorERNS5_11SmallVectorINS_12OpFoldResultELj6EEESC_SC_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.al = load ptr, ptr %14, align 8, !tbaa !12   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit9, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit8
  call void @free(ptr noundef %i.al) #6
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit9

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit9: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit8, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  %i.ao = load ptr, ptr %13, align 8, !tbaa !12   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit10, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit9
  call void @free(ptr noundef %i.ao) #6
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit10

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit10: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit9, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  %i.ar = load ptr, ptr %12, align 8, !tbaa !12   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit11, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit10
  call void @free(ptr noundef %i.ar) #6
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit11

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit11: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit10, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  ret i8 %i.ab
}

declare void @_ZN4mlir30OffsetSizeAndStrideOpInterface15getMixedOffsetsEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN4mlir30OffsetSizeAndStrideOpInterface13getMixedSizesEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN4mlir30OffsetSizeAndStrideOpInterface15getMixedStridesEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6affine41resolveIndicesIntoOpWithOffsetsAndStridesERNS_12RewriterBaseENS_8LocationEN4llvm8ArrayRefINS_12OpFoldResultEEES7_RKNS4_14SmallBitVectorES7_RNS4_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr nofree readonly captures(address) %2, i64 %3, ptr nofree readonly captures(none) %4, i64 %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %10 = alloca %"class.mlir::AffineExpr", align 8 ; 5 uses
  %11 = alloca %"class.mlir::AffineExpr", align 8 ; 5 uses
  %12 = alloca [3 x %"class.mlir::OpFoldResult"], align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = tail call ptr @_ZN4mlir7Builder12getIndexAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #6
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.d, ptr %9, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i32 0, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 6, ptr %i.f, align 4, !tbaa !11
  %.not60 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %7, align 8
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit
  %.pre = load i32, ptr %i.e, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.h = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 4 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !8    ; 2 uses
  %or.cond.not = icmp ugt i32 %i.h, %i.k
  br i1 %or.cond.not, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEm.exit

bb.b:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11
  %i.n = icmp ugt i32 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.o, i64 noundef %i.i, i64 noundef 8) #6
  %.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !8
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.in = phi i32 [ %i.k, %bb.b ], [ %.pre.i.i, %bb.c ] ; 2 uses
  %.not11.i.i = icmp eq i32 %i.h, %.pre-phi.i.i.in
  br i1 %.not11.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEm.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i
  %.pre-phi.i.i = zext i32 %.pre-phi.i.i.in to i64 ; 2 uses
  %i.p = load ptr, ptr %8, align 8, !tbaa !12
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %.pre-phi.i.i
  %i.r = sub nsw i64 %i.i, %.pre-phi.i.i
  %i.s = shl nsw i64 %i.r, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.s, i1 false), !tbaa !26
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEm.exit

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEm.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i, %.lr.ph.preheader.i.i, %._crit_edge
  store i32 0, ptr %i.j, align 8, !tbaa !8
  %.idx = shl nuw nsw i64 %3, 3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.pre71 = load ptr, ptr %9, align 8, !tbaa !12  ; 2 uses
  br i1 %.not60, label %._crit_edge69, label %.lr.ph68

.lr.ph68:                                         ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 12
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit
  %.063 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit ] ; 4 uses
  %.sroa.047.061 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit ] ; 4 uses
  %i.x = load i64, ptr %6, align 8, !tbaa !18     ; 4 uses
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %.split, label %_ZNK4llvm14SmallBitVector4testEj.exit

.split:                                           ; preds = %bb.d
  %i.z = lshr i64 %i.x, 1
  %i.aa = lshr i64 %i.x, 58
  %i.ab = shl nsw i64 -1, %i.aa
  %i.ac = xor i64 %i.ab, -1
  %i.ad = and i64 %i.z, %i.ac
  %i.ae = and i64 %.sroa.047.061, 4294967295
  %i.af = lshr i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %bb.f, label %bb.e

_ZNK4llvm14SmallBitVector4testEj.exit:            ; preds = %bb.d
  %i.ah = inttoptr i64 %i.x to ptr
  %i.ai = lshr i64 %.sroa.047.061, 6
  %i.aj = and i64 %i.ai, 67108863
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = and i64 %.sroa.047.061, 63
  %i.an = load i64, ptr %i.al, align 8, !tbaa !21
  %i.ao = shl nuw i64 1, %i.am
  %i.ap = and i64 %i.an, %i.ao
  %.not59 = icmp eq i64 %i.ap, 0
  br i1 %.not59, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split, %_ZNK4llvm14SmallBitVector4testEj.exit
  %i.aq = add nsw i64 %.063, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.063
  %.sroa.speculate.load. = load i64, ptr %i.ar, align 8
  br label %bb.f

bb.f:                                             ; preds = %.split, %_ZNK4llvm14SmallBitVector4testEj.exit, %bb.e
  %.1 = phi i64 [ %.063, %_ZNK4llvm14SmallBitVector4testEj.exit ], [ %i.aq, %bb.e ], [ %.063, %.split ]
  %.sroa.speculated = phi i64 [ %i.c, %_ZNK4llvm14SmallBitVector4testEj.exit ], [ %.sroa.speculate.load., %bb.e ], [ %i.c, %.split ] ; 2 uses
  %i.as = load i32, ptr %i.e, align 8, !tbaa !8   ; 2 uses
  %i.at = load i32, ptr %i.f, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.as, %i.at
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !29

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 %.sroa.speculated)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit

bb.h:                                             ; preds = %bb.f
  %i.au = zext i32 %i.as to i64
  %i.av = load ptr, ptr %9, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  store i64 %.sroa.speculated, ptr %i.aw, align 1
  %i.ax = load i32, ptr %i.e, align 8, !tbaa !8
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.e, align 8, !tbaa !8
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit: ; preds = %bb.g, %bb.h
  %i.az = add nuw i64 %.sroa.047.061, 1           ; 2 uses
  %.not = icmp eq i64 %i.az, %3
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d

._crit_edge69.loopexit:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %.pre70 = load ptr, ptr %9, align 8, !tbaa !12
  br label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEm.exit
  %i.ba = phi ptr [ %.pre70, %._crit_edge69.loopexit ], [ %.pre71, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEm.exit ] ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.d
  br i1 %i.bb, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge69
  call void @free(ptr noundef %i.ba) #6
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %._crit_edge69, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  ret void

bb.j:                                             ; preds = %.lr.ph68, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %.sroa.10.067 = phi ptr [ %2, %.lr.ph68 ], [ %i.bv, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit ] ; 2 uses
  %.sroa.638.066 = phi ptr [ %.pre71, %.lr.ph68 ], [ %i.bw, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit ] ; 2 uses
  %.sroa.036.065 = phi ptr [ %4, %.lr.ph68 ], [ %i.bx, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  store ptr null, ptr %10, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store ptr null, ptr %11, align 8, !tbaa !30
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  %i.bd = call ptr @_ZN4mlir19getAffineSymbolExprEjPNS_11MLIRContextE(i32 noundef 0, ptr noundef %i.bc) #6
  store ptr %i.bd, ptr %10, align 8, !tbaa !16
  %i.be = call ptr @_ZN4mlir19getAffineSymbolExprEjPNS_11MLIRContextE(i32 noundef 1, ptr noundef %i.bc) #6
  store ptr %i.be, ptr %11, align 8, !tbaa !16
  %i.bf = call ptr @_ZN4mlir19getAffineSymbolExprEjPNS_11MLIRContextE(i32 noundef 2, ptr noundef %i.bc) #6
  %i.bg = call ptr @_ZNK4mlir10AffineExprmlES0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr %i.bf) #6
  %i.bh = call ptr @_ZNK4mlir10AffineExprplES0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr %i.bg) #6
  %i.bi = call ptr @_ZN4mlir9AffineMap3getEjjNS_10AffineExprE(i32 noundef 0, i32 noundef 3, ptr %i.bh) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  %i.bj = load i64, ptr %.sroa.10.067, align 8
  store i64 %i.bj, ptr %12, align 8
  %i.bk = load i64, ptr %.sroa.638.066, align 8
  store i64 %i.bk, ptr %i.u, align 8
  %i.bl = load i64, ptr %.sroa.036.065, align 8
  store i64 %i.bl, ptr %i.v, align 8
  %i.bm = call i64 @_ZN4mlir6affine29makeComposedFoldedAffineApplyERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %1, ptr %i.bi, ptr nonnull %12, i64 3, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %i.bn = call ptr @_ZN4mlir31getValueOrCreateConstantIndexOpERNS_9OpBuilderENS_8LocationENS_12OpFoldResultE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %1, i64 %i.bm) #6 ; 2 uses
  %i.bo = load i32, ptr %i.j, align 8, !tbaa !8   ; 2 uses
  %i.bp = load i32, ptr %i.w, align 4, !tbaa !11
  %.not.i31 = icmp ult i32 %i.bo, %i.bp
  br i1 %.not.i31, label %bb.l, label %bb.k, !prof !29

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.bn)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.l:                                             ; preds = %bb.j
  %i.bq = zext i32 %i.bo to i64
  %i.br = load ptr, ptr %8, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  store ptr %i.bn, ptr %i.bs, align 1
  %i.bt = load i32, ptr %i.j, align 8, !tbaa !8
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.j, align 8, !tbaa !8
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.10.067, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.638.066, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.036.065, i64 8
  %.not58 = icmp eq ptr %i.bv, %i.t
  br i1 %.not58, label %._crit_edge69.loopexit, label %bb.j
}

declare ptr @_ZN4mlir7Builder12getIndexAttrEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare i64 @_ZN4mlir6affine29makeComposedFoldedAffineApplyERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN4mlir9AffineMap3getEjjNS_10AffineExprE(i32 noundef, i32 noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir31getValueOrCreateConstantIndexOpERNS_9OpBuilderENS_8LocationENS_12OpFoldResultE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6affine27resolveSizesIntoOpWithSizesEN4llvm8ArrayRefINS_12OpFoldResultEEES4_RKNS1_14SmallBitVectorERNS1_15SmallVectorImplIS3_EE(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit
  %.016 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit ] ; 4 uses
  %.0914 = phi i64 [ 0, %.lr.ph ], [ %i.an, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit ] ; 5 uses
  %i.d = load i64, ptr %4, align 8, !tbaa !18     ; 4 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.split, label %_ZNK4llvm14SmallBitVectorixEj.exit

.split:                                           ; preds = %bb.b
  %i.f = lshr i64 %i.d, 1
  %i.g = lshr i64 %i.d, 58
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = and i64 %i.f, %i.i
  %i.k = and i64 %.0914, 4294967295
  %i.l = lshr i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.f

_ZNK4llvm14SmallBitVectorixEj.exit:               ; preds = %bb.b
  %i.n = inttoptr i64 %i.d to ptr
  %i.o = lshr i64 %.0914, 6
  %i.p = and i64 %i.o, 67108863
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = and i64 %.0914, 63
  %i.t = load i64, ptr %i.r, align 8, !tbaa !21
  %i.u = shl nuw i64 1, %i.s
  %i.v = and i64 %i.t, %i.u
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.split, %_ZNK4llvm14SmallBitVectorixEj.exit
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0914
  %.sroa.01.0.copyload = load i64, ptr %i.w, align 8 ; 2 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.x, %i.y
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %.sroa.01.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = zext i32 %i.x to i64
  %i.aa = load ptr, ptr %5, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store i64 %.sroa.01.0.copyload, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !8
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !8
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit

bb.f:                                             ; preds = %.split, %_ZNK4llvm14SmallBitVectorixEj.exit
  %i.ae = add nsw i64 %.016, 1                    ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %.sroa.0.0.copyload = load i64, ptr %i.af, align 8 ; 2 uses
  %i.ag = load i32, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i10 = icmp ult i32 %i.ag, %i.ah
  br i1 %.not.i10, label %bb.h, label %bb.g, !prof !29

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %.sroa.0.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = zext i32 %i.ag to i64
  %i.aj = load ptr, ptr %5, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  store i64 %.sroa.0.0.copyload, ptr %i.ak, align 1
  %i.al = load i32, ptr %i.b, align 8, !tbaa !8
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.b, align 8, !tbaa !8
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit: ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %.1 = phi i64 [ %.016, %bb.e ], [ %.016, %bb.d ], [ %i.ae, %bb.g ], [ %i.ae, %bb.h ]
  %i.an = add nuw nsw i64 %.0914, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !32
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir19getAffineSymbolExprEjPNS_11MLIRContextE(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #6
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  %i.g = load i32, ptr %i.a, align 8, !tbaa !8
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !8
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #6
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  %i.g = load i32, ptr %i.a, align 8, !tbaa !8
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !8
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !8
  ret void
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !10, i64 0, !5, i64 8, !5, i64 12}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !5, i64 12}
!12 = !{!9, !10, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN4mlir7BuilderE", !15, i64 0}
!15 = !{!"p1 _ZTSN4mlir11MLIRContextE", !10, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTSN4mlir6detail17AffineExprStorageE", !10, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSN4llvm14SmallBitVectorE", !20, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!23, !24, i64 0}
!23 = !{!"_ZTSN4llvm8ArrayRefIN4mlir12OpFoldResultEEE", !24, i64 0, !20, i64 8}
!24 = !{!"p1 _ZTSN4mlir12OpFoldResultE", !10, i64 0}
!25 = !{!23, !20, i64 8}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN4mlir5ValueE", !28, i64 0}
!28 = !{!"p1 _ZTSN4mlir6detail9ValueImplE", !10, i64 0}
end_hunk_0
