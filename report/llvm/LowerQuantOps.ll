Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowerQuantOps?download=true
inline.NumInlined: 2724
inline.NumDeleted: 1855
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4mlir5quant12_GLOBAL__N_116convertQuantizedERNS_9OpBuilderENS_8LocationEPNS_9OperationENS_5ValueENS_4TypeE:bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %33, i64 40
  store ptr %i.aab, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i32 4, ptr %i.aad, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  %i.aaf = getelementptr inbounds i8, ptr %i.yo, i64 -8
  %.0.copyload.i.i.i.i.i108.i = load i64, ptr %i.aaf, align 8
  %i.aag = and i64 %.0.copyload.i.i.i.i.i108.i, -8
  %i.aah = inttoptr i64 %i.aag to ptr
  store ptr %i.aah, ptr %35, align 8
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr nonnull align 8 dereferenceable(8) %35, i64 1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.aai = ptrtoint ptr %3 to i64
  store i64 %i.aai, ptr %37, align 8, !tbaa !97
  %i.aaj = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %i.tj, ptr %i.aaj, align 8, !tbaa !97
  %i.aak = getelementptr inbounds nuw i8, ptr %37, i64 16
  store ptr %i.xk, ptr %i.aak, align 8, !tbaa !97
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr nonnull %37, i64 3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  %i.aal = ptrtoint ptr %i.yp to i64
  store i64 %i.aal, ptr %39, align 8, !tbaa !97
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr nonnull %39, i64 1) #19
  %i.aam = load ptr, ptr %33, align 8, !tbaa !12
  store ptr %i.aam, ptr %40, align 8, !tbaa !339
  %i.aan = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.aao = load i32, ptr %i.aad, align 8, !tbaa !49
  %i.aap = zext i32 %i.aao to i64
  store i64 %i.aap, ptr %i.aan, align 8, !tbaa !340
  %i.aaq = load ptr, ptr %29, align 8, !tbaa !12
  store ptr %i.aaq, ptr %41, align 8, !tbaa !342
  %i.aar = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.aas = load i32, ptr %i.yr, align 8, !tbaa !49
  %i.aat = zext i32 %i.aas to i64
  store i64 %i.aat, ptr %i.aar, align 8, !tbaa !343
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  store ptr %i.a, ptr %43, align 8, !tbaa !344
  %i.aau = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %26, ptr %i.aau, align 8, !tbaa !383
  store ptr @"_ZN4llvm12function_refIFvRN4mlir9OpBuilderENS1_8LocationENS1_10ValueRangeEEE11callback_fnIZNS1_5quant12_GLOBAL__N_117convertSubChannelES3_S4_PNS1_9OperationENS1_5ValueENS9_30UniformQuantizedSubChannelTypeEE3$_0EEvlS3_S4_S5_", ptr %42, align 8, !tbaa !347
  %i.aav = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.aaw = ptrtoint ptr %43 to i64
  store i64 %i.aaw, ptr %i.aav, align 8, !tbaa !348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, i8 0, i64 16, i1 false)
  %i.aax = load i64, ptr %34, align 8
  %i.aay = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.aaz = load i64, ptr %i.aay, align 8
  %i.aba = load i64, ptr %36, align 8
  %i.abb = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.abc = load i64, ptr %i.abb, align 8
  %i.abd = call ptr @_ZN4mlir6linalg9GenericOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeES6_N4llvm8ArrayRefINS_9AffineMapEEENS8_INS_5utils12IteratorTypeEEENS7_12function_refIFvS3_S4_S6_EEENS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %i.aax, i64 %i.aaz, i64 %i.aba, i64 %i.abc, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %38, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1318") align 8 %40, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1319") align 8 %41, ptr noundef nonnull byval(%"class.llvm::function_ref.1320") align 8 %42, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1321") align 8 %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  %i.abe = load ptr, ptr %33, align 8, !tbaa !12  ; 2 uses
  %i.abf = icmp eq ptr %i.abe, %i.aac
  br i1 %i.abf, label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit.i, label %bb.db

bb.db:                                            ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.abe) #19
  br label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit.i: ; preds = %bb.db, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  %i.abg = load ptr, ptr %31, align 8, !tbaa !12  ; 2 uses
  %i.abh = icmp eq ptr %i.abg, %i.yw
  br i1 %i.abh, label %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EED2Ev.exit.i, label %bb.dc

bb.dc:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit.i
  call void @free(ptr noundef %i.abg) #19
  br label %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EED2Ev.exit.i: ; preds = %bb.dc, %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  %i.abi = load ptr, ptr %30, align 8, !tbaa !12  ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.abk = icmp eq ptr %i.abi, %i.abj
  br i1 %i.abk, label %_ZN4llvm11SmallVectorISt4pairIilELj3EED2Ev.exit.i, label %bb.dd

bb.dd:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EED2Ev.exit.i
  call void @free(ptr noundef %i.abi) #19
  br label %_ZN4llvm11SmallVectorISt4pairIilELj3EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIilELj3EED2Ev.exit.i: ; preds = %bb.dd, %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  %i.abl = load ptr, ptr %29, align 8, !tbaa !12  ; 2 uses
  %i.abm = icmp eq ptr %i.abl, %i.yq
  br i1 %i.abm, label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit.i, label %bb.de

