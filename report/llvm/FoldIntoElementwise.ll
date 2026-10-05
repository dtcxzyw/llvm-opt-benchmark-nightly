Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FoldIntoElementwise?download=true
inline.NumInlined: 1099
inline.NumDeleted: 803
begin_hunk_0_@_ZN4mlir16PDLPatternModuleD2Ev:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.bg, %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i ], [ %i.bf, %.lr.ph.i.preheader.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !171 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4mlir16PDLPatternConfigEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir16PDLPatternConfigEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #16, !inline_history !156
  br label %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir16PDLPatternConfigEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.bg
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !157

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !12
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i, %bb.k
  %i.bl = phi ptr [ %.pre.i.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i ], [ %i.bb, %bb.k ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt14default_deleteIN4mlir19PDLPatternConfigSetEEclEPS1_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.bl) #16
  br label %_ZNKSt14default_deleteIN4mlir19PDLPatternConfigSetEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir19PDLPatternConfigSetEEclEPS1_.exit.i.i.i: ; preds = %bb.l, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 64) #18
  br label %_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir19PDLPatternConfigSetEEclEPS1_.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.au, %i.az
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !158

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i
  %.pre.i14 = load ptr, ptr %i.at, align 8, !tbaa !12
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit
  %i.bo = phi ptr [ %.pre.i14, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %i.au, %_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i
  tail call void @free(ptr noundef %i.bo) #16
  br label %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit

_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, %bb.m
  %i.br = load ptr, ptr %0, align 8, !tbaa !65    ; 2 uses
  %.not.i15 = icmp eq ptr %i.br, null
  br i1 %.not.i15, label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit
  tail call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %i.br) #16
  br label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit

_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit:    ; preds = %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit, %bb.n
  ret void
}

declare void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2), i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #16
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126FoldIntoElementwisePatternIJN4mlir6linalg11TransposeOpENS2_11BroadcastOpEEED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #16
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6linalg13ElementwiseOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #16
  ret i8 %i.d
}

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_126FoldIntoElementwisePatternIJN4mlir6linalg11TransposeOpENS2_11BroadcastOpEEE15matchAndRewriteENS2_13ElementwiseOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %4 = alloca %"class.llvm::ArrayRef.372", align 8 ; 4 uses
  %5 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %6 = alloca %"class.mlir::AffineMapAttr", align 8 ; 4 uses
  %7 = alloca %"class.mlir::ArrayAttr", align 8   ; 5 uses
  %8 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %9 = alloca %"class.mlir::OperandRange", align 8 ; 5 uses
  %10 = alloca %"class.mlir::AffineMap", align 8  ; 6 uses
  %11 = alloca %"class.mlir::linalg::BroadcastOp", align 8 ; 5 uses
  %12 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %13 = alloca %"class.mlir::AffineMap", align 8  ; 4 uses
  %14 = alloca %"class.mlir::AffineMapAttr", align 8 ; 4 uses
  %15 = alloca %"class.mlir::ArrayAttr", align 8  ; 5 uses
  %16 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %17 = alloca %"class.mlir::OperandRange", align 8 ; 5 uses
  %18 = alloca %"class.mlir::AffineMap", align 8  ; 6 uses
  %19 = alloca %"class.mlir::linalg::TransposeOp", align 8 ; 5 uses
  %20 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %21 = alloca %"class.mlir::AffineMap", align 8  ; 4 uses
  %22 = alloca %"class.mlir::AffineMapAttr", align 8 ; 4 uses
  %23 = alloca %"class.mlir::ArrayAttr", align 8  ; 5 uses
  %24 = alloca %"class.mlir::linalg::ElementwiseOp", align 8 ; 7 uses
  %25 = alloca %"class.llvm::SmallVector.216", align 8 ; 14 uses
  %26 = alloca %"class.llvm::SmallVector.221", align 8 ; 16 uses
  %27 = alloca %"class.llvm::SmallVector.226", align 8 ; 7 uses
  %28 = alloca %"class.llvm::SmallVector.221", align 8 ; 7 uses
  %29 = alloca %"class.mlir::Value", align 8      ; 4 uses
  store ptr %1, ptr %24, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  %i.a = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %i.a, ptr %25, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 11 uses
  store i32 0, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %25, i64 12 ; 4 uses
  store i32 6, ptr %i.c, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  %i.d = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  store ptr %i.d, ptr %26, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 14 uses
  store i32 0, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 5 uses
  store i32 6, ptr %i.f, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  call void @_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg13ElementwiseOpEE19getDpsInputOperandsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.226") align 8 %27, ptr noundef nonnull align 1 dereferenceable(1) %24)
  %i.g = load ptr, ptr %27, align 8, !tbaa !12    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx = shl nuw nsw i64 %i.j, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not48 = icmp eq i32 %i.i, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load ptr, ptr %27, align 8, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.r = phi ptr [ %i.g, %bb.a ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1, %._crit_edge.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4llvm11SmallVectorIPN4mlir9OpOperandELj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.r) #16
  br label %_ZN4llvm11SmallVectorIPN4mlir9OpOperandELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPN4mlir9OpOperandELj6EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  br i1 %.0.lcssa, label %bb.ab, label %bb.ag

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.050 = phi i1 [ false, %.lr.ph ], [ %.1, %.critedge ] ; 2 uses
  %.02049 = phi ptr [ %i.g, %.lr.ph ], [ %i.eg, %.critedge ] ; 2 uses
  %i.u = load ptr, ptr %.02049, align 8, !tbaa !189 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  %i.v = call ptr @_ZN4mlir6linalg13ElementwiseOp15getIndexingMapsEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #16
  store ptr %i.v, ptr %23, align 8
  %i.w = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #16, !noalias !190
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #16, !noalias !190 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  %i.z = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %i.u) #16
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %22, align 8
  %i.ac = call ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #16 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.ad = getelementptr i8, ptr %i.u, i64 24      ; 3 uses
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store ptr %i.ac, ptr %18, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  store ptr %.val, ptr %20, align 8
  %i.ae = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #16 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_6linalg11TransposeOpEEET_v.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.ai = icmp eq ptr %i.ah, @_ZN4mlir6detail14TypeIDResolverINS_6linalg11TransposeOpEvE2idE
  br i1 %i.ai, label %bb.e, label %_ZNK4mlir5Value13getDefiningOpINS_6linalg11TransposeOpEEET_v.exit.thread.i

