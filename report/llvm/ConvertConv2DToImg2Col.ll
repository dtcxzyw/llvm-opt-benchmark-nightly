Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ConvertConv2DToImg2Col?download=true
inline.NumInlined: 2406
inline.NumDeleted: 1135
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 27
begin_hunk_0_@"_ZZN4mlir6linalg15rewriteInIm2ColERNS_12RewriterBaseENS0_24DepthwiseConv2DNhwcHwcOpEENK3$_0clENS_5ValueEN4llvm8ArrayRefIlEE":bb.a

_ZN4llvm11SmallVectorIlLj6EEC2EONS_15SmallVectorImplIlEE.exit: ; preds = %"_ZN4llvm13map_to_vectorILj4ERNS_8ArrayRefIlEEZZN4mlir6linalg15rewriteInIm2ColERNS4_12RewriterBaseENS5_24DepthwiseConv2DNhwcHwcOpEENK3$_0clENS4_5ValueES2_EUllE0_EEDaOT0_OT1_.exit", %bb.f
  %i.bn = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ac
  br i1 %i.bo, label %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EONS_15SmallVectorImplIlEE.exit
  call void @free(ptr noundef %i.bn) #13
  br label %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit

_ZN4llvm11SmallVectorIlLj4EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EONS_15SmallVectorImplIlEE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 4 uses
  %.sroa.04.0.copyload = load ptr, ptr %.8.val, align 8
  %i.bq = load ptr, ptr %7, align 8, !tbaa !27
  %i.br = load i32, ptr %i.bk, align 8, !tbaa !28
  %i.bs = zext i32 %i.br to i64
  %i.bt = call ptr @_ZNK4mlir16RankedTensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %i.bu = call ptr @_ZN4mlir6tensor7EmptyOp6createERNS_9OpBuilderENS_8LocationEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.04.0.copyload, ptr %i.bq, i64 %i.bs, ptr %i.bt, ptr null) #13 ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -16
  store ptr %i.bv, ptr %9, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.bw, ptr %10, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 12, ptr %i.by, align 4, !tbaa !61
  %i.bz = icmp ugt i64 %2, 12
  br i1 %i.bz, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, label %_ZSt6fill_nIPN4mlir5utils12IteratorTypeEmS2_ET_S4_T0_RKT1_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit
  store i32 0, ptr %i.bx, align 8, !tbaa !28
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %i.bw, i64 noundef %2, i64 noundef 4) #13
  %i.ca = load ptr, ptr %10, align 8, !tbaa !27
  br label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit.sink.split

_ZSt6fill_nIPN4mlir5utils12IteratorTypeEmS2_ET_S4_T0_RKT1_.exit.i.i: ; preds = %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit, label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit.sink.split

_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit.sink.split: ; preds = %_ZSt6fill_nIPN4mlir5utils12IteratorTypeEmS2_ET_S4_T0_RKT1_.exit.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %.sink = phi ptr [ %i.ca, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %i.bw, %_ZSt6fill_nIPN4mlir5utils12IteratorTypeEmS2_ET_S4_T0_RKT1_.exit.i.i ]
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %2, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !63
  br label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit

