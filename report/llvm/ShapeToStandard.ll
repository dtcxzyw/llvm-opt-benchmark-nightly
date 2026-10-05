Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ShapeToStandard?download=true
inline.NumInlined: 5070
inline.NumDeleted: 2869
begin_hunk_0_@_ZN4mlir41populateShapeToStandardConversionPatternsERNS_17RewritePatternSetE:bb.a
  store ptr %i.agl, ptr %i.p, align 8, !tbaa !53
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_115AnyOpConversionENS2_18BinaryOpConversionINS_5shape5AddOpENS_5arith6AddIOpEEENS4_INS5_5MulOpENS7_6MulIOpEEENS2_20BroadcastOpConverterENS2_21ConstShapeOpConverterENS2_21ConstSizeOpConversionENS2_14DimOpConverterENS2_26IsBroadcastableOpConverterENS2_20GetExtentOpConverterENS2_15RankOpConverterENS2_17ReduceOpConverterENS2_18ShapeEqOpConverterENS2_19ShapeOfOpConversionENS2_19SplitAtOpConversionENS2_26ToExtentTensorOpConversionEEPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit

bb.cw:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i239.i
  %i.agm = load ptr, ptr %i.o, align 8, !tbaa !56 ; 10 uses
  %i.agn = ptrtoint ptr %i.agj to i64             ; 2 uses
  %i.ago = ptrtoint ptr %i.agm to i64             ; 3 uses
  %i.agp = sub i64 %i.agn, %i.ago                 ; 3 uses
  %i.agq = icmp eq i64 %i.agp, 9223372036854775800
  br i1 %i.agq, label %bb.cx, label %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i242.i

bb.cx:                                            ; preds = %bb.cw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i242.i: ; preds = %bb.cw
  %i.agr = ashr exact i64 %i.agp, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i243.i = call i64 @llvm.umax.i64(i64 %i.agr, i64 1)
  %i.ags = add nsw i64 %.sroa.speculated.i.i.i.i243.i, %i.agr ; 2 uses
  %i.agt = icmp ult i64 %i.ags, %i.agr
  %i.agu = call i64 @llvm.umin.i64(i64 %i.ags, i64 1152921504606846975)
  %i.agv = select i1 %i.agt, i64 1152921504606846975, i64 %i.agu ; 3 uses
  %.not.i.i.i4.i244.i = icmp ne i64 %i.agv, 0
  call void @llvm.assume(i1 %.not.i.i.i4.i244.i)
  %i.agw = shl nuw nsw i64 %i.agv, 3
  %i.agx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agw) #19 ; 10 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 %i.agp
  store ptr %i.afw, ptr %i.agy, align 8, !tbaa !396
  %.not10.i.i.i.i.i.i245.i = icmp eq ptr %i.agm, %i.agj
  br i1 %.not10.i.i.i.i.i.i245.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i250.i, label %.lr.ph.i.i.i.i.i.i246.i.preheader

.lr.ph.i.i.i.i.i.i246.i.preheader:                ; preds = %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i242.i
  %i.agz = add i64 %i.agn, -8
  %i.aha = sub i64 %i.agz, %i.ago                 ; 3 uses
  %i.ahb = lshr i64 %i.aha, 3
  %i.ahc = add nuw nsw i64 %i.ahb, 1              ; 2 uses
  %min.iters.check553 = icmp ult i64 %i.aha, 136
  br i1 %min.iters.check553, label %.lr.ph.i.i.i.i.i.i246.i.preheader571, label %vector.memcheck554

vector.memcheck554:                               ; preds = %.lr.ph.i.i.i.i.i.i246.i.preheader
  %i.ahd = and i64 %i.aha, -8
  %i.ahe = add i64 %i.ahd, 8                      ; 2 uses
  %i.ahf = getelementptr i8, ptr %i.agx, i64 %i.ahe
  %i.ahg = getelementptr i8, ptr %i.agm, i64 %i.ahe
  %bound0555 = icmp ult ptr %i.agx, %i.ahg
  %bound1556 = icmp ult ptr %i.agm, %i.ahf
  %found.conflict557 = and i1 %bound0555, %bound1556
  br i1 %found.conflict557, label %.lr.ph.i.i.i.i.i.i246.i.preheader571, label %vector.ph558

vector.ph558:                                     ; preds = %vector.memcheck554
  %n.vec559 = and i64 %i.ahc, 4611686018427387900 ; 3 uses
  %i.ahh = shl i64 %n.vec559, 3                   ; 2 uses
  %i.ahi = getelementptr i8, ptr %i.agx, i64 %i.ahh ; 2 uses
  %i.ahj = getelementptr i8, ptr %i.agm, i64 %i.ahh
  br label %vector.body560

