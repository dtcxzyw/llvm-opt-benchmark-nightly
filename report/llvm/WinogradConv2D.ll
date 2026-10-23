Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WinogradConv2D?download=true
inline.NumInlined: 2330
inline.NumDeleted: 1136
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@"_ZN4llvm12function_refIFNS_11SmallVectorIN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_8LocationENS2_10ValueRangeES8_EE11callback_fnIZNS2_6linalg12_GLOBAL__N_115outputTransformERNS2_12RewriterBaseES7_S3_S3_NSC_17WinogradConv2DFmrEbbE3$_0EES4_lS6_S7_S8_S8_":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #16, !noalias !388
  %i.np = call ptr @_ZN4mlir9AffineMap3getEjjPNS_11MLIRContextE(i32 noundef 2, i32 noundef 0, ptr noundef %i.h) #16, !noalias !388
  %i.nq = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 3 uses
  store ptr %i.nq, ptr %39, align 8, !tbaa !45, !noalias !388
  %i.nr = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %39, i64 12
  store i32 6, ptr %i.ns, align 4, !tbaa !130, !noalias !388
  store ptr %i.np, ptr %i.nq, align 8, !noalias !388
  %.sroa.4173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %39, i64 24
  store ptr %i.no, ptr %.sroa.4173.0..sroa_idx.i, align 8, !noalias !388
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %39, i64 32
  store ptr %i.no, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !388
  store i32 3, ptr %i.nr, align 8, !tbaa !46, !noalias !388
  %i.nt = load ptr, ptr %i.im, align 8, !tbaa !399, !noalias !388, !nonnull !83, !align !144
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr nonnull align 8 dereferenceable(8) %38, i64 1) #16, !noalias !388
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #16, !noalias !388
  store ptr %i.ni, ptr %42, align 8, !tbaa !37, !noalias !388
  %i.nv = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %.sroa.080.1.i, ptr %i.nv, align 8, !tbaa !37, !noalias !388
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr nonnull %42, i64 2) #16, !noalias !388
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #16, !noalias !388
  store ptr %i.jt, ptr %44, align 8, !tbaa !37, !noalias !388
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr nonnull %44, i64 1) #16, !noalias !388
  %i.nw = load ptr, ptr %39, align 8, !tbaa !45, !noalias !388
  store ptr %i.nw, ptr %45, align 8, !tbaa !405, !noalias !388
  %i.nx = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.ny = load i32, ptr %i.nr, align 8, !tbaa !46, !noalias !388
  %i.nz = zext i32 %i.ny to i64
  store i64 %i.nz, ptr %i.nx, align 8, !tbaa !406, !noalias !388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16, !noalias !388
  store i32 0, ptr %i.e, align 4, !tbaa !408, !noalias !388
  %i.oa = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.oa, align 4, !tbaa !408, !noalias !388
  store ptr %i.e, ptr %46, align 8, !tbaa !410, !noalias !388
  %i.ob = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 2, ptr %i.ob, align 8, !tbaa !411, !noalias !388
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #16, !noalias !388
  store ptr @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationENS1_10ValueRangeEEE11callback_fnIZZNS1_6linalg12_GLOBAL__N_115outputTransformERNS1_12RewriterBaseES4_NS1_5ValueESD_NS9_17WinogradConv2DFmrEbbENK3$_0clES3_S4_S5_S5_EUlS3_S4_S5_E_EEvlS3_S4_S5_", ptr %47, align 8, !tbaa !413, !noalias !388
  %i.oc = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.od = ptrtoint ptr %48 to i64
  store i64 %i.od, ptr %i.oc, align 8, !tbaa !414, !noalias !388
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false), !noalias !388
  %i.oe = load i64, ptr %40, align 8, !noalias !388
  %i.of = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.og = load i64, ptr %i.of, align 8, !noalias !388
  %i.oh = load i64, ptr %41, align 8, !noalias !388
  %i.oi = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.oj = load i64, ptr %i.oi, align 8, !noalias !388
  %i.ok = call ptr @_ZN4mlir6linalg9GenericOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeES6_N4llvm8ArrayRefINS_9AffineMapEEENS8_INS_5utils12IteratorTypeEEENS7_12function_refIFvS3_S4_S6_EEENS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.nu, ptr %3, i64 %i.oe, i64 %i.og, i64 %i.oh, i64 %i.oj, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %43, ptr noundef nonnull byval(%"class.llvm::ArrayRef.774") align 8 %45, ptr noundef nonnull byval(%"class.llvm::ArrayRef.775") align 8 %46, ptr noundef nonnull byval(%"class.llvm::function_ref.776") align 8 %47, ptr noundef nonnull byval(%"class.llvm::ArrayRef.283") align 8 %49) #16, !noalias !388
  %i.ol = getelementptr inbounds i8, ptr %i.ok, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #16, !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16, !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #16, !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #16, !noalias !388
  %i.om = load ptr, ptr %39, align 8, !tbaa !45, !noalias !388 ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.nq
  br i1 %i.on, label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_9FloatAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i
  call void @free(ptr noundef %i.om) #16, !noalias !388
  br label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit.i: ; preds = %bb.ae, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_9FloatAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #16, !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #16, !noalias !388
  br label %"_ZZN4mlir6linalg12_GLOBAL__N_115outputTransformERNS_12RewriterBaseENS_8LocationENS_5ValueES5_NS0_17WinogradConv2DFmrEbbENK3$_0clERNS_9OpBuilderES4_NS_10ValueRangeESA_.exit"