bb.de:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIilELj3EED2Ev.exit.i
  call void @free(ptr noundef %i.abl) #19
  br label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit.i: ; preds = %bb.de, %_ZN4llvm11SmallVectorISt4pairIilELj3EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  %i.abn = load ptr, ptr %28, align 8, !tbaa !12  ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.abp = icmp eq ptr %i.abn, %i.abo
  br i1 %i.abp, label %_ZN4mlir5quant12_GLOBAL__N_117convertSubChannelERNS_9OpBuilderENS_8LocationEPNS_9OperationENS_5ValueENS0_30UniformQuantizedSubChannelTypeE.exit, label %bb.df

bb.df:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit.i
  call void @free(ptr noundef %i.abn) #19
  br label %_ZN4mlir5quant12_GLOBAL__N_117convertSubChannelERNS_9OpBuilderENS_8LocationEPNS_9OperationENS_5ValueENS0_30UniformQuantizedSubChannelTypeE.exit

.lr.ph.i:                                         ; preds = %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EEC2EmRKS2_.exit.i, %.lr.ph.i
  %.0137.i = phi ptr [ %i.abv, %.lr.ph.i ], [ %i.zr, %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj6EEC2EmRKS2_.exit.i ] ; 3 uses
  %.sroa.0120.0.copyload.i = load i32, ptr %.0137.i, align 8 ; 2 uses
  %.sroa.5123.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0137.i, i64 8
  %.sroa.5123.0.copyload.i = load i64, ptr %.sroa.5123.0..0.sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.abq = call ptr @_ZN4mlir7Builder16getAffineDimExprEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.sroa.0120.0.copyload.i) #19
  store ptr %i.abq, ptr %32, align 8
  %i.abr = call ptr @_ZNK4mlir10AffineExpr8floorDivEm(ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %.sroa.5123.0.copyload.i) #19
  %i.abs = sext i32 %.sroa.0120.0.copyload.i to i64
  %i.abt = load ptr, ptr %31, align 8, !tbaa !12  ; 2 uses
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %i.abs
  store ptr %i.abr, ptr %i.abu, align 8, !tbaa !382
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  %i.abv = getelementptr inbounds nuw i8, ptr %.0137.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.abv, %i.zv
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZN4mlir5quant12_GLOBAL__N_117convertSubChannelERNS_9OpBuilderENS_8LocationEPNS_9OperationENS_5ValueENS0_30UniformQuantizedSubChannelTypeE.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EED2Ev.exit.i, %bb.df
  %i.abw = getelementptr inbounds i8, ptr %i.abd, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  br label %_ZN4mlir5quant12_GLOBAL__N_115convertPerLayerERNS_9OpBuilderENS_8LocationEPNS_9OperationENS_5ValueENS0_20UniformQuantizedTypeE.exit.thread

_ZN4mlir5quant12_GLOBAL__N_115convertPerLayerERNS_9OpBuilderENS_8LocationEPNS_9OperationENS_5ValueENS0_20UniformQuantizedTypeE.exit.thread: ; preds = %_ZN4mlir5quant12_GLOBAL__N_121convertPerLayerRankedERNS_9OpBuilderENS_8LocationEPNS_9OperationENS_5ValueENS0_20UniformQuantizedTypeE.exit.i, %bb.t, %_ZN4mlir5quant12_GLOBAL__N_117convertSubChannelERNS_9OpBuilderENS_8LocationEPNS_9OperationENS_5ValueENS0_30UniformQuantizedSubChannelTypeE.exit, %_ZN4llvm8dyn_castIN4mlir5quant30UniformQuantizedSubChannelTypeENS1_4TypeEEEDcRT0_.exit, %bb.bg
  %.sroa.017.3 = phi ptr [ undef, %_ZN4llvm8dyn_castIN4mlir5quant30UniformQuantizedSubChannelTypeENS1_4TypeEEEDcRT0_.exit ], [ %.sroa.017.0.i, %bb.bg ], [ %i.abw, %_ZN4mlir5quant12_GLOBAL__N_117convertSubChannelERNS_9OpBuilderENS_8LocationEPNS_9OperationENS_5ValueENS0_30UniformQuantizedSubChannelTypeE.exit ], [ %i.dd, %_ZN4mlir5quant12_GLOBAL__N_121convertPerLayerRankedERNS_9OpBuilderENS_8LocationEPNS_9OperationENS_5ValueENS0_20UniformQuantizedTypeE.exit.i ], [ %i.dn, %bb.t ]
  ret ptr %.sroa.017.3
}

declare void @_ZN4mlir25ConversionPatternRewriter9replaceOpEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64, i64) unnamed_addr #6

declare ptr @_ZNK4mlir10TensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare ptr @_ZNK4mlir10TensorType9cloneWithESt8optionalIN4llvm8ArrayRefIlEEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef byval(%"class.std::optional.369") align 8, ptr) local_unnamed_addr #6

declare ptr @_ZN4mlir5shape19getExtentTensorTypeEPNS_11MLIRContextEl(ptr noundef, i64 noundef) local_unnamed_addr #6

declare ptr @_ZN4mlir5shape9ShapeOfOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #6