_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit.sink.split, %_ZSt6fill_nIPN4mlir5utils12IteratorTypeEmS2_ET_S4_T0_RKT1_.exit.i.i
  store i32 %i.u, ptr %i.bx, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.cb = load ptr, ptr %5, align 8, !tbaa !27
  %i.cc = load i32, ptr %i.x, align 8, !tbaa !28
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.cf = call ptr @_ZN4mlir9AffineMap3getEjjN4llvm8ArrayRefINS_10AffineExprEEEPNS_11MLIRContextE(i32 noundef %i.u, i32 noundef 0, ptr %i.cb, i64 %i.cd, ptr noundef %i.ce) #13
  %i.cg = call ptr @_ZN4mlir18inversePermutationENS_9AffineMapE(ptr %i.cf) #13
  %i.ch = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.ci = call ptr @_ZN4mlir9AffineMap22getMultiDimIdentityMapEjPNS_11MLIRContextE(i32 noundef %i.u, ptr noundef %i.ch) #13
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.cj, ptr %11, align 8, !tbaa !27
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 6, ptr %i.cl, align 4, !tbaa !61
  store ptr %i.cg, ptr %i.cj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.ci, ptr %.sroa.4.0..sroa_idx, align 8
  store i32 2, ptr %i.ck, align 8, !tbaa !28
  %.sroa.0.0.copyload = load ptr, ptr %.8.val, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.cm = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %.0.copyload.i.i.i.i.i18 = load i64, ptr %i.cm, align 8
  %i.cn = and i64 %.0.copyload.i.i.i.i.i18, -8
  %i.co = inttoptr i64 %i.cn to ptr
  store ptr %i.co, ptr %13, align 8
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr nonnull align 8 dereferenceable(8) %13, i64 1) #13
  %i.cp = ptrtoint ptr %3 to i64
  %i.cq = ptrtoint ptr %9 to i64
  store i64 %i.cq, ptr %14, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.cr, align 8, !tbaa !83
  %i.cs = load ptr, ptr %11, align 8, !tbaa !27
  store ptr %i.cs, ptr %15, align 8, !tbaa !86
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cu = load i32, ptr %i.ck, align 8, !tbaa !28
  %i.cv = zext i32 %i.cu to i64
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !87
  %i.cw = load ptr, ptr %10, align 8, !tbaa !27
  store ptr %i.cw, ptr %16, align 8, !tbaa !89
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cy = load i32, ptr %i.bx, align 8, !tbaa !28
  %i.cz = zext i32 %i.cy to i64
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  store ptr @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationENS1_10ValueRangeEEE11callback_fnIZZNS1_6linalg15rewriteInIm2ColERNS1_12RewriterBaseENS9_24DepthwiseConv2DNhwcHwcOpEENK3$_0clENS1_5ValueENS_8ArrayRefIlEEEUlS3_S4_S5_E_EEvlS3_S4_S5_", ptr %17, align 8, !tbaa !92
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.db = ptrtoint ptr %18 to i64
  store i64 %i.db, ptr %i.da, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %i.dc = load i64, ptr %12, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = call ptr @_ZN4mlir6linalg9GenericOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeES6_N4llvm8ArrayRefINS_9AffineMapEEENS8_INS_5utils12IteratorTypeEEENS7_12function_refIFvS3_S4_S6_EEENS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload, i64 %i.dc, i64 %i.de, i64 %i.cp, i64 1, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %14, ptr noundef nonnull byval(%"class.llvm::ArrayRef.176") align 8 %15, ptr noundef nonnull byval(%"class.llvm::ArrayRef.177") align 8 %16, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %17, ptr noundef nonnull byval(%"class.llvm::ArrayRef.54") align 8 %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %i.dg = load ptr, ptr %11, align 8, !tbaa !27   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cj
  br i1 %i.dh, label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit
  call void @free(ptr noundef %i.dg) #13
  br label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2EmRKS3_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.di = load ptr, ptr %10, align 8, !tbaa !27   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bw
  br i1 %i.dj, label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit
  call void @free(ptr noundef %i.di) #13
  br label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.dk = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.bj
  br i1 %i.dl, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit
  call void @free(ptr noundef %i.dk) #13
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.dm = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.w
  br i1 %i.dn, label %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  call void @free(ptr noundef %i.dm) #13
  br label %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.k
  %i.do = getelementptr inbounds i8, ptr %i.df, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret ptr %i.do
}

