Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FoldTensorSubsetOps?download=true
inline.NumInlined: 2219
inline.NumDeleted: 1391
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_134TransferReadOfExtractSliceOpFolderD0Ev:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector14TransferReadOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6vector24MaskableOpRewritePatternINS0_14TransferReadOpEE15matchAndRewriteES2_RNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.mlir::vector::MaskableOpInterface", align 8 ; 6 uses
  %4 = alloca %"class.llvm::FailureOr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_6vector19MaskableOpInterfaceENS1_6detail34MaskableOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %1)
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN4llvm8dyn_castIN4mlir6vector19MaskableOpInterfaceENS1_9OperationEEEDcPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm20ValueFromPointerCastIN4mlir6vector19MaskableOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_6vector19MaskableOpInterfaceENS1_6detail34MaskableOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1)
  br label %_ZN4llvm20ValueFromPointerCastIN4mlir6vector19MaskableOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir6vector19MaskableOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.c = phi ptr [ %i.b, %bb.c ], [ null, %bb.b ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %1, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %i.c, 1
  br label %_ZN4llvm8dyn_castIN4mlir6vector19MaskableOpInterfaceENS1_9OperationEEEDcPT0_.exit

_ZN4llvm8dyn_castIN4mlir6vector19MaskableOpInterfaceENS1_9OperationEEEDcPT0_.exit: ; preds = %bb.a, %_ZN4llvm20ValueFromPointerCastIN4mlir6vector19MaskableOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4llvm20ValueFromPointerCastIN4mlir6vector19MaskableOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.d = extractvalue { ptr, ptr } %.pn.i.i, 0    ; 2 uses
  store ptr %i.d, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = extractvalue { ptr, ptr } %.pn.i.i, 1
  store ptr %i.f, ptr %i.e, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir6vector19MaskableOpInterfaceENS1_9OperationEEEDcPT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !105
  %i.j = call noundef zeroext i1 @_ZN4mlir6vector19MaskableOpInterface8isMaskedEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = call { ptr, ptr } @_ZN4mlir6vector19MaskableOpInterface12getMaskingOpEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #17 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.q = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.m) #17
  store ptr %i.p, ptr %i.g, align 8, !tbaa !105
  store ptr %i.q, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.014.0 = phi ptr [ %i.m, %bb.e ], [ null, %bb.d ]
  %.sroa.7.0 = phi ptr [ %i.n, %bb.e ], [ null, %bb.d ]
  %.0 = phi ptr [ %i.m, %bb.e ], [ %1, %bb.d ]    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.r = load ptr, ptr %0, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call { ptr, i8 } %i.t(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr %.sroa.014.0, ptr %.sroa.7.0, ptr noundef nonnull align 8 dereferenceable(40) %2) #17 ; 2 uses
  %i.v = extractvalue { ptr, i8 } %i.u, 0
  store ptr %i.v, ptr %4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = extractvalue { ptr, i8 } %i.u, 1         ; 2 uses
  store i8 %i.x, ptr %i.w, align 8
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !246
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %2, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %.0) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %4 to i64
  %i.ag = load ptr, ptr %2, align 8, !tbaa !18
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %.0, i64 %i.af, i64 1) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h
  %.sroa.012.0 = phi i8 [ 0, %bb.f ], [ 1, %bb.i ], [ 1, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.not.i.i13 = icmp eq ptr %i.i, null
  br i1 %.not.i.i13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store <2 x ptr> %i.h, ptr %i.g, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.l, %bb.k, %_ZN4llvm8dyn_castIN4mlir6vector19MaskableOpInterfaceENS1_9OperationEEEDcPT0_.exit
  %.sroa.012.1 = phi i8 [ 0, %_ZN4llvm8dyn_castIN4mlir6vector19MaskableOpInterfaceENS1_9OperationEEEDcPT0_.exit ], [ %.sroa.012.0, %bb.k ], [ %.sroa.012.0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i8 %.sroa.012.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal { ptr, i8 } @_ZNK12_GLOBAL__N_134TransferReadOfExtractSliceOpFolder25matchAndRewriteMaskableOpEN4mlir6vector14TransferReadOpENS2_18MaskingOpInterfaceERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(40) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::ArrayRef.295", align 8 ; 5 uses
  %6 = alloca %"class.llvm::SmallVector.296", align 8 ; 7 uses
  %7 = alloca %class.anon.326, align 8            ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %class.anon.326, align 8            ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::SmallVector.296", align 8 ; 7 uses
  %12 = alloca %class.anon.326, align 8           ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %class.anon.326, align 8           ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.mlir::ArrayAttr", align 8  ; 4 uses
  %17 = alloca %"class.mlir::BoolAttr", align 8   ; 4 uses
  %18 = alloca %"class.mlir::AffineMap", align 8  ; 4 uses
  %19 = alloca %"class.mlir::vector::TransferReadOp", align 8 ; 10 uses
  %20 = alloca %"class.mlir::tensor::ExtractSliceOp", align 8 ; 5 uses
  %21 = alloca %class.anon.326, align 8           ; 4 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %23 = alloca %"class.mlir::vector::TransferReadOp", align 8 ; 5 uses
  %24 = alloca %"class.mlir::vector::TransferReadOp", align 8 ; 11 uses
  %25 = alloca %"class.mlir::vector::MaskingOpInterface", align 8 ; 3 uses
  %26 = alloca %"class.mlir::tensor::ExtractSliceOp", align 8 ; 11 uses
  %27 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %28 = alloca %"class.llvm::SmallVector.289", align 8 ; 10 uses
  %29 = alloca %"class.llvm::SmallVector.289", align 8 ; 9 uses
  %30 = alloca %"class.llvm::SmallVector.296", align 8 ; 7 uses
  %31 = alloca %"class.llvm::SmallVector.296", align 8 ; 7 uses
  %32 = alloca %"class.llvm::SmallBitVector", align 8 ; 5 uses
  %33 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %34 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %35 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %36 = alloca %"class.llvm::SmallBitVector", align 8 ; 5 uses
  store ptr %1, ptr %24, align 8
  store ptr %2, ptr %25, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %3, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store ptr %1, ptr %23, align 8
  %i.b = call i64 @_ZN4mlir6vector14TransferReadOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 0) #17
  %i.c = load ptr, ptr %23, align 8, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.f = and i64 %i.b, 4294967295
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %27, align 8
  %i.i = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #17 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88
  %i.m = icmp eq ptr %i.l, @_ZN4mlir6detail14TypeIDResolverINS_6tensor14ExtractSliceOpEvE2idE
  %37 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor14ExtractSliceOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %37, %i.m
  br i1 %spec.select.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.n = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !114
  store ptr @.str.15, ptr %22, align 8, !tbaa !115
  store i8 3, ptr %i.n, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  store ptr %22, ptr %21, align 8, !tbaa !118
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !119  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.q) #17
  br i1 %i.r, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.s, align 8
  %i.t = ptrtoint ptr %21 to i64
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector14TransferReadOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.t) #17, !inline_history !247
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.c, %bb.d, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %bb.af