declare ptr @_ZN4mlir5shape13NumElementsOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #6

declare ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare ptr @_ZN4mlir6tensor14FromElementsOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, i64) local_unnamed_addr #6

declare ptr @_ZNK4mlir18UnrankedTensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr, i64, ptr, ptr) local_unnamed_addr #6

declare ptr @_ZN4mlir6tensor9ReshapeOp6createERNS_9OpBuilderENS_8LocationENS_10TensorTypeENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr) local_unnamed_addr #6

declare ptr @_ZNK4mlir5quant13QuantizedType16getExpressedTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare ptr @_ZN4mlir7Builder12getFloatAttrENS_4TypeEd(ptr noundef nonnull align 8 dereferenceable(8), ptr, double noundef) local_unnamed_addr #6

declare noundef double @_ZNK4mlir5quant20UniformQuantizedType8getScaleEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr) local_unnamed_addr #6

declare ptr @_ZN4mlir7Builder14getIntegerAttrENS_4TypeEl(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64 noundef) local_unnamed_addr #6

declare noundef i64 @_ZNK4mlir5quant20UniformQuantizedType12getZeroPointEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc nonnull ptr @_ZN4mlir5quant12_GLOBAL__N_113convertRankedERNS_9OpBuilderENS_8LocationEPNS_9OperationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES7_S7_NS0_13QuantizedTypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nofree noundef readonly captures(none) %2, ptr %3, ptr %4, i64 %5, i64 %6, i64 %7, i64 %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %"class.mlir::Attribute", align 8   ; 6 uses
  %10 = alloca %"struct.mlir::detail::constant_op_binder", align 8 ; 4 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 12 uses
  %12 = alloca %"struct.mlir::detail::constant_int_value_binder", align 8 ; 5 uses
  %13 = alloca %"class.mlir::Value", align 8      ; 6 uses
  %14 = alloca %"class.mlir::quant::QuantizedType", align 8 ; 5 uses
  %15 = alloca %"class.mlir::quant::QuantizedType", align 8 ; 8 uses
  %16 = alloca %"class.std::optional.369", align 8 ; 4 uses
  %17 = alloca %"class.mlir::TensorType", align 8 ; 4 uses
  %18 = alloca %"class.mlir::Attribute", align 8  ; 6 uses
  %19 = alloca %"struct.mlir::detail::constant_op_binder", align 8 ; 4 uses
  %20 = alloca %"class.llvm::APInt", align 8      ; 12 uses
  %21 = alloca %"struct.mlir::detail::constant_int_value_binder", align 8 ; 5 uses
  %22 = alloca %"class.mlir::Value", align 8      ; 6 uses
  %23 = alloca %"class.mlir::quant::QuantizedType", align 8 ; 7 uses
  %i.a = inttoptr i64 %6 to ptr                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_5quant14QuantizeCastOpEvE2idE
  br i1 %i.e, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %i.f = inttoptr i64 %7 to ptr                   ; 3 uses
  %i.g = inttoptr i64 %8 to ptr
  store ptr %i.g, ptr %23, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !10 ; 2 uses
  %i.m = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %i.n = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedTensorTypeEvE2idE
  %spec.select.i.i.i.i.i.not.i.i = and i1 %i.m, %i.n
  br i1 %spec.select.i.i.i.i.i.not.i.i, label %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @_ZN4mlir6tensor7SplatOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.a, ptr %4, i64 %5) #19
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -16
  br label %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i

_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.08.0.i.i = phi ptr [ %i.p, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.q = tail call ptr @_ZN4mlir5arith6DivFOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nonnull %3, ptr %.sroa.08.0.i.i, i32 noundef 0) #19
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %i.f, ptr %22, align 8
  %i.s = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #19 ; 3 uses
  %.not.not.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.not.not.i.i, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.t = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store i32 1, ptr %i.t, align 8, !tbaa !116
  store i64 0, ptr %20, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  store ptr %20, ptr %21, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  store ptr null, ptr %18, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %18, ptr %19, align 8, !tbaa !124
  %i.u = call noundef zeroext i1 @_ZN4mlir6detail18constant_op_binderINS_9AttributeEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br i1 %i.u, label %bb.e, label %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8
  %i.w = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !10 ; 4 uses
  %i.aa = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE
  %i.ab = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9IndexTypeEvE2idE
  %or.cond.i.i.i.i.i = or i1 %i.aa, %i.ab
  %i.ac = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %or.cond10.i.i.i.i.i = or i1 %i.ac, %or.cond.i.i.i.i.i
  %i.ad = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %spec.select.i.i.i.i.i.a = or i1 %i.ad, %or.cond10.i.i.i.i.i
  br i1 %spec.select.i.i.i.i.i.a, label %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.i.i.i, label %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.thread.i.i.i

_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.thread.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %.pre.i = load i32, ptr %i.t, align 8, !tbaa !116
  br label %_ZZN4mlir6m_ZeroEvENUlRKN4llvm5APIntEE_8__invokeES3_.exit.i

