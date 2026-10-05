Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PackAndUnpackPatterns?download=true
inline.NumInlined: 2759
inline.NumDeleted: 1519
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4mlir6linalg45populateFoldPackUnpackIntoTensorEmptyPatternsERNS_17RewritePatternSetE:bb.a
  %i.cw = getelementptr i8, ptr %next.gep37, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep37, align 8, !tbaa !62, !alias.scope !315, !noalias !313
  store <2 x ptr> splat (ptr null), ptr %i.cw, align 8, !tbaa !62, !alias.scope !315, !noalias !313
  %index.next40 = add nuw i64 %index35, 4         ; 2 uses
  %i.cx = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.cx, label %middle.block41, label %vector.body34, !llvm.loop !303

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %i.cl, %n.vec33
  br i1 %cmp.n42, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16.i, label %.lr.ph.i.i.i.i.i.i12.i.preheader45

.lr.ph.i.i.i.i.i.i12.i.preheader45:               ; preds = %vector.memcheck28, %.lr.ph.i.i.i.i.i.i12.i.preheader, %middle.block41
  %.012.i.i.i.i.i.i13.i.ph = phi ptr [ %i.cg, %vector.memcheck28 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i12.i.preheader ], [ %i.cr, %middle.block41 ]
  %.0911.i.i.i.i.i.i14.i.ph = phi ptr [ %i.bv, %vector.memcheck28 ], [ %i.bv, %.lr.ph.i.i.i.i.i.i12.i.preheader ], [ %i.cs, %middle.block41 ]
  br label %.lr.ph.i.i.i.i.i.i12.i

.lr.ph.i.i.i.i.i.i12.i:                           ; preds = %.lr.ph.i.i.i.i.i.i12.i.preheader45, %.lr.ph.i.i.i.i.i.i12.i
  %.012.i.i.i.i.i.i13.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i12.i ], [ %.012.i.i.i.i.i.i13.i.ph, %.lr.ph.i.i.i.i.i.i12.i.preheader45 ] ; 2 uses
  %.0911.i.i.i.i.i.i14.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i12.i ], [ %.0911.i.i.i.i.i.i14.i.ph, %.lr.ph.i.i.i.i.i.i12.i.preheader45 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.cy = load i64, ptr %.0911.i.i.i.i.i.i14.i, align 8, !tbaa !62, !alias.scope !314, !noalias !313
  store i64 %i.cy, ptr %.012.i.i.i.i.i.i13.i, align 8, !tbaa !62, !alias.scope !313, !noalias !314
  store ptr null, ptr %.0911.i.i.i.i.i.i14.i, align 8, !tbaa !62, !alias.scope !314, !noalias !313
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i14.i, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i13.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i15.i = icmp eq ptr %i.cz, %i.bs
  br i1 %.not.i.i.i.i.i.i15.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16.i, label %.lr.ph.i.i.i.i.i.i12.i, !llvm.loop !304

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16.i: ; preds = %.lr.ph.i.i.i.i.i.i12.i, %middle.block41, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i8.i
  %.0.lcssa.i.i.i.i.i.i17.i = phi ptr [ %i.cg, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i8.i ], [ %i.cr, %middle.block41 ], [ %i.da, %.lr.ph.i.i.i.i.i.i12.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i17.i, i64 8
  %.not.i23.i.i.i18.i = icmp eq ptr %i.bv, null
  br i1 %.not.i23.i.i.i18.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_INS1_6linalg12_GLOBAL__N_127FoldEmptyTensorWithUnPackOpES3_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16.i
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.de) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_INS1_6linalg12_GLOBAL__N_127FoldEmptyTensorWithUnPackOpES3_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_INS1_6linalg12_GLOBAL__N_127FoldEmptyTensorWithUnPackOpES3_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16.i
  store ptr %i.cg, ptr %i.o, align 8, !tbaa !61
  store ptr %i.db, ptr %i.p, align 8, !tbaa !56
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.df, ptr %i.r, align 8, !tbaa !57
  br label %_ZN4mlir17RewritePatternSet3addIJNS_6linalg12_GLOBAL__N_125FoldEmptyTensorWithPackOpENS3_27FoldEmptyTensorWithUnPackOpEEPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit

_ZN4mlir17RewritePatternSet3addIJNS_6linalg12_GLOBAL__N_125FoldEmptyTensorWithPackOpENS3_27FoldEmptyTensorWithUnPackOpEEPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_INS1_6linalg12_GLOBAL__N_127FoldEmptyTensorWithUnPackOpES3_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2), i32 noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir6linalg12_GLOBAL__N_128FoldUnpackWithExtractSliceOpD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4mlir6linalg12_GLOBAL__N_128FoldUnpackWithExtractSliceOpE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3) #17, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.i) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir6linalg12_GLOBAL__N_128FoldUnpackWithExtractSliceOpD0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4mlir6linalg12_GLOBAL__N_128FoldUnpackWithExtractSliceOpE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3) #17, !inline_history !317 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #17, !inline_history !318
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4mlir6linalg12_GLOBAL__N_128FoldUnpackWithExtractSliceOpD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.i) #17, !inline_history !318
  br label %_ZN4mlir6linalg12_GLOBAL__N_128FoldUnpackWithExtractSliceOpD2Ev.exit

_ZN4mlir6linalg12_GLOBAL__N_128FoldUnpackWithExtractSliceOpD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6tensor14ExtractSliceOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK4mlir6linalg12_GLOBAL__N_128FoldUnpackWithExtractSliceOp15matchAndRewriteENS_6tensor14ExtractSliceOpERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef.117", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.mlir::tensor::ExtractSliceOp", align 8 ; 9 uses
  %5 = alloca %"class.mlir::linalg::UnPackOp", align 8 ; 10 uses
  %6 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 5 uses
  %7 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  %8 = alloca %"class.llvm::SmallVector.118", align 8 ; 7 uses
  %9 = alloca %"class.llvm::SmallVector.118", align 8 ; 7 uses
  %10 = alloca %"class.llvm::ArrayRef.124", align 8 ; 5 uses
  store ptr %1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.b = call i64 @_ZN4mlir6tensor14ExtractSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #17
  %i.c = load ptr, ptr %4, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = and i64 %i.b, 4294967295
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %6, align 8
  %i.i = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #17 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79
  %i.m = icmp eq ptr %i.l, @_ZN4mlir6detail14TypeIDResolverINS_6linalg8UnPackOpEvE2idE
  %11 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6linalg8UnPackOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %11, %i.m
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.d:                                             ; preds = %bb.b
  store ptr %i.i, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 44 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 8388608
  %.not.i.i.i9 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i9, label %_ZN4mlir9Operation11getOperandsEv.exit.i, label %bb.e, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !81
  %i.u = zext i32 %i.t to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit.i

_ZN4mlir9Operation11getOperandsEv.exit.i:         ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i10 = phi ptr [ %i.r, %bb.e ], [ null, %bb.d ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ %i.u, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.v = call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6detail32DestinationStyleOpInterfaceTraitINS3_6linalg8UnPackOpEE22hasPureTensorSemanticsEvEUlS7_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i.i10, i64 0, ptr %.sroa.0.0.i.i.i10, i64 %.sroa.4.0.i.i.i)
  %i.w = extractvalue { ptr, i64 } %i.v, 1
  %.not.i = icmp eq i64 %.sroa.4.0.i.i.i, %i.w
  br i1 %.not.i, label %bb.f, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.f:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i
  %i.x = load i32, ptr %i.n, align 4
  %i.y = and i32 %i.x, 8388608
  %.not.i.i2.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i2.i, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit, label %bb.g, !prof !80

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !81
  %i.ad = zext i32 %i.ac to i64
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i3.i = phi ptr [ %i.aa, %bb.g ], [ null, %bb.f ] ; 2 uses
  %.sroa.4.0.i.i4.i = phi i64 [ %i.ad, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.ae = call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6detail32DestinationStyleOpInterfaceTraitINS3_6linalg8UnPackOpEE22hasPureTensorSemanticsEvEUlS7_E0_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i3.i, i64 0, ptr %.sroa.0.0.i.i3.i, i64 %.sroa.4.0.i.i4.i)
  %i.af = extractvalue { ptr, i64 } %i.ae, 1
  %.not = icmp eq i64 %.sroa.4.0.i.i4.i, %i.af
  br i1 %.not, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44
  %.not.i.i.not = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = call i64 @_ZN4mlir6tensor14ExtractSliceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #17
  %i.ak = load ptr, ptr %4, align 8, !tbaa !70
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.an = and i64 %i.aj, 4294967295
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !82
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !44
  %.not.i.i11 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i11, label %bb.j, label %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit

bb.j:                                             ; preds = %bb.i
  call void @_ZSt25__throw_bad_function_callv() #18
  unreachable