bb.e:                                             ; preds = %bb.b
  store ptr %i.i, ptr %26, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  store ptr %1, ptr %19, align 8
  store ptr %i.i, ptr %20, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.x = call ptr @_ZN4mlir6vector14TransferReadOp17getPermutationMapEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #17
  store ptr %i.x, ptr %18, align 8
  %i.y = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector14TransferReadOpEE17hasOutOfBoundsDimEv.exit.thread.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %wide.trip.count.i.i = zext i32 %i.y to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.z = call ptr @_ZN4mlir6vector14TransferReadOp11getInBoundsEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #17
  store ptr %i.z, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.aa = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #17
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %.sroa.0.0.copyload.i.i.i.i29 = load ptr, ptr %i.ac, align 8, !tbaa !120
  store ptr %.sroa.0.0.copyload.i.i.i.i29, ptr %17, align 8
  %i.ad = call noundef zeroext i1 @_ZNK4mlir8BoolAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %or.cond.not.i.i = select i1 %i.ad, i1 %exitcond.not.i.i, i1 false
  br i1 %or.cond.not.i.i, label %.lr.ph.i.i, label %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector14TransferReadOpEE17hasOutOfBoundsDimEv.exit.i, !llvm.loop !248

_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector14TransferReadOpEE17hasOutOfBoundsDimEv.exit.i: ; preds = %.lr.ph.i.i
  br i1 %i.ad, label %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector14TransferReadOpEE17hasOutOfBoundsDimEv.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector14TransferReadOpEE17hasOutOfBoundsDimEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.af, align 1, !tbaa !114
  store ptr @.str.17, ptr %15, align 8, !tbaa !115
  store i8 3, ptr %i.ae, align 8, !tbaa !116
  %i.ag = load ptr, ptr %19, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store ptr %15, ptr %14, align 8, !tbaa !118
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !119 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #17
  br i1 %i.aj, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit.i

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i30 = load ptr, ptr %i.ak, align 8
  %i.al = ptrtoint ptr %14 to i64
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(12) %i.ai, ptr %.sroa.0.0.copyload.i.i.i.i.i30, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector14TransferReadOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.al) #17, !inline_history !249
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit.i

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit.i: ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.n

_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector14TransferReadOpEE17hasOutOfBoundsDimEv.exit.thread.i: ; preds = %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector14TransferReadOpEE17hasOutOfBoundsDimEv.exit.i, %bb.e
  %i.ap = call i64 @_ZN4mlir6vector14TransferReadOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 3) #17 ; 3 uses
  %i.aq = load ptr, ptr %19, align 8, !tbaa !99   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 44
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, 8388608
  %.not.i.i.i.i.i.i31 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i.i.i.i31, label %_ZN4mlir6vector14TransferReadOp14getODSOperandsEj.exit.i.i, label %bb.h, !prof !121

bb.h:                                             ; preds = %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector14TransferReadOpEE17hasOutOfBoundsDimEv.exit.thread.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !109
  br label %_ZN4mlir6vector14TransferReadOp14getODSOperandsEj.exit.i.i

_ZN4mlir6vector14TransferReadOp14getODSOperandsEj.exit.i.i: ; preds = %bb.h, %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector14TransferReadOpEE17hasOutOfBoundsDimEv.exit.thread.i
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.av, %bb.h ], [ null, %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector14TransferReadOpEE17hasOutOfBoundsDimEv.exit.thread.i ]
  %i.aw = and i64 %i.ap, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %i.ap, 32
  %i.ax = add i64 %.sroa.5.0.extract.shift.i.i.i, %i.ap
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = icmp eq i64 %i.ay, %i.aw
  br i1 %i.az, label %_ZN4mlir6vector14TransferReadOp7getMaskEv.exit.thread.i, label %_ZN4mlir6vector14TransferReadOp7getMaskEv.exit.i

_ZN4mlir6vector14TransferReadOp7getMaskEv.exit.i: ; preds = %_ZN4mlir6vector14TransferReadOp14getODSOperandsEj.exit.i.i
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.0.0.copyload.i.i.i.i3.i = load ptr, ptr %i.bb, align 8, !tbaa !111
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i3.i, null
  br i1 %.not.i, label %_ZN4mlir6vector14TransferReadOp7getMaskEv.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZN4mlir6vector14TransferReadOp7getMaskEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.bd, align 1, !tbaa !114
  store ptr @.str.18, ptr %13, align 8, !tbaa !115
  store i8 3, ptr %i.bc, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store ptr %13, ptr %12, align 8, !tbaa !118
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !119 ; 4 uses
  %.not.i.i.i.i4.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i4.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit7.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.bf) #17
  br i1 %i.bg, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i5.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit7.i

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i5.i: ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.0.0.copyload.i.i.i.i6.i = load ptr, ptr %i.bh, align 8
  %i.bi = ptrtoint ptr %12 to i64
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.bf, ptr %.sroa.0.0.copyload.i.i.i.i6.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector14TransferReadOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.bi) #17, !inline_history !249
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit7.i

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit7.i: ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i5.i, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.n

_ZN4mlir6vector14TransferReadOp7getMaskEv.exit.thread.i: ; preds = %_ZN4mlir6vector14TransferReadOp7getMaskEv.exit.i, %_ZN4mlir6vector14TransferReadOp14getODSOperandsEj.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor14ExtractSliceOpEE15getMixedStridesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.296") align 8 %11, ptr noundef nonnull align 1 dereferenceable(1) %20)
  %i.bm = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !52
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bp ; 2 uses
  %i.br = call noundef ptr @_ZSt9__find_ifIPN4mlir12OpFoldResultEN9__gnu_cxx5__ops12_Iter_negateIZNS0_6detail35OffsetSizeAndStrideOpInterfaceTraitINS0_6tensor14ExtractSliceOpEE13hasUnitStrideEvEUlS1_E_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr noundef %i.bm, ptr noundef %i.bq)
  %i.bs = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor14ExtractSliceOpEE13hasUnitStrideEv.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir6vector14TransferReadOp7getMaskEv.exit.thread.i
  call void @free(ptr noundef %i.bs) #17
  br label %_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor14ExtractSliceOpEE13hasUnitStrideEv.exit.i

