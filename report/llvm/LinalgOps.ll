Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LinalgOps?download=true
inline.NumInlined: 71156
inline.NumDeleted: 15079
loop-unroll.NumCompletelyUnrolled: 199
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 227
begin_hunk_0_@_ZN4mlir6linalg24WinogradInputTransformOp20getOutputOperandTypeEv:bb.a
bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.621, i64 49), i64 16) #30
  store ptr %i.m, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #30
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !76 ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !78   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !79   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.q, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.r = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.r ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.t = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = xor i64 %i.r, -1
  %i.w = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.v
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.t, ptr %i.u, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.t, i64 %i.w, i64 %i.r ; 2 uses
  %i.x = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.q, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_16RankedTensorTypeEEEDcRKT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !86
  %i.aa = icmp eq ptr %i.z, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aa, label %bb.f, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_16RankedTensorTypeEEEDcRKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !88
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_16RankedTensorTypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_16RankedTensorTypeEEEDcRKT0_.exit: ; preds = %bb.a, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.ad = phi ptr [ null, %bb.a ], [ %i.ac, %bb.f ], [ null, %bb.e ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %i.ad, 1
  ret { ptr, ptr } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6linalg24WinogradInputTransformOp22getTiledImplementationERNS_9OpBuilderEN4llvm8ArrayRefINS_12OpFoldResultEEES7_NS5_INS_18InnerTileAlignmentEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr.6365") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.6254") align 8 captures(none) %5, ptr nofree noundef readnone byval(%"class.llvm::ArrayRef.6364") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir6linalg24WinogradInputTransformOp22getTiledImplementationERNS_9OpBuilderEN4llvm8ArrayRefINS_12OpFoldResultEEES7_(ptr dead_on_unwind writable sret(%"class.llvm::FailureOr.6365") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, i64 poison, ptr noundef nonnull byval(%"class.llvm::ArrayRef.6254") align 8 %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6linalg24WinogradInputTransformOp22getTiledImplementationERNS_9OpBuilderEN4llvm8ArrayRefINS_12OpFoldResultEEES7_(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr.6365") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.6254") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
switch.lookup:
  %6 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  %7 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  %8 = alloca %"class.mlir::linalg::WinogradConv2DFmrAttr", align 8 ; 4 uses
  %9 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  %10 = alloca [1 x %"class.mlir::AffineExpr"], align 8 ; 4 uses
  %11 = alloca [1 x %"class.mlir::AffineExpr"], align 8 ; 4 uses
  %12 = alloca %"class.mlir::AffineExpr", align 8 ; 4 uses
  %13 = alloca [1 x %"class.mlir::AffineExpr"], align 8 ; 4 uses
  %14 = alloca %"class.mlir::AffineExpr", align 8 ; 4 uses
  %15 = alloca %"class.mlir::AffineExpr", align 8 ; 4 uses
  %16 = alloca %"class.llvm::SmallVector.130", align 8 ; 13 uses
  %17 = alloca %"class.llvm::SmallVector.6381", align 8 ; 10 uses
  %18 = alloca %"class.llvm::SmallVector.6381", align 8 ; 11 uses
  %19 = alloca %"class.llvm::SmallVector.6381", align 8 ; 15 uses
  %20 = alloca %"class.mlir::tensor::ExtractSliceOp", align 8 ; 5 uses
  %21 = alloca %"class.llvm::ArrayRef.6254", align 8 ; 3 uses
  %22 = alloca %"class.llvm::ArrayRef.6254", align 8 ; 3 uses
  %23 = alloca %"class.llvm::ArrayRef.67", align 8 ; 2 uses
  %24 = alloca %"class.llvm::SmallVector.6381", align 8 ; 9 uses
  %25 = alloca %"class.llvm::SmallVector.6381", align 8 ; 9 uses
  %26 = alloca %"class.llvm::SmallVector.6381", align 8 ; 15 uses
  %27 = alloca %"class.mlir::tensor::ExtractSliceOp", align 8 ; 5 uses
  %28 = alloca %"class.llvm::ArrayRef.6254", align 8 ; 3 uses
  %29 = alloca %"class.llvm::ArrayRef.6254", align 8 ; 3 uses
  %30 = alloca %"class.llvm::ArrayRef.67", align 8 ; 2 uses
  %31 = alloca %"class.llvm::SmallVector.6498", align 8 ; 7 uses
  %32 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %33 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %34 = alloca %"struct.mlir::TilingResult", align 8 ; 17 uses
  %i.a = tail call ptr @_ZN4mlir7Builder17getI64IntegerAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.b = load ptr, ptr %1, align 8, !tbaa !106    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !169
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %8, align 8
  %i.i = call noundef i32 @_ZNK4mlir6linalg21WinogradConv2DFmrAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.j = zext nneg i32 %i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir6linalg24WinogradInputTransformOp22getTiledImplementationERNS_9OpBuilderEN4llvm8ArrayRefINS_12OpFoldResultEEES7_, i64 %i.j
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.k = zext nneg i32 %i.i to i64
  %switch.gep202 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir6linalg24WinogradInputTransformOp22getTiledImplementationERNS_9OpBuilderEN4llvm8ArrayRefINS_12OpFoldResultEEES7_.1827, i64 %i.k
  %switch.load203 = load i8, ptr %switch.gep202, align 1
  %switch.ext204 = zext i8 %switch.load203 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.l = call { ptr, ptr } @_ZN4mlir6linalg24WinogradInputTransformOp20getOutputOperandTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  store ptr %i.m, ptr %9, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = extractvalue { ptr, ptr } %i.l, 1
  store ptr %i.o, ptr %i.n, align 8
  %i.p = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #30
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !70
  %i.u = load ptr, ptr %1, align 8, !tbaa !106
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.v, align 8 ; 6 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !168    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.x = call ptr @_ZN4mlir7Builder16getAffineDimExprEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #30
  store ptr %i.x, ptr %10, align 8
  %i.y = call ptr @_ZN4mlir9AffineMap3getEjjN4llvm8ArrayRefINS_10AffineExprEEEPNS_11MLIRContextE(i32 noundef 1, i32 noundef 0, ptr nonnull %10, i64 1, ptr noundef %i.w) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.z = call ptr @_ZN4mlir7Builder16getAffineDimExprEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #30
  store ptr %i.z, ptr %12, align 8
  %i.aa = call ptr @_ZNK4mlir10AffineExprmlEl(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %switch.ext) #30
  store ptr %i.aa, ptr %11, align 8
  %i.ab = call ptr @_ZN4mlir9AffineMap3getEjjN4llvm8ArrayRefINS_10AffineExprEEEPNS_11MLIRContextE(i32 noundef 1, i32 noundef 0, ptr nonnull %11, i64 1, ptr noundef %i.w) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %.not = icmp eq i64 %i.r, 1                     ; 2 uses
  %.sroa.043.0.copyload.sroa.speculated = select i1 %.not, ptr %i.y, ptr %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.043.0.copyload.sroa.speculated, ptr nonnull %i.ac, i64 1, i1 noundef zeroext false) #30
  %.not77 = icmp eq i64 %i.t, 1                   ; 2 uses
  %.sroa.039.0.copyload.sroa.speculated = select i1 %.not77, ptr %i.y, ptr %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.039.0.copyload.sroa.speculated, ptr nonnull %i.ae, i64 1, i1 noundef zeroext false) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.ag = call ptr @_ZN4mlir7Builder16getAffineDimExprEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #30
  store ptr %i.ag, ptr %15, align 8
  %i.ah = call ptr @_ZNK4mlir10AffineExprmlEl(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %switch.ext) #30
  store ptr %i.ah, ptr %14, align 8
  %i.ai = call ptr @_ZNK4mlir10AffineExprplEl(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %switch.ext204) #30
  store ptr %i.ai, ptr %13, align 8
  %i.aj = call ptr @_ZN4mlir9AffineMap3getEjjN4llvm8ArrayRefINS_10AffineExprEEEPNS_11MLIRContextE(i32 noundef 1, i32 noundef 0, ptr nonnull %13, i64 1, ptr noundef %i.w) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.ak = load ptr, ptr %5, align 8, !tbaa !365   ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload.i.i, ptr %i.aj, ptr nonnull %i.al, i64 1, i1 noundef zeroext false) #30
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ao = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload.i.i, ptr %i.aj, ptr nonnull %i.an, i64 1, i1 noundef zeroext false) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.ap, ptr %16, align 8, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !79
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 3 uses
  store i32 6, ptr %i.ar, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.as, ptr %17, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 6, ptr %i.au, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.av, ptr %18, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 6, ptr %i.ax, align 4, !tbaa !80
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bb = load i64, ptr %i.ba, align 8
  store i64 %i.az, ptr %i.as, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 24
  %.sroa.4127.0..sroa_idx.a = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %35 = getelementptr inbounds i8, ptr %i.af, i64 -16
  %i.bc = insertelement <2 x ptr> poison, ptr %.sroa.4127.0..sroa_idx.a, i64 0
  %36 = insertelement <2 x ptr> %i.bc, ptr %35, i64 1
  %i.bd = ptrtoint <2 x ptr> %36 to <2 x i64>
  %i.be = or <2 x i64> %i.bd, splat (i64 4)
  store <2 x i64> %i.be, ptr %.sroa.4127.0..sroa_idx, align 8
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i64 %i.bb, ptr %.sroa.6129.0..sroa_idx, align 8
  store i32 4, ptr %i.at, align 8, !tbaa !79
  %i.bf = ptrtoint ptr %i.a to i64                ; 18 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %i.ao, i64 -16
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = or i64 %i.bl, 4
  %.sroa.0124.0 = select i1 %.not77, i64 %i.bf, i64 %i.bm
  %i.bn = getelementptr inbounds i8, ptr %i.am, i64 -16
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = or i64 %i.bo, 4
  %.sroa.0125.0 = select i1 %.not, i64 %i.bf, i64 %i.bp
  store i64 %i.bj, ptr %i.av, align 8
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %.sroa.0125.0, ptr %.sroa.4123.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %.sroa.0124.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %i.bh, ptr %.sroa.6.0..sroa_idx, align 8
  store i32 4, ptr %i.aw, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.bq = call { ptr, ptr } @_ZN4mlir6linalg24WinogradInputTransformOp19getInputOperandTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.br = extractvalue { ptr, ptr } %i.bq, 0
  store ptr %i.br, ptr %7, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = extractvalue { ptr, ptr } %i.bq, 1
  store ptr %i.bt, ptr %i.bs, align 8
  %i.bu = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #30
  %i.bv = extractvalue { ptr, i64 } %i.bu, 1      ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.bw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store ptr %i.bw, ptr %19, align 8, !tbaa !78
  %i.bx = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !79
  %i.by = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 6, ptr %i.by, align 4, !tbaa !80
  %i.bz = icmp ugt i64 %i.bv, 6
  br i1 %i.bz, label %.lr.ph.i.i.i.preheader.i.i.i, label %_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %switch.lookup
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull %i.bw, i64 noundef %i.bv, i64 noundef 8) #30
  %i.ca = load ptr, ptr %19, align 8, !tbaa !78   ; 2 uses
  %n.vec = and i64 %i.bv, -4                      ; 3 uses
  %i.cb = shl i64 %n.vec, 3
  %i.cc = getelementptr i8, ptr %i.ca, i64 %i.cb
  %i.cd = and i64 %i.bv, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i.i.i.preheader.i.i.i
  %index = phi i64 [ 0, %.lr.ph.i.i.i.preheader.i.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ca, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.cf, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !6269

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i ], [ %i.cc, %middle.block ] ; 2 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i.i ], [ %i.cd, %middle.block ]
  store i64 %i.bf, ptr %.09.i.i.i.i.i.i, align 8
  %i.ch = add i64 %.068.i.i.i.i.i.i, -1           ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6270