_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !48
  %i.as = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17, !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.as, label %bb.k, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.k:                                             ; preds = %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit, %bb.h
  %.sroa.05.0.copyload = load ptr, ptr %4, align 8
  %i.at = call noundef zeroext i1 @_ZN4mlir6linalg8UnPackOp14canFoldSliceOpENS_6tensor14ExtractSliceOpE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %.sroa.05.0.copyload) #17
  br i1 %i.at, label %bb.l, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.au = call { ptr, ptr } @_ZN4mlir6linalg8UnPackOp11getDestTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  store ptr %i.av, ptr %7, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = extractvalue { ptr, ptr } %i.au, 1
  store ptr %i.ax, ptr %i.aw, align 8
  %i.ay = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %4, align 8, !tbaa !70
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZN4mlir6detail35OffsetSizeAndStrideOpInterfaceTraitINS_6tensor14ExtractSliceOpEE13getMixedSizesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.118") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.bc = load ptr, ptr %8, align 8, !tbaa !69
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !54
  %i.bf = zext i32 %i.be to i64
  %i.bg = call ptr @_ZN4mlir6tensor7EmptyOp6createERNS_9OpBuilderENS_8LocationEN4llvm8ArrayRefINS_12OpFoldResultEEENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr %.sroa.0.0.copyload.i.i, ptr %i.bc, i64 %i.bf, ptr %i.ay, ptr null) #17
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -16
  %i.bi = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.bi) #17
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.bl = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.bm = call i64 @_ZN4mlir6linalg8UnPackOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #17
  %i.bn = load ptr, ptr %5, align 8, !tbaa !70
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !73
  %i.bq = and i64 %i.bm, 4294967295
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.0.0.copyload.i.i.i.i13 = load ptr, ptr %i.bs, align 8, !tbaa !75
  %i.bt = call { ptr, i64 } @_ZN4mlir6linalg8UnPackOp15getInnerDimsPosEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17 ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bt, 0
  %i.bv = extractvalue { ptr, i64 } %i.bt, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @_ZN4mlir6linalg8UnPackOp13getMixedTilesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.118") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.bw = call { ptr, i64 } @_ZN4mlir6linalg8UnPackOp16getOuterDimsPermEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17 ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0
  store ptr %i.bx, ptr %10, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bz = extractvalue { ptr, i64 } %i.bw, 1
  store i64 %i.bz, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %.sroa.0.0.copyload.i.i14 = load ptr, ptr %i.ca, align 8
  %i.cb = load ptr, ptr %9, align 8, !tbaa !69
  store ptr %i.cb, ptr %3, align 8, !tbaa !85
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !54
  %i.cf = zext i32 %i.ce to i64
  store i64 %i.cf, ptr %i.cc, align 8, !tbaa !86
  %i.cg = call ptr @_ZN4mlir6linalg8UnPackOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefIlEENS7_INS_12OpFoldResultEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr %.sroa.0.0.copyload.i.i14, ptr %.sroa.0.0.copyload.i.i.i.i13, ptr nonnull %i.bh, ptr %i.bu, i64 %i.bv, ptr noundef nonnull byval(%"class.llvm::ArrayRef.117") align 8 %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.124") align 8 %10) #17
  %i.ch = load ptr, ptr %2, align 8, !tbaa !46
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.bl, ptr noundef %i.cg) #17, !inline_history !319
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.ck = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit15, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit
  call void @free(ptr noundef %i.ck) #17
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit15

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit15: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i, %bb.k, %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit15, %bb.c
  %.sroa.08.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit15 ], [ 0, %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit ], [ 0, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit ], [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i8 %.sroa.08.0
}

declare void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64, i16, ptr noundef, ptr noundef byval(%"class.llvm::ArrayRef") align 8) unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN4mlir6linalg8UnPackOp14canFoldSliceOpENS_6tensor14ExtractSliceOpE(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4mlir6linalg8UnPackOp11getDestTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.mlir::detail::TypedValue.123", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = tail call i64 @_ZN4mlir6linalg8UnPackOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1) #17
  %i.b = load ptr, ptr %0, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = and i64 %i.a, 4294967295
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %1, align 8
  %i.h = call { ptr, ptr } @_ZNK4mlir6detail10TypedValueINS_10ShapedTypeEE7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4mlir6detail10TypedValueINS_10ShapedTypeEE7getTypeEv:bb.a
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !68 ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !69   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.o = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.o ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.q = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = xor i64 %i.o, -1
  %i.t = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.s
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.q, ptr %i.r, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.q, i64 %i.t, i64 %i.o ; 2 uses
  %i.u = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.u, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.v
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.w = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !79
  %i.x = icmp eq ptr %i.w, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.x, label %bb.f, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit: ; preds = %bb.a, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.aa = phi ptr [ null, %bb.a ], [ %i.z, %bb.f ], [ null, %bb.e ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %i.aa, 1
  ret { ptr, ptr } %.fca.1.insert.i.i
}

declare i64 @_ZN4mlir6linalg8UnPackOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare void @_ZN4mlir14getMixedValuesEN4llvm8ArrayRefIlEENS_10ValueRangeERNS_7BuilderE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.118") align 8, ptr, i64, i64, i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare { ptr, i64 } @_ZN4mlir6tensor14ExtractSliceOp14getStaticSizesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #3

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir6linalg8UnPackOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefIlEENS7_INS_12OpFoldResultEEES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.117") align 8, ptr noundef byval(%"class.llvm::ArrayRef.124") align 8) local_unnamed_addr #3

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir6linalg12_GLOBAL__N_117FoldPadWithPackOpD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4mlir6linalg12_GLOBAL__N_117FoldPadWithPackOpE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3) #17, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.i) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir6linalg12_GLOBAL__N_117FoldPadWithPackOpD0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4mlir6linalg12_GLOBAL__N_117FoldPadWithPackOpE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3) #17, !inline_history !324 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #17, !inline_history !325
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4mlir6linalg12_GLOBAL__N_117FoldPadWithPackOpD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.i) #17, !inline_history !325
  br label %_ZN4mlir6linalg12_GLOBAL__N_117FoldPadWithPackOpD2Ev.exit

_ZN4mlir6linalg12_GLOBAL__N_117FoldPadWithPackOpD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6linalg6PackOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK4mlir6linalg12_GLOBAL__N_117FoldPadWithPackOp15matchAndRewriteENS0_6PackOpERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.mlir::linalg::PackOp", align 8 ; 17 uses
  %5 = alloca %"class.mlir::tensor::PadOp", align 8 ; 12 uses
  %6 = alloca %"struct.mlir::detail::TypedValue.123", align 8 ; 5 uses
  %7 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %8 = alloca %"class.mlir::ShapedType", align 8  ; 6 uses
  %9 = alloca %"class.llvm::SmallVector.255", align 8 ; 7 uses
  %10 = alloca %"class.llvm::detail::zippy", align 8 ; 13 uses
  %11 = alloca %"class.llvm::SmallVector.118", align 8 ; 7 uses
  %12 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 4 uses
  %13 = alloca %"struct.mlir::detail::TypedValue.123", align 8 ; 4 uses
  %14 = alloca %"class.llvm::ArrayRef.124", align 8 ; 5 uses
  %15 = alloca %"class.llvm::SmallVector.118", align 8 ; 6 uses
  %16 = alloca %"class.llvm::ArrayRef.124", align 8 ; 5 uses
  store ptr %1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.b = call i64 @_ZN4mlir6linalg6PackOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #17
  %i.c = load ptr, ptr %4, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = and i64 %i.b, 4294967295
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %6, align 8
  %i.i = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79
  %i.m = icmp eq ptr %i.l, @_ZN4mlir6detail14TypeIDResolverINS_6tensor5PadOpEvE2idE
  %17 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor5PadOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %17, %i.m
  br i1 %spec.select.i.i.i.i.i.i, label %bb.c, label %_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit.thread

_ZNK4mlir5Value13getDefiningOpINS_6tensor5PadOpEEET_v.exit.thread: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.y

bb.c:                                             ; preds = %bb.b
  store ptr %i.i, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.n = call noundef zeroext i1 @_ZN4mlir6tensor5PadOp9getNofoldEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  br i1 %i.n, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef zeroext i1 @_ZN4mlir6tensor5PadOp13hasZeroLowPadEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %i.o, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  %.not.i.i.not = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call i64 @_ZN4mlir6linalg6PackOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #17
  %i.t = load ptr, ptr %4, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.w = and i64 %i.s, 4294967295
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.x, ptr %i.a, align 8, !tbaa !82
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !44
  %.not.i.i24 = icmp eq ptr %i.y, null
  br i1 %.not.i.i24, label %bb.g, label %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZSt25__throw_bad_function_callv() #18
  unreachable

_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17, !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ab, label %bb.h, label %bb.y

bb.h:                                             ; preds = %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ac = call ptr @_ZN4mlir6tensor5PadOp23getConstantPaddingValueEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17 ; 3 uses
  store ptr %i.ac, ptr %7, align 8
  %.not58 = icmp eq ptr %i.ac, null
  br i1 %.not58, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call i64 @_ZN4mlir6linalg6PackOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2) #17 ; 3 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 8388608
  %.not.i.i.i.i.i25 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i25, label %_ZN4mlir6linalg6PackOp14getODSOperandsEj.exit.i, label %bb.j, !prof !80

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73
  br label %_ZN4mlir6linalg6PackOp14getODSOperandsEj.exit.i

_ZN4mlir6linalg6PackOp14getODSOperandsEj.exit.i:  ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.aj, %bb.j ], [ null, %bb.i ]
  %i.ak = and i64 %i.ad, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.ad, 32
  %i.al = add i64 %.sroa.5.0.extract.shift.i.i, %i.ad
  %i.am = and i64 %i.al, 4294967295
  %i.an = icmp eq i64 %i.am, %i.ak
  br i1 %i.an, label %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit.thread, label %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit

_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit:   ; preds = %_ZN4mlir6linalg6PackOp14getODSOperandsEj.exit.i
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.0.0.copyload.i.i.i.i26 = load ptr, ptr %i.ap, align 8, !tbaa !75 ; 2 uses
  %.not59 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i26, null
  br i1 %.not59, label %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit
  %i.aq = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i26 to i64
  %i.ar = or i64 %i.aq, 4
  %i.as = ptrtoint ptr %i.ac to i64
  %i.at = or i64 %i.as, 4
  %i.au = call noundef zeroext i1 @_ZN4mlir25isEqualConstantIntOrValueENS_12OpFoldResultES0_(i64 %i.ar, i64 %i.at) #17
  br i1 %i.au, label %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit.thread, label %bb.x