_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor14ExtractSliceOpEE13hasUnitStrideEv.exit.i: ; preds = %bb.k, %_ZN4mlir6vector14TransferReadOp7getMaskEv.exit.thread.i
  %i.bv = icmp eq ptr %i.bq, %i.br
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br i1 %i.bv, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor14ExtractSliceOpEE13hasUnitStrideEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 33
end_hunk_0
begin_hunk_1_@_ZSt9__find_ifIPN4mlir12OpFoldResultEN9__gnu_cxx5__ops12_Iter_negateIZNS0_6detail35OffsetSizeAndStrideOpInterfaceTraitINS0_6tensor14ExtractSliceOpEE13hasUnitStrideEvEUlS1_E_EEET_SD_SD_T0_St26random_access_iterator_tag:bb.a

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi66 = phi i64 [ %.pre65, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.029.lcssa = phi ptr [ %i.ac, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 5 uses
  %i.af = ashr exact i64 %.pre-phi66, 3
  switch i64 %i.af, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge
  %.sroa.0.0.copyload.i36 = load i64, ptr %.029.lcssa, align 8
  %i.ag = tail call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.0.0.copyload.i36) #17 ; 2 uses
  %i.ah = extractvalue { i64, i8 } %i.ag, 0
  %i.ai = extractvalue { i64, i8 } %i.ag, 1
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = icmp eq i64 %i.ah, 1
  %.not42 = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %.not42, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.029.lcssa, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.1 = phi ptr [ %i.al, %bb.g ], [ %.029.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.0.0.copyload.i38 = load i64, ptr %.1, align 8
  %i.am = tail call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.0.0.copyload.i38) #17 ; 2 uses
  %i.an = extractvalue { i64, i8 } %i.am, 0
  %i.ao = extractvalue { i64, i8 } %i.am, 1
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = icmp eq i64 %i.an, 1
  %.not43 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %.not43, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.2 = phi ptr [ %i.ar, %bb.i ], [ %.029.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0.0.copyload.i40 = load i64, ptr %.2, align 8
  %i.as = tail call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.0.0.copyload.i40) #17 ; 2 uses
  %i.at = extractvalue { i64, i8 } %i.as, 0
  %i.au = extractvalue { i64, i8 } %i.as, 1
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = icmp eq i64 %i.at, 1
  %.not44 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %.not44, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %._crit_edge
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %.02959, i64 8
  br label %.loopexit

.loopexit.loopexit.split.loop.exit67:             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %.02959, i64 16
  br label %.loopexit

.loopexit.loopexit.split.loop.exit69:             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.02959, i64 24
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit67, %.loopexit.loopexit.split.loop.exit69, %bb.j, %bb.h, %bb.f, %bb.k
  %.028 = phi ptr [ %.1, %bb.h ], [ %1, %bb.k ], [ %.2, %bb.j ], [ %.029.lcssa, %bb.f ], [ %i.az, %.loopexit.loopexit.split.loop.exit69 ], [ %i.ax, %.loopexit.loopexit.split.loop.exit ], [ %i.ay, %.loopexit.loopexit.split.loop.exit67 ], [ %.02959, %.lr.ph ]
  ret ptr %.028
}

declare { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64) local_unnamed_addr #6

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN4mlir6affine41resolveIndicesIntoOpWithOffsetsAndStridesERNS_12RewriterBaseENS_8LocationEN4llvm8ArrayRefINS_12OpFoldResultEEES7_RKNS4_14SmallBitVectorES7_RNS4_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr, ptr, i64, ptr, i64, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef byval(%"class.llvm::ArrayRef.295") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN4mlir17getAsOpFoldResultENS_10ValueRangeE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.296") align 8, i64, i64) local_unnamed_addr #6

declare void @_ZN4mlir14getMixedValuesEN4llvm8ArrayRefIlEENS_10ValueRangeERNS_7BuilderE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.296") align 8, ptr, i64, i64, i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare { ptr, i64 } @_ZN4mlir6tensor14ExtractSliceOp16getStaticOffsetsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #6

declare i64 @_ZN4mlir6tensor14ExtractSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

declare { ptr, i64 } @_ZN4mlir6tensor14ExtractSliceOp16getStaticStridesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #6

declare { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_134InsertSliceOfTransferWriteOpFolderD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor13InsertSliceOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_134InsertSliceOfTransferWriteOpFolder15matchAndRewriteEN4mlir6tensor13InsertSliceOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %4 = alloca %"class.llvm::ArrayRef.295", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SmallVector.296", align 8 ; 7 uses
  %6 = alloca %class.anon.475, align 8            ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.mlir::vector::TransferWriteOp", align 8 ; 8 uses
  %9 = alloca %"class.mlir::ShapedType", align 8  ; 8 uses
  %10 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %11 = alloca %"class.mlir::ShapedType", align 8 ; 7 uses
  %12 = alloca %class.anon.476, align 8           ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvm::SmallVector.296", align 8 ; 7 uses
  %15 = alloca %class.anon.476, align 8           ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %class.anon.476, align 8           ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.mlir::ArrayAttr", align 8  ; 4 uses
  %20 = alloca %"class.mlir::BoolAttr", align 8   ; 4 uses
  %21 = alloca %"class.mlir::AffineMap", align 8  ; 4 uses
  %22 = alloca %"class.mlir::vector::TransferWriteOp", align 8 ; 10 uses
  %23 = alloca %"class.mlir::tensor::InsertSliceOp", align 8 ; 5 uses
  %24 = alloca %class.anon.475, align 8           ; 4 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %26 = alloca %"class.mlir::tensor::InsertSliceOp", align 8 ; 5 uses
  %27 = alloca %"class.mlir::tensor::InsertSliceOp", align 8 ; 9 uses
  %28 = alloca %"class.mlir::vector::TransferWriteOp", align 8 ; 10 uses
  %29 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %30 = alloca %"class.llvm::SmallVector.289", align 8 ; 10 uses
  %31 = alloca %"class.llvm::SmallVector.289", align 8 ; 9 uses
  %32 = alloca %"class.llvm::SmallVector.296", align 8 ; 7 uses
  %33 = alloca %"class.llvm::SmallVector.296", align 8 ; 7 uses
  %34 = alloca %"class.llvm::SmallBitVector", align 8 ; 5 uses
  %35 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %36 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %37 = alloca %"class.llvm::SmallBitVector", align 8 ; 5 uses
  store ptr %1, ptr %27, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  store ptr %1, ptr %26, align 8
  %i.a = call i64 @_ZN4mlir6tensor13InsertSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 0) #17
  %i.b = load ptr, ptr %26, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = and i64 %i.a, 4294967295
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %29, align 8
  %i.h = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %29) #17 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88
  %i.l = icmp eq ptr %i.k, @_ZN4mlir6detail14TypeIDResolverINS_6vector15TransferWriteOpEvE2idE
  %38 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6vector15TransferWriteOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %38, %i.l
  br i1 %spec.select.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  %i.m = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %25, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !114
  store ptr @.str.23, ptr %25, align 8, !tbaa !115
  store i8 3, ptr %i.m, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  store ptr %25, ptr %24, align 8, !tbaa !118
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !119  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor13InsertSliceOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #17
  br i1 %i.q, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor13InsertSliceOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.r, align 8
  %i.s = ptrtoint ptr %24 to i64
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor13InsertSliceOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.s) #17, !inline_history !2
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor13InsertSliceOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor13InsertSliceOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.c, %bb.d, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  br label %bb.aq