_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %switch.lookup
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.i.i
  store i64 %i.bf, ptr %i.bw, align 8
  %.not.i.i.i.i.i = icmp eq i64 %i.bv, 1
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i64 %i.bf, ptr %i.cj, align 8
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.bv, 2
  br i1 %.not.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.ck = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i64 %i.bf, ptr %i.ck, align 8
  %.not.i.i.i.i.i.2 = icmp eq i64 %i.bv, 3
  br i1 %.not.i.i.i.i.i.2, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %i.cl = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i64 %i.bf, ptr %i.cl, align 8
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bv, 4
  br i1 %.not.i.i.i.i.i.3, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %.lr.ph.i.i.i.i.i.3
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 48
  store i64 %i.bf, ptr %i.cm, align 8
  %.not.i.i.i.i.i.4 = icmp eq i64 %i.bv, 5
  br i1 %.not.i.i.i.i.i.4, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.5:                               ; preds = %.lr.ph.i.i.i.i.i.4
  %i.cn = getelementptr inbounds nuw i8, ptr %19, i64 56
  store i64 %i.bf, ptr %i.cn, align 8
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.co = trunc i64 %i.bv to i32
  store i32 %i.co, ptr %i.bx, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.cp = load ptr, ptr %1, align 8, !tbaa !106
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !227
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !82
  %i.ct = load ptr, ptr %17, align 8, !tbaa !78
  %i.cu = load i32, ptr %i.at, align 8, !tbaa !79
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load ptr, ptr %18, align 8, !tbaa !78
  store ptr %i.cw, ptr %21, align 8, !tbaa !365
  %i.cx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cy = load i32, ptr %i.aw, align 8, !tbaa !79
  %i.cz = zext i32 %i.cy to i64
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !366
  %i.da = load ptr, ptr %19, align 8, !tbaa !78
  store ptr %i.da, ptr %22, align 8, !tbaa !365
  %i.db = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.dc = and i64 %i.bv, 4294967295
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !366
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %i.dd = call ptr @_ZN4mlir6tensor14ExtractSliceOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES9_S9_NS7_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.ct, i64 %i.cv, ptr noundef nonnull byval(%"class.llvm::ArrayRef.6254") align 8 %21, ptr noundef nonnull byval(%"class.llvm::ArrayRef.6254") align 8 %22, ptr noundef nonnull byval(%"class.llvm::ArrayRef.67") align 8 %23) #30 ; 2 uses
  store ptr %i.dd, ptr %20, align 8
  %i.de = load i32, ptr %i.aq, align 8, !tbaa !79 ; 3 uses
  %i.df = load i32, ptr %i.ar, align 4, !tbaa !80
  %.not.i83 = icmp ult i32 %i.de, %i.df
  br i1 %.not.i83, label %bb.b, label %bb.a, !prof !145