"_ZZN4mlir6linalg12_GLOBAL__N_115outputTransformERNS_12RewriterBaseENS_8LocationENS_5ValueES5_NS0_17WinogradConv2DFmrEbbENK3$_0clERNS_9OpBuilderES4_NS_10ValueRangeESA_.exit": ; preds = %bb.x, %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit.i
  %.sroa.080.2.i = phi ptr [ %i.ol, %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit.i ], [ %.sroa.080.1.i, %bb.x ]
  %i.oo = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %50, i64 noundef 0) #16, !noalias !388
  %i.op = ptrtoint ptr %i.jk to i64
  %i.oq = call fastcc ptr @_ZN4mlir6linalg12_GLOBAL__N_116insert2DDataTo4DERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_S5_S5_S5_llllll(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, ptr %.sroa.080.2.i, ptr %i.oo, ptr %i.k, ptr %i.l, i64 %i.op, i64 %i.js, i64 noundef %i.il, i64 noundef %i.ii, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef 2), !noalias !388
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.or, ptr %0, align 8, !tbaa !45, !alias.scope !388
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.ot, align 4, !tbaa !130, !alias.scope !388
  store ptr %i.oq, ptr %i.or, align 8, !alias.scope !388
  store i32 1, ptr %i.os, align 8, !tbaa !46, !alias.scope !388
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16, !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16, !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16, !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  call void @llvm.lifetime.end.p0(ptr nonnull %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %47)
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  ret void
}

declare ptr @_ZN4mlir9FloatAttr3getENS_4TypeEd(ptr, double noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir9AffineMap3getEjjPNS_11MLIRContextE(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir6linalg9GenericOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeES6_N4llvm8ArrayRefINS_9AffineMapEEENS8_INS_5utils12IteratorTypeEEENS7_12function_refIFvS3_S4_S6_EEENS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, i64, i64, ptr noundef byval(%"class.mlir::ValueRange") align 8, ptr noundef byval(%"class.llvm::ArrayRef.774") align 8, ptr noundef byval(%"class.llvm::ArrayRef.775") align 8, ptr noundef byval(%"class.llvm::function_ref.776") align 8, ptr noundef byval(%"class.llvm::ArrayRef.283") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationENS1_10ValueRangeEEE11callback_fnIZZNS1_6linalg12_GLOBAL__N_115outputTransformERNS1_12RewriterBaseES4_NS1_5ValueESD_NS9_17WinogradConv2DFmrEbbENK3$_0clES3_S4_S5_S5_EUlS3_S4_S5_E_EEvlS3_S4_S5_"(i64 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, i64 %3, i64 %4) #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 7 uses
  %6 = alloca %"class.mlir::Value", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %i.a, align 8
  %i.b = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0) #16
  %i.c = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 1) #16
  %i.d = call ptr @_ZN4mlir5arith6MulFOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %i.b, ptr %i.c, i32 noundef 0) #16
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.f = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef 0) #16
  %i.g = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 2) #16
  %i.h = call ptr @_ZN4mlir5arith6AddFOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %i.f, ptr %i.g, i32 noundef 0) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16
  %i.j = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef 0) #16
  store ptr %i.j, ptr %6, align 8
  %i.k = ptrtoint ptr %6 to i64
  %i.l = call ptr @_ZN4mlir6linalg7YieldOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, i64 %i.k, i64 1) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