_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit.thread: ; preds = %_ZN4mlir6linalg6PackOp14getODSOperandsEj.exit.i, %bb.k, %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.av = call { ptr, ptr } @_ZN4mlir6linalg6PackOp13getSourceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %i.av, 0
  store ptr %i.aw, ptr %8, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ay = extractvalue { ptr, ptr } %i.av, 1
  store ptr %i.ay, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %.sroa.014.0.copyload = load ptr, ptr %4, align 8
  call void @_ZN4mlir6linalg39getPackedOuterShapeWithoutTranspositionINS0_6PackOpEvEEN4llvm11SmallVectorIlLj6EEET_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.255") align 8 %9, ptr %.sroa.014.0.copyload) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.az = call { ptr, i64 } @_ZN4mlir6linalg6PackOp15getInnerDimsPosEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0      ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.az, 1      ; 2 uses
  %i.bc = call { ptr, i64 } @_ZN4mlir6linalg6PackOp19getStaticInnerTilesEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17 ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0      ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bf = call { ptr, i64 } @_ZN4mlir6tensor5PadOp13getStaticHighEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17, !noalias !338 ; 2 uses
  %i.bg = call i64 @_ZN4mlir6tensor5PadOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2) #17, !noalias !338 ; 3 uses
  %i.bh = load ptr, ptr %5, align 8, !tbaa !70, !noalias !338 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !338
  %i.bk = and i32 %i.bj, 8388608
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit, label %bb.l, !prof !80

bb.l:                                             ; preds = %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !73, !noalias !338
  br label %_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit

_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit:    ; preds = %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit.thread, %bb.l
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.l ], [ null, %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit.thread ]
  %i.bn = extractvalue { ptr, i64 } %i.bf, 1
  %i.bo = extractvalue { ptr, i64 } %i.bf, 0
  %i.bp = and i64 %i.bg, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %i.bg, 32
  %i.bq = add i64 %.sroa.5.0.extract.shift.i.i.i, %i.bg
  %i.br = and i64 %i.bq, 4294967295
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.bp
  %i.bt = sub nsw i64 %i.br, %i.bp
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.bs, i64 %i.bt) #17, !noalias !338
  %i.bu = load i64, ptr %3, align 8, !noalias !338
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !338
  call void @_ZN4mlir6tensor5PadOp15getMixedPadImplEN4llvm8ArrayRefIlEENS_10ValueRangeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.118") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %i.bo, i64 %i.bn, i64 %i.bu, i64 %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bx, ptr %10, align 8, !tbaa !69, !alias.scope !339
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.by, align 8, !tbaa !54, !alias.scope !339
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 6, ptr %i.bz, align 4, !tbaa !55, !alias.scope !339
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !54, !noalias !339
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9zip_equalINS_8ArrayRefIlEES2_JNS_11SmallVectorIN4mlir12OpFoldResultELj6EEEEEENS_6detail5zippyINS7_9zip_firstEJT_T0_DpT1_EEEOSA_OSB_DpOSC_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit
  %i.cc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 8 dereferenceable(64) %11) ; 0 uses
  br label %_ZN4llvm9zip_equalINS_8ArrayRefIlEES2_JNS_11SmallVectorIN4mlir12OpFoldResultELj6EEEEEENS_6detail5zippyINS7_9zip_firstEJT_T0_DpT1_EEEOSA_OSB_DpOSC_.exit

_ZN4llvm9zip_equalINS_8ArrayRefIlEES2_JNS_11SmallVectorIN4mlir12OpFoldResultELj6EEEEEENS_6detail5zippyINS7_9zip_firstEJT_T0_DpT1_EEEOSA_OSB_DpOSC_.exit: ; preds = %_ZN4mlir6tensor5PadOp15getMixedHighPadEv.exit, %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  store ptr %i.bd, ptr %i.cd, align 8, !tbaa !95
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i64 %i.be, ptr %.sroa.445.0..sroa_idx, align 8, !tbaa !51
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  store ptr %i.ba, ptr %i.ce, align 8, !tbaa !95
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  store i64 %i.bb, ptr %.sroa.447.0..sroa_idx, align 8, !tbaa !51
  %i.cf = load ptr, ptr %11, align 8, !tbaa !69   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm9zip_equalINS_8ArrayRefIlEES2_JNS_11SmallVectorIN4mlir12OpFoldResultELj6EEEEEENS_6detail5zippyINS7_9zip_firstEJT_T0_DpT1_EEEOSA_OSB_DpOSC_.exit
  call void @free(ptr noundef %i.cf) #17
  %.pre = load ptr, ptr %i.ce, align 8, !tbaa !97, !noalias !340
  %.pre75 = load ptr, ptr %i.cd, align 8, !tbaa !97, !noalias !340
  %.pre76 = load i64, ptr %.sroa.447.0..sroa_idx, align 8, !tbaa !98, !noalias !341
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %_ZN4llvm9zip_equalINS_8ArrayRefIlEES2_JNS_11SmallVectorIN4mlir12OpFoldResultELj6EEEEEENS_6detail5zippyINS7_9zip_firstEJT_T0_DpT1_EEEOSA_OSB_DpOSC_.exit, %bb.n
  %i.ci = phi i64 [ %i.bb, %_ZN4llvm9zip_equalINS_8ArrayRefIlEES2_JNS_11SmallVectorIN4mlir12OpFoldResultELj6EEEEEENS_6detail5zippyINS7_9zip_firstEJT_T0_DpT1_EEEOSA_OSB_DpOSC_.exit ], [ %.pre76, %bb.n ] ; 2 uses
  %i.cj = phi ptr [ %i.bd, %_ZN4llvm9zip_equalINS_8ArrayRefIlEES2_JNS_11SmallVectorIN4mlir12OpFoldResultELj6EEEEEENS_6detail5zippyINS7_9zip_firstEJT_T0_DpT1_EEEOSA_OSB_DpOSC_.exit ], [ %.pre75, %bb.n ]
  %i.ck = phi ptr [ %i.ba, %_ZN4llvm9zip_equalINS_8ArrayRefIlEES2_JNS_11SmallVectorIN4mlir12OpFoldResultELj6EEEEEENS_6detail5zippyINS7_9zip_firstEJT_T0_DpT1_EEEOSA_OSB_DpOSC_.exit ], [ %.pre, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.cl = load ptr, ptr %10, align 8, !tbaa !69, !noalias !340 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ci, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx
  %.not6061 = icmp eq i64 %i.ci, 0
  br i1 %.not6061, label %.thread55, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, %bb.r
  %.sroa.038.064 = phi ptr [ %i.dv, %bb.r ], [ %i.cl, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit ] ; 2 uses
  %.sroa.640.063 = phi ptr [ %i.du, %bb.r ], [ %i.cj, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit ] ; 4 uses
  %.sroa.10.062 = phi ptr [ %i.dt, %bb.r ], [ %i.ck, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit ] ; 4 uses
  %i.cn = load i64, ptr %.sroa.10.062, align 8, !tbaa !51
  %i.co = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #17
  %i.cp = extractvalue { ptr, i64 } %i.co, 0
  %i.cq = and i64 %i.cn, 4294967295
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !51
  %i.ct = icmp eq i64 %i.cs, -9223372036854775808
end_hunk_1
begin_hunk_2_@_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEEaSEOS3_:bb.a

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !80

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.b, align 8
  store i64 %i.z, ptr %i.y, align 8
  br label %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit34

_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit34: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !54
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !69
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit: ; preds = %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !54
  store i32 0, ptr %i.m, align 8, !tbaa !54
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPN4mlir12OpFoldResultES2_ET0_T_S4_S3_.exit, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE12assignRemoteEOS3_.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare { ptr, i64 } @_ZN4mlir6tensor5PadOp13getStaticHighEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #11 comdat {
bb.a:
  tail call void @abort() #18
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

declare ptr @_ZN4mlir6linalg6PackOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefIlEENS7_INS_12OpFoldResultEEESt8optionalIS5_ES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.117") align 8, ptr noundef byval(%"class.std::optional.298") align 8, ptr noundef byval(%"class.llvm::ArrayRef.124") align 8) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir6linalg12_GLOBAL__N_145FoldProducerPackWithConsumerLinalgTransposeOpD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4mlir6linalg12_GLOBAL__N_145FoldProducerPackWithConsumerLinalgTransposeOpE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3) #17, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.i) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir6linalg12_GLOBAL__N_145FoldProducerPackWithConsumerLinalgTransposeOpD0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4mlir6linalg12_GLOBAL__N_145FoldProducerPackWithConsumerLinalgTransposeOpE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3) #17, !inline_history !347 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #17, !inline_history !348
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4mlir6linalg12_GLOBAL__N_145FoldProducerPackWithConsumerLinalgTransposeOpD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.i) #17, !inline_history !348
  br label %_ZN4mlir6linalg12_GLOBAL__N_145FoldProducerPackWithConsumerLinalgTransposeOpD2Ev.exit

_ZN4mlir6linalg12_GLOBAL__N_145FoldProducerPackWithConsumerLinalgTransposeOpD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6linalg8LinalgOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm4castIN4mlir6linalg8LinalgOpENS1_9OperationEEEDcPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1)
  br label %_ZN4llvm4castIN4mlir6linalg8LinalgOpENS1_9OperationEEEDcPT0_.exit