_ZNK4mlir5Value13getDefiningOpINS_6linalg11TransposeOpEEET_v.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %bb.m

bb.e:                                             ; preds = %bb.d
  store ptr %i.ae, ptr %19, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  %i.aj = call noundef zeroext i1 @_ZNK4mlir9AffineMap22isProjectedPermutationEb(ptr noundef nonnull align 8 dereferenceable(8) %18, i1 noundef zeroext false) #16
  br i1 %i.aj, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !192 ; 2 uses
  %i.an = load i32, ptr %i.b, align 8, !tbaa !46  ; 2 uses
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !13
  %.not.i.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !70

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(64) %25, ptr %.sroa.0.0.copyload.i.i.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ap = zext i32 %i.an to i64
  %i.aq = load ptr, ptr %25, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.ar, align 1
  %i.as = load i32, ptr %i.b, align 8, !tbaa !46
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.b, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !69, !noalias !193
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  call void @_ZN4mlir19MutableOperandRangeC1ERNS_9OpOperandE(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.av) #16
  %i.aw = call { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56) %16) #16 ; 2 uses
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !12  ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.m
  br i1 %i.ay, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11TransposeOpEE11getDpsInitsEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i
  call void @free(ptr noundef %i.ax) #16
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11TransposeOpEE11getDpsInitsEv.exit.i.i

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11TransposeOpEE11getDpsInitsEv.exit.i.i: ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  %i.az = extractvalue { ptr, i64 } %i.aw, 0
  store ptr %i.az, ptr %17, align 8
  %i.ba = extractvalue { ptr, i64 } %i.aw, 1      ; 2 uses
  store i64 %i.ba, ptr %i.n, align 8
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11TransposeOpEE18getDpsInputOperandEl.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11TransposeOpEE11getDpsInitsEv.exit.i.i
  %i.bc = call noundef i32 @_ZNK4mlir12OperandRange20getBeginOperandIndexEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #16
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !72
  %.not.i = icmp eq i32 %i.bc, 0
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = select i1 %.not.i, i64 %i.be, i64 0
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11TransposeOpEE18getDpsInputOperandEl.exit.i

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11TransposeOpEE18getDpsInputOperandEl.exit.i: ; preds = %bb.j, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11TransposeOpEE11getDpsInitsEv.exit.i.i
  %.sink12.i.i = phi i64 [ %i.bf, %bb.j ], [ 0, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11TransposeOpEE11getDpsInitsEv.exit.i.i ]
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !69
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %.sink12.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  %i.bi = call ptr @_ZN4mlir6linalg11TransposeOp15getIndexingMapsEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #16
  store ptr %i.bi, ptr %15, align 8
  %i.bj = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #16, !noalias !194
  %i.bk = extractvalue { ptr, i64 } %i.bj, 0
  %i.bl = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #16, !noalias !194 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.bm = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bh) #16
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bn
  %.sroa.0.0.copyload.i.i.i.i7.i = load ptr, ptr %i.bo, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.sroa.0.0.copyload.i.i.i.i7.i, ptr %14, align 8
  %i.bp = call ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  store ptr %i.bp, ptr %21, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %18, align 8, !tbaa !74
  %i.bq = call ptr @_ZNK4mlir9AffineMap7composeES0_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr %.sroa.0.0.copyload.i) #16 ; 2 uses
  %i.br = load i32, ptr %i.e, align 8, !tbaa !46  ; 2 uses
  %i.bs = load i32, ptr %i.f, align 4, !tbaa !13
  %.not.i8.i = icmp ult i32 %i.br, %i.bs
  br i1 %.not.i8.i, label %bb.l, label %bb.k, !prof !70

