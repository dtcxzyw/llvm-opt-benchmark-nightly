Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowerVectorToFromElementsToShuffleTree?download=true
inline.NumInlined: 2033
inline.NumDeleted: 1322
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4mlir16PDLPatternModuleD2Ev:bb.a
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.am, i64 noundef %i.as, i64 noundef 8) #18
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12, %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit
  %i.ax = zext i32 %i.aw to i64
  %.idx.i13 = shl nuw nsw i64 %i.ax, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i13
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.az, %_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i ], [ %i.ay, %.lr.ph.i.preheader.i ]
  %i.az = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !198 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.k
  %i.be = zext i32 %i.bd to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.be, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.bg, %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i ], [ %i.bf, %.lr.ph.i.preheader.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !200 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4mlir16PDLPatternConfigEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir16PDLPatternConfigEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #18, !inline_history !183
  br label %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir16PDLPatternConfigEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.bg
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !184

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i, %bb.k
  %i.bl = phi ptr [ %.pre.i.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i ], [ %i.bb, %bb.k ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt14default_deleteIN4mlir19PDLPatternConfigSetEEclEPS1_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.bl) #18
  br label %_ZNKSt14default_deleteIN4mlir19PDLPatternConfigSetEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir19PDLPatternConfigSetEEclEPS1_.exit.i.i.i: ; preds = %bb.l, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 64) #20
  br label %_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir19PDLPatternConfigSetEEclEPS1_.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.au, %i.az
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !185

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i
  %.pre.i14 = load ptr, ptr %i.at, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit
  %i.bo = phi ptr [ %.pre.i14, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %i.au, %_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i
  tail call void @free(ptr noundef %i.bo) #18
  br label %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit

_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, %bb.m
  %i.br = load ptr, ptr %0, align 8, !tbaa !83    ; 2 uses
  %.not.i15 = icmp eq ptr %i.br, null
  br i1 %.not.i15, label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit
  tail call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %i.br) #18
  br label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit

_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit:    ; preds = %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit, %bb.n
  ret void
}

declare void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #18
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #18
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_134ToFromElementsToShuffleTreeRewriteD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #18
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #18
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector14FromElementsOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  ret i8 %i.d
}

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal i8 @_ZNK12_GLOBAL__N_134ToFromElementsToShuffleTreeRewrite15matchAndRewriteEN4mlir6vector14FromElementsOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::VectorType", align 8  ; 4 uses
  %4 = alloca %"class.llvm::DenseMap.287", align 8 ; 7 uses
  %5 = alloca %"struct.std::pair.308", align 8    ; 5 uses
  %6 = alloca %"class.llvm::SmallVector.282", align 8 ; 22 uses
  %7 = alloca %"struct.llvm::detail::enumerator_result.323", align 8 ; 4 uses
  %8 = alloca %"class.mlir::vector::ToElementsOp", align 8 ; 4 uses
  %9 = alloca %"class.llvm::SmallVector.282", align 8 ; 17 uses
  %10 = alloca %class.anon.242, align 8           ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.mlir::VectorType", align 8 ; 4 uses
  %13 = alloca %"class.mlir::VectorType", align 8 ; 4 uses
  %14 = alloca %"class.mlir::VectorType", align 8 ; 4 uses
  %15 = alloca %"class.mlir::VectorType", align 8 ; 4 uses
  %16 = alloca %"class.mlir::VectorType", align 8 ; 4 uses
  %17 = alloca %"class.mlir::VectorType", align 8 ; 4 uses
  %18 = alloca %"class.mlir::VectorType", align 8 ; 4 uses
  %19 = alloca %class.anon.242, align 8           ; 4 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %21 = alloca %"class.mlir::vector::FromElementsOp", align 8 ; 5 uses
  %22 = alloca %"class.llvm::SetVector", align 8  ; 10 uses
  %23 = alloca %"class.mlir::Value", align 8      ; 8 uses
  %24 = alloca %"class.mlir::vector::ToElementsOp", align 8 ; 7 uses
  %25 = alloca %class.anon.242, align 8           ; 4 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %27 = alloca %class.anon.242, align 8           ; 4 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %29 = alloca %"class.mlir::vector::FromElementsOp", align 8 ; 9 uses
  %30 = alloca %"class.mlir::VectorType", align 8 ; 5 uses
  %31 = alloca %"class.llvm::SmallVector.193", align 8 ; 12 uses
  %32 = alloca %"class.mlir::OperandRange", align 8 ; 5 uses
  %33 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %34 = alloca %"class.(anonymous namespace)::VectorShuffleTreeBuilder", align 8 ; 20 uses
  %35 = alloca %"class.mlir::Value", align 8      ; 4 uses
  store ptr %1, ptr %29, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  store ptr %i.c, ptr %30, align 8
  %i.d = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #18
  %i.e = extractvalue { ptr, i64 } %i.d, 1
  %.not = icmp eq i64 %i.e, 1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  %i.f = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %28, i64 33
  store i8 1, ptr %i.g, align 1, !tbaa !86
  store ptr @.str.11, ptr %28, align 8, !tbaa !87
  store i8 3, ptr %i.f, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  store ptr %28, ptr %27, align 8, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14FromElementsOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.i) #18
  br i1 %i.j, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14FromElementsOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.k, align 8
  %i.l = ptrtoint ptr %27 to i64
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector14FromElementsOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.l) #18, !inline_history !201
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14FromElementsOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14FromElementsOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %bb.by