bb.a:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18growAndEmplaceBackIJRNS1_6tensor14ExtractSliceOpEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %20) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12emplace_backIJRNS1_6tensor14ExtractSliceOpEEEERS2_DpOT_.exit

bb.b:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit
  %i.dh = zext i32 %i.de to i64
  %i.di = load ptr, ptr %16, align 8, !tbaa !78
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dh
  %i.dk = getelementptr inbounds i8, ptr %i.dd, i64 -16
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !82
  %i.dl = add nuw i32 %i.de, 1
  store i32 %i.dl, ptr %i.aq, align 8, !tbaa !79
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12emplace_backIJRNS1_6tensor14ExtractSliceOpEEEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12emplace_backIJRNS1_6tensor14ExtractSliceOpEEEERS2_DpOT_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.dm = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.dm, ptr %24, align 8, !tbaa !78
  %i.dn = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store i32 0, ptr %i.dn, align 8, !tbaa !79
  %i.do = getelementptr inbounds nuw i8, ptr %24, i64 12
  store i32 6, ptr %i.do, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  %i.dp = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %i.dp, ptr %25, align 8, !tbaa !78
  %i.dq = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store i32 0, ptr %i.dq, align 8, !tbaa !79
  %i.dr = getelementptr inbounds nuw i8, ptr %25, i64 12
  store i32 6, ptr %i.dr, align 4, !tbaa !80
  %i.ds = call i8 @_ZN4mlir6linalg24WinogradInputTransformOp21getResultTilePositionERNS_9OpBuilderEjN4llvm8ArrayRefINS_12OpFoldResultEEES7_RNS4_11SmallVectorIS6_Lj6EEESA_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 poison, ptr nonnull %3, i64 poison, ptr noundef nonnull byval(%"class.llvm::ArrayRef.6254") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull align 8 dereferenceable(64) %25)
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12emplace_backIJRNS1_6tensor14ExtractSliceOpEEEERS2_DpOT_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.du, align 8, !tbaa !427
  br label %bb.o

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12emplace_backIJRNS1_6tensor14ExtractSliceOpEEEERS2_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.dv = call { ptr, ptr } @_ZN4mlir6linalg24WinogradInputTransformOp20getOutputOperandTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.dw = extractvalue { ptr, ptr } %i.dv, 0
  store ptr %i.dw, ptr %6, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dy = extractvalue { ptr, ptr } %i.dv, 1
  store ptr %i.dy, ptr %i.dx, align 8
  %i.dz = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #30
  %i.ea = extractvalue { ptr, i64 } %i.dz, 1      ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  %i.eb = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  store ptr %i.eb, ptr %26, align 8, !tbaa !78