vector.body560:                                   ; preds = %vector.body560, %vector.ph558
  %index561 = phi i64 [ 0, %vector.ph558 ], [ %index.next566, %vector.body560 ] ; 2 uses
  %i.ahk = shl i64 %index561, 3                   ; 2 uses
  %next.gep562 = getelementptr i8, ptr %i.agx, i64 %i.ahk ; 2 uses
  %next.gep563 = getelementptr i8, ptr %i.agm, i64 %i.ahk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.ahl = getelementptr i8, ptr %next.gep563, i64 16
  %wide.load564 = load <2 x i64>, ptr %next.gep563, align 8, !tbaa !57, !alias.scope !517, !noalias !515
  %wide.load565 = load <2 x i64>, ptr %i.ahl, align 8, !tbaa !57, !alias.scope !517, !noalias !515
  %i.ahm = getelementptr i8, ptr %next.gep562, i64 16
  store <2 x i64> %wide.load564, ptr %next.gep562, align 8, !tbaa !57, !alias.scope !518, !noalias !517
  store <2 x i64> %wide.load565, ptr %i.ahm, align 8, !tbaa !57, !alias.scope !518, !noalias !517
  %i.ahn = getelementptr i8, ptr %next.gep563, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep563, align 8, !tbaa !57, !alias.scope !517, !noalias !515
  store <2 x ptr> splat (ptr null), ptr %i.ahn, align 8, !tbaa !57, !alias.scope !517, !noalias !515
  %index.next566 = add nuw i64 %index561, 4       ; 2 uses
  %i.aho = icmp eq i64 %index.next566, %n.vec559
  br i1 %i.aho, label %middle.block567, label %vector.body560, !llvm.loop !390

middle.block567:                                  ; preds = %vector.body560
  %cmp.n568 = icmp eq i64 %i.ahc, %n.vec559
  br i1 %cmp.n568, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i250.i, label %.lr.ph.i.i.i.i.i.i246.i.preheader571

.lr.ph.i.i.i.i.i.i246.i.preheader571:             ; preds = %vector.memcheck554, %.lr.ph.i.i.i.i.i.i246.i.preheader, %middle.block567
  %.012.i.i.i.i.i.i247.i.ph = phi ptr [ %i.agx, %vector.memcheck554 ], [ %i.agx, %.lr.ph.i.i.i.i.i.i246.i.preheader ], [ %i.ahi, %middle.block567 ]
  %.0911.i.i.i.i.i.i248.i.ph = phi ptr [ %i.agm, %vector.memcheck554 ], [ %i.agm, %.lr.ph.i.i.i.i.i.i246.i.preheader ], [ %i.ahj, %middle.block567 ]
  br label %.lr.ph.i.i.i.i.i.i246.i