bb.d:                                             ; preds = %bb.a
  %i.p = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #18 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 4 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ashr i64 %i.r, 2                         ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d
  %i.w = and i64 %i.r, -4
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.q, i64 %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.af, %bb.i ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.ae, %bb.i ] ; 9 uses
  %i.x = load i8, ptr %.02946.i.i.i.i.i, align 1, !tbaa !233, !range !62, !noundef !63
  %.not.i = icmp eq i8 %i.x, 0
  br i1 %.not.i, label %bb.f, label %_ZNK4mlir10VectorType10isScalableEv.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !233, !range !62, !noundef !63
  %.not4.i = icmp eq i8 %i.z, 0
  br i1 %.not4.i, label %bb.g, label %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !233, !range !62, !noundef !63
  %.not5.i = icmp eq i8 %i.ab, 0
  br i1 %.not5.i, label %bb.h, label %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit138

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !233, !range !62, !noundef !63
  %.not6.i = icmp eq i8 %i.ad, 0
  br i1 %.not6.i, label %bb.i, label %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit140

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  %i.af = add nsw i64 %.047.i.i.i.i.i, -1
  %i.ag = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.e, label %._crit_edge.i.i.i.i.i, !llvm.loop !202

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i, %bb.d
  %.029.lcssa.i.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %scevgep.i.i.i.i.i, %bb.i ] ; 6 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i to i64
  %i.ah = sub i64 %i.t, %.pre-phi.i.i.i.i.i
  switch i64 %i.ah, label %_ZNK4mlir10VectorType10isScalableEv.exit.thread [
    i64 3, label %bb.j
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ai = load i8, ptr %.029.lcssa.i.i.i.i.i, align 1, !tbaa !233, !range !62, !noundef !63
  %.not7.i = icmp eq i8 %i.ai, 0
  br i1 %.not7.i, label %bb.k, label %_ZNK4mlir10VectorType10isScalableEv.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.k, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.aj, %bb.k ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ak = load i8, ptr %.1.i.i.i.i.i, align 1, !tbaa !233, !range !62, !noundef !63
  %.not8.i = icmp eq i8 %i.ak, 0
  br i1 %.not8.i, label %bb.l, label %_ZNK4mlir10VectorType10isScalableEv.exit

bb.l:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.al, %bb.l ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.am = load i8, ptr %.2.i.i.i.i.i, align 1, !tbaa !233, !range !62, !noundef !63
  %.not9.i = icmp eq i8 %i.am, 0
  br i1 %.not9.i, label %_ZNK4mlir10VectorType10isScalableEv.exit.thread, label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit: ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 1
  br label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit138: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 2
  br label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit140: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 3
  br label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit:         ; preds = %bb.e, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit138, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit140, %bb.j, %._crit_edge._crit_edge.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.j ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.ap, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit140 ], [ %i.ao, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit138 ], [ %i.an, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %bb.e ]
  %.not78 = icmp eq ptr %.028.i.i.i.i.i, %i.s
  br i1 %.not78, label %_ZNK4mlir10VectorType10isScalableEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4mlir10VectorType10isScalableEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  %i.aq = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %26, i64 33
  store i8 1, ptr %i.ar, align 1, !tbaa !86
  store ptr @.str.12, ptr %26, align 8, !tbaa !87
  store i8 3, ptr %i.aq, align 8, !tbaa !88
  %i.as = load ptr, ptr %29, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  store ptr %26, ptr %25, align 8, !tbaa !90
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !96 ; 4 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i16, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14FromElementsOpEEEN4llvm13LogicalResultEOT_PKc.exit19, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.au) #18
  br i1 %i.av, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i17, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14FromElementsOpEEEN4llvm13LogicalResultEOT_PKc.exit19

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i17: ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.0.0.copyload.i.i.i.i18 = load ptr, ptr %i.aw, align 8
  %i.ax = ptrtoint ptr %25 to i64
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr %.sroa.0.0.copyload.i.i.i.i18, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector14FromElementsOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ax) #18, !inline_history !201
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14FromElementsOpEEEN4llvm13LogicalResultEOT_PKc.exit19

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14FromElementsOpEEEN4llvm13LogicalResultEOT_PKc.exit19: ; preds = %bb.m, %bb.n, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  br label %bb.by