_ZN4llvm4castIN4mlir6linalg8LinalgOpENS1_9OperationEEEDcPT0_.exit: ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %i.c = load ptr, ptr %0, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK4mlir6linalg12_GLOBAL__N_145FoldProducerPackWithConsumerLinalgTransposeOp15matchAndRewriteENS0_8LinalgOpERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(40) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.117", align 8 ; 5 uses
  %5 = alloca %"class.std::optional.298", align 8 ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.124", align 8 ; 5 uses
  %7 = alloca %class.anon.424, align 8            ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.mlir::linalg::PackOp", align 8 ; 14 uses
  %11 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %12 = alloca %"class.llvm::FailureOr", align 8  ; 9 uses
  %13 = alloca %"class.llvm::SmallVector.118", align 8 ; 6 uses
  %14 = alloca %"class.llvm::SmallVector.255", align 8 ; 13 uses
  %15 = alloca %"class.llvm::SmallVector.255", align 8 ; 11 uses
  %16 = alloca %"class.llvm::SmallVector.118", align 8 ; 11 uses
  %17 = alloca %"class.llvm::ArrayRef.124", align 8 ; 3 uses
  %18 = alloca %"class.llvm::ArrayRef.124", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i, ptr %11, align 8
  %i.e = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #17 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.i = icmp eq ptr %i.h, @_ZN4mlir6detail14TypeIDResolverINS_6linalg6PackOpEvE2idE
  %19 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6linalg6PackOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %19, %i.i
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 8388608
  %.not.i.i.i25 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i25, label %_ZN4mlir9Operation11getOperandsEv.exit.i, label %bb.e, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !81
  %i.q = zext i32 %i.p to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit.i

_ZN4mlir9Operation11getOperandsEv.exit.i:         ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i26 = phi ptr [ %i.n, %bb.e ], [ null, %bb.d ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.r = call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6detail32DestinationStyleOpInterfaceTraitINS3_6linalg6PackOpEE22hasPureTensorSemanticsEvEUlS7_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i.i26, i64 0, ptr %.sroa.0.0.i.i.i26, i64 %.sroa.4.0.i.i.i)
  %i.s = extractvalue { ptr, i64 } %i.r, 1
  %.not.i = icmp eq i64 %.sroa.4.0.i.i.i, %i.s
  br i1 %.not.i, label %bb.f, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.f:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i
  %i.t = load ptr, ptr %10, align 8, !tbaa !70    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 8388608
  %.not.i.i2.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i2.i, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit, label %bb.g, !prof !80

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !81
  %i.ab = zext i32 %i.aa to i64
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i3.i = phi ptr [ %i.y, %bb.g ], [ null, %bb.f ] ; 2 uses
  %.sroa.4.0.i.i4.i = phi i64 [ %i.ab, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.ac = call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6detail32DestinationStyleOpInterfaceTraitINS3_6linalg6PackOpEE22hasPureTensorSemanticsEvEUlS7_E0_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i3.i, i64 0, ptr %.sroa.0.0.i.i3.i, i64 %.sroa.4.0.i.i4.i)
  %i.ad = extractvalue { ptr, i64 } %i.ac, 1
  %.not = icmp eq i64 %.sroa.4.0.i.i4.i, %i.ad
  br i1 %.not, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44
  %.not.i.i.not = icmp eq ptr %i.af, null
  br i1 %.not.i.i.not, label %bb.i, label %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit

_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit: ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !82
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48
  %i.ak = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17, !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ak, label %bb.i, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.i:                                             ; preds = %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call fastcc void @_ZN4mlir6linalg12_GLOBAL__N_125getTransposeOpPermutationENS0_8LinalgOpE(ptr dead_on_unwind noalias writable align 8 %12, ptr nonnull %1, ptr %2)
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !106, !range !107, !noundef !108
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.j, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ao = call { ptr, i64 } @_ZN4mlir6linalg6PackOp15getInnerDimsPosEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @_ZN4mlir6linalg6PackOp13getMixedTilesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.118") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  %i.aq = call { ptr, i64 } @_ZN4mlir6linalg6PackOp16getOuterDimsPermEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  %.fr = freeze { ptr, i64 } %i.aq                ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %.fr, 0
  %i.as = extractvalue { ptr, i64 } %.fr, 1
  %i.at = load i8, ptr %i.al, align 8, !tbaa !106, !range !107, !noundef !108
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNRSt8optionalIN4llvm11SmallVectorIlLj6EEEE5valueEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZSt27__throw_bad_optional_accessv() #20
  unreachable

_ZNRSt8optionalIN4llvm11SmallVectorIlLj6EEEE5valueEv.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.av, ptr %14, align 8, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 9 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 3 uses
  store i32 6, ptr %i.ax, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.ay, ptr %15, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  store i32 0, ptr %i.az, align 8, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  store i32 6, ptr %i.ba, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.bb, ptr %16, align 8, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  store i32 6, ptr %i.bd, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.be = call { ptr, ptr } @_ZN4mlir6linalg6PackOp13getSourceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) ; 2 uses
  %i.bf = extractvalue { ptr, ptr } %i.be, 0
  store ptr %i.bf, ptr %9, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bh = extractvalue { ptr, ptr } %i.be, 1
  store ptr %i.bh, ptr %i.bg, align 8
  %i.bi = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #17
  %i.bj = extractvalue { ptr, i64 } %i.bi, 1      ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.bk = load ptr, ptr %12, align 8, !tbaa !69   ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bm = icmp slt i64 %i.bj, 1
  br i1 %i.bm, label %_ZN4mlir6linalg12_GLOBAL__N_115checkAndPermuteEN4llvm8ArrayRefIlEES4_RNS2_15SmallVectorImplIlEEl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNRSt8optionalIN4llvm11SmallVectorIlLj6EEEE5valueEv.exit
  %i.bn = icmp eq i64 %i.as, 0
  %i.bo = load i64, ptr %i.bk, align 8, !tbaa !51 ; 3 uses
  %.not.us28.i = icmp slt i64 %i.bo, %i.bj        ; 2 uses
  br i1 %i.bn, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %.not.us28.i, label %.lr.ph30.i, label %.loopexit

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.us.i
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.ca
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !51 ; 2 uses
  %.not.us.i = icmp slt i64 %i.bq, %i.bj
  br i1 %.not.us.i, label %.lr.ph30.i, label %.loopexit, !llvm.loop !3

.lr.ph30.i:                                       ; preds = %.lr.ph.split.us.i, %bb.l
  %i.br = phi i64 [ %i.bq, %bb.l ], [ %i.bo, %.lr.ph.split.us.i ] ; 2 uses
  %.01220.us29.i = phi i32 [ %i.bz, %bb.l ], [ 0, %.lr.ph.split.us.i ]
  %i.bs = load i32, ptr %i.aw, align 8, !tbaa !54 ; 2 uses
  %i.bt = load i32, ptr %i.ax, align 4, !tbaa !55
  %.not.i.us.i = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i.us.i, label %bb.n, label %bb.m, !prof !102

bb.m:                                             ; preds = %.lr.ph30.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %i.br)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.us.i

bb.n:                                             ; preds = %.lr.ph30.i
  %i.bu = zext i32 %i.bs to i64
  %i.bv = load ptr, ptr %14, align 8, !tbaa !69
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  store i64 %i.br, ptr %i.bw, align 1
  %i.bx = load i32, ptr %i.aw, align 8, !tbaa !54
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.aw, align 8, !tbaa !54
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.us.i

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.us.i: ; preds = %bb.n, %bb.m
  %i.bz = add i32 %.01220.us29.i, 1               ; 2 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %.not34.not.i = icmp sgt i64 %i.bj, %i.ca
  br i1 %.not34.not.i, label %bb.l, label %_ZN4mlir6linalg12_GLOBAL__N_115checkAndPermuteEN4llvm8ArrayRefIlEES4_RNS2_15SmallVectorImplIlEEl.exit, !llvm.loop !3

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %.not.us28.i, label %.lr.ph26.i, label %.loopexit

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.co
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !51 ; 2 uses
  %.not.i29 = icmp slt i64 %i.cc, %i.bj
  br i1 %.not.i29, label %.lr.ph26.i, label %.loopexit, !llvm.loop !3

.lr.ph26.i:                                       ; preds = %.lr.ph.split.i, %bb.o
  %i.cd = phi i64 [ %i.cc, %bb.o ], [ %i.bo, %.lr.ph.split.i ]
  %.0122025.i = phi i32 [ %i.cn, %bb.o ], [ 0, %.lr.ph.split.i ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !51 ; 2 uses
  %i.cg = load i32, ptr %i.aw, align 8, !tbaa !54 ; 2 uses
  %i.ch = load i32, ptr %i.ax, align 4, !tbaa !55
  %.not.i.i28 = icmp ult i32 %i.cg, %i.ch
  br i1 %.not.i.i28, label %bb.q, label %bb.p, !prof !102

bb.p:                                             ; preds = %.lr.ph26.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %i.cf)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i