bb.k:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11TransposeOpEE18getDpsInputOperandEl.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(64) %26, ptr %i.bq)
  br label %_ZN12_GLOBAL__N_119ElementwiseOpFolderIN4mlir6linalg11TransposeOpEE4foldEPNS1_9OpOperandENS1_9AffineMapERN4llvm11SmallVectorINS1_5ValueELj6EEERNS9_IS7_Lj6EEE.exit

bb.l:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11TransposeOpEE18getDpsInputOperandEl.exit.i
  %i.bt = zext i32 %i.br to i64
  %i.bu = load ptr, ptr %26, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  store ptr %i.bq, ptr %i.bv, align 1
  %i.bw = load i32, ptr %i.e, align 8, !tbaa !46
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.e, align 8, !tbaa !46
  br label %_ZN12_GLOBAL__N_119ElementwiseOpFolderIN4mlir6linalg11TransposeOpEE4foldEPNS1_9OpOperandENS1_9AffineMapERN4llvm11SmallVectorINS1_5ValueELj6EEERNS9_IS7_Lj6EEE.exit

_ZN12_GLOBAL__N_119ElementwiseOpFolderIN4mlir6linalg11TransposeOpEE4foldEPNS1_9OpOperandENS1_9AffineMapERN4llvm11SmallVectorINS1_5ValueELj6EEERNS9_IS7_Lj6EEE.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %.critedge

bb.m:                                             ; preds = %bb.e, %_ZNK4mlir5Value13getDefiningOpINS_6linalg11TransposeOpEEET_v.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %.val21 = load ptr, ptr %i.ad, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.ac, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store ptr %.val21, ptr %12, align 8
  %i.by = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #16 ; 4 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i22, label %_ZNK4mlir5Value13getDefiningOpINS_6linalg11BroadcastOpEEET_v.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i23 = load ptr, ptr %i.bz, align 8, !tbaa !60
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i23, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !62
  %i.cc = icmp eq ptr %i.cb, @_ZN4mlir6detail14TypeIDResolverINS_6linalg11BroadcastOpEvE2idE
  br i1 %i.cc, label %bb.o, label %_ZNK4mlir5Value13getDefiningOpINS_6linalg11BroadcastOpEEET_v.exit.thread.i

_ZNK4mlir5Value13getDefiningOpINS_6linalg11BroadcastOpEEET_v.exit.thread.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.w

bb.o:                                             ; preds = %bb.n
  store ptr %i.by, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.cd = call noundef zeroext i1 @_ZNK4mlir9AffineMap22isProjectedPermutationEb(ptr noundef nonnull align 8 dereferenceable(8) %10, i1 noundef zeroext false) #16
  br i1 %i.cd, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 72 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !69
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i26 = load ptr, ptr %i.cg, align 8, !tbaa !192 ; 2 uses
  %i.ch = load i32, ptr %i.b, align 8, !tbaa !46  ; 2 uses
  %i.ci = load i32, ptr %i.c, align 4, !tbaa !13
  %.not.i.i27 = icmp ult i32 %i.ch, %i.ci
  br i1 %.not.i.i27, label %bb.r, label %bb.q, !prof !70

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(64) %25, ptr %.sroa.0.0.copyload.i.i.i.i.i26)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i28