.lr.ph.i.i.i.i.i.i246.i:                          ; preds = %.lr.ph.i.i.i.i.i.i246.i.preheader571, %.lr.ph.i.i.i.i.i.i246.i
  %.012.i.i.i.i.i.i247.i = phi ptr [ %i.ahr, %.lr.ph.i.i.i.i.i.i246.i ], [ %.012.i.i.i.i.i.i247.i.ph, %.lr.ph.i.i.i.i.i.i246.i.preheader571 ] ; 2 uses
  %.0911.i.i.i.i.i.i248.i = phi ptr [ %i.ahq, %.lr.ph.i.i.i.i.i.i246.i ], [ %.0911.i.i.i.i.i.i248.i.ph, %.lr.ph.i.i.i.i.i.i246.i.preheader571 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.ahp = load i64, ptr %.0911.i.i.i.i.i.i248.i, align 8, !tbaa !57, !alias.scope !516, !noalias !515
  store i64 %i.ahp, ptr %.012.i.i.i.i.i.i247.i, align 8, !tbaa !57, !alias.scope !515, !noalias !516
  store ptr null, ptr %.0911.i.i.i.i.i.i248.i, align 8, !tbaa !57, !alias.scope !516, !noalias !515
  %i.ahq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i248.i, i64 8 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i247.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i249.i = icmp eq ptr %i.ahq, %i.agj
  br i1 %.not.i.i.i.i.i.i249.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i250.i, label %.lr.ph.i.i.i.i.i.i246.i, !llvm.loop !391

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i250.i: ; preds = %.lr.ph.i.i.i.i.i.i246.i, %middle.block567, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i242.i
  %.0.lcssa.i.i.i.i.i.i251.i = phi ptr [ %i.agx, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i242.i ], [ %i.ahi, %middle.block567 ], [ %i.ahr, %.lr.ph.i.i.i.i.i.i246.i ]
  %i.ahs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i251.i, i64 8
  %.not.i23.i.i.i252.i = icmp eq ptr %i.agm, null
  br i1 %.not.i23.i.i.i252.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_126ToExtentTensorOpConversionES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i250.i
  %i.aht = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.ahu = ptrtoint ptr %i.aht to i64
  %i.ahv = sub i64 %i.ahu, %i.ago
  call void @_ZdlPvm(ptr noundef nonnull %i.agm, i64 noundef %i.ahv) #22
  br label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_126ToExtentTensorOpConversionES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_126ToExtentTensorOpConversionES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.cy, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i250.i
  store ptr %i.agx, ptr %i.o, align 8, !tbaa !56
  store ptr %i.ahs, ptr %i.p, align 8, !tbaa !53
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %i.agv
  store ptr %i.ahw, ptr %i.r, align 8, !tbaa !54
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_115AnyOpConversionENS2_18BinaryOpConversionINS_5shape5AddOpENS_5arith6AddIOpEEENS4_INS5_5MulOpENS7_6MulIOpEEENS2_20BroadcastOpConverterENS2_21ConstShapeOpConverterENS2_21ConstSizeOpConversionENS2_14DimOpConverterENS2_26IsBroadcastableOpConverterENS2_20GetExtentOpConverterENS2_15RankOpConverterENS2_17ReduceOpConverterENS2_18ShapeEqOpConverterENS2_19ShapeOfOpConversionENS2_19SplitAtOpConversionENS2_26ToExtentTensorOpConversionEEPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit

_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_115AnyOpConversionENS2_18BinaryOpConversionINS_5shape5AddOpENS_5arith6AddIOpEEENS4_INS5_5MulOpENS7_6MulIOpEEENS2_20BroadcastOpConverterENS2_21ConstShapeOpConverterENS2_21ConstSizeOpConversionENS2_14DimOpConverterENS2_26IsBroadcastableOpConverterENS2_20GetExtentOpConverterENS2_15RankOpConverterENS2_17ReduceOpConverterENS2_18ShapeEqOpConverterENS2_19ShapeOfOpConversionENS2_19SplitAtOpConversionENS2_26ToExtentTensorOpConversionEEPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit: ; preds = %bb.cv, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_126ToExtentTensorOpConversionES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2), i32 noundef) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126CstrBroadcastableToRequireD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #20
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #20
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i8 @_ZNK12_GLOBAL__N_126CstrBroadcastableToRequire15matchAndRewriteEPN4mlir9OperationERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit:
  %3 = alloca %"class.llvm::SmallVector.48", align 8 ; 8 uses
  %4 = alloca %"class.mlir::shape::CstrBroadcastableOp", align 8 ; 6 uses
  %5 = alloca [1 x %"class.mlir::Location"], align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.66", align 8 ; 10 uses
  %7 = alloca %"class.llvm::SmallVector.66", align 8 ; 10 uses
  %8 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::SmallVector.66", align 8 ; 10 uses
  %11 = alloca %"struct.mlir::shape::detail::CstrRequireOpGenericAdaptorBase::Properties", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.121", align 8 ; 10 uses
  %13 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %14 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %15 = alloca %"class.llvm::ArrayRef.96", align 8 ; 2 uses
  %16 = alloca %"class.llvm::SmallVector.66", align 8 ; 8 uses
  %17 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.c, align 4, !tbaa !15
  store ptr %1, ptr %i.a, align 8
  store i32 1, ptr %i.b, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_5shape19CstrBroadcastableOpEvE2idE
  %18 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5shape19CstrBroadcastableOpEvE2idE
  %spec.select.i.i.i.i = and i1 %18, %i.g
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %1, ptr null
  store ptr %spec.select.i.i, ptr %4, align 8
  %i.h = call i64 @_ZN4mlir5shape19CstrBroadcastableOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #20 ; 3 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 8388608
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZN4mlir5shape19CstrBroadcastableOp14getODSOperandsEj.exit, label %bb.a, !prof !64

bb.a:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67
  br label %_ZN4mlir5shape19CstrBroadcastableOp14getODSOperandsEj.exit