bb.q:                                             ; preds = %.lr.ph26.i
end_hunk_2
begin_hunk_3_@_ZNK4mlir6linalg12_GLOBAL__N_145FoldProducerPackWithConsumerLinalgTransposeOp15matchAndRewriteENS0_8LinalgOpERNS_15PatternRewriterE:bb.a
  %i.gp = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit39
  call void @free(ptr noundef %i.go) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %.pre = load i8, ptr %i.al, align 8, !tbaa !106, !range !107
  %i.gr = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.al, align 8, !tbaa !106
  br i1 %i.gr, label %bb.ae, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.gs = load ptr, ptr %12, align 8, !tbaa !69   ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef %i.gs) #17
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.i, %bb.ad, %bb.ae, %bb.af
  %.sroa.023.180 = phi i8 [ %.sroa.023.0, %bb.af ], [ %.sroa.023.0, %bb.ad ], [ %.sroa.023.0, %bb.ae ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit.thread

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit.thread: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i, %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit, %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit, %bb.c
  %.sroa.023.2 = phi i8 [ %.sroa.023.180, %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit ], [ 0, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit ], [ 0, %bb.c ], [ 0, %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  ret i8 %.sroa.023.2
}

declare void @_ZN4mlir7PatternC2ENS0_23MatchInterfaceOpTypeTagENS_6TypeIDENS_14PatternBenefitEPNS_11MLIRContextEN4llvm8ArrayRefINS6_9StringRefEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i16, ptr noundef, ptr, i64) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !77 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_6linalg8LinalgOpEPNS_9OperationENS2_6detail23LinalgOpInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_6linalg8LinalgOpEPNS_9OperationENS2_6detail23LinalgOpInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 22) #17
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_6linalg8LinalgOpEPNS_9OperationENS2_6detail23LinalgOpInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_6linalg8LinalgOpEPNS_9OperationENS2_6detail23LinalgOpInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id, align 8, !tbaa !68 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !69   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_6linalg8LinalgOpEPNS_9OperationENS2_6detail23LinalgOpInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_6linalg8LinalgOpEPNS_9OperationENS2_6detail23LinalgOpInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_6linalg8LinalgOpEPNS_9OperationENS2_6detail23LinalgOpInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_6linalg8LinalgOpEPNS_9OperationENS2_6detail23LinalgOpInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_6linalg8LinalgOpEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !79
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_6linalg8LinalgOpEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_6linalg8LinalgOpEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_6linalg8LinalgOpEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !91   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_6linalg8LinalgOpEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_6linalg8LinalgOpEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_6linalg8LinalgOpEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !366  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_6linalg8LinalgOpEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !66

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_6linalg8LinalgOpEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_6linalg8LinalgOpEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 22) #17
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_6linalg8LinalgOpEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_6linalg8LinalgOpEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_6linalg8LinalgOpEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id, align 8, !tbaa !68
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #17, !inline_history !352
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
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_6linalg8LinalgOpEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !66

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_6linalg8LinalgOpEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 22) #17
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_6linalg8LinalgOpEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_6linalg8LinalgOpEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOpEvE13resolveTypeIDEvE2id, align 8, !tbaa !68
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #17, !inline_history !352
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_6linalg8LinalgOpEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_6linalg8LinalgOpEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_6linalg8LinalgOpEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_6linalg8LinalgOpEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_6linalg8LinalgOpEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_6linalg8LinalgOpEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4mlir6linalg12_GLOBAL__N_125getTransposeOpPermutationENS0_8LinalgOpE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %4 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %5 = alloca %"class.mlir::linalg::LinalgOp", align 8 ; 9 uses
  %6 = alloca %"class.mlir::linalg::TransposeOp", align 8 ; 5 uses
  %7 = alloca %"class.llvm::SmallVector.255", align 8 ; 10 uses
  %8 = alloca %"class.llvm::SmallVector.381", align 8 ; 10 uses
  %9 = alloca %"class.mlir::AffineMap", align 8   ; 4 uses
  %10 = alloca %"class.mlir::AffineMap", align 8  ; 4 uses
  %11 = alloca %"class.llvm::SmallVector.255", align 8 ; 7 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_6linalg11TransposeOpEvE2idE
  %12 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6linalg11TransposeOpEvE2idE
  %spec.select.i.i.i.i = and i1 %12, %i.e
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %6, align 8
  %.not14 = icmp eq ptr %spec.select.i.i, null
  br i1 %.not14, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.f = call { ptr, i64 } @_ZN4mlir6linalg11TransposeOp14getPermutationEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #17 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 0, ptr %i.j, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 6, ptr %i.k, align 4, !tbaa !55
  %.idx.i = shl nuw nsw i64 %i.h, 3
  %i.l = icmp ugt i64 %i.h, 6
  br i1 %i.l, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.i, i64 noundef %i.h, i64 noundef 8) #17
  %.pre8.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !54
  %i.m = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %7, align 8, !tbaa !69
  br label %bb.c

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i:  ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i
  %i.n = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i ], [ %i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.m, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 8 %i.g, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !54
  br label %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i, %bb.c
  %i.p = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.c ]
  %i.q = trunc i64 %i.h to i32
  %i.r = add i32 %i.p, %i.q                       ; 2 uses
  store i32 %i.r, ptr %i.j, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %0, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.u, align 4, !tbaa !55
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9FailureOrINS_11SmallVectorIlLj6EEEEC2EOS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %7) ; 0 uses
  br label %_ZN4llvm9FailureOrINS_11SmallVectorIlLj6EEEEC2EOS2_.exit

_ZN4llvm9FailureOrINS_11SmallVectorIlLj6EEEEC2EOS2_.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE.exit, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.w, align 8, !tbaa !106
  %i.x = load ptr, ptr %7, align 8, !tbaa !69     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.i
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm9FailureOrINS_11SmallVectorIlLj6EEEEC2EOS2_.exit
  call void @free(ptr noundef %i.x) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvm9FailureOrINS_11SmallVectorIlLj6EEEEC2EOS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.z = call noundef i32 @_ZN4mlir6linalg8LinalgOp19getNumParallelLoopsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  %i.aa = call noundef i32 @_ZN4mlir6linalg8LinalgOp11getNumLoopsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  %.not = icmp eq i32 %i.z, %i.aa
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ab, align 8, !tbaa !106
  br label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %5, align 8, !tbaa !70    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 8388608
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit.i, label %bb.j, !prof !80

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !81
  %i.ai = zext i32 %i.ah to i64
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit.i

_ZN4mlir9Operation14getNumOperandsEv.exit.i:      ; preds = %bb.j, %bb.i
  %i.aj = phi i64 [ %i.ai, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN4mlir6linalg8LinalgOp18getDpsInitsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  %i.ak = call { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #17
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !69 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN4mlir6linalg8LinalgOp15getNumDpsInputsEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.i
  call void @free(ptr noundef %i.am) #17
  br label %_ZN4mlir6linalg8LinalgOp15getNumDpsInputsEv.exit

_ZN4mlir6linalg8LinalgOp15getNumDpsInputsEv.exit: ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.ap = extractvalue { ptr, i64 } %i.ak, 1
  %i.aq = sub nsw i64 %i.aj, %i.ap
  %.not6 = icmp eq i64 %i.aq, 1
  br i1 %.not6, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN4mlir6linalg8LinalgOp15getNumDpsInputsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN4mlir6linalg8LinalgOp18getDpsInitsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  %i.ar = call { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #17
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !69 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZN4mlir6linalg8LinalgOp14getNumDpsInitsEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.at) #17
  br label %_ZN4mlir6linalg8LinalgOp14getNumDpsInitsEv.exit

_ZN4mlir6linalg8LinalgOp14getNumDpsInitsEv.exit:  ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.aw = extractvalue { ptr, i64 } %i.ar, 1
  %.not7 = icmp eq i64 %i.aw, 1
  br i1 %.not7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4mlir6linalg8LinalgOp14getNumDpsInitsEv.exit, %_ZN4mlir6linalg8LinalgOp15getNumDpsInputsEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ax, align 8, !tbaa !106
  br label %bb.y

bb.o:                                             ; preds = %_ZN4mlir6linalg8LinalgOp14getNumDpsInitsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZN4mlir6linalg8LinalgOp20getIndexingMapsArrayEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.381") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  %i.ay = load ptr, ptr %8, align 8, !tbaa !69
  %i.az = call noundef zeroext i1 @_ZNK4mlir9AffineMap13isPermutationEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #17
  br i1 %i.az, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ba = load ptr, ptr %8, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !54
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bg = call noundef zeroext i1 @_ZNK4mlir9AffineMap13isPermutationEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #17
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.bi = load i32, ptr %i.bb, align 8, !tbaa !54
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %.sroa.02.0.copyload = load ptr, ptr %i.bl, align 8, !tbaa !368
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !370
  %i.bn = icmp eq ptr %.sroa.02.0.copyload, %i.bm
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.bo, align 8, !tbaa !106
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.bp = call noundef ptr @_ZN4mlir6linalg8LinalgOp8getBlockEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #17 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !371 ; 2 uses
  %.not.i = icmp eq ptr %i.bs, %i.bq
  br i1 %.not.i, label %_ZN4llvm16hasSingleElementIRNS_6iplistIN4mlir9OperationEJEEEEEbOT_.exit.thread, label %_ZN4llvm16hasSingleElementIRNS_6iplistIN4mlir9OperationEJEEEEEbOT_.exit

_ZN4llvm16hasSingleElementIRNS_6iplistIN4mlir9OperationEJEEEEEbOT_.exit: ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !371
  %i.bv = icmp eq ptr %i.bu, %i.bq
  br i1 %i.bv, label %bb.t, label %_ZN4llvm16hasSingleElementIRNS_6iplistIN4mlir9OperationEJEEEEEbOT_.exit.thread

_ZN4llvm16hasSingleElementIRNS_6iplistIN4mlir9OperationEJEEEEEbOT_.exit.thread: ; preds = %bb.s, %_ZN4llvm16hasSingleElementIRNS_6iplistIN4mlir9OperationEJEEEEEbOT_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.bw, align 8, !tbaa !106
  br label %bb.w

bb.t:                                             ; preds = %_ZN4llvm16hasSingleElementIRNS_6iplistIN4mlir9OperationEJEEEEEbOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.bx = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4mlir6linalg8UnPackOp13getSourceTypeEv:bb.a
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %.not.i.i.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i1, label %_ZN4llvm4castIN4mlir10ShapedTypeES2_EEDcRKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !89   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 49), i64 16) #17
  store ptr %i.o, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !68 ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !69   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !54   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.s, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.t = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.t ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.v = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = xor i64 %i.t, -1
  %i.y = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.x
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.v, ptr %i.w, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.v, i64 %i.y, i64 %i.t ; 2 uses
  %i.z = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.s, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeES2_EEDcRKT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.ab = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !79
  %i.ac = icmp eq ptr %i.ab, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ac, label %bb.f, label %_ZN4llvm4castIN4mlir10ShapedTypeES2_EEDcRKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !91
  br label %_ZN4llvm4castIN4mlir10ShapedTypeES2_EEDcRKT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeES2_EEDcRKT0_.exit: ; preds = %bb.a, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.af = phi ptr [ null, %bb.a ], [ %i.ae, %bb.f ], [ null, %bb.e ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %i.h, ptr %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret { ptr, ptr } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg8UnPackOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !420, !nonnull !108, !align !125
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #17 ; 0 uses
  ret void
}