declare ptr @_ZN4mlir5arith6MulFOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir5arith6AddFOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir6linalg7YieldOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2), i32 noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir6linalg12_GLOBAL__N_122WinogradConv2DNhwcFhwcD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #16
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6linalg16Conv2DNhwcFhwcOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #16
  ret i8 %i.d
}

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK4mlir6linalg12_GLOBAL__N_122WinogradConv2DNhwcFhwc15matchAndRewriteENS0_16Conv2DNhwcFhwcOpERNS_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128
  %i.c = tail call fastcc { ptr, i8 } @_ZN4mlir6linalg12_GLOBAL__N_120winogradConv2DHelperERNS_12RewriterBaseENS0_16Conv2DNhwcFhwcOpENS0_17WinogradConv2DFmrE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %1, i32 noundef %i.b)
  %i.d = extractvalue { ptr, i8 } %i.c, 1
  ret i8 %i.d
}

declare void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64, i16, ptr noundef, ptr noundef byval(%"class.llvm::ArrayRef.902") align 8) unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir6linalg12_GLOBAL__N_132DecomposeWinogradFilterTransformD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #16
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6linalg25WinogradFilterTransformOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #16
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal i8 @_ZNK4mlir6linalg12_GLOBAL__N_132DecomposeWinogradFilterTransform15matchAndRewriteENS0_25WinogradFilterTransformOpERNS_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc { ptr, i8 } @_ZN4mlir6linalg12_GLOBAL__N_138decomposeWinogradFilterTransformHelperERNS_12RewriterBaseENS0_25WinogradFilterTransformOpE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %1)
  %i.b = extractvalue { ptr, i8 } %i.a, 1
  ret i8 %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir6linalg12_GLOBAL__N_131DecomposeWinogradInputTransformD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #16
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6linalg24WinogradInputTransformOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #16
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal i8 @_ZNK4mlir6linalg12_GLOBAL__N_131DecomposeWinogradInputTransform15matchAndRewriteENS0_24WinogradInputTransformOpERNS_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc { ptr, i8 } @_ZN4mlir6linalg12_GLOBAL__N_137decomposeWinogradInputTransformHelperERNS_12RewriterBaseENS0_24WinogradInputTransformOpE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %1)
  %i.b = extractvalue { ptr, i8 } %i.a, 1
  ret i8 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
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
define internal void @_ZN4mlir6linalg12_GLOBAL__N_132DecomposeWinogradOutputTransformD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #16
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6linalg25WinogradOutputTransformOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #16
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal i8 @_ZNK4mlir6linalg12_GLOBAL__N_132DecomposeWinogradOutputTransform15matchAndRewriteENS0_25WinogradOutputTransformOpERNS_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc { ptr, i8 } @_ZN4mlir6linalg12_GLOBAL__N_138decomposeWinogradOutputTransformHelperERNS_12RewriterBaseENS0_25WinogradOutputTransformOpE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %1)
  %i.b = extractvalue { ptr, i8 } %i.a, 1
  ret i8 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