bb.e:                                             ; preds = %bb.b
  store ptr %i.h, ptr %28, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store ptr %i.h, ptr %22, align 8
  store ptr %1, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.w = call ptr @_ZN4mlir6vector15TransferWriteOp17getPermutationMapEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #17
  store ptr %i.w, ptr %21, align 8
  %i.x = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.thread.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %wide.trip.count.i.i = zext i32 %i.x to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.y = call ptr @_ZN4mlir6vector15TransferWriteOp11getInBoundsEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #17
  store ptr %i.y, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.z = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #17
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i
  %.sroa.0.0.copyload.i.i.i.i18 = load ptr, ptr %i.ab, align 8, !tbaa !120
  store ptr %.sroa.0.0.copyload.i.i.i.i18, ptr %20, align 8
  %i.ac = call noundef zeroext i1 @_ZNK4mlir8BoolAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %or.cond.not.i.i = select i1 %i.ac, i1 %exitcond.not.i.i, i1 false
  br i1 %or.cond.not.i.i, label %.lr.ph.i.i, label %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.i, !llvm.loop !255

_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.i: ; preds = %.lr.ph.i.i
  br i1 %i.ac, label %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.ae, align 1, !tbaa !114
  store ptr @.str.17, ptr %18, align 8, !tbaa !115
  store i8 3, ptr %i.ad, align 8, !tbaa !116
  %i.af = load ptr, ptr %22, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  store ptr %18, ptr %17, align 8, !tbaa !118
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !119 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #17
  br i1 %i.ai, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit.i

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i: ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i19 = load ptr, ptr %i.aj, align 8
  %i.ak = ptrtoint ptr %17 to i64
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, ptr %.sroa.0.0.copyload.i.i.i.i.i19, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector15TransferWriteOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ak) #17, !inline_history !256
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit.i

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit.i: ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %_ZL46preconditionsFoldExtractOrInsertWithTransferOpIN4mlir6vector15TransferWriteOpENS0_6tensor13InsertSliceOpEEN4llvm13LogicalResultERNS0_12RewriterBaseET_T0_.exit.thread

_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.thread.i: ; preds = %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.i, %bb.e
  %i.ao = call i64 @_ZN4mlir6vector15TransferWriteOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 3) #17 ; 3 uses
  %i.ap = load ptr, ptr %22, align 8, !tbaa !99   ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, 8388608
  %.not.i.i.i.i.i.i20 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i.i20, label %_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i.i, label %bb.h, !prof !121

bb.h:                                             ; preds = %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.thread.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !109
  br label %_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i.i

_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i.i: ; preds = %bb.h, %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.thread.i
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.au, %bb.h ], [ null, %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.thread.i ]
  %i.av = and i64 %i.ao, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %i.ao, 32
  %i.aw = add i64 %.sroa.5.0.extract.shift.i.i.i, %i.ao
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = icmp eq i64 %i.ax, %i.av
  br i1 %i.ay, label %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.thread.i, label %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.i

_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.i: ; preds = %_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i.i
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.0.0.copyload.i.i.i.i3.i = load ptr, ptr %i.ba, align 8, !tbaa !111
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i3.i, null
  br i1 %.not.i, label %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.bc, align 1, !tbaa !114
  store ptr @.str.18, ptr %16, align 8, !tbaa !115
  store i8 3, ptr %i.bb, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store ptr %16, ptr %15, align 8, !tbaa !118
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !119 ; 4 uses
  %.not.i.i.i.i4.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i4.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit7.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.be) #17
  br i1 %i.bf, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i5.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit7.i

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i5.i: ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.0.0.copyload.i.i.i.i6.i = load ptr, ptr %i.bg, align 8
  %i.bh = ptrtoint ptr %15 to i64
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.be, ptr %.sroa.0.0.copyload.i.i.i.i6.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector15TransferWriteOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.bh) #17, !inline_history !256
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit7.i

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit7.i: ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i5.i, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %_ZL46preconditionsFoldExtractOrInsertWithTransferOpIN4mlir6vector15TransferWriteOpENS0_6tensor13InsertSliceOpEEN4llvm13LogicalResultERNS0_12RewriterBaseET_T0_.exit.thread

_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.thread.i: ; preds = %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.i, %_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor13InsertSliceOpEE15getMixedStridesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.296") align 8 %14, ptr noundef nonnull align 1 dereferenceable(1) %23)
  %i.bl = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !52
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bo ; 2 uses
  %i.bq = call noundef ptr @_ZSt9__find_ifIPN4mlir12OpFoldResultEN9__gnu_cxx5__ops12_Iter_negateIZNS0_6detail35OffsetSizeAndStrideOpInterfaceTraitINS0_6tensor13InsertSliceOpEE13hasUnitStrideEvEUlS1_E_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr noundef %i.bl, ptr noundef %i.bp)
  %i.br = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor13InsertSliceOpEE13hasUnitStrideEv.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.thread.i
  call void @free(ptr noundef %i.br) #17
  br label %_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor13InsertSliceOpEE13hasUnitStrideEv.exit.i

_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor13InsertSliceOpEE13hasUnitStrideEv.exit.i: ; preds = %bb.k, %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.thread.i
  %i.bu = icmp eq ptr %i.bp, %i.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br i1 %i.bu, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor13InsertSliceOpEE13hasUnitStrideEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 33
end_hunk_1
begin_hunk_2_@_ZN4mlir17RewritePatternSet7addImplI30InsertSliceOfInsertSliceFolderINS_6tensor21ParallelInsertSliceOpEEJPNS_11MLIRContextEEEENSt9enable_ifIXsr3std10is_base_ofINS_14RewritePatternET_EE5valueEvE4typeEN4llvm8ArrayRefINSD_9StringRefEEEDpOT0_:bb.a

bb.e:                                             ; preds = %_ZN4mlir7Pattern14addDebugLabelsEN4llvm8ArrayRefINS1_9StringRefEEE.exit
  store ptr %i.a, ptr %i.y, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !53
  br label %_ZNSt10unique_ptrI30InsertSliceOfInsertSliceFolderIN4mlir6tensor21ParallelInsertSliceOpEESt14default_deleteIS4_EED2Ev.exit