_ZNK4mlir10VectorType10isScalableEv.exit.thread:  ; preds = %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge.i.i.i.i.i, %_ZNK4mlir10VectorType10isScalableEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  %i.bb = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  store ptr %i.bb, ptr %31, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 8 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %31, i64 12 ; 2 uses
  store i32 6, ptr %i.bd, align 4, !tbaa !16
  %.sroa.02.0.copyload = load ptr, ptr %29, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store ptr %.sroa.02.0.copyload, ptr %21, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %22, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 5 uses
  store i32 0, ptr %i.bg, align 8, !tbaa !50
  %i.bh = getelementptr inbounds nuw i8, ptr %22, i64 36 ; 2 uses
  store i32 0, ptr %i.bh, align 4, !tbaa !16
  %i.bi = call i64 @_ZN4mlir6vector14FromElementsOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 0) #18 ; 3 uses
  %i.bj = load ptr, ptr %21, align 8, !tbaa !83   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 44
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = and i32 %i.bl, 8388608
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir6vector14FromElementsOp11getElementsEv.exit.i, label %bb.o, !prof !97

bb.o:                                             ; preds = %_ZNK4mlir10VectorType10isScalableEv.exit.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !100
  br label %_ZN4mlir6vector14FromElementsOp11getElementsEv.exit.i

_ZN4mlir6vector14FromElementsOp11getElementsEv.exit.i: ; preds = %bb.o, %_ZNK4mlir10VectorType10isScalableEv.exit.thread
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bo, %bb.o ], [ null, %_ZNK4mlir10VectorType10isScalableEv.exit.thread ]
  %i.bp = and i64 %i.bi, 4294967295               ; 3 uses
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %i.bi, 32
  %i.bq = add i64 %.sroa.5.0.extract.shift.i.i.i, %i.bi
  %i.br = and i64 %i.bq, 4294967295               ; 2 uses
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.bp ; 2 uses
  %i.bt = sub nsw i64 %i.br, %i.bp
  %.not20.i = icmp eq i64 %i.br, %i.bp
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4mlir6vector14FromElementsOp11getElementsEv.exit.i
  %.not22.i = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6vector12ToElementsOpEvE2idE
  br i1 %.not22.i, label %.lr.ph.split.us.i, label %.lr.ph.i.a

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %36 = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.0.0.copyload.i.i.i.us.i = load ptr, ptr %36, align 8, !tbaa !102
  store ptr %.sroa.0.0.copyload.i.i.i.us.i, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %37 = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #18 ; 0 uses
  br label %.thread.i

.lr.ph.i.a:                                       ; preds = %.lr.ph.i, %bb.u
  %.sroa.4.021.i = phi i64 [ %i.ck, %bb.u ], [ 0, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %.sroa.4.021.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.0.0.copyload.i.i.i.i20 = load ptr, ptr %i.bv, align 8, !tbaa !102
  store ptr %.sroa.0.0.copyload.i.i.i.i20, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.bw = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #18 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i21, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !80
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !82
  %i.ca = icmp eq ptr %i.bz, @_ZN4mlir6detail14TypeIDResolverINS_6vector12ToElementsOpEvE2idE
  br i1 %i.ca, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  store ptr %i.bw, ptr %24, align 8
  %i.cb = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6vector12ToElementsOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 8 dereferenceable(8) %24), !noalias !234
  %.fca.1.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.cb, 1
  %i.cc = trunc nuw i8 %.fca.1.extract.i.i.i.i.i to i1
  br i1 %i.cc, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i = load ptr, ptr %24, align 8 ; 2 uses
  %i.cd = load i32, ptr %i.bg, align 8, !tbaa !50 ; 2 uses
  %i.ce = load i32, ptr %i.bh, align 4, !tbaa !16
  %.not.i.i.i = icmp ult i32 %i.cd, %i.ce
  br i1 %.not.i.i.i, label %bb.t, label %bb.s, !prof !103

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir6vector12ToElementsOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr %.sroa.0.0.copyload.i.i)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cf = zext i32 %i.cd to i64
  %i.cg = load ptr, ptr %i.be, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ch, align 1
  %i.ci = load i32, ptr %i.bg, align 8, !tbaa !50
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.bg, align 8, !tbaa !50
  br label %bb.u