_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.i.i.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %18, align 8, !tbaa !112
  %i.ae = call noundef zeroext i1 @_ZN4mlir6detail25constant_int_value_binder5matchENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr %.sroa.0.0.copyload.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %.pre65.i = load i32, ptr %i.t, align 8, !tbaa !116 ; 4 uses
  br i1 %i.ae, label %bb.f, label %_ZZN4mlir6m_ZeroEvENUlRKN4llvm5APIntEE_8__invokeES3_.exit.i

bb.f:                                             ; preds = %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.i.i.i
  %i.af = icmp ult i32 %.pre65.i, 65              ; 2 uses
  br i1 %i.af, label %bb.g, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i:  ; preds = %bb.f
  %i.ag = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %20) #22
  %i.ah = sub i32 %.pre65.i, %i.ag
  %i.ai = icmp ult i32 %i.ah, 65
  br i1 %i.ai, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i, %bb.f
  %i.aj = load ptr, ptr %20, align 8
  %spec.select.i.i.i.i.i.i = select i1 %i.af, ptr %20, ptr %i.aj
  %.0.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !117
  %i.ak = icmp eq i64 %.0.i.i.i.i.i.i, 0
  br label %_ZZN4mlir6m_ZeroEvENUlRKN4llvm5APIntEE_8__invokeES3_.exit.i

_ZZN4mlir6m_ZeroEvENUlRKN4llvm5APIntEE_8__invokeES3_.exit.i: ; preds = %bb.g, %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.i.i.i, %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.thread.i.i.i
  %i.al = phi i32 [ %.pre65.i, %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.i.i.i ], [ %.pre.i, %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.thread.i.i.i ], [ %.pre65.i, %bb.g ]
  %i.am = phi i1 [ false, %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.i.i.i ], [ false, %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.thread.i.i.i ], [ %i.ak, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.an = icmp ugt i32 %i.al, 64
  br i1 %i.an, label %bb.h, label %_ZN4mlir12matchPatternINS_6detail30constant_int_predicate_matcherEEEbNS_5ValueERKT_.exit.i

bb.h:                                             ; preds = %_ZZN4mlir6m_ZeroEvENUlRKN4llvm5APIntEE_8__invokeES3_.exit.i
  %i.ao = load ptr, ptr %20, align 8, !tbaa !117  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN4mlir12matchPatternINS_6detail30constant_int_predicate_matcherEEEbNS_5ValueERKT_.exit.i, label %.split.i

.thread.i:                                        ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.aq = load ptr, ptr %20, align 8, !tbaa !117  ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.sink.split.sink.split.i, label %.split.thread.i

.split.thread.i:                                  ; preds = %.thread.i
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #21
  br label %.sink.split.sink.split.i

.split.i:                                         ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br i1 %i.am, label %bb.m, label %bb.i

_ZN4mlir12matchPatternINS_6detail30constant_int_predicate_matcherEEEbNS_5ValueERKT_.exit.i: ; preds = %bb.h, %_ZZN4mlir6m_ZeroEvENUlRKN4llvm5APIntEE_8__invokeES3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br i1 %i.am, label %bb.m, label %bb.i

.sink.split.sink.split.i:                         ; preds = %.split.thread.i, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %_ZN4mlir12matchPatternINS_6detail30constant_int_predicate_matcherEEEbNS_5ValueERKT_.exit.i, %.split.i
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i49.i = load ptr, ptr %i.at, align 8, !tbaa !10 ; 2 uses
  %i.au = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i49.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %i.av = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i49.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedTensorTypeEvE2idE
  %spec.select.i.i.i.i.i.not.i50.i = and i1 %i.au, %i.av
  br i1 %spec.select.i.i.i.i.i.not.i50.i, label %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit52.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = call ptr @_ZN4mlir6tensor7SplatOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.f, ptr %4, i64 %5) #19
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -16
  br label %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit52.i

_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit52.i: ; preds = %bb.j, %bb.i
  %.sroa.08.0.i51.i = phi ptr [ %i.ax, %bb.j ], [ %i.f, %bb.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i, i64 8
  %.0.copyload.i.i.i.i.i53.i = load i64, ptr %i.ay, align 8
  %i.az = and i64 %.0.copyload.i.i.i.i.i53.i, -8
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %i.bb = call noundef i32 @_ZNK4mlir5quant13QuantizedType8getFlagsEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #19
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit52.i
  %i.bd = call ptr @_ZN4mlir5arith8SIToFPOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.ba, ptr %.sroa.08.0.i51.i) #19
  br label %_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i

bb.l:                                             ; preds = %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit52.i
  %i.be = call ptr @_ZN4mlir5arith8UIToFPOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.ba, ptr %.sroa.08.0.i51.i, i1 noundef zeroext false) #19
  br label %_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i

_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i: ; preds = %bb.l, %bb.k
  %.pn.i.i = phi ptr [ %i.bd, %bb.k ], [ %i.be, %bb.l ]
  %.sroa.010.0.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -16
  %i.bf = call ptr @_ZN4mlir5arith6AddFOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nonnull %i.r, ptr nonnull %.sroa.010.0.i.i, i32 noundef 0) #19
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16
  br label %bb.m