end_hunk_0
begin_hunk_1_@_ZN4mlir6linalg25WinogradOutputTransformOp18getIterationDomainERNS_9OpBuilderE:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !227
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.i = tail call { ptr, ptr } @_ZN4mlir6linalg25WinogradOutputTransformOp19getValueOperandTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  store ptr %i.j, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = extractvalue { ptr, ptr } %i.i, 1
  store ptr %i.l, ptr %i.k, align 8
  %i.m = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #30
  %i.n = extractvalue { ptr, i64 } %i.m, 1        ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.p, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %i.q, align 4, !tbaa !80
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = icmp ugt i64 %i.n, 2
  br i1 %i.s, label %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2Em.exit

_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.o, i64 noundef %i.n, i64 noundef 24) #30
  %.pre.i.i.i = load i32, ptr %i.p, align 8, !tbaa !79
  %.pre.i.i.fr.i = freeze i32 %.pre.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.fr.i to i64  ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.n, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2Em.exit.thread24, label %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge

_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2Em.exit.thread24: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i.i
  %i.t = trunc nuw i64 %i.n to i32
  store i32 %i.t, ptr %i.p, align 8, !tbaa !79
  br label %.lr.ph

_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !78
  br label %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2Em.exit

_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2Em.exit: ; preds = %bb.b, %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge
  %i.u = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge ], [ %i.o, %bb.b ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.v = getelementptr [24 x i8], ptr %i.u, i64 %.pre-phi.i.i3.i
  %reass.add.i = sub i64 %i.n, %.pre-phi.i.i3.i
  %reass.mul.i = mul i64 %reass.add.i, 24         ; 2 uses
  %i.w = add i64 %reass.mul.i, -24
  %i.x = urem i64 %i.w, 24
  %i.y = sub i64 %reass.mul.i, %i.x
  call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.y, i1 false)
  %i.z = trunc i64 %i.n to i32
  store i32 %i.z, ptr %i.p, align 8, !tbaa !79
  %i.aa = icmp sgt i64 %i.n, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2Em.exit.thread24, %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2Em.exit
  %i.ab = ptrtoint ptr %i.c to i64
  %i.ac = ptrtoint ptr %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.ad = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.c ] ; 4 uses
  %.023 = phi i32 [ 0, %.lr.ph ], [ %i.an, %bb.c ]
  %i.ae = load ptr, ptr %0, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ad
  store i64 %i.ab, ptr %i.af, align 8
  %i.ag = call fastcc i64 @_ZL11getDimValueRN4mlir9OpBuilderENS_8LocationENS_5ValueEl(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.ad)
  %i.ah = load ptr, ptr %0, align 8, !tbaa !78
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.ag, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %0, align 8, !tbaa !78
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ad
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.ac, ptr %i.am, align 8
  %i.an = add i32 %.023, 1                        ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = icmp samesign ugt i64 %i.n, %i.ao
  br i1 %i.ap, label %bb.c, label %._crit_edge, !llvm.loop !6279