.thread.i:                                        ; preds = %bb.p, %.lr.ph.i.a, %.lr.ph.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.w

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  %i.ck = add nuw nsw i64 %.sroa.4.021.i, 1       ; 2 uses
  %.not.i22 = icmp eq i64 %i.ck, %i.bt
  br i1 %.not.i22, label %._crit_edge.i, label %.lr.ph.i.a

._crit_edge.i:                                    ; preds = %bb.u, %_ZN4mlir6vector14FromElementsOp11getElementsEv.exit.i
  %i.cl = load ptr, ptr %i.be, align 8, !tbaa !15
  %i.cm = load i32, ptr %i.bg, align 8, !tbaa !50 ; 4 uses
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !50
  %.idx.i = shl nuw nsw i64 %i.cn, 3
  %i.co = load i32, ptr %i.bd, align 4, !tbaa !16
  %i.cp = icmp ugt i32 %i.cm, %i.co
  br i1 %i.cp, label %_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE7reserveEm.exit.i.i.thread.i: ; preds = %._crit_edge.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull %i.bb, i64 noundef %i.cn, i64 noundef 8) #18
  %.pre8.pre.i.i.i = load i32, ptr %i.bc, align 8, !tbaa !50
  %i.cq = zext i32 %.pre8.pre.i.i.i to i64
  br label %bb.v

_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE7reserveEm.exit.i.i.i: ; preds = %._crit_edge.i
  %.not.i.i.i9.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i9.i, label %_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE6assignIPKS3_vEEvT_S8_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE7reserveEm.exit.i.i.thread.i
  %.pre8.i.i28.i = phi i64 [ %i.cq, %_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE7reserveEm.exit.i.i.i ]
  %i.cr = load ptr, ptr %31, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.pre8.i.i28.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 8 %i.cl, i64 %.idx.i, i1 false)
  %.pre.i.i.i = load i32, ptr %i.bc, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE6assignIPKS3_vEEvT_S8_.exit.i

_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE6assignIPKS3_vEEvT_S8_.exit.i: ; preds = %bb.v, %_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE7reserveEm.exit.i.i.i
  %i.ct = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.v ]
  %i.cu = add i32 %i.ct, %i.cm
  store i32 %i.cu, ptr %i.bc, align 8, !tbaa !50
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE6assignIPKS3_vEEvT_S8_.exit.i, %.thread.i
  %i.cv = phi i1 [ false, %_ZN4llvm15SmallVectorImplIN4mlir6vector12ToElementsOpEE6assignIPKS3_vEEvT_S8_.exit.i ], [ true, %.thread.i ]
  %i.cw = load ptr, ptr %i.be, align 8, !tbaa !15 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.bf
  br i1 %i.cx, label %_ZN4llvm11SmallVectorIN4mlir6vector12ToElementsOpELj0EED2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef %i.cw) #18
  br label %_ZN4llvm11SmallVectorIN4mlir6vector12ToElementsOpELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir6vector12ToElementsOpELj0EED2Ev.exit.i.i: ; preds = %bb.x, %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 20
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !106 ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_ZN12_GLOBAL__N_124getToElementsDefiningOpsEN4mlir6vector14FromElementsOpERN4llvm15SmallVectorImplINS1_12ToElementsOpEEE.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir6vector12ToElementsOpELj0EED2Ev.exit.i.i
  %i.db = load ptr, ptr %22, align 8, !tbaa !107
  %i.dc = zext i32 %i.cz to i64                   ; 2 uses
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = add nuw nsw i64 %i.dc, 31
  %i.df = lshr i64 %i.de, 3
  %i.dg = and i64 %i.df, 1073741820
  %i.dh = add nuw nsw i64 %i.dg, %i.dd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.db, i64 noundef %i.dh, i64 noundef 8) #18
  br label %_ZN12_GLOBAL__N_124getToElementsDefiningOpsEN4mlir6vector14FromElementsOpERN4llvm15SmallVectorImplINS1_12ToElementsOpEEE.exit