_ZN4mlir5shape19CstrBroadcastableOp14getODSOperandsEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit, %bb.a
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.n, %bb.a ], [ null, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit ]
  %i.o = and i64 %i.h, 4294967295                 ; 3 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %i.h, 32
  %i.p = add i64 %.sroa.5.0.extract.shift.i, %i.h
  %i.q = and i64 %i.p, 4294967295                 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i, i64 %i.o
  %i.s = sub nsw i64 %i.q, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.u = load ptr, ptr %3, align 8, !tbaa !14
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.x = call ptr @_ZN4mlir7Builder11getFusedLocEN4llvm8ArrayRefINS_8LocationEEENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr nonnull %5, i64 1, ptr null) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.y, ptr %6, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.z, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 4, ptr %i.aa, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ab, ptr %7, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 4, ptr %i.ad, align 4, !tbaa !15
  %.not8991 = icmp eq i64 %i.q, %i.o
  br i1 %.not8991, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit52
  %.pre = load ptr, ptr %7, align 8, !tbaa !14
  %.pre98 = load i32, ptr %i.ac, align 8, !tbaa !52
  %i.ae = zext i32 %.pre98 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4mlir5shape19CstrBroadcastableOp14getODSOperandsEj.exit
  %i.af = phi i64 [ %i.ae, %._crit_edge.loopexit ], [ 0, %_ZN4mlir5shape19CstrBroadcastableOp14getODSOperandsEj.exit ]
  %i.ag = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ab, %_ZN4mlir5shape19CstrBroadcastableOp14getODSOperandsEj.exit ]
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.ag, i64 %i.af) #20
  %i.ah = load i64, ptr %8, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = call ptr @_ZN4mlir5shape17IsBroadcastableOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr %i.x, i64 %i.ah, i64 %i.aj, ptr null, i64 0) #20
  %i.al = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ab
  br i1 %i.am, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.al) #20
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.ao, align 1, !tbaa !71
  store ptr @.str.3, ptr %9, align 8, !tbaa !47
  store i8 3, ptr %i.an, align 8, !tbaa !72
  %i.ap = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(34) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.aq, ptr %10, align 8, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i32 0, ptr %i.ar, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 4, ptr %i.as, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.at = getelementptr inbounds i8, ptr %i.ak, i64 -16
  %i.au = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 noundef 0) #20 ; 2 uses
  %i.av = load i32, ptr %i.ar, align 8, !tbaa !52 ; 2 uses
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !15
  %.not.i42 = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i42, label %bb.d, label %bb.c, !prof !73

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.au)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit
  %i.ax = zext i32 %i.av to i64
  %i.ay = load ptr, ptr %10, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  store ptr %i.au, ptr %i.az, align 1
  %i.ba = load i32, ptr %i.ar, align 8, !tbaa !52
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ar, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.c, %bb.d
  store ptr %i.ap, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.bc, ptr %12, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 4, ptr %i.be, align 4, !tbaa !15
  %i.bf = load ptr, ptr %4, align 8, !tbaa !63
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16
  %i.bh = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 noundef 0) #20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bi, align 8
  %i.bj = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  %i.bl = load i32, ptr %i.bd, align 8, !tbaa !52 ; 2 uses
  %i.bm = load i32, ptr %i.be, align 4, !tbaa !15
  %.not.i57 = icmp ult i32 %i.bl, %i.bm
  br i1 %.not.i57, label %bb.j, label %bb.i, !prof !73

.lr.ph:                                           ; preds = %_ZN4mlir5shape19CstrBroadcastableOp14getODSOperandsEj.exit, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit52
  %.sroa.481.092 = phi i64 [ %i.bw, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit52 ], [ 0, %_ZN4mlir5shape19CstrBroadcastableOp14getODSOperandsEj.exit ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.481.092
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.sroa.0.0.copyload.i.i.i50 = load ptr, ptr %i.bo, align 8, !tbaa !75 ; 2 uses
  %i.bp = load i32, ptr %i.ac, align 8, !tbaa !52 ; 2 uses
  %i.bq = load i32, ptr %i.ad, align 4, !tbaa !15
  %.not.i51 = icmp ult i32 %i.bp, %i.bq
  br i1 %.not.i51, label %bb.f, label %bb.e, !prof !73

bb.e:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %.sroa.0.0.copyload.i.i.i50)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit52

bb.f:                                             ; preds = %.lr.ph
  %i.br = zext i32 %i.bp to i64
  %i.bs = load ptr, ptr %7, align 8, !tbaa !14
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  store ptr %.sroa.0.0.copyload.i.i.i50, ptr %i.bt, align 1
  %i.bu = load i32, ptr %i.ac, align 8, !tbaa !52
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.ac, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit52

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit52: ; preds = %bb.e, %bb.f
  %i.bw = add nuw nsw i64 %.sroa.481.092, 1       ; 2 uses
  %.not89 = icmp eq i64 %i.bw, %i.s
  br i1 %.not89, label %._crit_edge.loopexit, label %.lr.ph

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit
  call void @free(ptr noundef %i.db) #20
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.bx = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.aq
  br i1 %i.by, label %.lr.ph.i.i.i.i.preheader.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit
  call void @free(ptr noundef %i.bx) #20
  br label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.bz = getelementptr inbounds i8, ptr %i.da, i64 -16
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.ca, ptr %16, align 8, !tbaa !14, !alias.scope !521
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store i32 0, ptr %i.cb, align 8, !tbaa !52, !alias.scope !521
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 4, ptr %i.cc, align 4, !tbaa !15, !alias.scope !521
  %i.cd = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 noundef 0) #20
  %i.ce = ptrtoint ptr %i.cd to i64
  store i64 %i.ce, ptr %i.ca, align 8, !tbaa !75
  %.pre23.i.i.i = load i32, ptr %i.cb, align 8, !tbaa !52, !alias.scope !521
  %i.cf = add i32 %.pre23.i.i.i, 1                ; 3 uses
  store i32 %i.cf, ptr %i.cb, align 8, !tbaa !52, !alias.scope !521
  %i.cg = load ptr, ptr %16, align 8, !tbaa !14   ; 3 uses
  %i.ch = zext i32 %i.cf to i64
  %.idx = shl nuw nsw i64 %i.ch, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx
  %.not94 = icmp eq i32 %i.cf, 0
  br i1 %.not94, label %._crit_edge97, label %.lr.ph96

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %i.bk)
  %.pre99 = load i32, ptr %i.bd, align 8, !tbaa !52
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_126CstrBroadcastableToRequire15matchAndRewriteEPN4mlir9OperationERNS1_15PatternRewriterE:_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit

bb.k:                                             ; preds = %._crit_edge97
  call void @free(ptr noundef %i.dd) #20
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit58

_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit58: ; preds = %._crit_edge97, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.df = load ptr, ptr %6, align 8, !tbaa !14
  %i.dg = load i32, ptr %i.z, align 8, !tbaa !52
  %i.dh = zext i32 %i.dg to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %i.df, i64 %i.dh) #20
  %i.di = load i64, ptr %17, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = load ptr, ptr %2, align 8, !tbaa !17
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1, i64 %i.di, i64 %i.dk) #20
  %i.dn = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.y
  br i1 %i.do, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit59, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit58
  call void @free(ptr noundef %i.dn) #20
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit59

_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit59: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit58, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.dp = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.a
  br i1 %i.dq, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit59
  call void @free(ptr noundef %i.dp) #20
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit59, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i8 1

.lr.ph96:                                         ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit61
  %.095 = phi ptr [ %i.dy, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit61 ], [ %i.cg, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %.095, align 8, !tbaa !75 ; 2 uses
  %i.dr = load i32, ptr %i.z, align 8, !tbaa !52  ; 2 uses
  %i.ds = load i32, ptr %i.aa, align 4, !tbaa !15
  %.not.i60 = icmp ult i32 %i.dr, %i.ds
  br i1 %.not.i60, label %bb.o, label %bb.n, !prof !73

bb.n:                                             ; preds = %.lr.ph96
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %.sroa.01.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit61

bb.o:                                             ; preds = %.lr.ph96
  %i.dt = zext i32 %i.dr to i64
  %i.du = load ptr, ptr %6, align 8, !tbaa !14
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  store ptr %.sroa.01.0.copyload, ptr %i.dv, align 1
  %i.dw = load i32, ptr %i.z, align 8, !tbaa !52
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.z, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit61

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit61: ; preds = %bb.n, %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %.095, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dy, %i.ci
  br i1 %.not, label %._crit_edge97.loopexit, label %.lr.ph96
}

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #4

declare void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64, i16, ptr noundef, ptr noundef byval(%"class.llvm::ArrayRef") align 8) unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @_ZN4mlir7Builder11getFusedLocEN4llvm8ArrayRefINS_8LocationEEENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #4

declare ptr @_ZN4mlir5shape17IsBroadcastableOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #4

declare ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare ptr @_ZN4mlir5shape13CstrRequireOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail31CstrRequireOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, i64, i64, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef byval(%"class.llvm::ArrayRef.96") align 8) local_unnamed_addr #4

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @_ZN4mlir5shape19CstrBroadcastableOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #20
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = load i32, ptr %i.a, align 8, !tbaa !52
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !52
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !52
  ret void
}

declare void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #4

declare noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #20
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = load i32, ptr %i.a, align 8, !tbaa !52
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !52
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !52
  ret void
}

declare void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115CstrEqToRequireD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #20
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #20
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i8 @_ZNK12_GLOBAL__N_115CstrEqToRequire15matchAndRewriteEPN4mlir9OperationERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit:
  %3 = alloca %"class.llvm::SmallVector.48", align 8 ; 8 uses
  %4 = alloca %"class.mlir::shape::CstrEqOp", align 8 ; 6 uses
  %5 = alloca [1 x %"class.mlir::Location"], align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.66", align 8 ; 10 uses
  %7 = alloca %"class.llvm::SmallVector.66", align 8 ; 10 uses
  %8 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::SmallVector.66", align 8 ; 10 uses
  %11 = alloca %"struct.mlir::shape::detail::CstrRequireOpGenericAdaptorBase::Properties", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.121", align 8 ; 10 uses
  %13 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %14 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %15 = alloca %"class.llvm::ArrayRef.96", align 8 ; 2 uses
  %16 = alloca %"class.llvm::SmallVector.66", align 8 ; 8 uses
  %17 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.c, align 4, !tbaa !15
  store ptr %1, ptr %i.a, align 8
  store i32 1, ptr %i.b, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_5shape8CstrEqOpEvE2idE
  %18 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5shape8CstrEqOpEvE2idE
  %spec.select.i.i.i.i = and i1 %18, %i.g
  %spec.select.i.i = select i1 %spec.select.i.i.i.i, ptr %1, ptr null
  store ptr %spec.select.i.i, ptr %4, align 8
  %i.h = call i64 @_ZN4mlir5shape8CstrEqOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #20 ; 3 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 8388608
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZN4mlir5shape8CstrEqOp14getODSOperandsEj.exit, label %bb.a, !prof !64

bb.a:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67
  br label %_ZN4mlir5shape8CstrEqOp14getODSOperandsEj.exit