bb.f:                                             ; preds = %_ZN4mlir7Pattern14addDebugLabelsEN4llvm8ArrayRefINS1_9StringRefEEE.exit
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !58  ; 10 uses
  %i.ad = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #16 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store ptr %i.a, ptr %i.ao, align 8, !tbaa !57
  %.not10.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ap = add i64 %i.ad, -8
  %i.aq = sub i64 %i.ap, %i.ae                    ; 3 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader15, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.at = and i64 %i.aq, -8
  %i.au = add i64 %i.at, 8                        ; 2 uses
  %i.av = getelementptr i8, ptr %i.an, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ac, i64 %i.au
  %bound0 = icmp ult ptr %i.an, %i.aw
  %bound1 = icmp ult ptr %i.ac, %i.av
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ac, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ba ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.ac, i64 %i.ba ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.bb = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !59, !alias.scope !319, !noalias !317
  %wide.load13 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !59, !alias.scope !319, !noalias !317
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !59, !alias.scope !320, !noalias !319
  store <2 x i64> %wide.load13, ptr %i.bc, align 8, !tbaa !59, !alias.scope !320, !noalias !319
  %i.bd = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !59, !alias.scope !319, !noalias !317
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !59, !alias.scope !319, !noalias !317
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.bf = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !59, !alias.scope !318, !noalias !317
  store i64 %i.bf, ptr %.012.i.i.i.i, align 8, !tbaa !59, !alias.scope !317, !noalias !318
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !59, !alias.scope !318, !noalias !317
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.y
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !314

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_I30InsertSliceOfInsertSliceFolderINS1_6tensor21ParallelInsertSliceOpEES3_ISC_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.bj = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.bl) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_I30InsertSliceOfInsertSliceFolderINS1_6tensor21ParallelInsertSliceOpEES3_ISC_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_I30InsertSliceOfInsertSliceFolderINS1_6tensor21ParallelInsertSliceOpEES3_ISC_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.h
  store ptr %i.an, ptr %i.w, align 8, !tbaa !58
  store ptr %i.bi, ptr %i.x, align 8, !tbaa !53
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.bm, ptr %i.z, align 8, !tbaa !54
  br label %_ZNSt10unique_ptrI30InsertSliceOfInsertSliceFolderIN4mlir6tensor21ParallelInsertSliceOpEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrI30InsertSliceOfInsertSliceFolderIN4mlir6tensor21ParallelInsertSliceOpEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_I30InsertSliceOfInsertSliceFolderINS1_6tensor21ParallelInsertSliceOpEES3_ISC_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN28MergeConsecutiveExtractSliceD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor14ExtractSliceOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK28MergeConsecutiveExtractSlice15matchAndRewriteEN4mlir6tensor14ExtractSliceOpERNS0_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef.295", align 8 ; 5 uses
  %4 = alloca %"class.llvm::ArrayRef.295", align 8 ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.503", align 8 ; 4 uses
  %6 = alloca %"class.mlir::tensor::ExtractSliceOp", align 8 ; 6 uses
  %7 = alloca %"class.mlir::tensor::ExtractSliceOp", align 8 ; 6 uses
  %8 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 5 uses
  %9 = alloca %"class.llvm::SmallVector.296", align 8 ; 9 uses
  %10 = alloca %"class.llvm::SmallVector.296", align 8 ; 9 uses
  %11 = alloca %"class.llvm::SmallVector.296", align 8 ; 9 uses
  %12 = alloca %"class.llvm::SmallBitVector", align 8 ; 5 uses
  store ptr %1, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.a = call i64 @_ZN4mlir6tensor14ExtractSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #17
  %i.b = load ptr, ptr %6, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = and i64 %i.a, 4294967295
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !111
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %8, align 8
  %i.h = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88
  %i.l = icmp eq ptr %i.k, @_ZN4mlir6detail14TypeIDResolverINS_6tensor14ExtractSliceOpEvE2idE
  %13 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor14ExtractSliceOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %13, %i.l
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor14ExtractSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.m

_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor14ExtractSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit: ; preds = %bb.b
  store ptr %i.h, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.m, ptr %9, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 6, ptr %i.o, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.p, ptr %10, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 6, ptr %i.r, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.s, ptr %11, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i32 0, ptr %i.t, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 6, ptr %i.u, align 4, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !99
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.x, align 8
  %i.y = call noundef ptr @_ZN4mlir11OpInterfaceINS_30OffsetSizeAndStrideOpInterfaceENS_6detail45OffsetSizeAndStrideOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.h)
  %.sroa.01.0.copyload = load ptr, ptr %6, align 8 ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %.sroa.01.0.copyload, null
  br i1 %.not.i.i.i8, label %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor14ExtractSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit9, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor14ExtractSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit
  %i.z = call noundef ptr @_ZN4mlir11OpInterfaceINS_30OffsetSizeAndStrideOpInterfaceENS_6detail45OffsetSizeAndStrideOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %.sroa.01.0.copyload)
  br label %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor14ExtractSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit9

_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor14ExtractSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit9: ; preds = %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor14ExtractSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit, %bb.d
  %i.aa = phi ptr [ %i.z, %bb.d ], [ null, %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor14ExtractSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @_ZN4mlir6tensor14ExtractSliceOp14getDroppedDimsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallBitVector") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  %i.ab = call i8 @_ZN4mlir6affine27mergeOffsetsSizesAndStridesERNS_9OpBuilderENS_8LocationENS_30OffsetSizeAndStrideOpInterfaceES4_RKN4llvm14SmallBitVectorERNS5_11SmallVectorINS_12OpFoldResultELj6EEESC_SC_(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.h, ptr %i.y, ptr %.sroa.01.0.copyload, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(64) %11) #17
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = load i64, ptr %12, align 8, !tbaa !128  ; 3 uses
  %i.ae = trunc i64 %i.ad to i1
  br i1 %i.ae, label %_ZN4llvm14SmallBitVectorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor14ExtractSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit9
  %i.af = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_ZN4llvm14SmallBitVectorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !15 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN4llvm9BitVectorD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.ah) #17
  br label %_ZN4llvm9BitVectorD2Ev.exit.i

_ZN4llvm9BitVectorD2Ev.exit.i:                    ; preds = %bb.g, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 72) #19
  br label %_ZN4llvm14SmallBitVectorD2Ev.exit