declare void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind writable sret(%"class.mlir::ValueTypeRange") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir6linalg12_GLOBAL__N_147FoldProducerUnPackWithConsumerLinalgTransposeOpD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4mlir6linalg12_GLOBAL__N_147FoldProducerUnPackWithConsumerLinalgTransposeOpE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3) #17, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.i) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir6linalg12_GLOBAL__N_147FoldProducerUnPackWithConsumerLinalgTransposeOpD0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4mlir6linalg12_GLOBAL__N_147FoldProducerUnPackWithConsumerLinalgTransposeOpE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3) #17, !inline_history !421 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #17, !inline_history !422
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4mlir6linalg12_GLOBAL__N_147FoldProducerUnPackWithConsumerLinalgTransposeOpD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.i) #17, !inline_history !422
  br label %_ZN4mlir6linalg12_GLOBAL__N_147FoldProducerUnPackWithConsumerLinalgTransposeOpD2Ev.exit

_ZN4mlir6linalg12_GLOBAL__N_147FoldProducerUnPackWithConsumerLinalgTransposeOpD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK4mlir6linalg12_GLOBAL__N_147FoldProducerUnPackWithConsumerLinalgTransposeOp15matchAndRewriteENS0_8LinalgOpERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(40) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.117", align 8 ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.124", align 8 ; 5 uses
  %6 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.255", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.mlir::linalg::LinalgOp", align 8 ; 3 uses
  %9 = alloca %"class.mlir::linalg::UnPackOp", align 8 ; 9 uses
  %10 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %11 = alloca %"class.llvm::FailureOr", align 8  ; 8 uses
  %12 = alloca %"class.llvm::SmallVector.255", align 8 ; 10 uses
  %13 = alloca %"class.llvm::SmallVector.255", align 8 ; 11 uses
  %14 = alloca %"class.llvm::SmallVector.118", align 8 ; 7 uses
  store ptr %1, ptr %8, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i, ptr %10, align 8
  %i.f = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #17 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.j = icmp eq ptr %i.i, @_ZN4mlir6detail14TypeIDResolverINS_6linalg8UnPackOpEvE2idE
  %15 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6linalg8UnPackOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %15, %i.j
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.d:                                             ; preds = %bb.b
  store ptr %i.f, ptr %9, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 8388608
  %.not.i.i.i13 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i13, label %_ZN4mlir9Operation11getOperandsEv.exit.i, label %bb.e, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !81
  %i.r = zext i32 %i.q to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit.i

_ZN4mlir9Operation11getOperandsEv.exit.i:         ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i14 = phi ptr [ %i.o, %bb.e ], [ null, %bb.d ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ %i.r, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.s = call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6detail32DestinationStyleOpInterfaceTraitINS3_6linalg8UnPackOpEE22hasPureTensorSemanticsEvEUlS7_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i.i14, i64 0, ptr %.sroa.0.0.i.i.i14, i64 %.sroa.4.0.i.i.i)
  %i.t = extractvalue { ptr, i64 } %i.s, 1
  %.not.i = icmp eq i64 %.sroa.4.0.i.i.i, %i.t
  br i1 %.not.i, label %bb.f, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.f:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i
  %i.u = load ptr, ptr %9, align 8, !tbaa !70     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 8388608
  %.not.i.i2.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i2.i, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit, label %bb.g, !prof !80

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 68
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !81
  %i.ac = zext i32 %i.ab to i64
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i3.i = phi ptr [ %i.z, %bb.g ], [ null, %bb.f ] ; 2 uses
  %.sroa.4.0.i.i4.i = phi i64 [ %i.ac, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.ad = call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6detail32DestinationStyleOpInterfaceTraitINS3_6linalg8UnPackOpEE22hasPureTensorSemanticsEvEUlS7_E0_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i3.i, i64 0, ptr %.sroa.0.0.i.i3.i, i64 %.sroa.4.0.i.i4.i)
  %i.ae = extractvalue { ptr, i64 } %i.ad, 1
  %.not30 = icmp eq i64 %.sroa.4.0.i.i4.i, %i.ae
  br i1 %.not30, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44
  %.not.i.i.not = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.not, label %bb.i, label %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit

_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit: ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !48
  %i.al = call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17, !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.al, label %bb.i, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.i:                                             ; preds = %_ZNKSt8functionIFbPN4mlir9OpOperandEEEclES2_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call fastcc void @_ZN4mlir6linalg12_GLOBAL__N_125getTransposeOpPermutationENS0_8LinalgOpE(ptr dead_on_unwind noalias writable align 8 %11, ptr nonnull %1, ptr %2)
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 4 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !106, !range !107, !noundef !108
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.j, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = call { ptr, i64 } @_ZN4mlir6linalg8UnPackOp16getOuterDimsPermEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #17 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0      ; 5 uses
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1
  %i.as = call { ptr, i64 } @_ZN4mlir6linalg8UnPackOp15getInnerDimsPosEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.at, ptr %12, align 8, !tbaa !69
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store i32 0, ptr %i.au, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 6, ptr %i.av, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.aw = load i8, ptr %i.am, align 8, !tbaa !106, !range !107, !noundef !108
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZNRSt8optionalIN4llvm11SmallVectorIlLj6EEEE5valueEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZSt27__throw_bad_optional_accessv() #20
  unreachable

_ZNRSt8optionalIN4llvm11SmallVectorIlLj6EEEE5valueEv.exit: ; preds = %bb.j
  %i.ay = extractvalue { ptr, i64 } %i.as, 1      ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.as, 0      ; 2 uses
  %i.ba = load ptr, ptr %11, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !54
  %i.bd = zext i32 %i.bc to i64
  call void @_ZN4mlir23invertPermutationVectorEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.255") align 8 %13, ptr %i.ba, i64 %i.bd) #17
  %.idx = shl nuw nsw i64 %i.ay, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx
  %.not31 = icmp eq i64 %i.ay, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit, %_ZNRSt8optionalIN4llvm11SmallVectorIlLj6EEEE5valueEv.exit
  %i.bf = icmp eq i64 %i.ar, 0
  br i1 %i.bf, label %bb.r, label %bb.n

.lr.ph:                                           ; preds = %_ZNRSt8optionalIN4llvm11SmallVectorIlLj6EEEE5valueEv.exit, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit
  %.032 = phi ptr [ %i.br, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ], [ %i.az, %_ZNRSt8optionalIN4llvm11SmallVectorIlLj6EEEE5valueEv.exit ] ; 2 uses
  %i.bg = load i64, ptr %.032, align 8, !tbaa !51
  %i.bh = load ptr, ptr %13, align 8, !tbaa !69
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !51 ; 2 uses
  %i.bk = load i32, ptr %i.au, align 8, !tbaa !54 ; 2 uses
  %i.bl = load i32, ptr %i.av, align 4, !tbaa !55
  %.not.i16 = icmp ult i32 %i.bk, %i.bl
  br i1 %.not.i16, label %bb.m, label %bb.l, !prof !102

bb.l:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %i.bj)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bm = zext i32 %i.bk to i64
  %i.bn = load ptr, ptr %12, align 8, !tbaa !69
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm
  store i64 %i.bj, ptr %i.bo, align 1
  %i.bp = load i32, ptr %i.au, align 8, !tbaa !54
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.au, align 8, !tbaa !54
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit: ; preds = %bb.l, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.032, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.be
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.bs = load ptr, ptr %13, align 8, !tbaa !69, !noalias !431 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !54, !noalias !431 ; 5 uses
  %i.bv = zext i32 %i.bu to i64                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.bw, ptr %7, align 8, !tbaa !69, !alias.scope !433
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !54, !alias.scope !433
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 6, ptr %i.by, align 4, !tbaa !55, !alias.scope !433
  %i.bz = icmp ugt i32 %i.bu, 6
  br i1 %i.bz, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i.i.i, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i.i.i: ; preds = %bb.n
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.bw, i64 noundef %i.bv, i64 noundef 8) #17
  %.pre.i.i.i.i.i.i = load i32, ptr %i.bx, align 8, !tbaa !54, !alias.scope !433
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !69, !alias.scope !433
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i: ; preds = %bb.n
  %.not.i.i.i17 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i17, label %_ZN4mlir16applyPermutationIlEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS3_EE5valueEEERKNS1_15SmallVectorImplIS3_EENS1_8ArrayRefIlEE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i.i.i
  %i.ca = phi ptr [ %.pre.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i.i.i ], [ %i.bw, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i ]
  %i.cb = phi i32 [ %.pre.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i ] ; 3 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cc ; 2 uses
  %xtraiter = and i64 %i.bv, 3                    ; 3 uses
  %i.ce = add i32 %i.bu, -1
  %i.cf = icmp ult i32 %i.ce, 3
  br i1 %i.cf, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %unroll_iter = and i64 %i.bv, 4294967292
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new
  %.045.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %i.de, %bb.o ] ; 5 uses
  %i.cg = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %i.dd, %bb.o ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %niter.next.3, %bb.o ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !51, !noalias !434
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !51, !noalias !432
  store i64 %i.ck, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !51
  %i.cl = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cg
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
end_hunk_4
begin_hunk_5_@_ZNK4mlir6linalg12_GLOBAL__N_129SimplifyUnPackToCollapseShape15matchAndRewriteENS0_8UnPackOpERNS_15PatternRewriterE:bb.a
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !54
  %i.fj = zext i32 %i.fi to i64
  %i.fk = call ptr @_ZN4mlir32getReassociationIndicesAttributeERNS_7BuilderEN4llvm8ArrayRefINS2_11SmallVectorIlLj2EEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr %i.fg, i64 %i.fj) #17
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fl, align 8
  %i.fm = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = icmp eq ptr %.sroa.01.0.copyload, %i.fn
  br i1 %i.fo, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fp = call ptr @_ZN4mlir6tensor15CollapseShapeOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS_9ArrayAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.01.0.copyload, ptr nonnull %.sroa.0.0.copyload.i.i.i.i, ptr %i.fk) #17
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.09.0.i = phi ptr [ %i.fq, %bb.an ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.am ]
  store ptr %.sroa.09.0.i, ptr %16, align 8
  %i.fr = load ptr, ptr %12, align 8, !tbaa !70
  %i.fs = ptrtoint ptr %16 to i64
  %i.ft = load ptr, ptr %2, align 8, !tbaa !46
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.fr, i64 %i.fs, i64 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %.pre = load i8, ptr %i.et, align 8, !tbaa !128, !range !107
  %i.fv = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.et, align 8, !tbaa !128
  br i1 %i.fv, label %bb.ap, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorINS1_IlLj2EEELj1EEELb0ELb0EED2Ev.exit