bb.r:                                             ; preds = %bb.p
  %i.cj = zext i32 %i.ch to i64
  %i.ck = load ptr, ptr %25, align 8, !tbaa !12
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  store ptr %.sroa.0.0.copyload.i.i.i.i.i26, ptr %i.cl, align 1
  %i.cm = load i32, ptr %i.b, align 8, !tbaa !46
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.b, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i28

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i28: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.co = load ptr, ptr %i.ce, align 8, !tbaa !69, !noalias !195
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  call void @_ZN4mlir19MutableOperandRangeC1ERNS_9OpOperandE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.cp) #16
  %i.cq = call { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56) %8) #16 ; 2 uses
  %i.cr = load ptr, ptr %i.o, align 8, !tbaa !12  ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.p
  br i1 %i.cs, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11BroadcastOpEE11getDpsInitsEv.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i28
  call void @free(ptr noundef %i.cr) #16
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11BroadcastOpEE11getDpsInitsEv.exit.i.i

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11BroadcastOpEE11getDpsInitsEv.exit.i.i: ; preds = %bb.s, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.ct = extractvalue { ptr, i64 } %i.cq, 0
  store ptr %i.ct, ptr %9, align 8
  %i.cu = extractvalue { ptr, i64 } %i.cq, 1      ; 2 uses
  store i64 %i.cu, ptr %i.q, align 8
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11BroadcastOpEE18getDpsInputOperandEl.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11BroadcastOpEE11getDpsInitsEv.exit.i.i
  %i.cw = call noundef i32 @_ZNK4mlir12OperandRange20getBeginOperandIndexEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #16
  %i.cx = load i64, ptr %i.q, align 8, !tbaa !72
  %.not.i29 = icmp eq i32 %i.cw, 0
  %i.cy = and i64 %i.cx, 4294967295
  %i.cz = select i1 %.not.i29, i64 %i.cy, i64 0
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11BroadcastOpEE18getDpsInputOperandEl.exit.i

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11BroadcastOpEE18getDpsInputOperandEl.exit.i: ; preds = %bb.t, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11BroadcastOpEE11getDpsInitsEv.exit.i.i
  %.sink12.i.i30 = phi i64 [ %i.cz, %bb.t ], [ 0, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11BroadcastOpEE11getDpsInitsEv.exit.i.i ]
  %i.da = load ptr, ptr %i.ce, align 8, !tbaa !69
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %.sink12.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.dc = call ptr @_ZN4mlir6linalg11BroadcastOp15getIndexingMapsEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #16
  store ptr %i.dc, ptr %7, align 8
  %i.dd = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #16, !noalias !196
  %i.de = extractvalue { ptr, i64 } %i.dd, 0
  %i.df = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #16, !noalias !196 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.dg = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %i.db) #16
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  %.sroa.0.0.copyload.i.i.i.i7.i31 = load ptr, ptr %i.di, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.0.0.copyload.i.i.i.i7.i31, ptr %6, align 8
  %i.dj = call ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr %i.dj, ptr %13, align 8
  %.sroa.0.0.copyload.i32 = load ptr, ptr %10, align 8, !tbaa !74
  %i.dk = call ptr @_ZNK4mlir9AffineMap7composeES0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr %.sroa.0.0.copyload.i32) #16 ; 2 uses
  %i.dl = load i32, ptr %i.e, align 8, !tbaa !46  ; 2 uses
  %i.dm = load i32, ptr %i.f, align 4, !tbaa !13
  %.not.i8.i33 = icmp ult i32 %i.dl, %i.dm
  br i1 %.not.i8.i33, label %bb.v, label %bb.u, !prof !70

bb.u:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11BroadcastOpEE18getDpsInputOperandEl.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(64) %26, ptr %i.dk)
  br label %_ZN12_GLOBAL__N_119ElementwiseOpFolderIN4mlir6linalg11BroadcastOpEE4foldEPNS1_9OpOperandENS1_9AffineMapERN4llvm11SmallVectorINS1_5ValueELj6EEERNS9_IS7_Lj6EEE.exit

bb.v:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg11BroadcastOpEE18getDpsInputOperandEl.exit.i
  %i.dn = zext i32 %i.dl to i64
  %i.do = load ptr, ptr %26, align 8, !tbaa !12
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dn
  store ptr %i.dk, ptr %i.dp, align 1
  %i.dq = load i32, ptr %i.e, align 8, !tbaa !46
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.e, align 8, !tbaa !46
  br label %_ZN12_GLOBAL__N_119ElementwiseOpFolderIN4mlir6linalg11BroadcastOpEE4foldEPNS1_9OpOperandENS1_9AffineMapERN4llvm11SmallVectorINS1_5ValueELj6EEERNS9_IS7_Lj6EEE.exit