_ZN4llvm14SmallBitVectorD2Ev.exit:                ; preds = %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor14ExtractSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit9, %bb.e, %_ZN4llvm9BitVectorD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm14SmallBitVectorD2Ev.exit
  %i.ak = load ptr, ptr %6, align 8, !tbaa !99    ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -16
  %i.am = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef 0) #17
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8
  %i.ao = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = call i64 @_ZN4mlir6tensor14ExtractSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0) #17
  %i.ar = load ptr, ptr %7, align 8, !tbaa !99
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !109
  %i.au = and i64 %i.aq, 4294967295
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.0.0.copyload.i.i.i.i11 = load ptr, ptr %i.aw, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.0.0.copyload.i.i12 = load ptr, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %9, align 8, !tbaa !15
  %i.az = load i32, ptr %i.n, align 8, !tbaa !52
  %i.ba = zext i32 %i.az to i64
  %i.bb = load ptr, ptr %10, align 8, !tbaa !15
  store ptr %i.bb, ptr %3, align 8, !tbaa !125
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = load i32, ptr %i.q, align 8, !tbaa !52
  %i.be = zext i32 %i.bd to i64
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !126
  %i.bf = load ptr, ptr %11, align 8, !tbaa !15
  store ptr %i.bf, ptr %4, align 8, !tbaa !125
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load i32, ptr %i.t, align 8, !tbaa !52
  %i.bi = zext i32 %i.bh to i64
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.bj = call ptr @_ZN4mlir6tensor14ExtractSliceOp6createERNS_9OpBuilderENS_8LocationENS_16RankedTensorTypeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_SA_NS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr %.sroa.0.0.copyload.i.i12, ptr %i.ap, ptr %.sroa.0.0.copyload.i.i.i.i11, ptr %i.ay, i64 %i.ba, ptr noundef nonnull byval(%"class.llvm::ArrayRef.295") align 8 %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.295") align 8 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.503") align 8 %5) #17
  %i.bk = load ptr, ptr %2, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.ak, ptr noundef %i.bj) #17, !inline_history !321
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm14SmallBitVectorD2Ev.exit, %bb.h
  %.sroa.06.0 = phi i8 [ 1, %bb.h ], [ 0, %_ZN4llvm14SmallBitVectorD2Ev.exit ]
  %i.bn = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.s
  br i1 %i.bo, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.bn) #17
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.bp = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit13, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit
  call void @free(ptr noundef %i.bp) #17
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit13

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit13: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.br = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.m
  br i1 %i.bs, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit14, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit13
  call void @free(ptr noundef %i.br) #17
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit14

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit14: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit13, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit14, %bb.c
  %.sroa.06.1 = phi i8 [ %.sroa.06.0, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit14 ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret i8 %.sroa.06.1
}

declare i8 @_ZN4mlir6affine27mergeOffsetsSizesAndStridesERNS_9OpBuilderENS_8LocationENS_30OffsetSizeAndStrideOpInterfaceES4_RKN4llvm14SmallBitVectorERNS5_11SmallVectorINS_12OpFoldResultELj6EEESC_SC_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, ptr, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_30OffsetSizeAndStrideOpInterfaceENS_6detail45OffsetSizeAndStrideOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !86 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !129

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 36) #17
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !13 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !15   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !1

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !88
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !131  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !144  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !129

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 36) #17
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !13
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #17, !inline_history !322
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !129

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 36) #17
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !13
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #17, !inline_history !322
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

declare ptr @_ZN4mlir6tensor14ExtractSliceOp6createERNS_9OpBuilderENS_8LocationENS_16RankedTensorTypeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_SA_NS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.295") align 8, ptr noundef byval(%"class.llvm::ArrayRef.295") align 8, ptr noundef byval(%"class.llvm::ArrayRef.503") align 8) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN30InsertSliceOfInsertSliceFolderIN4mlir6tensor13InsertSliceOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK30InsertSliceOfInsertSliceFolderIN4mlir6tensor13InsertSliceOpEE15matchAndRewriteES2_RNS0_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef.295", align 8 ; 5 uses
  %4 = alloca %"class.llvm::ArrayRef.295", align 8 ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.503", align 8 ; 4 uses
  %6 = alloca %class.anon.475, align 8            ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.mlir::tensor::InsertSliceOp", align 8 ; 13 uses
  %9 = alloca %"class.mlir::tensor::InsertSliceOp", align 8 ; 8 uses
  %10 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 5 uses
  %11 = alloca %"class.llvm::SmallBitVector", align 8 ; 6 uses
  %12 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %13 = alloca %"class.llvm::SmallVector.296", align 8 ; 6 uses
  %14 = alloca %"class.llvm::SmallVector.296", align 8 ; 5 uses
  %15 = alloca %"class.llvm::SmallVector.296", align 8 ; 9 uses
  %16 = alloca %"class.llvm::SmallVector.296", align 8 ; 9 uses
  %17 = alloca %"class.llvm::SmallVector.296", align 8 ; 9 uses
  store ptr %1, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.a = call i64 @_ZN4mlir6tensor13InsertSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #17
  %i.b = load ptr, ptr %8, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = and i64 %i.a, 4294967295
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !111
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %10, align 8
  %i.h = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88
  %i.l = icmp eq ptr %i.k, @_ZN4mlir6detail14TypeIDResolverINS_6tensor13InsertSliceOpEvE2idE
  %18 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor13InsertSliceOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %18, %i.l
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  store ptr %i.h, ptr %9, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @_ZN4mlir6tensor13InsertSliceOp14getDroppedDimsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallBitVector") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.m = load ptr, ptr %8, align 8, !tbaa !99
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16
  %i.o = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef 0) #17
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %12, align 8
  %i.s = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  %i.t = extractvalue { ptr, i64 } %i.s, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %.not43 = icmp sgt i64 %i.t, 0
  br i1 %.not43, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %.01945 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.k ] ; 4 uses
  %.02044 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %bb.k ] ; 5 uses
  %i.w = load i64, ptr %11, align 8, !tbaa !128   ; 4 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %.split, label %_ZNK4llvm14SmallBitVector9referencecvbEv.exit

.split:                                           ; preds = %bb.e
  %i.y = lshr i64 %i.w, 1
  %i.z = lshr i64 %i.w, 58
  %i.aa = shl nsw i64 -1, %i.z
  %i.ab = xor i64 %i.aa, -1
  %i.ac = and i64 %i.y, %i.ab
  %i.ad = and i64 %.02044, 4294967295
  %i.ae = lshr i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %bb.k, label %bb.f

_ZNK4llvm14SmallBitVector9referencecvbEv.exit:    ; preds = %bb.e
  %i.ag = inttoptr i64 %i.w to ptr
  %i.ah = lshr i64 %.02044, 6
  %i.ai = and i64 %i.ah, 67108863
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = and i64 %.02044, 63
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.an = shl nuw i64 1, %i.al
  %i.ao = and i64 %i.am, %i.an
  %.not41 = icmp eq i64 %i.ao, 0
  br i1 %.not41, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.split, %_ZNK4llvm14SmallBitVector9referencecvbEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor13InsertSliceOpEE13getMixedSizesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.296") align 8 %13, ptr noundef nonnull align 1 dereferenceable(1) %8)
  %i.ap = load ptr, ptr %13, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.02044
  %.sroa.06.0.copyload = load i64, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor13InsertSliceOpEE13getMixedSizesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.296") align 8 %14, ptr noundef nonnull align 1 dereferenceable(1) %9)
  %i.ar = add nsw i64 %.01945, 1
  %i.as = load ptr, ptr %14, align 8, !tbaa !15   ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.01945
  %.sroa.05.0.copyload = load i64, ptr %i.at, align 8
  %.not42 = icmp eq i64 %.sroa.06.0.copyload, %.sroa.05.0.copyload
  %i.au = icmp eq ptr %i.as, %i.u
  br i1 %i.au, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.as) #17
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.av = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.v
  br i1 %i.aw, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit21, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit
  call void @free(ptr noundef %i.av) #17
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit21

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit21: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br i1 %.not42, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.ay, align 1, !tbaa !114
  store ptr @.str.30, ptr %7, align 8, !tbaa !115
  store i8 3, ptr %i.ax, align 8, !tbaa !116
  %i.az = load ptr, ptr %9, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr %7, ptr %6, align 8, !tbaa !118
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !119 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.bb) #17
  br i1 %i.bc, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %.thread

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.bd, align 8
  %i.be = ptrtoint ptr %6 to i64
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(12) %i.bb, ptr %.sroa.0.0.copyload.i.i.i.i22, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor13InsertSliceOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.be) #17, !inline_history !2
  br label %.thread