bb.ap:                                            ; preds = %bb.ao
  %i.fw = load ptr, ptr %15, align 8, !tbaa !69   ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !54 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.ap
  %i.fz = zext i32 %i.fy to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.fz, 5
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.gb, %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i.i.i.i.i.i ], [ %i.ga, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -32 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !69 ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -16
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  call void @free(ptr noundef %i.gc) #17
  br label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i.i.i.i.i.i

_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.aq, %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fw, %i.gb
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i: ; preds = %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %15, align 8, !tbaa !69
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i, %bb.ap
  %i.gf = phi ptr [ %.pre.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i ], [ %i.fw, %bb.ap ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorINS1_IlLj2EEELj1EEELb0ELb0EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i
  call void @free(ptr noundef %i.gf) #17
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorINS1_IlLj2EEELj1EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorINS1_IlLj2EEELj1EEELb0ELb0EED2Ev.exit: ; preds = %bb.al, %bb.ao, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i, %bb.ar
  %.sroa.021.071 = phi i8 [ 1, %bb.ar ], [ 1, %bb.ao ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i ], [ 0, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.as

bb.as:                                            ; preds = %.critedge, %_ZNSt14_Optional_baseIN4llvm11SmallVectorINS1_IlLj2EEELj1EEELb0ELb0EED2Ev.exit
  %.sroa.021.1 = phi i8 [ %.sroa.021.071, %_ZNSt14_Optional_baseIN4llvm11SmallVectorINS1_IlLj2EEELj1EEELb0ELb0EED2Ev.exit ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit, %bb.as
  %.sroa.021.2 = phi i8 [ %.sroa.021.1, %bb.as ], [ 0, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit.i ]
  ret i8 %.sroa.021.2
}

declare void @_ZN4mlir6linalg8UnPackOp14getStaticTilesEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.255") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4mlir6linalg8UnPackOp11isLikeUnPadEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir32getReassociationIndicesAttributeERNS_7BuilderEN4llvm8ArrayRefINS2_11SmallVectorIlLj2EEEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4mlir10ShapedType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare ptr @_ZN4mlir6tensor15CollapseShapeOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS_9ArrayAttrE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir6linalg12_GLOBAL__N_125FoldEmptyTensorWithPackOpD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
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
define internal range(i8 0, 2) i8 @_ZNK4mlir6linalg12_GLOBAL__N_125FoldEmptyTensorWithPackOp15matchAndRewriteENS0_6PackOpERNS_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon.528, align 8            ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.mlir::linalg::PackOp", align 8 ; 7 uses
  %6 = alloca %"struct.mlir::detail::TypedValue.123", align 8 ; 5 uses
  %7 = alloca %"struct.mlir::detail::TypedValue.123", align 8 ; 4 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit.i, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !81
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit.i

_ZN4mlir9Operation11getOperandsEv.exit.i:         ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = tail call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6detail32DestinationStyleOpInterfaceTraitINS3_6linalg6PackOpEE22hasPureTensorSemanticsEvEUlS7_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i.i, i64 0, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i)
  %i.j = extractvalue { ptr, i64 } %i.i, 1
  %.not.i = icmp eq i64 %.sroa.4.0.i.i.i, %i.j
  br i1 %.not.i, label %bb.c, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i
  %i.k = load i32, ptr %i.a, align 4
  %i.l = and i32 %i.k, 8388608
  %.not.i.i2.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i2.i, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !81
  %i.q = zext i32 %i.p to i64
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i3.i = phi ptr [ %i.n, %bb.d ], [ null, %bb.c ] ; 2 uses
  %.sroa.4.0.i.i4.i = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.r = tail call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6detail32DestinationStyleOpInterfaceTraitINS3_6linalg6PackOpEE22hasPureTensorSemanticsEvEUlS7_E0_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i3.i, i64 0, ptr %.sroa.0.0.i.i3.i, i64 %.sroa.4.0.i.i4.i)
  %i.s = extractvalue { ptr, i64 } %i.r, 1
  %.not = icmp eq i64 %.sroa.4.0.i.i4.i, %i.s
  br i1 %.not, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.t = call i64 @_ZN4mlir6linalg6PackOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #17
  %i.u = load ptr, ptr %5, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = and i64 %i.t, 4294967295
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %6, align 8
  %i.aa = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #17 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !79
  %i.ae = icmp eq ptr %i.ad, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %8 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %8, %i.ae
  br i1 %spec.select.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.af = call i64 @_ZN4mlir6linalg6PackOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2) #17 ; 3 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !70    ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, 8388608
  %.not.i.i.i.i.i4 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i4, label %_ZN4mlir6linalg6PackOp14getODSOperandsEj.exit.i, label %bb.i, !prof !80

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !73
  br label %_ZN4mlir6linalg6PackOp14getODSOperandsEj.exit.i

_ZN4mlir6linalg6PackOp14getODSOperandsEj.exit.i:  ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.al, %bb.i ], [ null, %bb.h ]
  %i.am = and i64 %i.af, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.af, 32
  %i.an = add i64 %.sroa.5.0.extract.shift.i.i, %i.af
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = icmp eq i64 %i.ao, %i.am
  br i1 %i.ap, label %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit.thread, label %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit

_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit:   ; preds = %_ZN4mlir6linalg6PackOp14getODSOperandsEj.exit.i
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.0.0.copyload.i.i.i.i5 = load ptr, ptr %i.ar, align 8, !tbaa !75
  %.not15 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i5, null
  br i1 %.not15, label %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.at, align 1, !tbaa !111
  store ptr @.str.19, ptr %4, align 8, !tbaa !49
  store i8 3, ptr %i.as, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %4, ptr %3, align 8, !tbaa !114
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !120 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg6PackOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #17
  br i1 %i.aw, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg6PackOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.0.0.copyload.i.i.i.i6 = load ptr, ptr %i.ax, align 8
  %i.ay = ptrtoint ptr %3 to i64
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr %.sroa.0.0.copyload.i.i.i.i6, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg6PackOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ay) #17, !inline_history !5
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg6PackOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg6PackOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.j, %bb.k, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit.thread

_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit.thread: ; preds = %_ZN4mlir6linalg6PackOp14getODSOperandsEj.exit.i, %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bc = call i64 @_ZN4mlir6linalg6PackOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1) #17
  %i.bd = load ptr, ptr %5, align 8, !tbaa !70
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !73
  %i.bg = and i64 %i.bc, 4294967295
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.sroa.0.0.copyload.i.i.i.i9 = load ptr, ptr %i.bi, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i.i.i9, ptr %7, align 8
  %i.bj = ptrtoint ptr %7 to i64
  %i.bk = load ptr, ptr %2, align 8, !tbaa !46
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.ag, i64 %i.bj, i64 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit.thread

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit.thread: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i, %bb.g, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg6PackOpEEEN4llvm13LogicalResultEOT_PKc.exit, %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit.thread, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit
  %.sroa.0.1 = phi i8 [ 0, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg6PackOpEE22hasPureTensorSemanticsEv.exit ], [ 0, %bb.g ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg6PackOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 1, %_ZN4mlir6linalg6PackOp15getPaddingValueEv.exit.thread ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit.i ]
  ret i8 %.sroa.0.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
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
define internal void @_ZN4mlir6linalg12_GLOBAL__N_127FoldEmptyTensorWithUnPackOpD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
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
define internal range(i8 0, 2) i8 @_ZNK4mlir6linalg12_GLOBAL__N_127FoldEmptyTensorWithUnPackOp15matchAndRewriteENS0_8UnPackOpERNS_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::linalg::UnPackOp", align 8 ; 6 uses
  %4 = alloca %"struct.mlir::detail::TypedValue.123", align 8 ; 5 uses
  %5 = alloca %"struct.mlir::detail::TypedValue.123", align 8 ; 4 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit.i, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !81
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit.i