declare { ptr, i64 } @_ZNK4mlir16RankedTensorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN4mlir7Builder21getAffineConstantExprEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir6linalg24DepthwiseConv2DNhwcHwcOp10getStridesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZNK4mlir10AffineExprmlES0_(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #2

declare ptr @_ZNK4mlir10AffineExprplES0_(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #2

declare ptr @_ZNK4mlir16RankedTensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN4mlir6linalg13BatchMatvecOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeES6_N4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, i64, i64, ptr noundef byval(%"class.mlir::ValueRange") align 8, ptr noundef byval(%"class.llvm::ArrayRef.54") align 8) local_unnamed_addr #2

declare noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6linalg15rewriteInIm2ColERNS_12RewriterBaseENS0_16Conv2DNchwFchwOpE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::FailureOr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %2) local_unnamed_addr #0 {
_ZN4mlir6linalg16Conv2DNchwFchwOp9getInputsEv.exit:
  %3 = alloca %class.anon.890, align 8            ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %class.anon.890, align 8            ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %class.anon.890, align 8            ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %class.anon.890, align 8            ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.mlir::linalg::Conv2DNchwFchwOp", align 8 ; 23 uses
  %12 = alloca %"class.mlir::ShapedType", align 8 ; 8 uses
  %13 = alloca %"class.mlir::ShapedType", align 8 ; 8 uses
  %14 = alloca %"class.mlir::ShapedType", align 8 ; 7 uses
  %15 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %16 = alloca %"class.mlir::Location", align 8   ; 5 uses
  %17 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %18 = alloca %"class.llvm::SmallVector", align 8 ; 11 uses
  %19 = alloca [2 x %"class.llvm::SmallVector.24"], align 8 ; 18 uses
  %i.a = alloca [2 x i64], align 8                ; 5 uses
  %20 = alloca %"class.llvm::ArrayRef.54", align 8 ; 2 uses
  %21 = alloca %"class.llvm::SmallVector", align 8 ; 12 uses
  %22 = alloca [3 x %"class.llvm::SmallVector.24"], align 8 ; 27 uses
  %23 = alloca %"class.mlir::RankedTensorType", align 8 ; 4 uses
  %i.b = alloca [3 x i64], align 8                ; 6 uses
  %24 = alloca %"class.llvm::ArrayRef.54", align 8 ; 2 uses
  %25 = alloca %"class.llvm::SmallVector.374", align 8 ; 9 uses
  %26 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %27 = alloca %"class.llvm::SmallVector.376", align 8 ; 10 uses
  %28 = alloca %"class.llvm::SmallVector.90", align 8 ; 6 uses
  %i.c = alloca [3 x i64], align 8                ; 6 uses
  %29 = alloca %"class.llvm::SmallVector.90", align 8 ; 6 uses
  %i.d = alloca [2 x i64], align 8                ; 5 uses
  %30 = alloca %"struct.mlir::linalg::Im2ColToInputDimsExprs", align 8 ; 6 uses
  %31 = alloca %"struct.mlir::linalg::Im2ColToOperandsExprs", align 16 ; 4 uses
  %32 = alloca %"class.llvm::SmallVector.55", align 8 ; 13 uses
  %33 = alloca %"class.mlir::DenseIntElementsAttr", align 8 ; 8 uses
  %34 = alloca %"class.llvm::SmallVector.97", align 8 ; 5 uses
  %35 = alloca [1 x %"class.llvm::ArrayRef.104"], align 8 ; 5 uses
  %36 = alloca [4 x %"class.mlir::AffineExpr"], align 8 ; 6 uses
  %37 = alloca %"class.llvm::SmallVector.106", align 8 ; 9 uses
  %38 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %39 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %40 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %41 = alloca %"class.llvm::ArrayRef.176", align 8 ; 3 uses
  %42 = alloca %"class.llvm::ArrayRef.177", align 8 ; 3 uses
  %43 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %44 = alloca %class.anon.378, align 1           ; 3 uses
  %45 = alloca %"class.llvm::ArrayRef.54", align 8 ; 2 uses
  %46 = alloca [2 x %"class.mlir::AffineExpr"], align 8 ; 5 uses
  %47 = alloca [3 x %"class.mlir::AffineExpr"], align 8 ; 6 uses
  %48 = alloca [3 x %"class.mlir::AffineExpr"], align 8 ; 6 uses
  %49 = alloca %"class.llvm::SmallVector.85", align 8 ; 9 uses
  %50 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %51 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %52 = alloca [2 x %"class.mlir::Value"], align 8 ; 5 uses
  %53 = alloca %"class.mlir::ValueRange", align 8 ; 2 uses
  %54 = alloca [1 x %"class.mlir::Value"], align 8 ; 4 uses
  %55 = alloca %"class.llvm::ArrayRef.176", align 8 ; 3 uses
  %56 = alloca [3 x %"class.mlir::AffineMap"], align 8 ; 6 uses
  %57 = alloca %"class.llvm::ArrayRef.177", align 8 ; 3 uses
  %58 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %59 = alloca %class.anon.380, align 8           ; 4 uses
  %60 = alloca %"class.llvm::ArrayRef.54", align 8 ; 2 uses
  %61 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %62 = alloca [1 x %"class.mlir::Value"], align 8 ; 4 uses
  store ptr %2, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.e = call i64 @_ZN4mlir6linalg16Conv2DNchwFchwOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #13
  %i.f = load ptr, ptr %11, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = and i64 %i.e, 4294967295
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.l, align 8
  %i.m = and i64 %.0.copyload.i.i.i.i.i, -8       ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %.not.i.i.i.i.i120 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i120, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4mlir6linalg16Conv2DNchwFchwOp9getInputsEv.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.s = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #13
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 49), i64 16) #13
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #13
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !25 ; 2 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !27   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.y = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.y ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.aa = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = xor i64 %i.y, -1
  %i.ad = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.ac
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.aa, ptr %i.ab, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.aa, i64 %i.ad, i64 %i.y ; 2 uses
  %i.ae = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.x, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.af
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.ag = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !31
  %i.ah = icmp eq ptr %i.ag, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ah, label %bb.e, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit: ; preds = %_ZN4mlir6linalg16Conv2DNchwFchwOp9getInputsEv.exit, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.d, %bb.e
  %i.ak = phi ptr [ null, %_ZN4mlir6linalg16Conv2DNchwFchwOp9getInputsEv.exit ], [ %i.aj, %bb.e ], [ null, %bb.d ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %i.n, ptr %12, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.ak, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.am = call i64 @_ZN4mlir6linalg16Conv2DNchwFchwOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #13
  %i.an = load ptr, ptr %11, align 8, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17
  %i.aq = and i64 %i.am, 4294967295
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %.sroa.0.0.copyload.i.i.i129 = load ptr, ptr %i.as, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i129, i64 8
  %.0.copyload.i.i.i.i.i130 = load i64, ptr %i.at, align 8
  %i.au = and i64 %.0.copyload.i.i.i.i.i130, -8   ; 2 uses
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %.not.i.i.i.i.i132 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i.i.i132, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit152, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !22 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.g, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i133, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.ba = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #13
  %.not.i.i.i.i.i.i.i.i.i.i.i151 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i151, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i133, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 49), i64 16) #13
  store ptr %i.bb, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #13
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i133

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i133: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i134 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !25 ; 2 uses
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i135 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i135, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i145, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i133
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i137

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i137: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i137, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136
  %.017.i.i.i.i.i.i.i.i.i.i.i.i138 = phi i64 [ %i.bf, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136 ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i144, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i137 ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i139 = phi ptr [ %i.bc, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136 ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i143, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i137 ] ; 2 uses
  %i.bg = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i138, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i139, i64 %i.bg ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i142 = load ptr, ptr %i.bh, align 8, !tbaa !25
  %i.bi = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i142, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i134 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bk = xor i64 %i.bg, -1
  %i.bl = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i138, %i.bk
  %.112.i.i.i.i.i.i.i.i.i.i.i.i143 = select i1 %i.bi, ptr %i.bj, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i139 ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i144 = select i1 %i.bi, i64 %i.bl, i64 %i.bg ; 2 uses
  %i.bm = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i144, 0
  br i1 %i.bm, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i137, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i145, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i145: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i137, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i133
  %.pre-phi.i.i.i.i.i.i.i.i.i146 = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i133 ], [ %i.bf, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i137 ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i147 = phi ptr [ %i.bc, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i133 ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i143, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i137 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %.pre-phi.i.i.i.i.i.i.i.i.i146
  %.not.i.i.i.i.i.i.i.i.i148 = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i147, %i.bn
  br i1 %.not.i.i.i.i.i.i.i.i.i148, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit152, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i145
  %i.bo = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i147, align 8, !tbaa !31
  %i.bp = icmp eq ptr %i.bo, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i134
  br i1 %i.bp, label %bb.j, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit152

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i147, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !33
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit152

_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit152: ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i145, %bb.i, %bb.j
  %i.bs = phi ptr [ null, %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit ], [ %i.br, %bb.j ], [ null, %bb.i ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i145 ]
  store ptr %i.av, ptr %13, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.bs, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.bu = call i64 @_ZN4mlir6linalg16Conv2DNchwFchwOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1) #13
  %i.bv = load ptr, ptr %11, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !17
  %i.by = and i64 %i.bu, 4294967295
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %i.by
end_hunk_0
begin_hunk_1_@_ZN4mlir6linalg15rewriteInIm2ColERNS_12RewriterBaseENS0_16Conv2DNchwFchwOpE:_ZN4mlir6linalg16Conv2DNchwFchwOp9getInputsEv.exit
bb.bc:                                            ; preds = %_ZNK4mlir17DenseElementsAttr9getValuesIlEEDav.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %32, ptr noundef nonnull %i.py, i64 noundef %i.px, i64 noundef 8) #13
  %.pre.i.i.i275 = load i32, ptr %i.pz, align 8, !tbaa !28, !alias.scope !177 ; 2 uses
  %.pre22.i.i.i = zext i32 %.pre.i.i.i275 to i64
  %.pre.i.i = load ptr, ptr %32, align 8, !tbaa !27, !alias.scope !177
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i: ; preds = %bb.bc, %_ZNK4mlir17DenseElementsAttr9getValuesIlEEDav.exit
  %i.qc = phi ptr [ %i.py, %_ZNK4mlir17DenseElementsAttr9getValuesIlEEDav.exit ], [ %.pre.i.i, %bb.bc ] ; 10 uses
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZNK4mlir17DenseElementsAttr9getValuesIlEEDav.exit ], [ %.pre22.i.i.i, %bb.bc ] ; 2 uses
  %i.qd = phi i32 [ 0, %_ZNK4mlir17DenseElementsAttr9getValuesIlEEDav.exit ], [ %.pre.i.i.i275, %bb.bc ] ; 8 uses
  %i.qe = ptrtoaddr ptr %i.qc to i64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %.pre-phi.i.i.i ; 7 uses
  %i.qg = icmp sgt i64 %i.px, 0
  br i1 %i.qg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  br i1 %i.pv, label %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.px, 14
  br i1 %min.iters.check, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader538, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.qh = shl nuw nsw i64 %.pre-phi.i.i.i, 3
  %i.qi = add i64 %i.qh, %i.qe
  %i.qj = sub i64 %i.pu, %i.qi
  %diff.check = icmp ugt i64 %i.qj, -32
  br i1 %diff.check, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader538, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.px, 9223372036854775804     ; 4 uses
  %i.qk = shl i64 %n.vec, 3
  %i.ql = getelementptr i8, ptr %i.qf, i64 %i.qk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qm = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.qf, i64 %i.qm ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %index ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %wide.load = load <2 x i64>, ptr %i.qn, align 8, !tbaa !57
  %wide.load524 = load <2 x i64>, ptr %i.qo, align 8, !tbaa !57
  %i.qp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !57
  store <2 x i64> %wide.load524, ptr %i.qp, align 8, !tbaa !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qq = icmp eq i64 %index.next, %n.vec
  br i1 %i.qq, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.px, %n.vec
  br i1 %cmp.n, label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader538

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader538:  ; preds = %vector.memcheck, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.045.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.qf, %vector.memcheck ], [ %i.qf, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ql, %middle.block ] ; 2 uses
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.qr = sub nsw i64 %i.px, %.ph
  %xtraiter = and i64 %i.qr, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader538, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol
  %.045.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.qw, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.045.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader538 ] ; 2 uses
  %i.qs = phi i64 [ %i.qv, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader538 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader538 ]
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.qs
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !57
  store i64 %i.qu, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !57
  %i.qv = add nuw i64 %i.qs, 1                    ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !172

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader538
  %.045.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.045.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader538 ], [ %i.qw, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.preheader538 ], [ %i.qv, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.qx = sub nsw i64 %.ph, %i.px
  %i.qy = icmp ugt i64 %i.qx, -8
  br i1 %i.qy, label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.pt, align 8, !tbaa !57 ; 4 uses
  %min.iters.check527 = icmp ult i64 %i.px, 4
  br i1 %min.iters.check527, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i, label %vector.ph528

vector.ph528:                                     ; preds = %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i
  %n.vec529 = and i64 %i.px, 9223372036854775804  ; 3 uses
  %i.qz = and i64 %i.px, 3
  %i.ra = shl i64 %n.vec529, 3
  %i.rb = getelementptr i8, ptr %i.qf, i64 %i.ra
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i.i.i.i.i.i.i.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body530

vector.body530:                                   ; preds = %vector.body530, %vector.ph528
  %index531 = phi i64 [ 0, %vector.ph528 ], [ %index.next533, %vector.body530 ] ; 2 uses
  %i.rc = shl i64 %index531, 3
  %next.gep532 = getelementptr i8, ptr %i.qf, i64 %i.rc ; 2 uses
  %i.rd = getelementptr i8, ptr %next.gep532, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep532, align 8, !tbaa !57
  store <2 x i64> %broadcast.splat, ptr %i.rd, align 8, !tbaa !57
  %index.next533 = add nuw i64 %index531, 4       ; 2 uses
  %i.re = icmp eq i64 %index.next533, %n.vec529
  br i1 %i.re, label %middle.block534, label %vector.body530, !llvm.loop !173

middle.block534:                                  ; preds = %vector.body530
  %cmp.n535 = icmp eq i64 %i.px, %n.vec529
  br i1 %cmp.n535, label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %middle.block534, %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.06.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.px, %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qz, %middle.block534 ] ; 2 uses
  %.045.us.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.qf, %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.rb, %middle.block534 ] ; 3 uses
  store i64 %.pre.i.i.i.i.i.i.i.i.i.i.i, ptr %.045.us.i.i.i.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !57
  %i.rf = icmp samesign ugt i64 %.06.us.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br i1 %i.rf, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.1:          ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.rg = getelementptr inbounds nuw i8, ptr %.045.us.i.i.i.i.i.i.i.i.i.i.i.ph, i64 8
  store i64 %.pre.i.i.i.i.i.i.i.i.i.i.i, ptr %i.rg, align 8, !tbaa !57
  %i.rh = icmp eq i64 %.06.us.i.i.i.i.i.i.i.i.i.i.i.ph, 3
  br i1 %i.rh, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.2, label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.2:          ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ri = getelementptr inbounds nuw i8, ptr %.045.us.i.i.i.i.i.i.i.i.i.i.i.ph, i64 16
  store i64 %.pre.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ri, align 8, !tbaa !57
  br label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %.045.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.sp, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.045.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.rj = phi i64 [ %i.so, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.rj
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !57
  store i64 %i.rl, ptr %.045.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !57
  %i.rm = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.rj
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !57
  store i64 %i.rp, ptr %i.rm, align 8, !tbaa !57
  %i.rq = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.rj
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !57
  store i64 %i.rt, ptr %i.rq, align 8, !tbaa !57
  %i.ru = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.rj
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !57
  store i64 %i.rx, ptr %i.ru, align 8, !tbaa !57
  %i.ry = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.rj
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 32
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !57
  store i64 %i.sb, ptr %i.ry, align 8, !tbaa !57
  %i.sc = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.rj
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 40
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !57
  store i64 %i.sf, ptr %i.sc, align 8, !tbaa !57
  %i.sg = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.rj
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 48
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !57
  store i64 %i.sj, ptr %i.sg, align 8, !tbaa !57
  %i.sk = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i, i64 56
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.rj
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 56
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !57
  store i64 %i.sn, ptr %i.sk, align 8, !tbaa !57
  %i.so = add nuw i64 %i.rj, 8                    ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %exitcond.not.7 = icmp eq i64 %i.so, %i.px
  br i1 %exitcond.not.7, label %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !174

_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.2, %middle.block, %middle.block534, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  %i.sq = phi ptr [ %i.pp, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread ], [ %i.qc, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i ], [ %i.qc, %middle.block534 ], [ %i.qc, %middle.block ], [ %i.qc, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qc, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.qc, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.qc, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qc, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.sr = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread ], [ %i.qd, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i ], [ %i.qd, %middle.block534 ], [ %i.qd, %middle.block ], [ %i.qd, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qd, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.qd, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.qd, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qd, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.82.0.i412419 = phi i64 [ undef, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread ], [ %i.px, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i ], [ %i.px, %middle.block534 ], [ %i.px, %middle.block ], [ %i.px, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.px, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.px, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.px, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.px, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ss = phi ptr [ %i.pp, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread ], [ %i.py, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i ], [ %i.py, %middle.block534 ], [ %i.py, %middle.block ], [ %i.py, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.py, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.py, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.py, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.py, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.st = phi ptr [ %i.pq, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread ], [ %i.pz, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i ], [ %i.pz, %middle.block534 ], [ %i.pz, %middle.block ], [ %i.pz, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.pz, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.pz, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.pz, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.pz, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.su = trunc i64 %.sroa.82.0.i412419 to i32
  %i.sv = add i32 %i.sr, %i.su
  store i32 %i.sv, ptr %i.st, align 8, !tbaa !28, !alias.scope !177
  call fastcc void @_ZN4mlir6linalgL25getIm2ColInputExpressionsENS0_21Im2ColToOperandsExprsEN4llvm8ArrayRefIlEERNS_12RewriterBaseE(ptr dead_on_unwind noalias writable align 8 %30, ptr noundef nonnull byval(%"struct.mlir::linalg::Im2ColToOperandsExprs") align 8 %31, ptr %i.sq, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.sw = load ptr, ptr %32, align 8, !tbaa !27   ; 2 uses
  %i.sx = icmp eq ptr %i.sw, %i.ss
  br i1 %i.sx, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit
  call void @free(ptr noundef %i.sw) #13
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm9to_vectorIN4mlir6detail17ElementsAttrRangeINS1_17DenseElementsAttr15ElementIteratorIlEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISH_EE5valueEEEOSB_.exit, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #13
  %63 = load i64, ptr %30, align 8, !tbaa !65
  store i64 %63, ptr %36, align 8, !tbaa !65
  %64 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %65 = getelementptr inbounds nuw i8, ptr %30, i64 24
  %66 = load i64, ptr %65, align 8, !tbaa !65
  store i64 %66, ptr %64, align 8, !tbaa !65
  %67 = getelementptr inbounds nuw i8, ptr %36, i64 16
  %68 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %69 = load <2 x i64>, ptr %68, align 8, !tbaa !65
  store <2 x i64> %69, ptr %67, align 8, !tbaa !65
  store ptr %36, ptr %35, align 8, !tbaa !71
  %i.sy = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 4, ptr %i.sy, align 8, !tbaa !72
  %i.sz = load ptr, ptr %i.jm, align 8, !tbaa !58
  call void @_ZN4mlir9AffineMap17inferFromExprListEN4llvm8ArrayRefINS2_INS_10AffineExprEEEEEPNS_11MLIRContextE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.97") align 8 %34, ptr nonnull %35, i64 1, ptr noundef %i.sz) #13
  %i.ta = load ptr, ptr %34, align 8, !tbaa !27   ; 3 uses
  %.sroa.028.0.copyload = load ptr, ptr %i.ta, align 8, !tbaa !74
  %i.tb = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.tc = icmp eq ptr %i.ta, %i.tb
  br i1 %i.tc, label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj4EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  call void @free(ptr noundef nonnull %i.ta) #13
  br label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir9AffineMapELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #13
  %i.td = call ptr @_ZN4mlir9AffineMap22getMultiDimIdentityMapEjPNS_11MLIRContextE(i32 noundef %i.ov, ptr noundef %i.jn) #13
  %i.te = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  store ptr %i.te, ptr %37, align 8, !tbaa !27
  %i.tf = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %37, i64 12
  store i32 6, ptr %i.tg, align 4, !tbaa !61
  store ptr %.sroa.028.0.copyload, ptr %i.te, align 8
  %.sroa.4335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 24
  store ptr %i.td, ptr %.sroa.4335.0..sroa_idx, align 8
  store i32 2, ptr %i.tf, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #13
  %i.th = getelementptr inbounds i8, ptr %i.ot, i64 -8
  %.0.copyload.i.i.i.i.i277 = load i64, ptr %i.th, align 8
  %i.ti = and i64 %.0.copyload.i.i.i.i.i277, -8
  %i.tj = inttoptr i64 %i.ti to ptr
  store ptr %i.tj, ptr %39, align 8
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr nonnull align 8 dereferenceable(8) %39, i64 1) #13
  %i.tk = ptrtoint ptr %15 to i64
  %i.tl = ptrtoint ptr %26 to i64
  store i64 %i.tl, ptr %40, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 1, ptr %i.tm, align 8, !tbaa !83
  %i.tn = load ptr, ptr %37, align 8, !tbaa !27
  store ptr %i.tn, ptr %41, align 8, !tbaa !86
  %i.to = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.tp = load i32, ptr %i.tf, align 8, !tbaa !28
  %i.tq = zext i32 %i.tp to i64
  store i64 %i.tq, ptr %i.to, align 8, !tbaa !87
  %i.tr = load ptr, ptr %27, align 8, !tbaa !27
  store ptr %i.tr, ptr %42, align 8, !tbaa !89
  %i.ts = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.tt = load i32, ptr %i.oy, align 8, !tbaa !28
  %i.tu = zext i32 %i.tt to i64
  store i64 %i.tu, ptr %i.ts, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #13
  store ptr @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationENS1_10ValueRangeEEE11callback_fnIZNS1_6linalg15rewriteInIm2ColERNS1_12RewriterBaseENS9_16Conv2DNchwFchwOpEE3$_0EEvlS3_S4_S5_", ptr %43, align 8, !tbaa !92
  %i.tv = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.tw = ptrtoint ptr %44 to i64
  store i64 %i.tw, ptr %i.tv, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  %i.tx = load i64, ptr %38, align 8
  %i.ty = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.tz = load i64, ptr %i.ty, align 8
  %i.ua = call ptr @_ZN4mlir6linalg9GenericOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeES6_N4llvm8ArrayRefINS_9AffineMapEEENS8_INS_5utils12IteratorTypeEEENS7_12function_refIFvS3_S4_S6_EEENS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.jm, ptr %.sroa.0.0.copyload.i.i, i64 %i.tx, i64 %i.tz, i64 %i.tk, i64 1, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %40, ptr noundef nonnull byval(%"class.llvm::ArrayRef.176") align 8 %41, ptr noundef nonnull byval(%"class.llvm::ArrayRef.177") align 8 %42, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %43, ptr noundef nonnull byval(%"class.llvm::ArrayRef.54") align 8 %45) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #13
  %i.ub = call ptr @_ZN4mlir16getAffineDimExprEjPNS_11MLIRContextE(i32 noundef 0, ptr noundef %i.jn) #13
  %i.uc = call ptr @_ZN4mlir16getAffineDimExprEjPNS_11MLIRContextE(i32 noundef 1, ptr noundef %i.jn) #13
  %i.ud = call ptr @_ZN4mlir16getAffineDimExprEjPNS_11MLIRContextE(i32 noundef 2, ptr noundef %i.jn) #13
  %i.ue = call ptr @_ZN4mlir16getAffineDimExprEjPNS_11MLIRContextE(i32 noundef 3, ptr noundef %i.jn) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #13
  %i.uf = ptrtoint ptr %i.uc to i64               ; 2 uses
  store i64 %i.uf, ptr %46, align 8, !tbaa !65
  %i.ug = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.uh = ptrtoint ptr %i.ue to i64               ; 2 uses
  store i64 %i.uh, ptr %i.ug, align 8, !tbaa !65
  %i.ui = call ptr @_ZN4mlir9AffineMap3getEjjN4llvm8ArrayRefINS_10AffineExprEEEPNS_11MLIRContextE(i32 noundef 4, i32 noundef 0, ptr nonnull %46, i64 2, ptr noundef %i.jn) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #13
  %i.uj = ptrtoint ptr %i.ub to i64               ; 2 uses
  store i64 %i.uj, ptr %47, align 8, !tbaa !65
  %i.uk = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %i.uh, ptr %i.uk, align 8, !tbaa !65
  %i.ul = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.um = ptrtoint ptr %i.ud to i64               ; 2 uses
  store i64 %i.um, ptr %i.ul, align 8, !tbaa !65
  %i.un = call ptr @_ZN4mlir9AffineMap3getEjjN4llvm8ArrayRefINS_10AffineExprEEEPNS_11MLIRContextE(i32 noundef 4, i32 noundef 0, ptr nonnull %47, i64 3, ptr noundef %i.jn) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #13
  store i64 %i.uj, ptr %48, align 8, !tbaa !65
  %i.uo = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 %i.uf, ptr %i.uo, align 8, !tbaa !65
  %i.up = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i64 %i.um, ptr %i.up, align 8, !tbaa !65
  %i.uq = call ptr @_ZN4mlir9AffineMap3getEjjN4llvm8ArrayRefINS_10AffineExprEEEPNS_11MLIRContextE(i32 noundef 4, i32 noundef 0, ptr nonnull %48, i64 3, ptr noundef %i.jn) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #13
  %i.ur = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  store ptr %i.ur, ptr %49, align 8, !tbaa !27
  %i.us = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 24
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 28
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 4
  store <4 x i32> <i32 4, i32 12, i32 0, i32 0>, ptr %i.us, align 8
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr nonnull align 8 dereferenceable(8) %23, i64 1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #13
  store ptr %i.oe, ptr %52, align 8, !tbaa !19
  %i.ut = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.uu = getelementptr inbounds i8, ptr %i.ua, i64 -16
  store ptr %i.uu, ptr %i.ut, align 8
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr nonnull %52, i64 2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #13
  store ptr %i.oo, ptr %54, align 8, !tbaa !19
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr nonnull %54, i64 1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #13
  store ptr %i.ui, ptr %56, align 8, !tbaa !74
  %i.uv = getelementptr inbounds nuw i8, ptr %56, i64 8
  store ptr %i.un, ptr %i.uv, align 8, !tbaa !74
  %i.uw = getelementptr inbounds nuw i8, ptr %56, i64 16
  store ptr %i.uq, ptr %i.uw, align 8, !tbaa !74
  store ptr %56, ptr %55, align 8, !tbaa !86
  %i.ux = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 3, ptr %i.ux, align 8, !tbaa !87
  %i.uy = load ptr, ptr %49, align 8, !tbaa !27
  store ptr %i.uy, ptr %57, align 8, !tbaa !89
  %i.uz = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.va = load i32, ptr %i.us, align 8, !tbaa !28
  %i.vb = zext i32 %i.va to i64
  store i64 %i.vb, ptr %i.uz, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #13
  store ptr %16, ptr %59, align 8, !tbaa !95
  store ptr @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationENS1_10ValueRangeEEE11callback_fnIZNS1_6linalg15rewriteInIm2ColERNS1_12RewriterBaseENS9_16Conv2DNchwFchwOpEE3$_1EEvlS3_S4_S5_", ptr %58, align 8, !tbaa !92
  %i.vc = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.vd = ptrtoint ptr %59 to i64
  store i64 %i.vd, ptr %i.vc, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  %i.ve = load i64, ptr %50, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.vg = load i64, ptr %i.vf, align 8
  %i.vh = load i64, ptr %51, align 8
  %i.vi = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.vj = load i64, ptr %i.vi, align 8
  %i.vk = call ptr @_ZN4mlir6linalg9GenericOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeES6_N4llvm8ArrayRefINS_9AffineMapEEENS8_INS_5utils12IteratorTypeEEENS7_12function_refIFvS3_S4_S6_EEENS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.jm, ptr %.sroa.0.0.copyload.i.i, i64 %i.ve, i64 %i.vg, i64 %i.vh, i64 %i.vj, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %53, ptr noundef nonnull byval(%"class.llvm::ArrayRef.176") align 8 %55, ptr noundef nonnull byval(%"class.llvm::ArrayRef.177") align 8 %57, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %58, ptr noundef nonnull byval(%"class.llvm::ArrayRef.54") align 8 %60) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #13
  %i.vl = getelementptr inbounds i8, ptr %i.vk, i64 -16
  %i.vm = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.vl, i64 noundef 0) #13
  %.sroa.04.0.copyload = load ptr, ptr %16, align 8
  %.sroa.03.0.copyload = load ptr, ptr %14, align 8, !tbaa !60
  %i.vn = load ptr, ptr %21, align 8, !tbaa !27
  %i.vo = load i32, ptr %i.me, align 8, !tbaa !28
  %i.vp = zext i32 %i.vo to i64
  %i.vq = call ptr @_ZN4mlir6tensor13ExpandShapeOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEN4llvm8ArrayRefINS7_11SmallVectorIlLj2EEEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.jm, ptr %.sroa.04.0.copyload, ptr %.sroa.03.0.copyload, ptr %i.vm, ptr %i.vn, i64 %i.vp) #13 ; 2 uses
  %i.vr = load ptr, ptr %11, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #13
  %i.vs = getelementptr inbounds i8, ptr %i.vq, i64 -16
  store ptr %i.vs, ptr %62, align 8, !tbaa !19
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr nonnull %62, i64 1) #13
  %i.vt = load i64, ptr %61, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.vv = load i64, ptr %i.vu, align 8
  %i.vw = load ptr, ptr %1, align 8, !tbaa !52
  %i.vx = load ptr, ptr %i.vw, align 8
  call void %i.vx(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.vr, i64 %i.vt, i64 %i.vv) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #13
  store ptr %i.ua, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.vq, ptr %.sroa.4.0..sroa_idx, align 8
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.vy, align 8, !tbaa !55
  %i.vz = load ptr, ptr %49, align 8, !tbaa !27   ; 2 uses
  %i.wa = icmp eq ptr %i.vz, %i.ur
  br i1 %i.wa, label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj4EED2Ev.exit
  call void @free(ptr noundef %i.vz) #13
  br label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj4EED2Ev.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #13
  %i.wb = load ptr, ptr %37, align 8, !tbaa !27   ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.te
  br i1 %i.wc, label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit
  call void @free(ptr noundef %i.wb) #13
  br label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  %i.wd = load ptr, ptr %29, align 8, !tbaa !27   ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.wf = icmp eq ptr %i.wd, %i.we
  br i1 %i.wf, label %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit
end_hunk_1