._crit_edge:                                      ; preds = %bb.c, %bb.a, %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2Em.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6linalg25WinogradOutputTransformOp20getLoopIteratorTypesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.307") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = tail call { ptr, ptr } @_ZN4mlir6linalg25WinogradOutputTransformOp19getValueOperandTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  store ptr %i.b, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.d, ptr %i.c, align 8
  %i.e = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.f = extractvalue { ptr, i64 } %i.e, 1        ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 12, ptr %i.i, align 4, !tbaa !80
  %i.j = icmp ugt i64 %i.f, 12
  br i1 %i.j, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, label %_ZSt6fill_nIPN4mlir5utils12IteratorTypeEmS2_ET_S4_T0_RKT1_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.a
  store i32 0, ptr %i.h, align 8, !tbaa !79
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.g, i64 noundef %i.f, i64 noundef 4) #30
  %i.k = load ptr, ptr %0, align 8, !tbaa !78
  br label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit.sink.split

_ZSt6fill_nIPN4mlir5utils12IteratorTypeEmS2_ET_S4_T0_RKT1_.exit.i.i: ; preds = %bb.a
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit, label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit.sink.split

_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit.sink.split: ; preds = %_ZSt6fill_nIPN4mlir5utils12IteratorTypeEmS2_ET_S4_T0_RKT1_.exit.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %.sink = phi ptr [ %i.k, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %i.g, %_ZSt6fill_nIPN4mlir5utils12IteratorTypeEmS2_ET_S4_T0_RKT1_.exit.i.i ]
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.f, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !167
  br label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit

_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit.sink.split, %_ZSt6fill_nIPN4mlir5utils12IteratorTypeEmS2_ET_S4_T0_RKT1_.exit.i.i
  %storemerge.i = trunc i64 %i.f to i32
  store i32 %storemerge.i, ptr %i.h, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i8 @_ZN4mlir6linalg25WinogradOutputTransformOp21getResultTilePositionERNS_9OpBuilderEjN4llvm8ArrayRefINS_12OpFoldResultEEES7_RNS4_11SmallVectorIS6_Lj6EEESA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.6254") align 8 captures(none) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %7) local_unnamed_addr #0 align 2 {
_ZN4mlir6linalg27getFmrFromWinogradConv2DFmrENS0_17WinogradConv2DFmrE.exit:
  %8 = alloca %"class.mlir::linalg::WinogradConv2DFmrAttr", align 8 ; 4 uses
  %9 = alloca [1 x %"class.mlir::AffineExpr"], align 8 ; 4 uses
  %10 = alloca [1 x %"class.mlir::AffineExpr"], align 8 ; 4 uses
  %11 = alloca %"class.mlir::AffineExpr", align 8 ; 4 uses
  %12 = alloca %"class.mlir::ShapedType", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.a = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !169
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %8, align 8
  %i.h = call noundef i32 @_ZNK4mlir6linalg21WinogradConv2DFmrAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.i = icmp eq i32 %i.h, 1
  %spec.select = select i1 %i.i, i64 4, i64 2
  %i.j = load ptr, ptr %0, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.k, align 8 ; 4 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !168    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.m = call ptr @_ZN4mlir7Builder16getAffineDimExprEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #30
  store ptr %i.m, ptr %9, align 8
  %i.n = call ptr @_ZN4mlir9AffineMap3getEjjN4llvm8ArrayRefINS_10AffineExprEEEPNS_11MLIRContextE(i32 noundef 1, i32 noundef 0, ptr nonnull %9, i64 1, ptr noundef %i.l) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.o = call ptr @_ZN4mlir7Builder16getAffineDimExprEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #30
  store ptr %i.o, ptr %11, align 8
  %i.p = call ptr @_ZNK4mlir10AffineExprmlEl(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %spec.select) #30
  store ptr %i.p, ptr %10, align 8
  %i.q = call ptr @_ZN4mlir9AffineMap3getEjjN4llvm8ArrayRefINS_10AffineExprEEEPNS_11MLIRContextE(i32 noundef 1, i32 noundef 0, ptr nonnull %10, i64 1, ptr noundef %i.l) #30 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.r = call { ptr, ptr } @_ZN4mlir6linalg25WinogradOutputTransformOp19getValueOperandTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  store ptr %i.s, ptr %12, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.u = extractvalue { ptr, ptr } %i.r, 1
  store ptr %i.u, ptr %i.t, align 8
  %i.v = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #30
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !70
  %.not = icmp eq i64 %i.x, 1                     ; 2 uses
  %.sroa.022.0.copyload.sroa.speculated = select i1 %.not, ptr %i.n, ptr %i.q
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.022.0.copyload.sroa.speculated, ptr nonnull %i.aa, i64 1, i1 noundef zeroext false) #30
  %.not50 = icmp eq i64 %i.z, 1                   ; 2 uses
  %.sroa.018.0.copyload.sroa.speculated = select i1 %.not50, ptr %i.n, ptr %i.q
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.018.0.copyload.sroa.speculated, ptr nonnull %i.ac, i64 1, i1 noundef zeroext false) #30
  %i.ae = load ptr, ptr %5, align 8, !tbaa !365   ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload.i.i, ptr %i.q, ptr nonnull %i.af, i64 1, i1 noundef zeroext false) #30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ai = call ptr @_ZN4mlir6affine23makeComposedAffineApplyERNS_9OpBuilderENS_8LocationENS_9AffineMapEN4llvm8ArrayRefINS_12OpFoldResultEEEb(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.sroa.0.0.copyload.i.i, ptr %i.q, ptr nonnull %i.ah, i64 1, i1 noundef zeroext false) #30
  %i.aj = call ptr @_ZN4mlir7Builder17getI64IntegerAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 1) #30
  %13 = getelementptr inbounds i8, ptr %i.ab, i64 -16
  %14 = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.ak = insertelement <2 x ptr> poison, ptr %13, i64 0
  %15 = insertelement <2 x ptr> %i.ak, ptr %14, i64 1
  %i.al = ptrtoint <2 x ptr> %15 to <2 x i64>
  %i.am = or <2 x i64> %i.al, splat (i64 4)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !79
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 4                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !80
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp samesign ugt i64 %i.au, %i.ax
  br i1 %i.ay, label %bb.a, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendESt16initializer_listIS2_E.exit