bb.m:                                             ; preds = %_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i, %_ZN4mlir12matchPatternINS_6detail30constant_int_predicate_matcherEEEbNS_5ValueERKT_.exit.i, %.split.i
  %.sroa.026.0.i = phi ptr [ %i.bg, %_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i ], [ %i.r, %_ZN4mlir12matchPatternINS_6detail30constant_int_predicate_matcherEEEbNS_5ValueERKT_.exit.i ], [ %i.r, %.split.i ] ; 2 uses
  %i.bh = call ptr @_ZNK4mlir5quant13QuantizedType14getStorageTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i54.i = load ptr, ptr %i.bj, align 8, !tbaa !10 ; 2 uses
  %i.bk = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i54.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %i.bl = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i54.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedTensorTypeEvE2idE
  %spec.select.i.i.i.i.i.not.i55.i = and i1 %i.bk, %i.bl ; 2 uses
  %spec.select.i.i.i.i = select i1 %spec.select.i.i.i.i.i.not.i55.i, ptr null, ptr %i.j
  store ptr %spec.select.i.i.i.i, ptr %17, align 8
  br i1 %spec.select.i.i.i.i.i.not.i55.i, label %_ZN4mlir5quant12_GLOBAL__N_121getScalarOrTensorTypeENS_4TypeES2_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i8 0, ptr %i.bm, align 8, !tbaa !102
  %i.bn = call ptr @_ZNK4mlir10TensorType9cloneWithESt8optionalIN4llvm8ArrayRefIlEEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull byval(%"class.std::optional.369") align 8 %16, ptr %i.bh) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %_ZN4mlir5quant12_GLOBAL__N_121getScalarOrTensorTypeENS_4TypeES2_.exit.i

_ZN4mlir5quant12_GLOBAL__N_121getScalarOrTensorTypeENS_4TypeES2_.exit.i: ; preds = %bb.n, %bb.m
  %spec.select.i.i = phi ptr [ %i.bn, %bb.n ], [ %i.bh, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.bo = call noundef i32 @_ZNK4mlir5quant13QuantizedType8getFlagsEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #19
  %i.bp = trunc i32 %i.bo to i1
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4mlir5quant12_GLOBAL__N_121getScalarOrTensorTypeENS_4TypeES2_.exit.i
  %i.bq = call ptr @_ZN4mlir5arith8FPToSIOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %spec.select.i.i, ptr nonnull %.sroa.026.0.i) #19
  br label %_ZN4mlir5quant12_GLOBAL__N_121convertFloatToIntegerERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i

bb.p:                                             ; preds = %_ZN4mlir5quant12_GLOBAL__N_121getScalarOrTensorTypeENS_4TypeES2_.exit.i
  %i.br = call ptr @_ZN4mlir5arith8FPToUIOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %spec.select.i.i, ptr nonnull %.sroa.026.0.i) #19
  br label %_ZN4mlir5quant12_GLOBAL__N_121convertFloatToIntegerERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i

_ZN4mlir5quant12_GLOBAL__N_121convertFloatToIntegerERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i: ; preds = %bb.p, %bb.o
  %.pn.i56.i = phi ptr [ %i.bq, %bb.o ], [ %i.br, %bb.p ] ; 2 uses
  %.sroa.010.0.i57.i = getelementptr inbounds i8, ptr %.pn.i56.i, i64 -16 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store ptr %.sroa.0.0.copyload.i, ptr %15, align 8
  %i.bs = call noundef zeroext i1 @_ZNK4mlir5quant13QuantizedType20hasStorageTypeBoundsEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #19
  br i1 %i.bs, label %bb.q, label %_ZN4mlir5quant12_GLOBAL__N_113quantizeValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES5_S5_NS0_13QuantizedTypeE.exit

bb.q:                                             ; preds = %_ZN4mlir5quant12_GLOBAL__N_121convertFloatToIntegerERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i
  %i.bt = getelementptr inbounds i8, ptr %.pn.i56.i, i64 -8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8
  %i.bu = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bw = call ptr @_ZNK4mlir5quant13QuantizedType14getStorageTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #19 ; 2 uses
  %i.bx = call noundef i64 @_ZNK4mlir5quant13QuantizedType17getStorageTypeMinEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #19
  %i.by = call ptr @_ZN4mlir5arith13ConstantIntOp6createERNS_9OpBuilderENS_8LocationENS_4TypeEl(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.bw, i64 noundef %i.bx) #19
  %i.bz = call noundef i64 @_ZNK4mlir5quant13QuantizedType17getStorageTypeMaxEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #19
  %i.ca = call ptr @_ZN4mlir5arith13ConstantIntOp6createERNS_9OpBuilderENS_8LocationENS_4TypeEl(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.bw, i64 noundef %i.bz) #19
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 -16 ; 2 uses
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !100
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !tbaa !10 ; 3 uses
  %i.ce = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %i.cf = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedTensorTypeEvE2idE
  %spec.select.i.i.i.i.i.not.i.i.i = and i1 %i.ce, %i.cf
  br i1 %spec.select.i.i.i.i.i.not.i.i.i, label %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = call ptr @_ZN4mlir6tensor7SplatOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nonnull %i.cb, ptr %4, i64 %5) #19
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -16
  %.pre.i.i = load ptr, ptr %i.bv, align 8, !tbaa !100
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i45.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !10
  br label %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i.i