_ZN12_GLOBAL__N_119ElementwiseOpFolderIN4mlir6linalg11BroadcastOpEE4foldEPNS1_9OpOperandENS1_9AffineMapERN4llvm11SmallVectorINS1_5ValueELj6EEERNS9_IS7_Lj6EEE.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %.critedge

bb.w:                                             ; preds = %bb.o, %_ZNK4mlir5Value13getDefiningOpINS_6linalg11BroadcastOpEEET_v.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.sroa.0.0.copyload.i35 = load ptr, ptr %i.ad, align 8, !tbaa !192 ; 2 uses
  %i.ds = load i32, ptr %i.b, align 8, !tbaa !46  ; 2 uses
  %i.dt = load i32, ptr %i.c, align 4, !tbaa !13
  %.not.i36 = icmp ult i32 %i.ds, %i.dt
  br i1 %.not.i36, label %bb.y, label %bb.x, !prof !70

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr %.sroa.0.0.copyload.i35)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.y:                                             ; preds = %bb.w
  %i.du = zext i32 %i.ds to i64
  %i.dv = load ptr, ptr %25, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  store ptr %.sroa.0.0.copyload.i35, ptr %i.dw, align 1
  %i.dx = load i32, ptr %i.b, align 8, !tbaa !46
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.b, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.x, %bb.y
  %i.dz = load i32, ptr %i.e, align 8, !tbaa !46  ; 2 uses
  %i.ea = load i32, ptr %i.f, align 4, !tbaa !13
  %.not.i37 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i37, label %bb.aa, label %bb.z, !prof !70

bb.z:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr %i.ac)
  br label %.critedge

bb.aa:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %26, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store ptr %i.ac, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.e, align 8, !tbaa !46
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.e, align 8, !tbaa !46
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.z, %_ZN12_GLOBAL__N_119ElementwiseOpFolderIN4mlir6linalg11BroadcastOpEE4foldEPNS1_9OpOperandENS1_9AffineMapERN4llvm11SmallVectorINS1_5ValueELj6EEERNS9_IS7_Lj6EEE.exit, %_ZN12_GLOBAL__N_119ElementwiseOpFolderIN4mlir6linalg11TransposeOpEE4foldEPNS1_9OpOperandENS1_9AffineMapERN4llvm11SmallVectorINS1_5ValueELj6EEERNS9_IS7_Lj6EEE.exit
  %.1 = phi i1 [ true, %_ZN12_GLOBAL__N_119ElementwiseOpFolderIN4mlir6linalg11TransposeOpEE4foldEPNS1_9OpOperandENS1_9AffineMapERN4llvm11SmallVectorINS1_5ValueELj6EEERNS9_IS7_Lj6EEE.exit ], [ true, %_ZN12_GLOBAL__N_119ElementwiseOpFolderIN4mlir6linalg11BroadcastOpEE4foldEPNS1_9OpOperandENS1_9AffineMapERN4llvm11SmallVectorINS1_5ValueELj6EEERNS9_IS7_Lj6EEE.exit ], [ %.050, %bb.z ], [ %.050, %bb.aa ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02049, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.eg, %i.k
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c

bb.ab:                                            ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OpOperandELj6EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #16
  call void @_ZN4mlir6detail27IndexingMapOpInterfaceTraitINS_6linalg13ElementwiseOpEE20getIndexingMapsArrayEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.221") align 8 %28, ptr noundef nonnull align 1 dereferenceable(1) %24)
  %i.eh = load ptr, ptr %28, align 8, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !46
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ek
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -8
  %.sroa.01.0.copyload = load ptr, ptr %i.em, align 8, !tbaa !74 ; 2 uses
  %i.en = load i32, ptr %i.e, align 8, !tbaa !46  ; 2 uses
  %i.eo = load i32, ptr %i.f, align 4, !tbaa !13
  %.not.i38 = icmp ult i32 %i.en, %i.eo
  br i1 %.not.i38, label %bb.ad, label %bb.ac, !prof !70

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr %.sroa.01.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit39

bb.ad:                                            ; preds = %bb.ab
  %i.ep = zext i32 %i.en to i64
  %i.eq = load ptr, ptr %26, align 8, !tbaa !12
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ep
  store ptr %.sroa.01.0.copyload, ptr %i.er, align 1
  %i.es = load i32, ptr %i.e, align 8, !tbaa !46
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.e, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit39

_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit39: ; preds = %bb.ac, %bb.ad
  %i.eu = load ptr, ptr %28, align 8, !tbaa !12   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit, label %bb.ae

end_hunk_0