.thread:                                          ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.r

bb.k:                                             ; preds = %.split, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit21, %_ZNK4llvm14SmallBitVector9referencecvbEv.exit
  %.1 = phi i64 [ %.01945, %_ZNK4llvm14SmallBitVector9referencecvbEv.exit ], [ %i.ar, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit21 ], [ %.01945, %.split ]
  %i.bi = add nuw nsw i64 %.02044, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !323

._crit_edge:                                      ; preds = %bb.k, %bb.d
  %i.bj = load ptr, ptr %8, align 8, !tbaa !99
  %i.bk = call noundef ptr @_ZN4mlir11OpInterfaceINS_28ParallelCombiningOpInterfaceENS_6detail43ParallelCombiningOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %i.bj)
  %.not40 = icmp eq ptr %i.bk, null
  br i1 %.not40, label %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor13InsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %._crit_edge
  %i.bl = load ptr, ptr %8, align 8, !tbaa !99
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !106, !nonnull !67, !noundef !67
  %i.bo = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bn) #17 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !106
  %i.br = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.bo) #17
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !105
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.br, ptr %i.bt, align 8
  br label %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor13InsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit

_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor13InsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.bu, ptr %15, align 8, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i32 0, ptr %i.bv, align 8, !tbaa !52
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 6, ptr %i.bw, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.bx, ptr %16, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i32 0, ptr %i.by, align 8, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 6, ptr %i.bz, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.ca = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.ca, ptr %17, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i32 0, ptr %i.cb, align 8, !tbaa !52
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 6, ptr %i.cc, align 4, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %8, align 8, !tbaa !99    ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cf, align 8
  %i.cg = call noundef ptr @_ZN4mlir11OpInterfaceINS_30OffsetSizeAndStrideOpInterfaceENS_6detail45OffsetSizeAndStrideOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.ce)
  %.sroa.01.0.copyload = load ptr, ptr %9, align 8 ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %.sroa.01.0.copyload, null
  br i1 %.not.i.i.i24, label %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor13InsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit25, label %bb.l

bb.l:                                             ; preds = %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor13InsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit
  %i.ch = call noundef ptr @_ZN4mlir11OpInterfaceINS_30OffsetSizeAndStrideOpInterfaceENS_6detail45OffsetSizeAndStrideOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %.sroa.01.0.copyload)
  br label %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor13InsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit25

_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor13InsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit25: ; preds = %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor13InsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit, %bb.l
  %i.ci = phi ptr [ %i.ch, %bb.l ], [ null, %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor13InsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit ]
  %i.cj = call i8 @_ZN4mlir6affine27mergeOffsetsSizesAndStridesERNS_9OpBuilderENS_8LocationENS_30OffsetSizeAndStrideOpInterfaceES4_RKN4llvm14SmallBitVectorERNS5_11SmallVectorINS_12OpFoldResultELj6EEESC_SC_(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.ce, ptr %i.cg, ptr %.sroa.01.0.copyload, ptr %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(64) %17) #17
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor13InsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit25
  %i.cl = load ptr, ptr %8, align 8, !tbaa !99    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !106
end_hunk_2
begin_hunk_3_@_ZN4mlir11OpInterfaceINS_28ParallelCombiningOpInterfaceENS_6detail43ParallelCombiningOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE:bb.a
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !1

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_28ParallelCombiningOpInterfaceEPNS_9OperationENS0_43ParallelCombiningOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_28ParallelCombiningOpInterfaceEPNS_9OperationENS0_43ParallelCombiningOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_28ParallelCombiningOpInterfaceEPNS_9OperationENS0_43ParallelCombiningOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !88
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !131  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !144  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_28ParallelCombiningOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !129

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ParallelCombiningOpInterfaceEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.31, i64 49), i64 34) #17
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ParallelCombiningOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ParallelCombiningOpInterfaceEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ParallelCombiningOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !13
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #17, !inline_history !325
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_28ParallelCombiningOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !129

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ParallelCombiningOpInterfaceEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.31, i64 49), i64 34) #17
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ParallelCombiningOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ParallelCombiningOpInterfaceEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ParallelCombiningOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !13
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #17, !inline_history !325
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ParallelCombiningOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

declare noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare ptr @_ZN4mlir6tensor13InsertSliceOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefINS_12OpFoldResultEEES9_S9_NS7_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.295") align 8, ptr noundef byval(%"class.llvm::ArrayRef.295") align 8, ptr noundef byval(%"class.llvm::ArrayRef.503") align 8) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN30InsertSliceOfInsertSliceFolderIN4mlir6tensor21ParallelInsertSliceOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor21ParallelInsertSliceOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK30InsertSliceOfInsertSliceFolderIN4mlir6tensor21ParallelInsertSliceOpEE15matchAndRewriteES2_RNS0_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef.295", align 8 ; 5 uses
  %4 = alloca %"class.llvm::ArrayRef.295", align 8 ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.503", align 8 ; 4 uses
  %6 = alloca %class.anon.475, align 8            ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.mlir::tensor::ParallelInsertSliceOp", align 8 ; 14 uses
  %9 = alloca %"class.mlir::tensor::InsertSliceOp", align 8 ; 8 uses
  %10 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 5 uses
  %11 = alloca %"class.llvm::SmallBitVector", align 8 ; 6 uses
  %12 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %13 = alloca %"class.llvm::SmallVector.296", align 8 ; 6 uses
  %14 = alloca %"class.llvm::SmallVector.296", align 8 ; 5 uses
  %15 = alloca %"class.llvm::SmallVector.296", align 8 ; 9 uses
  %16 = alloca %"class.llvm::SmallVector.296", align 8 ; 9 uses
  %17 = alloca %"class.llvm::SmallVector.296", align 8 ; 9 uses
  store ptr %1, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.a = call i64 @_ZN4mlir6tensor21ParallelInsertSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #17
  %i.b = load ptr, ptr %8, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = and i64 %i.a, 4294967295
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !111
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %10, align 8
  %i.h = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88
  %i.l = icmp eq ptr %i.k, @_ZN4mlir6detail14TypeIDResolverINS_6tensor13InsertSliceOpEvE2idE
  %18 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor13InsertSliceOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %18, %i.l
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  store ptr %i.h, ptr %9, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @_ZN4mlir6tensor21ParallelInsertSliceOp14getDroppedDimsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallBitVector") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.m = call i64 @_ZN4mlir6tensor21ParallelInsertSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1) #17
  %i.n = load ptr, ptr %8, align 8, !tbaa !99
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.q = and i64 %i.m, 4294967295
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %12, align 8
  %i.w = call { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  %i.x = extractvalue { ptr, i64 } %i.w, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %.not42 = icmp sgt i64 %i.x, 0
  br i1 %.not42, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %.01944 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.k ] ; 4 uses
  %.02043 = phi i64 [ 0, %.lr.ph ], [ %i.bm, %bb.k ] ; 5 uses
  %i.aa = load i64, ptr %11, align 8, !tbaa !128  ; 4 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %.split, label %_ZNK4llvm14SmallBitVector9referencecvbEv.exit