_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i.i: ; preds = %bb.r, %bb.q
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i45.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i45.pre.i.i, %bb.r ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ] ; 2 uses
  %.sroa.08.0.i.i.i = phi ptr [ %i.ch, %bb.r ], [ %i.cb, %bb.q ] ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ca, i64 -16 ; 2 uses
  %i.cj = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i45.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %i.ck = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i45.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedTensorTypeEvE2idE
  %spec.select.i.i.i.i.i.not.i46.i.i = and i1 %i.cj, %i.ck
  br i1 %spec.select.i.i.i.i.i.not.i46.i.i, label %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit48.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i.i
  %i.cl = call ptr @_ZN4mlir6tensor7SplatOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nonnull %i.ci, ptr %4, i64 %5) #19
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -16
  br label %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit48.i.i

_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit48.i.i: ; preds = %bb.s, %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i.i
  %.sroa.08.0.i47.i.i = phi ptr [ %i.cm, %bb.s ], [ %i.ci, %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i.i ] ; 2 uses
  %i.cn = call noundef i32 @_ZNK4mlir5quant13QuantizedType8getFlagsEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #19
  %i.co = trunc i32 %i.cn to i1
  br i1 %i.co, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit48.i.i
  %i.cp = call ptr @_ZN4mlir5arith7MaxSIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nonnull %.sroa.010.0.i57.i, ptr nonnull %.sroa.08.0.i.i.i) #19
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -16
  %i.cr = call ptr @_ZN4mlir5arith7MinSIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nonnull %i.cq, ptr nonnull %.sroa.08.0.i47.i.i) #19
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -16
  br label %_ZN4mlir5quant12_GLOBAL__N_113quantizeValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES5_S5_NS0_13QuantizedTypeE.exit

bb.u:                                             ; preds = %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit48.i.i
  %i.ct = call ptr @_ZN4mlir5arith7MaxUIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nonnull %.sroa.010.0.i57.i, ptr nonnull %.sroa.08.0.i.i.i) #19
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -16
  %i.cv = call ptr @_ZN4mlir5arith7MinUIOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nonnull %i.cu, ptr nonnull %.sroa.08.0.i47.i.i) #19
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -16
  br label %_ZN4mlir5quant12_GLOBAL__N_113quantizeValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES5_S5_NS0_13QuantizedTypeE.exit

_ZN4mlir5quant12_GLOBAL__N_113quantizeValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES5_S5_NS0_13QuantizedTypeE.exit: ; preds = %_ZN4mlir5quant12_GLOBAL__N_121convertFloatToIntegerERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i, %bb.t, %bb.u
  %.sroa.043.0.i.i = phi ptr [ %.sroa.010.0.i57.i, %_ZN4mlir5quant12_GLOBAL__N_121convertFloatToIntegerERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i ], [ %i.cs, %bb.t ], [ %i.cw, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.ai

bb.v:                                             ; preds = %bb.a
  %i.cx = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_5quant16DequantizeCastOpEvE2idE
  tail call void @llvm.assume(i1 %i.cx)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.cy = inttoptr i64 %7 to ptr                  ; 3 uses
  %i.cz = inttoptr i64 %8 to ptr
  store ptr %i.cz, ptr %14, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.0.copyload.i.i.i.i.i.i23 = load i64, ptr %i.da, align 8
  %i.db = and i64 %.0.copyload.i.i.i.i.i.i23, -8
  %i.dc = inttoptr i64 %i.db to ptr               ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !100
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i24 = load ptr, ptr %i.de, align 8, !tbaa !10 ; 2 uses
  %i.df = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i24, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %i.dg = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i24, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedTensorTypeEvE2idE
  %spec.select.i.i.i.i.i.not.i.i25 = and i1 %i.df, %i.dg
  br i1 %spec.select.i.i.i.i.i.not.i.i25, label %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i26, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = tail call ptr @_ZN4mlir6tensor7SplatOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.a, ptr %4, i64 %5) #19
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -16
  br label %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i26

_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i26: ; preds = %bb.w, %bb.v
  %.sroa.08.0.i.i27 = phi ptr [ %i.di, %bb.w ], [ %i.a, %bb.v ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i27, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i38.i = load i64, ptr %i.dj, align 8
  %i.dk = and i64 %.0.copyload.i.i.i.i.i38.i, -8
  %i.dl = inttoptr i64 %i.dk to ptr               ; 2 uses
  %i.dm = call noundef i32 @_ZNK4mlir5quant13QuantizedType8getFlagsEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  %i.dn = trunc i32 %i.dm to i1
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i26
  %i.do = call ptr @_ZN4mlir5arith8SIToFPOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.dl, ptr nonnull %3) #19
  br label %_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i28

bb.y:                                             ; preds = %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit.i26
  %i.dp = call ptr @_ZN4mlir5arith8UIToFPOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.dl, ptr nonnull %3, i1 noundef zeroext false) #19
  br label %_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i28

_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i28: ; preds = %bb.y, %bb.x
  %.pn.i.i29 = phi ptr [ %i.do, %bb.x ], [ %i.dp, %bb.y ]
  %.sroa.010.0.i.i30 = getelementptr inbounds i8, ptr %.pn.i.i29, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %i.cy, ptr %13, align 8
  %i.dq = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #19 ; 3 uses
  %.not.not.not.i.i31 = icmp eq ptr %i.dq, null
  br i1 %.not.not.not.i.i31, label %.sink.split.i48, label %bb.z