_ZN4mlir9Operation11getOperandsEv.exit.i:         ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = tail call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6detail32DestinationStyleOpInterfaceTraitINS3_6linalg8UnPackOpEE22hasPureTensorSemanticsEvEUlS7_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i.i, i64 0, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i)
  %i.j = extractvalue { ptr, i64 } %i.i, 1
  %.not.i = icmp eq i64 %.sroa.4.0.i.i.i, %i.j
  br i1 %.not.i, label %bb.c, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i
  %i.k = load i32, ptr %i.a, align 4
  %i.l = and i32 %i.k, 8388608
  %.not.i.i2.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i2.i, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !81
  %i.q = zext i32 %i.p to i64
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i3.i = phi ptr [ %i.n, %bb.d ], [ null, %bb.c ] ; 2 uses
  %.sroa.4.0.i.i4.i = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.r = tail call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6detail32DestinationStyleOpInterfaceTraitINS3_6linalg8UnPackOpEE22hasPureTensorSemanticsEvEUlS7_E0_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i3.i, i64 0, ptr %.sroa.0.0.i.i3.i, i64 %.sroa.4.0.i.i4.i)
  %i.s = extractvalue { ptr, i64 } %i.r, 1
  %.not = icmp eq i64 %.sroa.4.0.i.i4.i, %i.s
  br i1 %.not, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.t = call i64 @_ZN4mlir6linalg8UnPackOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #17
  %i.u = load ptr, ptr %3, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = and i64 %i.t, 4294967295
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %4, align 8
  %i.aa = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !79
  %i.ae = icmp eq ptr %i.ad, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %6 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %6, %i.ae
  br i1 %spec.select.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.af = load ptr, ptr %3, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ag = call i64 @_ZN4mlir6linalg8UnPackOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1) #17
  %i.ah = load ptr, ptr %3, align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.ak = and i64 %i.ag, 4294967295
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.0.0.copyload.i.i.i.i4 = load ptr, ptr %i.am, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i.i.i4, ptr %5, align 8
  %i.an = ptrtoint ptr %5 to i64
  %i.ao = load ptr, ptr %2, align 8, !tbaa !46
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.af, i64 %i.an, i64 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit.thread: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i, %bb.g, %bb.h, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit
  %.sroa.0.1 = phi i8 [ 0, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg8UnPackOpEE22hasPureTensorSemanticsEv.exit ], [ 0, %bb.g ], [ 1, %bb.h ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit.i ]
  ret i8 %.sroa.0.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !63}
!3 = distinct !{!3, !63}
!4 = distinct !{!4, !63}
!5 = distinct !{null, null, null}
!6 = distinct !{!6, !63}
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
!17 = !{!"p1 _ZTSSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS1_EE", !15, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !18, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE", !19, i64 0}
!21 = !{!"_ZTSSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE", !20, i64 0}
!22 = !{!"p1 _ZTSN4mlir9OperationE", !15, i64 0}
!23 = !{!"_ZTSN4mlir7OpStateE", !22, i64 0}
!24 = !{!"_ZTSN4mlir2OpINS_8ModuleOpEJNS_7OpTrait9OneRegionENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_17NoRegionArgumentsENS2_12NoTerminatorENS2_11SingleBlockENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_11AffineScopeENS2_19IsIsolatedFromAboveENS2_11SymbolTableENS_17SymbolOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_19RegionKindInterface5TraitENS2_18HasOnlyGraphRegionEEEE", !23, i64 0}
!25 = !{!"_ZTSN4mlir8ModuleOpE", !24, i64 0}
!26 = !{!"_ZTSN4mlir11OwningOpRefINS_8ModuleOpEEE", !25, i64 0}
!27 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !15, i64 0, !12, i64 8, !12, i64 12}
!28 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EEvEE", !27, i64 0}
!29 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EEE", !28, i64 0}
!30 = !{!"_ZTSN4llvm15SmallVectorImplISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EEEE", !29, i64 0}
!31 = !{!"_ZTSN4llvm18SmallVectorStorageISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EEE", !11, i64 0}
!32 = !{!"_ZTSN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EEE", !30, i64 0, !31, i64 16}
!33 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPN4mlir9OperationEPNS2_19PDLPatternConfigSetEEE", !15, i64 0}
!34 = !{!"p1 int", !15, i64 0}
!35 = !{!"_ZTSN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !33, i64 0, !34, i64 8, !12, i64 16, !12, i64 20}
!36 = !{!"any p2 pointer", !15, i64 0}
!37 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !36, i64 0}
!38 = !{!"_ZTSN4llvm13StringMapImplE", !37, i64 0, !12, i64 8, !12, i64 12, !12, i64 16}
!39 = !{!"_ZTSN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEEE", !38, i64 0}
!40 = !{!"_ZTSN4mlir16PDLPatternModuleE", !26, i64 0, !32, i64 8, !35, i64 72, !39, i64 96, !39, i64 120}
!41 = !{!"_ZTSN4mlir17RewritePatternSetE", !16, i64 0, !21, i64 8, !40, i64 32}
!42 = !{!41, !16, i64 0}
!43 = !{!"_ZTSSt14_Function_base", !11, i64 0, !15, i64 16}
!44 = !{!43, !15, i64 16}
!45 = !{!"vtable pointer", !10, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"_ZTSSt8functionIFbPN4mlir9OpOperandEEE", !43, i64 0, !15, i64 24}
!48 = !{!47, !15, i64 24}
!49 = !{!11, !11, i64 0}
!50 = !{!"long", !11, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"p1 omnipotent char", !15, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!27, !12, i64 8}
!55 = !{!27, !12, i64 12}
!56 = !{!18, !17, i64 8}
!57 = !{!18, !17, i64 16}
!58 = !{!"p1 _ZTSN4mlir14RewritePatternE", !15, i64 0}
!59 = !{!"_ZTSSt10_Head_baseILm0EPN4mlir14RewritePatternELb0EE", !58, i64 0}
!60 = !{!59, !58, i64 0}
!61 = !{!18, !17, i64 0}
!62 = !{!58, !58, i64 0}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!"branch_weights", i32 1, i32 1048575}
!67 = !{!"p1 _ZTSN4mlir6TypeID7StorageE", !15, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!27, !15, i64 0}
!70 = !{!23, !22, i64 0}
!71 = !{!"p1 _ZTSN4mlir9OpOperandE", !15, i64 0}
!72 = !{!"_ZTSN4mlir6detail14OperandStorageE", !12, i64 0, !12, i64 3, !12, i64 4, !71, i64 8}
!73 = !{!72, !71, i64 8}
!74 = !{!"p1 _ZTSN4mlir6detail9ValueImplE", !15, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"p1 _ZTSN4mlir13OperationName4ImplE", !15, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"_ZTSN4mlir6TypeIDE", !67, i64 0}
!79 = !{!78, !67, i64 0}
!80 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!81 = !{!72, !12, i64 4}
!82 = !{!71, !71, i64 0}
!83 = !{!"p1 _ZTSN4mlir12OpFoldResultE", !15, i64 0}
!84 = !{!"_ZTSN4llvm8ArrayRefIN4mlir12OpFoldResultEEE", !83, i64 0, !50, i64 8}
!85 = !{!84, !83, i64 0}
!86 = !{!84, !50, i64 8}
!87 = !{!"p1 _ZTSN4mlir12AbstractTypeE", !15, i64 0}
!88 = !{!"_ZTSN4mlir11TypeStorageE", !87, i64 0}
!89 = !{!88, !87, i64 0}
!90 = !{!"_ZTSSt4pairIN4mlir6TypeIDEPvE", !78, i64 0, !15, i64 8}
!91 = !{!90, !15, i64 8}
!92 = !{!"_ZTSN4mlir7BuilderE", !16, i64 0}
!93 = !{!92, !16, i64 0}
!94 = !{!"p1 long", !15, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"_ZTSN4llvm8ArrayRefIlEE", !94, i64 0, !50, i64 8}
!97 = !{!96, !94, i64 0}
!98 = !{!96, !50, i64 8}
!99 = !{!"bool", !11, i64 0}
!100 = !{!"_ZTSSt22_Optional_payload_baseIN4mlir5ValueEE", !11, i64 0, !99, i64 8}
!101 = !{!100, !99, i64 8}
!102 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!103 = !{!12, !12, i64 0}
!104 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!105 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm11SmallVectorIlLj6EEEE", !11, i64 0, !99, i64 64}
!106 = !{!105, !99, i64 64}
!107 = !{i8 0, i8 2}
!108 = !{}
!109 = !{!"_ZTSN4llvm5Twine8NodeKindE", !11, i64 0}
!110 = !{!"_ZTSN4llvm5TwineE", !11, i64 0, !11, i64 16, !109, i64 32, !109, i64 33}
!111 = !{!110, !109, i64 33}
!112 = !{!110, !109, i64 32}
!113 = !{!"p1 _ZTSN4llvm5TwineE", !15, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!"p1 _ZTSN4mlir9OpBuilder8ListenerE", !15, i64 0}
!116 = !{!"p1 _ZTSN4mlir5BlockE", !15, i64 0}
!117 = !{!"p1 _ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEEE", !15, i64 0}
!118 = !{!"_ZTSN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEE", !117, i64 0}
!119 = !{!"_ZTSN4mlir9OpBuilderE", !92, i64 0, !115, i64 8, !116, i64 16, !118, i64 24}
!120 = !{!119, !115, i64 8}
!121 = !{!"p1 _ZTSN4mlir16AttributeStorageE", !15, i64 0}
!122 = !{!"_ZTSN4mlir9AttributeE", !121, i64 0}
!123 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !15, i64 0}
!124 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !123, i64 0, !123, i64 8}
!125 = !{i64 8}
!126 = !{!"llvm.loop.unroll.disable"}
!127 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm11SmallVectorINS1_IlLj2EEELj1EEEE", !11, i64 0, !99, i64 48}
!128 = !{!127, !99, i64 48}
!129 = distinct !{!129, i1 false, !"_ZN4mlir14RewritePattern6createINS_6linalg12_GLOBAL__N_128FoldUnpackWithExtractSliceOpEJPNS_11MLIRContextERKSt8functionIFbPNS_9OpOperandEEEEEESt10unique_ptrIT_St14default_deleteISF_EEDpOT0_"}
!130 = distinct !{!130, !129, !"_ZN4mlir14RewritePattern6createINS_6linalg12_GLOBAL__N_128FoldUnpackWithExtractSliceOpEJPNS_11MLIRContextERKSt8functionIFbPNS_9OpOperandEEEEEESt10unique_ptrIT_St14default_deleteISF_EEDpOT0_: argument 0"}
!131 = distinct !{!131, i1 false, !"_ZSt11make_uniqueIN4mlir6linalg12_GLOBAL__N_128FoldUnpackWithExtractSliceOpEJPNS0_11MLIRContextERKSt8functionIFbPNS0_9OpOperandEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
end_hunk_5