_ZN4mlir5shape8CstrEqOp14getODSOperandsEj.exit:   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit, %bb.a
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.n, %bb.a ], [ null, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit ]
  %i.o = and i64 %i.h, 4294967295                 ; 3 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %i.h, 32
  %i.p = add i64 %.sroa.5.0.extract.shift.i, %i.h
  %i.q = and i64 %i.p, 4294967295                 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i, i64 %i.o
  %i.s = sub nsw i64 %i.q, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.u = load ptr, ptr %3, align 8, !tbaa !14
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.x = call ptr @_ZN4mlir7Builder11getFusedLocEN4llvm8ArrayRefINS_8LocationEEENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr nonnull %5, i64 1, ptr null) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.y, ptr %6, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.z, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 4, ptr %i.aa, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ab, ptr %7, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 4, ptr %i.ad, align 4, !tbaa !15
  %.not8991 = icmp eq i64 %i.q, %i.o
  br i1 %.not8991, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit52
  %.pre = load ptr, ptr %7, align 8, !tbaa !14
  %.pre98 = load i32, ptr %i.ac, align 8, !tbaa !52
  %i.ae = zext i32 %.pre98 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4mlir5shape8CstrEqOp14getODSOperandsEj.exit
  %i.af = phi i64 [ %i.ae, %._crit_edge.loopexit ], [ 0, %_ZN4mlir5shape8CstrEqOp14getODSOperandsEj.exit ]
  %i.ag = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ab, %_ZN4mlir5shape8CstrEqOp14getODSOperandsEj.exit ]
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.ag, i64 %i.af) #20
  %i.ah = load i64, ptr %8, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = call ptr @_ZN4mlir5shape9ShapeEqOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr %i.x, i64 %i.ah, i64 %i.aj, ptr null, i64 0) #20
  %i.al = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ab
  br i1 %i.am, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.al) #20
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.ao, align 1, !tbaa !71
  store ptr @.str.12, ptr %9, align 8, !tbaa !47
  store i8 3, ptr %i.an, align 8, !tbaa !72
  %i.ap = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(34) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.aq, ptr %10, align 8, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i32 0, ptr %i.ar, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 4, ptr %i.as, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.at = getelementptr inbounds i8, ptr %i.ak, i64 -16
  %i.au = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 noundef 0) #20 ; 2 uses
  %i.av = load i32, ptr %i.ar, align 8, !tbaa !52 ; 2 uses
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !15
  %.not.i42 = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i42, label %bb.d, label %bb.c, !prof !73

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.au)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit
  %i.ax = zext i32 %i.av to i64
  %i.ay = load ptr, ptr %10, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  store ptr %i.au, ptr %i.az, align 1
  %i.ba = load i32, ptr %i.ar, align 8, !tbaa !52
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ar, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.c, %bb.d
  store ptr %i.ap, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.bc, ptr %12, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 4, ptr %i.be, align 4, !tbaa !15
  %i.bf = load ptr, ptr %4, align 8, !tbaa !63
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16
  %i.bh = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 noundef 0) #20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bi, align 8
  %i.bj = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  %i.bl = load i32, ptr %i.bd, align 8, !tbaa !52 ; 2 uses
  %i.bm = load i32, ptr %i.be, align 4, !tbaa !15
  %.not.i57 = icmp ult i32 %i.bl, %i.bm
  br i1 %.not.i57, label %bb.j, label %bb.i, !prof !73

.lr.ph:                                           ; preds = %_ZN4mlir5shape8CstrEqOp14getODSOperandsEj.exit, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit52
  %.sroa.481.092 = phi i64 [ %i.bw, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit52 ], [ 0, %_ZN4mlir5shape8CstrEqOp14getODSOperandsEj.exit ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.481.092
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.sroa.0.0.copyload.i.i.i50 = load ptr, ptr %i.bo, align 8, !tbaa !75 ; 2 uses
  %i.bp = load i32, ptr %i.ac, align 8, !tbaa !52 ; 2 uses
  %i.bq = load i32, ptr %i.ad, align 4, !tbaa !15
  %.not.i51 = icmp ult i32 %i.bp, %i.bq
  br i1 %.not.i51, label %bb.f, label %bb.e, !prof !73

bb.e:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %.sroa.0.0.copyload.i.i.i50)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit52