bb.z:                                             ; preds = %_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i32 1, ptr %i.dr, align 8, !tbaa !116
  store i64 0, ptr %11, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store ptr %11, ptr %12, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr null, ptr %9, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store ptr %9, ptr %10, align 8, !tbaa !124
  %i.ds = call noundef zeroext i1 @_ZN4mlir6detail18constant_op_binderINS_9AttributeEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br i1 %i.ds, label %bb.aa, label %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.thread.i.i.i32

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i.i37 = load i64, ptr %i.dt, align 8
  %i.du = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i37, -8
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !100
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i38 = load ptr, ptr %i.dx, align 8, !tbaa !10 ; 4 uses
  %i.dy = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i38, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE
  %i.dz = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i38, @_ZN4mlir6detail14TypeIDResolverINS_9IndexTypeEvE2idE
  %or.cond.i.i.i.i.i39 = or i1 %i.dy, %i.dz
  %i.ea = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i38, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %or.cond10.i.i.i.i.i40 = or i1 %i.ea, %or.cond.i.i.i.i.i39
  %i.eb = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i38, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %spec.select.i.i.i.i.i41 = or i1 %i.eb, %or.cond10.i.i.i.i.i40
  br i1 %spec.select.i.i.i.i.i41, label %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.i.i.i42, label %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.thread.i.i.i32

_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.thread.i.i.i32: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %.pre.i33 = load i32, ptr %i.dr, align 8, !tbaa !116
  br label %_ZZN4mlir6m_ZeroEvENUlRKN4llvm5APIntEE_8__invokeES3_.exit.i34

_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.i.i.i42: ; preds = %bb.aa
  %.sroa.0.0.copyload.i.i.i.i43 = load ptr, ptr %9, align 8, !tbaa !112
  %i.ec = call noundef zeroext i1 @_ZN4mlir6detail25constant_int_value_binder5matchENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr %.sroa.0.0.copyload.i.i.i.i43)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %.pre54.i = load i32, ptr %i.dr, align 8, !tbaa !116 ; 4 uses
  br i1 %i.ec, label %bb.ab, label %_ZZN4mlir6m_ZeroEvENUlRKN4llvm5APIntEE_8__invokeES3_.exit.i34

bb.ab:                                            ; preds = %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.i.i.i42
  %i.ed = icmp ult i32 %.pre54.i, 65              ; 2 uses
  br i1 %i.ed, label %bb.ac, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i44

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i44: ; preds = %bb.ab
  %i.ee = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %11) #22
  %i.ef = sub i32 %.pre54.i, %i.ee
  %i.eg = icmp ult i32 %i.ef, 65
  br i1 %i.eg, label %bb.ac, label %.thread.i45

bb.ac:                                            ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i44, %bb.ab
  %i.eh = load ptr, ptr %11, align 8
  %spec.select.i.i.i.i.i.i49 = select i1 %i.ed, ptr %11, ptr %i.eh
  %.0.i.i.i.i.i.i50 = load i64, ptr %spec.select.i.i.i.i.i.i49, align 8, !tbaa !117
  %i.ei = icmp eq i64 %.0.i.i.i.i.i.i50, 0
  br label %_ZZN4mlir6m_ZeroEvENUlRKN4llvm5APIntEE_8__invokeES3_.exit.i34

_ZZN4mlir6m_ZeroEvENUlRKN4llvm5APIntEE_8__invokeES3_.exit.i34: ; preds = %bb.ac, %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.i.i.i42, %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.thread.i.i.i32
  %i.ej = phi i32 [ %.pre54.i, %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.i.i.i42 ], [ %.pre.i33, %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.thread.i.i.i32 ], [ %.pre54.i, %bb.ac ]
  %i.ek = phi i1 [ false, %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.i.i.i42 ], [ false, %_ZN4mlir6detail25constant_int_value_binder5matchEPNS_9OperationE.exit.thread.i.i.i32 ], [ %i.ei, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.el = icmp ugt i32 %i.ej, 64
  br i1 %i.el, label %bb.ad, label %_ZN4mlir12matchPatternINS_6detail30constant_int_predicate_matcherEEEbNS_5ValueERKT_.exit.i35

bb.ad:                                            ; preds = %_ZZN4mlir6m_ZeroEvENUlRKN4llvm5APIntEE_8__invokeES3_.exit.i34
  %i.em = load ptr, ptr %11, align 8, !tbaa !117  ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %_ZN4mlir12matchPatternINS_6detail30constant_int_predicate_matcherEEEbNS_5ValueERKT_.exit.i35, label %.split.i36

.thread.i45:                                      ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.eo = load ptr, ptr %11, align 8, !tbaa !117  ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %.sink.split.sink.split.i47, label %.split.thread.i46

.split.thread.i46:                                ; preds = %.thread.i45
  call void @_ZdaPv(ptr noundef nonnull %i.eo) #21
  br label %.sink.split.sink.split.i47

.split.i36:                                       ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.em) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br i1 %i.ek, label %_ZN4mlir5quant12_GLOBAL__N_115dequantizeValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES5_S5_NS0_13QuantizedTypeE.exit, label %bb.ae