bb.a:                                             ; preds = %_ZN4mlir6linalg27getFmrFromWinogradConv2DFmrENS0_17WinogradConv2DFmrE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.az, i64 noundef %i.au, i64 noundef 8) #30
  %.pre8.pre.i.i = load i32, ptr %i.ar, align 8, !tbaa !79
  %.pre = zext i32 %.pre8.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendESt16initializer_listIS2_E.exit

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendESt16initializer_listIS2_E.exit: ; preds = %_ZN4mlir6linalg27getFmrFromWinogradConv2DFmrENS0_17WinogradConv2DFmrE.exit, %bb.a
  %.pre-phi = phi i64 [ %i.at, %_ZN4mlir6linalg27getFmrFromWinogradConv2DFmrENS0_17WinogradConv2DFmrE.exit ], [ %.pre, %bb.a ]
  %i.ba = load ptr, ptr %6, align 8, !tbaa !78
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.pre-phi ; 3 uses
  store i64 %i.ao, ptr %i.bb, align 1
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store <2 x i64> %i.am, ptr %.sroa.456.0..sroa_idx, align 1
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 %i.aq, ptr %.sroa.658.0..sroa_idx, align 1
  %.pre.i.i = load i32, ptr %i.ar, align 8, !tbaa !79
  %i.bc = add i32 %.pre.i.i, 4
  store i32 %i.bc, ptr %i.ar, align 8, !tbaa !79
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !79
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = add nuw nsw i64 %i.bj, 4                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !80
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp samesign ugt i64 %i.bk, %i.bn
  br i1 %i.bo, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendESt16initializer_listIS2_E.exit54

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendESt16initializer_listIS2_E.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.bp, i64 noundef %i.bk, i64 noundef 8) #30
  %.pre8.pre.i.i53 = load i32, ptr %i.bh, align 8, !tbaa !79
  %.pre90 = zext i32 %.pre8.pre.i.i53 to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendESt16initializer_listIS2_E.exit54

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendESt16initializer_listIS2_E.exit54: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendESt16initializer_listIS2_E.exit, %bb.b
  %.pre-phi91 = phi i64 [ %i.bj, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendESt16initializer_listIS2_E.exit ], [ %.pre90, %bb.b ]
  %i.bq = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = or i64 %i.bs, 4
  %.sroa.059.0 = select i1 %.not50, i64 %i.bq, i64 %i.bt
  %i.bu = getelementptr inbounds i8, ptr %i.ag, i64 -16
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = or i64 %i.bv, 4
  %.sroa.060.0 = select i1 %.not, i64 %i.bq, i64 %i.bw
  %i.bx = load ptr, ptr %7, align 8, !tbaa !78
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.pre-phi91 ; 4 uses
  store i64 %i.be, ptr %i.by, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %.sroa.060.0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %.sroa.059.0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx, align 1
  %.pre.i.i52 = load i32, ptr %i.bh, align 8, !tbaa !79
  %i.bz = add i32 %.pre.i.i52, 4
  store i32 %i.bz, ptr %i.bh, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4mlir6linalg25WinogradOutputTransformOp19getValueOperandTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !106
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i, -8     ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %.not.i.i.i.i.i1 = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i1, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_16RankedTensorTypeEEEDcRKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !83

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #30
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.621, i64 49), i64 16) #30
  store ptr %i.m, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #30
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !76 ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !78   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !79   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.q, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.r = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.r ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.t = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = xor i64 %i.r, -1
  %i.w = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.v
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.t, ptr %i.u, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.t, i64 %i.w, i64 %i.r ; 2 uses
  %i.x = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.q, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_16RankedTensorTypeEEEDcRKT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !86
  %i.aa = icmp eq ptr %i.z, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aa, label %bb.f, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_16RankedTensorTypeEEEDcRKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !88
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_16RankedTensorTypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_16RankedTensorTypeEEEDcRKT0_.exit: ; preds = %bb.a, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.ad = phi ptr [ null, %bb.a ], [ %i.ac, %bb.f ], [ null, %bb.e ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %i.ad, 1
  ret { ptr, ptr } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6linalg25WinogradOutputTransformOp22getTiledImplementationERNS_9OpBuilderEN4llvm8ArrayRefINS_12OpFoldResultEEES7_NS5_INS_18InnerTileAlignmentEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr.6365") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.6254") align 8 captures(none) %5, ptr nofree noundef readnone byval(%"class.llvm::ArrayRef.6364") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir6linalg25WinogradOutputTransformOp22getTiledImplementationERNS_9OpBuilderEN4llvm8ArrayRefINS_12OpFoldResultEEES7_(ptr dead_on_unwind writable sret(%"class.llvm::FailureOr.6365") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, i64 poison, ptr noundef nonnull byval(%"class.llvm::ArrayRef.6254") align 8 %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6linalg25WinogradOutputTransformOp22getTiledImplementationERNS_9OpBuilderEN4llvm8ArrayRefINS_12OpFoldResultEEES7_(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr.6365") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.6254") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  %7 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  %8 = alloca %"class.llvm::SmallVector.130", align 8 ; 13 uses
  %9 = alloca %"class.llvm::SmallVector.6381", align 8 ; 10 uses
  %10 = alloca %"class.llvm::SmallVector.6381", align 8 ; 10 uses
  %11 = alloca %"class.mlir::ShapedType", align 8 ; 5 uses
  %12 = alloca %"class.llvm::SmallVector.6381", align 8 ; 15 uses
  %13 = alloca %"class.mlir::tensor::ExtractSliceOp", align 8 ; 5 uses
  %14 = alloca %"class.llvm::ArrayRef.6254", align 8 ; 3 uses
  %15 = alloca %"class.llvm::ArrayRef.6254", align 8 ; 3 uses
  %16 = alloca %"class.llvm::ArrayRef.67", align 8 ; 2 uses
  %17 = alloca %"class.llvm::SmallVector.6381", align 8 ; 9 uses
  %18 = alloca %"class.llvm::SmallVector.6381", align 8 ; 9 uses
  %19 = alloca %"class.llvm::SmallVector.6381", align 8 ; 15 uses
  %20 = alloca %"class.mlir::tensor::ExtractSliceOp", align 8 ; 5 uses
  %21 = alloca %"class.llvm::ArrayRef.6254", align 8 ; 3 uses
  %22 = alloca %"class.llvm::ArrayRef.6254", align 8 ; 3 uses
  %23 = alloca %"class.llvm::ArrayRef.67", align 8 ; 2 uses
  %24 = alloca %"class.llvm::SmallVector.6498", align 8 ; 7 uses
  %25 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %26 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %27 = alloca %"struct.mlir::TilingResult", align 8 ; 17 uses
  %i.a = tail call ptr @_ZN4mlir7Builder17getI64IntegerAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1) #30
  %i.b = tail call ptr @_ZN4mlir7Builder17getI64IntegerAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #30
end_hunk_1