bb.f:                                             ; preds = %.lr.ph
  %i.br = zext i32 %i.bp to i64
  %i.bs = load ptr, ptr %7, align 8, !tbaa !14
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  store ptr %.sroa.0.0.copyload.i.i.i50, ptr %i.bt, align 1
  %i.bu = load i32, ptr %i.ac, align 8, !tbaa !52
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.ac, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit52

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit52: ; preds = %bb.e, %bb.f
  %i.bw = add nuw nsw i64 %.sroa.481.092, 1       ; 2 uses
  %.not89 = icmp eq i64 %i.bw, %i.s
  br i1 %.not89, label %._crit_edge.loopexit, label %.lr.ph

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit
  call void @free(ptr noundef %i.db) #20
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.bx = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.aq
  br i1 %i.by, label %.lr.ph.i.i.i.i.preheader.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit
  call void @free(ptr noundef %i.bx) #20
  br label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.bz = getelementptr inbounds i8, ptr %i.da, i64 -16
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.ca, ptr %16, align 8, !tbaa !14, !alias.scope !524
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store i32 0, ptr %i.cb, align 8, !tbaa !52, !alias.scope !524
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 4, ptr %i.cc, align 4, !tbaa !15, !alias.scope !524
  %i.cd = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 noundef 0) #20
  %i.ce = ptrtoint ptr %i.cd to i64
  store i64 %i.ce, ptr %i.ca, align 8, !tbaa !75
  %.pre23.i.i.i = load i32, ptr %i.cb, align 8, !tbaa !52, !alias.scope !524
  %i.cf = add i32 %.pre23.i.i.i, 1                ; 3 uses
  store i32 %i.cf, ptr %i.cb, align 8, !tbaa !52, !alias.scope !524
  %i.cg = load ptr, ptr %16, align 8, !tbaa !14   ; 3 uses
  %i.ch = zext i32 %i.cf to i64
  %.idx = shl nuw nsw i64 %i.ch, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx
  %.not94 = icmp eq i32 %i.cf, 0
  br i1 %.not94, label %._crit_edge97, label %.lr.ph96

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %i.bk)
  %.pre99 = load i32, ptr %i.bd, align 8, !tbaa !52
end_hunk_1
begin_hunk_2_@_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_5shape17IsBroadcastableOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE:bb.a
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i10 = load ptr, ptr %i.e, align 8, !tbaa !51
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.f, align 8, !tbaa !72, !alias.scope !761
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.g, align 1, !tbaa !71, !alias.scope !761
  store ptr @.str.27, ptr %7, align 8, !tbaa !47, !alias.scope !761
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.0.0.copyload.i10, ptr %i.h, align 8, !tbaa !47, !alias.scope !761
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.2.0.copyload.i12, ptr %i.i, align 8, !tbaa !47, !alias.scope !761
  store ptr %7, ptr %6, align 8, !alias.scope !762
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.28, ptr %i.j, align 8, !alias.scope !762
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.k, align 8, !tbaa !72, !alias.scope !762
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.l, align 1, !tbaa !71, !alias.scope !762
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %6, ptr %4, align 8, !tbaa !116
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !123  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5shape17IsBroadcastableOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.o = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #20
  br i1 %i.o, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5shape17IsBroadcastableOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = ptrtoint ptr %4 to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5shape17IsBroadcastableOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.q) #20, !inline_history !760
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5shape17IsBroadcastableOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5shape17IsBroadcastableOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %5, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !52
  %i.x = zext i32 %i.w to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.u, i64 %i.x) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.z = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::shape::IsBroadcastableOpAdaptor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %3) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5shape17IsBroadcastableOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit
  %.sroa.09.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5shape17IsBroadcastableOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit ], [ %i.ad, %bb.c ]
  %i.ae = load i8, ptr %i.b, align 8, !tbaa !114, !range !79, !noundef !80
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.b, align 8, !tbaa !114
  br i1 %i.af, label %bb.e, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ag) #20
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i8 %.sroa.09.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5shape17IsBroadcastableOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !764, !nonnull !80, !align !88
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #20 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120GetExtentOpConverterD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #20
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #20
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_5shape11GetExtentOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::shape::GetExtentOpAdaptor", align 8 ; 3 uses
  %6 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = load <2 x i64>, ptr %6, align 16
  call void @_ZN4mlir5shape6detail29GetExtentOpGenericAdaptorBaseC2ENS0_11GetExtentOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #20
  store <2 x i64> %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::shape::GetExtentOpAdaptor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #20
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_5shape11GetExtentOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::shape::GetExtentOpGenericAdaptor.1673", align 8 ; 4 uses
  call void @_ZN4mlir5shape6detail29GetExtentOpGenericAdaptorBaseC2ENS0_11GetExtentOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !49
  %i.b = load ptr, ptr %0, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::shape::GetExtentOpGenericAdaptor.1673") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #20
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_120GetExtentOpConverter15matchAndRewriteEN4mlir5shape11GetExtentOpENS2_18GetExtentOpAdaptorERNS1_25ConversionPatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr nofree noundef readonly byval(%"class.mlir::shape::GetExtentOpAdaptor") align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %5 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %6 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %7 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %8 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %9 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %10 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %11 = alloca [1 x %"class.mlir::Value"], align 8 ; 4 uses
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5shape8SizeTypeEvE2idE
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %9, align 8
  %i.j = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_5shape9ShapeOfOpEEET_v.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.n = icmp eq ptr %i.m, @_ZN4mlir6detail14TypeIDResolverINS_5shape9ShapeOfOpEvE2idE
  %12 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5shape9ShapeOfOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %12, %i.n
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %_ZNK4mlir5Value13getDefiningOpINS_5shape9ShapeOfOpEEET_v.exit.thread

_ZNK4mlir5Value13getDefiningOpINS_5shape9ShapeOfOpEEET_v.exit.thread: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %_ZN4llvm3isaIJN4mlir10ShapedTypeEENS1_4TypeEEEbRKT0_.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.0.0.copyload.i.i.i.i6 = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i6, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.r, align 8
  %i.s = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !126  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.e, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !143