_ZN12_GLOBAL__N_124getToElementsDefiningOpsEN4mlir6vector14FromElementsOpERN4llvm15SmallVectorImplINS1_12ToElementsOpEEE.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir6vector12ToElementsOpELj0EED2Ev.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br i1 %i.cv, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZN12_GLOBAL__N_124getToElementsDefiningOpsEN4mlir6vector14FromElementsOpERN4llvm15SmallVectorImplINS1_12ToElementsOpEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.di = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 1, ptr %i.dj, align 1, !tbaa !86
  store ptr @.str.13, ptr %20, align 8, !tbaa !87
  store i8 3, ptr %i.di, align 8, !tbaa !88
  %i.dk = load ptr, ptr %29, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store ptr %20, ptr %19, align 8, !tbaa !90
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !96 ; 4 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i23, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14FromElementsOpEEEN4llvm13LogicalResultEOT_PKc.exit26, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.dm) #18
  br i1 %i.dn, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i24, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14FromElementsOpEEEN4llvm13LogicalResultEOT_PKc.exit26

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i24: ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %.sroa.0.0.copyload.i.i.i.i25 = load ptr, ptr %i.do, align 8
  %i.dp = ptrtoint ptr %19 to i64
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(12) %i.dm, ptr %.sroa.0.0.copyload.i.i.i.i25, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector14FromElementsOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.dp) #18, !inline_history !201
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14FromElementsOpEEEN4llvm13LogicalResultEOT_PKc.exit26

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14FromElementsOpEEEN4llvm13LogicalResultEOT_PKc.exit26: ; preds = %bb.z, %bb.aa, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.bw

bb.ab:                                            ; preds = %_ZN12_GLOBAL__N_124getToElementsDefiningOpsEN4mlir6vector14FromElementsOpERN4llvm15SmallVectorImplINS1_12ToElementsOpEEE.exit
  %.val = load ptr, ptr %31, align 8, !tbaa !15   ; 3 uses
  %.val13 = load i32, ptr %i.bc, align 8, !tbaa !50
  %i.dt = zext i32 %.val13 to i64                 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.dt ; 2 uses
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = lshr i64 %i.dt, 2                       ; 2 uses
  %.not.i27 = icmp eq i64 %i.dw, 0
  br i1 %.not.i27, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ab, %bb.af
  %.063.i.i.i.i.i.i = phi i64 [ %i.fd, %bb.af ], [ %i.dw, %bb.ab ] ; 2 uses
  %.02962.i.i.i.i.i.i = phi ptr [ %i.fc, %bb.af ], [ %.val, %bb.ab ] ; 9 uses
  %.029.val32.i.i.i.i.i.i = load ptr, ptr %.02962.i.i.i.i.i.i, align 8
  %i.dx = getelementptr i8, ptr %.029.val32.i.i.i.i.i.i, i64 72
  %.029.val32.val33.i.i.i.i.i.i = load ptr, ptr %i.dx, align 8, !tbaa !100
  %i.dy = getelementptr i8, ptr %.029.val32.val33.i.i.i.i.i.i, i64 24
  %.029.val32.val33.val.i.i.i.i.i.i = load ptr, ptr %i.dy, align 8, !tbaa !102
  %i.dz = getelementptr i8, ptr %.029.val32.val33.val.i.i.i.i.i.i, i64 8
  %.029.val32.val33.val.val.i.i.i.i.i.i = load i64, ptr %i.dz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.ea = and i64 %.029.val32.val33.val.val.i.i.i.i.i.i, -8
  %i.eb = inttoptr i64 %i.ea to ptr
  store ptr %i.eb, ptr %18, align 8
  %i.ec = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #18
  %i.ed = extractvalue { ptr, i64 } %i.ec, 1
  %.not48.i.i.i.i.i.i = icmp eq i64 %i.ed, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br i1 %.not48.i.i.i.i.i.i, label %bb.ac, label %_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir6vector12ToElementsOpELj6EEEZNK12_GLOBAL__N_134ToFromElementsToShuffleTreeRewrite15matchAndRewriteENS3_14FromElementsOpERNS2_15PatternRewriterEEUlS4_E_EEbOT_T0_.exit

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i.i = load ptr, ptr %i.ee, align 8
  %i.ef = getelementptr i8, ptr %.val31.i.i.i.i.i.i, i64 72
  %.val31.val34.i.i.i.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !100
  %i.eg = getelementptr i8, ptr %.val31.val34.i.i.i.i.i.i, i64 24
  %.val31.val34.val.i.i.i.i.i.i = load ptr, ptr %i.eg, align 8, !tbaa !102
  %i.eh = getelementptr i8, ptr %.val31.val34.val.i.i.i.i.i.i, i64 8
  %.val31.val34.val.val.i.i.i.i.i.i = load i64, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.ei = and i64 %.val31.val34.val.val.i.i.i.i.i.i, -8
  %i.ej = inttoptr i64 %i.ei to ptr
  store ptr %i.ej, ptr %17, align 8
  %i.ek = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #18
  %i.el = extractvalue { ptr, i64 } %i.ek, 1
  %.not49.i.i.i.i.i.i = icmp eq i64 %i.el, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br i1 %.not49.i.i.i.i.i.i, label %bb.ad, label %_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir6vector12ToElementsOpELj6EEEZNK12_GLOBAL__N_134ToFromElementsToShuffleTreeRewrite15matchAndRewriteENS3_14FromElementsOpERNS2_15PatternRewriterEEUlS4_E_EEbOT_T0_.exit.loopexit.split.loop.exit