_ZN4mlir12matchPatternINS_6detail30constant_int_predicate_matcherEEEbNS_5ValueERKT_.exit.i35: ; preds = %bb.ad, %_ZZN4mlir6m_ZeroEvENUlRKN4llvm5APIntEE_8__invokeES3_.exit.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br i1 %i.ek, label %_ZN4mlir5quant12_GLOBAL__N_115dequantizeValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES5_S5_NS0_13QuantizedTypeE.exit, label %bb.ae

.sink.split.sink.split.i47:                       ; preds = %.split.thread.i46, %.thread.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.sink.split.i48

.sink.split.i48:                                  ; preds = %.sink.split.sink.split.i47, %_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split.i48, %_ZN4mlir12matchPatternINS_6detail30constant_int_predicate_matcherEEEbNS_5ValueERKT_.exit.i35, %.split.i36
  %i.eq = load ptr, ptr %i.dc, align 8, !tbaa !100
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i39.i = load ptr, ptr %i.er, align 8, !tbaa !10 ; 2 uses
  %i.es = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i39.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %i.et = icmp ne ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i39.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedTensorTypeEvE2idE
  %spec.select.i.i.i.i.i.not.i40.i = and i1 %i.es, %i.et
  br i1 %spec.select.i.i.i.i.i.not.i40.i, label %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit42.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eu = call ptr @_ZN4mlir6tensor7SplatOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.cy, ptr %4, i64 %5) #19
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -16
  br label %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit42.i

_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit42.i: ; preds = %bb.af, %bb.ae
  %.sroa.08.0.i41.i = phi ptr [ %i.ev, %bb.af ], [ %i.cy, %bb.ae ] ; 2 uses
  %.0.copyload.i.i.i.i.i43.i = load i64, ptr %i.dj, align 8
  %i.ew = and i64 %.0.copyload.i.i.i.i.i43.i, -8
  %i.ex = inttoptr i64 %i.ew to ptr               ; 2 uses
  %i.ey = call noundef i32 @_ZNK4mlir5quant13QuantizedType8getFlagsEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  %i.ez = trunc i32 %i.ey to i1
  br i1 %i.ez, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit42.i
  %i.fa = call ptr @_ZN4mlir5arith8SIToFPOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.ex, ptr %.sroa.08.0.i41.i) #19
  br label %_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit46.i

bb.ah:                                            ; preds = %_ZN4mlir5quant12_GLOBAL__N_125getScalarOrTensorConstantERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEN4llvm8ArrayRefINS_12OpFoldResultEEE.exit42.i
  %i.fb = call ptr @_ZN4mlir5arith8UIToFPOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.ex, ptr %.sroa.08.0.i41.i, i1 noundef zeroext false) #19
  br label %_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit46.i

_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit46.i: ; preds = %bb.ah, %bb.ag
  %.pn.i44.i = phi ptr [ %i.fa, %bb.ag ], [ %i.fb, %bb.ah ]
  %.sroa.010.0.i45.i = getelementptr inbounds i8, ptr %.pn.i44.i, i64 -16
  %i.fc = call ptr @_ZN4mlir5arith6SubFOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nonnull %.sroa.010.0.i.i30, ptr nonnull %.sroa.010.0.i45.i, i32 noundef 0) #19
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -16
  br label %_ZN4mlir5quant12_GLOBAL__N_115dequantizeValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES5_S5_NS0_13QuantizedTypeE.exit

_ZN4mlir5quant12_GLOBAL__N_115dequantizeValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES5_S5_NS0_13QuantizedTypeE.exit: ; preds = %.split.i36, %_ZN4mlir12matchPatternINS_6detail30constant_int_predicate_matcherEEEbNS_5ValueERKT_.exit.i35, %_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit46.i
  %.sroa.037.0.i = phi ptr [ %i.fd, %_ZN4mlir5quant12_GLOBAL__N_121convertIntegerToFloatERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeEb.exit46.i ], [ %.sroa.010.0.i.i30, %_ZN4mlir12matchPatternINS_6detail30constant_int_predicate_matcherEEEbNS_5ValueERKT_.exit.i35 ], [ %.sroa.010.0.i.i30, %.split.i36 ]
  %i.fe = call ptr @_ZN4mlir5arith6MulFOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS0_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nonnull %.sroa.037.0.i, ptr nonnull %.sroa.08.0.i.i27, i32 noundef 0) #19
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4mlir5quant12_GLOBAL__N_115dequantizeValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES5_S5_NS0_13QuantizedTypeE.exit, %_ZN4mlir5quant12_GLOBAL__N_113quantizeValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES5_S5_NS0_13QuantizedTypeE.exit
  %.sroa.021.0 = phi ptr [ %.sroa.043.0.i.i, %_ZN4mlir5quant12_GLOBAL__N_113quantizeValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES5_S5_NS0_13QuantizedTypeE.exit ], [ %i.ff, %_ZN4mlir5quant12_GLOBAL__N_115dequantizeValueERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEES5_S5_NS0_13QuantizedTypeE.exit ]
  ret ptr %.sroa.021.0
}
end_hunk_0