bb.e:                                             ; preds = %bb.d
  %i.y = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.45, i64 49), i64 16) #20
  store ptr %i.z, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !12 ; 2 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !14  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ad, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ae = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.ae ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ag = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = xor i64 %i.ae, -1
  %i.aj = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.ai
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.ag, ptr %i.ah, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.ag, i64 %i.aj, i64 %i.ae ; 2 uses
  %i.ak = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.ad, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.al
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir10ShapedTypeEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.am = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !62
  %i.an = icmp eq ptr %i.am, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.an, label %_ZN4llvm3isaIJN4mlir10ShapedTypeEENS1_4TypeEEEbRKT0_.exit, label %_ZN4llvm3isaIJN4mlir10ShapedTypeEENS1_4TypeEEEbRKT0_.exit.thread

_ZN4llvm3isaIJN4mlir10ShapedTypeEENS1_4TypeEEEbRKT0_.exit: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !145
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %_ZN4llvm3isaIJN4mlir10ShapedTypeEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm3isaIJN4mlir10ShapedTypeEENS1_4TypeEEEbRKT0_.exit
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.0.0.copyload.i.i.i.i9 = load ptr, ptr %i.ar, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %7, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.at, align 8
  %i.au = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 %i.au, ptr %8, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.av, align 8
  %i.aw = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ay, align 8
  %i.az = call ptr @_ZN4mlir6tensor5DimOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i.i.i9, ptr %i.aw) #20
  %i.ba = load ptr, ptr %3, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %1, ptr noundef %i.az) #20, !inline_history !765
  br label %bb.i

_ZN4llvm3isaIJN4mlir10ShapedTypeEENS1_4TypeEEEbRKT0_.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.g, %_ZN4llvm3isaIJN4mlir10ShapedTypeEENS1_4TypeEEEbRKT0_.exit, %_ZNK4mlir5Value13getDefiningOpINS_5shape9ShapeOfOpEEET_v.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.be = call ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i13.i.i11 = load i64, ptr %i.bf, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i13.i.i11, ptr %6, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bg, align 8
  %i.bh = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload.i13.i.i11, ptr %4, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.bi, align 8
  %i.bj = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %i.bj, ptr %5, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bk, align 8
  %i.bl = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  store ptr %i.bl, ptr %11, align 8
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr nonnull %11, i64 1) #20
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i14 = load ptr, ptr %i.bm, align 8
  %.sroa.0.0.copyload.i16 = load i64, ptr %10, align 8
  %.sroa.2.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload.i18 = load i64, ptr %.sroa.2.0..sroa_idx.i17, align 8
  %i.bn = call ptr @_ZN4mlir6tensor9ExtractOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr %.sroa.0.0.copyload.i.i14, ptr %i.be, ptr %i.bh, i64 %.sroa.0.0.copyload.i16, i64 %.sroa.2.0.copyload.i18) #20
  %i.bo = load ptr, ptr %3, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %1, ptr noundef %i.bn) #20, !inline_history !766
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a, %_ZN4llvm3isaIJN4mlir10ShapedTypeEENS1_4TypeEEEbRKT0_.exit.thread
  %.sroa.04.1 = phi i8 [ 1, %bb.h ], [ 1, %_ZN4llvm3isaIJN4mlir10ShapedTypeEENS1_4TypeEEEbRKT0_.exit.thread ], [ 0, %bb.a ]
  ret i8 %.sroa.04.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_5shape11GetExtentOpEE15matchAndRewriteES2_NS1_25GetExtentOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::shape::GetExtentOpGenericAdaptor.1673") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_5shape11GetExtentOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::shape::GetExtentOpGenericAdaptor.1673") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %i.a
}

declare void @_ZN4mlir5shape6detail29GetExtentOpGenericAdaptorBaseC2ENS0_11GetExtentOpE(ptr noundef nonnull align 8 dereferenceable(48), ptr) unnamed_addr #4

declare noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare ptr @_ZN4mlir6tensor5DimOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #4

declare ptr @_ZN4mlir6tensor9ExtractOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, i64, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_5shape11GetExtentOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::shape::GetExtentOpGenericAdaptor.1673") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.1674, align 8           ; 4 uses
  %5 = alloca %"class.llvm::FailureOr", align 8   ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %8 = alloca %"class.mlir::shape::GetExtentOpAdaptor", align 8 ; 3 uses
  %9 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !49
  call void @_ZNK4mlir17ConversionPattern26getOneToOneAdaptorOperandsEN4llvm8ArrayRefINS_10ValueRangeEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #20
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !114, !range !79, !noundef !80
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i10 = load ptr, ptr %i.e, align 8, !tbaa !51
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.f, align 8, !tbaa !72, !alias.scope !774
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.g, align 1, !tbaa !71, !alias.scope !774
  store ptr @.str.27, ptr %7, align 8, !tbaa !47, !alias.scope !774
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.0.0.copyload.i10, ptr %i.h, align 8, !tbaa !47, !alias.scope !774
end_hunk_2