.split:                                           ; preds = %bb.e
  %i.ac = lshr i64 %i.aa, 1
  %i.ad = lshr i64 %i.aa, 58
  %i.ae = shl nsw i64 -1, %i.ad
  %i.af = xor i64 %i.ae, -1
  %i.ag = and i64 %i.ac, %i.af
  %i.ah = and i64 %.02043, 4294967295
  %i.ai = lshr i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %bb.k, label %bb.f

_ZNK4llvm14SmallBitVector9referencecvbEv.exit:    ; preds = %bb.e
  %i.ak = inttoptr i64 %i.aa to ptr
  %i.al = lshr i64 %.02043, 6
  %i.am = and i64 %i.al, 67108863
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = and i64 %.02043, 63
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !49
  %i.ar = shl nuw i64 1, %i.ap
  %i.as = and i64 %i.aq, %i.ar
  %.not40 = icmp eq i64 %i.as, 0
  br i1 %.not40, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.split, %_ZNK4llvm14SmallBitVector9referencecvbEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor21ParallelInsertSliceOpEE13getMixedSizesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.296") align 8 %13, ptr noundef nonnull align 1 dereferenceable(1) %8)
  %i.at = load ptr, ptr %13, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.02043
  %.sroa.06.0.copyload = load i64, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor13InsertSliceOpEE13getMixedSizesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.296") align 8 %14, ptr noundef nonnull align 1 dereferenceable(1) %9)
  %i.av = add nsw i64 %.01944, 1
  %i.aw = load ptr, ptr %14, align 8, !tbaa !15   ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.01944
  %.sroa.05.0.copyload = load i64, ptr %i.ax, align 8
  %.not41 = icmp eq i64 %.sroa.06.0.copyload, %.sroa.05.0.copyload
  %i.ay = icmp eq ptr %i.aw, %i.y
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.aw) #17
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.az = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.z
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit21, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit
  call void @free(ptr noundef %i.az) #17
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit21

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit21: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br i1 %.not41, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.bc, align 1, !tbaa !114
  store ptr @.str.30, ptr %7, align 8, !tbaa !115
  store i8 3, ptr %i.bb, align 8, !tbaa !116
  %i.bd = load ptr, ptr %9, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr %7, ptr %6, align 8, !tbaa !118
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !119 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.bf) #17
  br i1 %i.bg, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %.thread

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.bh, align 8
  %i.bi = ptrtoint ptr %6 to i64
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.bf, ptr %.sroa.0.0.copyload.i.i.i.i22, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor13InsertSliceOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.bi) #17, !inline_history !2
  br label %.thread

.thread:                                          ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.r

bb.k:                                             ; preds = %.split, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit21, %_ZNK4llvm14SmallBitVector9referencecvbEv.exit
  %.1 = phi i64 [ %.01944, %_ZNK4llvm14SmallBitVector9referencecvbEv.exit ], [ %i.av, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit21 ], [ %.01944, %.split ]
  %i.bm = add nuw nsw i64 %.02043, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !326

._crit_edge:                                      ; preds = %bb.k, %bb.d
  %i.bn = load ptr, ptr %8, align 8, !tbaa !99
  %i.bo = call noundef ptr @_ZN4mlir11OpInterfaceINS_28ParallelCombiningOpInterfaceENS_6detail43ParallelCombiningOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %i.bn)
  %.not39 = icmp eq ptr %i.bo, null
  br i1 %.not39, label %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor21ParallelInsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %._crit_edge
  %i.bp = load ptr, ptr %8, align 8, !tbaa !99
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !106, !nonnull !67, !noundef !67
  %i.bs = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.br) #17 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !106
  %i.bv = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.bs) #17
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !105
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.bv, ptr %i.bx, align 8
  br label %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor21ParallelInsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit

_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor21ParallelInsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.by, ptr %15, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i32 0, ptr %i.bz, align 8, !tbaa !52
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 6, ptr %i.ca, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.cb, ptr %16, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i32 0, ptr %i.cc, align 8, !tbaa !52
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 6, ptr %i.cd, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.ce = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.ce, ptr %17, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i32 0, ptr %i.cf, align 8, !tbaa !52
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 6, ptr %i.cg, align 4, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %8, align 8, !tbaa !99    ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cj, align 8
  %i.ck = call noundef ptr @_ZN4mlir11OpInterfaceINS_30OffsetSizeAndStrideOpInterfaceENS_6detail45OffsetSizeAndStrideOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.ci)
  %.sroa.01.0.copyload = load ptr, ptr %9, align 8 ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %.sroa.01.0.copyload, null
  br i1 %.not.i.i.i24, label %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor13InsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor21ParallelInsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit
  %i.cl = call noundef ptr @_ZN4mlir11OpInterfaceINS_30OffsetSizeAndStrideOpInterfaceENS_6detail45OffsetSizeAndStrideOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %.sroa.01.0.copyload)
  br label %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor13InsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit

_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor13InsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit: ; preds = %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor21ParallelInsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit, %bb.l
  %i.cm = phi ptr [ %i.cl, %bb.l ], [ null, %_ZN4mlir30OffsetSizeAndStrideOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_6tensor21ParallelInsertSliceOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit ]
  %i.cn = call i8 @_ZN4mlir6affine27mergeOffsetsSizesAndStridesERNS_9OpBuilderENS_8LocationENS_30OffsetSizeAndStrideOpInterfaceES4_RKN4llvm14SmallBitVectorERNS5_11SmallVectorINS_12OpFoldResultELj6EEESC_SC_(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.ci, ptr %i.ck, ptr %.sroa.01.0.copyload, ptr %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(64) %17) #17
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.m, label %bb.n
end_hunk_3