bb.ad:                                            ; preds = %bb.ac
  %i.em = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i.i = load ptr, ptr %i.em, align 8
  %i.en = getelementptr i8, ptr %.val30.i.i.i.i.i.i, i64 72
  %.val30.val35.i.i.i.i.i.i = load ptr, ptr %i.en, align 8, !tbaa !100
  %i.eo = getelementptr i8, ptr %.val30.val35.i.i.i.i.i.i, i64 24
  %.val30.val35.val.i.i.i.i.i.i = load ptr, ptr %i.eo, align 8, !tbaa !102
  %i.ep = getelementptr i8, ptr %.val30.val35.val.i.i.i.i.i.i, i64 8
  %.val30.val35.val.val.i.i.i.i.i.i = load i64, ptr %i.ep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.eq = and i64 %.val30.val35.val.val.i.i.i.i.i.i, -8
  %i.er = inttoptr i64 %i.eq to ptr
  store ptr %i.er, ptr %16, align 8
  %i.es = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #18
  %i.et = extractvalue { ptr, i64 } %i.es, 1
  %.not50.i.i.i.i.i.i = icmp eq i64 %i.et, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br i1 %.not50.i.i.i.i.i.i, label %bb.ae, label %_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir6vector12ToElementsOpELj6EEEZNK12_GLOBAL__N_134ToFromElementsToShuffleTreeRewrite15matchAndRewriteENS3_14FromElementsOpERNS2_15PatternRewriterEEUlS4_E_EEbOT_T0_.exit.loopexit.split.loop.exit146

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i.i = load ptr, ptr %i.eu, align 8
  %i.ev = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 72
  %.val.val36.i.i.i.i.i.i = load ptr, ptr %i.ev, align 8, !tbaa !100
  %i.ew = getelementptr i8, ptr %.val.val36.i.i.i.i.i.i, i64 24
  %.val.val36.val.i.i.i.i.i.i = load ptr, ptr %i.ew, align 8, !tbaa !102
  %i.ex = getelementptr i8, ptr %.val.val36.val.i.i.i.i.i.i, i64 8
  %.val.val36.val.val.i.i.i.i.i.i = load i64, ptr %i.ex, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.ey = and i64 %.val.val36.val.val.i.i.i.i.i.i, -8
  %i.ez = inttoptr i64 %i.ey to ptr
  store ptr %i.ez, ptr %15, align 8
  %i.fa = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #18
  %i.fb = extractvalue { ptr, i64 } %i.fa, 1
  %.not51.i.i.i.i.i.i = icmp eq i64 %i.fb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br i1 %.not51.i.i.i.i.i.i, label %bb.af, label %_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir6vector12ToElementsOpELj6EEEZNK12_GLOBAL__N_134ToFromElementsToShuffleTreeRewrite15matchAndRewriteENS3_14FromElementsOpERNS2_15PatternRewriterEEUlS4_E_EEbOT_T0_.exit.loopexit.split.loop.exit148

bb.af:                                            ; preds = %bb.ae
  %i.fc = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i.i, i64 32 ; 3 uses
end_hunk_0
