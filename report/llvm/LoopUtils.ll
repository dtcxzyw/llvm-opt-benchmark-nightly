Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopUtils?download=true
inline.NumInlined: 6254
inline.NumDeleted: 3083
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4mlir6affine30createCanonicalizedAffineForOpENS_9OpBuilderENS_8LocationENS_10ValueRangeENS_9AffineMapES3_S4_l:bb.a
  %.pre.i.i22 = load ptr, ptr %14, align 8, !tbaa !114, !alias.scope !635
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !635
  store i64 %5, ptr %9, align 8, !noalias !635
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.x, align 8, !noalias !635
  br label %.lr.ph.i.i.i.i.preheader.i.i.i12

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i10: ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_EcvT_INS_11SmallVectorIS5_Lj4EEEvEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !635
  store i64 %5, ptr %9, align 8, !noalias !635
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.y, align 8, !noalias !635
  %.not5.i.i.i.i.i.i.i11 = icmp eq i64 %6, 0
  br i1 %.not5.i.i.i.i.i.i.i11, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_EcvT_INS_11SmallVectorIS5_Lj4EEEvEEv.exit23, label %.lr.ph.i.i.i.i.preheader.i.i.i12

.lr.ph.i.i.i.i.preheader.i.i.i12:                 ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i10, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i19
  %i.z = phi ptr [ %i.x, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i19 ], [ %i.y, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i10 ] ; 2 uses
  %.pre-phi.i.i3.i13 = phi i64 [ %.pre28.i.i.i21, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i19 ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i10 ]
  %i.aa = phi ptr [ %.pre.i.i22, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i19 ], [ %i.t, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i10 ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre-phi.i.i3.i13
  br label %.lr.ph.i.i.i.i.i.i.i14

.lr.ph.i.i.i.i.i.i.i14:                           ; preds = %.lr.ph.i.i.i.i.i.i.i14, %.lr.ph.i.i.i.i.preheader.i.i.i12
  %i.ac = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i.i14 ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i12 ]
  %.06.i.i.i.i.i.i.i15 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i14 ], [ %i.ab, %.lr.ph.i.i.i.i.preheader.i.i.i12 ] ; 2 uses
  %i.ad = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %i.ac) #20
  %i.ae = ptrtoint ptr %i.ad to i64
  store i64 %i.ae, ptr %.06.i.i.i.i.i.i.i15, align 8, !tbaa !80
  %i.af = load i64, ptr %i.z, align 8, !tbaa !164, !noalias !635
  %i.ag = add nsw i64 %i.af, 1                    ; 3 uses
  store i64 %i.ag, ptr %i.z, align 8, !tbaa !164, !noalias !635
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i15, i64 8
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %i.ag, %6
  br i1 %.not.i.i.i.i.i.i.i16, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i17, label %.lr.ph.i.i.i.i.i.i.i14, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i17: ; preds = %.lr.ph.i.i.i.i.i.i.i14
  %.pre27.i.i.i18 = load i32, ptr %i.u, align 8, !tbaa !115, !alias.scope !635
  br label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_EcvT_INS_11SmallVectorIS5_Lj4EEEvEEv.exit23

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_EcvT_INS_11SmallVectorIS5_Lj4EEEvEEv.exit23: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i10, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i17
  %i.ai = phi i32 [ %.pre27.i.i.i18, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i17 ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !635
  %i.aj = trunc i64 %6 to i32
  %i.ak = add i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.u, align 8, !tbaa !115, !alias.scope !635
  call void @_ZN4mlir6affine32fullyComposeAffineMapAndOperandsEPNS_9AffineMapEPN4llvm15SmallVectorImplINS_5ValueEEEb(ptr noundef nonnull %11, ptr noundef nonnull %13, i1 noundef zeroext false) #20
  call void @_ZN4mlir6affine26canonicalizeMapAndOperandsEPNS_9AffineMapEPN4llvm15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull %11, ptr noundef nonnull %13) #20
  %.sroa.05.0.copyload = load ptr, ptr %11, align 8, !tbaa !147
  %i.al = call ptr @_ZN4mlir20removeDuplicateExprsENS_9AffineMapE(ptr %.sroa.05.0.copyload) #20
  store ptr %i.al, ptr %11, align 8, !tbaa !147
  call void @_ZN4mlir6affine32fullyComposeAffineMapAndOperandsEPNS_9AffineMapEPN4llvm15SmallVectorImplINS_5ValueEEEb(ptr noundef nonnull %12, ptr noundef nonnull %14, i1 noundef zeroext false) #20
  call void @_ZN4mlir6affine26canonicalizeMapAndOperandsEPNS_9AffineMapEPN4llvm15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull %12, ptr noundef nonnull %14) #20
  %.sroa.03.0.copyload = load ptr, ptr %12, align 8, !tbaa !147
  %i.am = call ptr @_ZN4mlir20removeDuplicateExprsENS_9AffineMapE(ptr %.sroa.03.0.copyload) #20
  store ptr %i.am, ptr %12, align 8, !tbaa !147
  %i.an = load ptr, ptr %13, align 8, !tbaa !114
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !115
  %i.ap = zext i32 %i.ao to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr %i.an, i64 %i.ap) #20
  %.sroa.01.0.copyload = load ptr, ptr %11, align 8, !tbaa !147
  %i.aq = load ptr, ptr %14, align 8, !tbaa !114
  %i.ar = load i32, ptr %i.u, align 8, !tbaa !115
  %i.as = zext i32 %i.ar to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr %i.aq, i64 %i.as) #20
  %.sroa.0.0.copyload = load ptr, ptr %12, align 8, !tbaa !147
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr null, i64 0) #20
  store ptr null, ptr %18, align 8, !tbaa !124
  %i.at = load i64, ptr %15, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = call ptr @_ZN4mlir6affine11AffineForOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeENS_9AffineMapES5_S6_lS5_N4llvm12function_refIFvS3_S4_NS_5ValueES5_EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %i.at, i64 %i.av, ptr %.sroa.01.0.copyload, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %16, ptr %.sroa.0.0.copyload, i64 noundef %8, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %17, ptr noundef nonnull byval(%"class.llvm::function_ref.503") align 8 %18) #20
  %i.ax = load ptr, ptr %14, align 8, !tbaa !114  ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.t
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_EcvT_INS_11SmallVectorIS5_Lj4EEEvEEv.exit23
  call void @free(ptr noundef %i.ax) #20
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit: ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_EcvT_INS_11SmallVectorIS5_Lj4EEEvEEv.exit23, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.az = load ptr, ptr %13, align 8, !tbaa !114  ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.b
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit24, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit
  call void @free(ptr noundef %i.az) #20
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit24

_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit24: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  ret ptr %i.aw
}

declare void @_ZN4mlir6affine32fullyComposeAffineMapAndOperandsEPNS_9AffineMapEPN4llvm15SmallVectorImplINS_5ValueEEEb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4mlir6affine26canonicalizeMapAndOperandsEPNS_9AffineMapEPN4llvm15SmallVectorImplINS_5ValueEEE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir20removeDuplicateExprsENS_9AffineMapE(ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir6affine11AffineForOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeENS_9AffineMapES5_S6_lS5_N4llvm12function_refIFvS3_S4_NS_5ValueES5_EEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, ptr noundef byval(%"class.mlir::ValueRange") align 8, ptr, i64 noundef, ptr noundef byval(%"class.mlir::ValueRange") align 8, ptr noundef byval(%"class.llvm::function_ref.503") align 8) local_unnamed_addr #2

declare void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir6affine17separateFullTilesEN4llvm15MutableArrayRefINS0_11AffineForOpEEEPNS1_15SmallVectorImplIS3_EE(ptr %0, i64 %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef.189", align 8 ; 4 uses
  %4 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 7 uses
  %5 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %6 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %7 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 7 uses
  %8 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %9 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %10 = alloca %"class.llvm::DynamicAPInt", align 8 ; 11 uses
  %11 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 7 uses
  %12 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 6 uses
  %13 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %14 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 7 uses
  %15 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 6 uses
  %16 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %17 = alloca %"class.llvm::DynamicAPInt", align 8 ; 13 uses
  %18 = alloca %"class.mlir::affine::FlatAffineValueConstraints", align 8 ; 24 uses
  %19 = alloca %"class.llvm::SmallVector.1018", align 8 ; 9 uses
  %20 = alloca %"class.llvm::SmallVector.1020", align 8 ; 10 uses
  %21 = alloca %"class.llvm::SmallVector.1020", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %22 = alloca %"class.std::optional.990", align 8 ; 7 uses
  %23 = alloca %"class.mlir::presburger::IntegerRelation", align 8 ; 21 uses
  %24 = alloca %"class.llvm::SmallVector.278", align 8 ; 9 uses
  %25 = alloca %"class.llvm::SmallVector.278", align 8 ; 9 uses
  %26 = alloca %"class.llvm::DynamicAPInt", align 8 ; 13 uses
  %27 = alloca %"class.mlir::IntegerSet", align 8 ; 5 uses
  %28 = alloca %"class.llvm::SmallVector.337", align 8 ; 12 uses
  %29 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %30 = alloca %"class.mlir::OpBuilder", align 8  ; 7 uses
  %31 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %32 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %33 = alloca %"class.llvm::ArrayRef.189", align 8 ; 4 uses
  %34 = alloca %"class.mlir::affine::FlatAffineValueConstraints", align 8 ; 21 uses
  %35 = alloca %"class.mlir::affine::AffineForOp", align 8 ; 7 uses
  %36 = alloca %"class.llvm::SmallVector.986", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %37 = alloca %"class.std::optional.990", align 8 ; 6 uses
  %38 = alloca %"class.mlir::presburger::IntegerRelation", align 8 ; 19 uses
  %39 = alloca %"class.mlir::affine::AffineValueMap", align 8 ; 19 uses
  %40 = alloca %"class.mlir::affine::AffineValueMap", align 8 ; 19 uses
  %41 = alloca %"class.mlir::ValueRange", align 8 ; 6 uses
  %42 = alloca %"class.mlir::ValueRange", align 8 ; 6 uses
  %43 = alloca %"class.mlir::IRMapping", align 8  ; 11 uses
  %44 = alloca %"class.mlir::OpBuilder", align 8  ; 12 uses
  %45 = alloca %"class.llvm::SmallVector.206", align 8 ; 16 uses
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %bb.eh, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  %i.h = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 3 uses
  store ptr %i.h, ptr %45, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 6 uses
  store i32 0, ptr %i.i, align 8, !tbaa !115
  %i.j = getelementptr inbounds nuw i8, ptr %45, i64 12 ; 3 uses
  store i32 4, ptr %i.j, align 4, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.l = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #20
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  store ptr %i.l, ptr %44, align 8
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  store ptr null, ptr %.sroa.277.0..sroa_idx, align 8
  %.sroa.378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 3 uses
  store ptr %i.n, ptr %.sroa.378.0..sroa_idx, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 24 ; 3 uses
  store ptr %i.o, ptr %.sroa.479.0..sroa_idx, align 8
  %i.p = load i32, ptr %i.j, align 4, !tbaa !116
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ugt i64 %1, %i.q
  br i1 %i.r, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull %i.h, i64 noundef %1, i64 noundef 8) #20
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  call void @_ZN4mlir26FlatLinearValueConstraintsC2EjjjjjjN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(624) %34, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.189") align 8 %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4mlir6affine26FlatAffineValueConstraintsE, i64 16), ptr %34, align 8, !tbaa !119
  %.idx.i = shl nuw nsw i64 %1, 3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %36, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %34, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %38, i64 32 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %38, i64 48 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %38, i64 40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %38, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %34, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %34, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %38, i64 64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %38, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %38, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %38, i64 76
  %i.am = getelementptr inbounds nuw i8, ptr %34, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %34, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %38, i64 336
  %i.ap = getelementptr inbounds nuw i8, ptr %34, i64 336
  %i.aq = getelementptr inbounds nuw i8, ptr %38, i64 352 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %38, i64 368
  %i.as = getelementptr inbounds nuw i8, ptr %38, i64 360
  %i.at = getelementptr inbounds nuw i8, ptr %38, i64 364
  %i.au = getelementptr inbounds nuw i8, ptr %34, i64 360
  %i.av = getelementptr inbounds nuw i8, ptr %34, i64 352
  %i.aw = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %39, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %39, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %39, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %39, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %39, i64 104
  %i.bf = getelementptr inbounds nuw i8, ptr %39, i64 108
  %i.bg = getelementptr inbounds nuw i8, ptr %39, i64 144
  %i.bh = getelementptr inbounds nuw i8, ptr %39, i64 160
  %i.bi = getelementptr inbounds nuw i8, ptr %39, i64 152
  %i.bj = getelementptr inbounds nuw i8, ptr %39, i64 156
  %i.bk = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %40, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %40, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %40, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %40, i64 112
  %i.bq = getelementptr inbounds nuw i8, ptr %40, i64 104
  %i.br = getelementptr inbounds nuw i8, ptr %40, i64 108
  %i.bs = getelementptr inbounds nuw i8, ptr %40, i64 144
  %i.bt = getelementptr inbounds nuw i8, ptr %40, i64 160
  %i.bu = getelementptr inbounds nuw i8, ptr %40, i64 152
  %i.bv = getelementptr inbounds nuw i8, ptr %40, i64 156
  %i.bw = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %42, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %.090.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.by, %i.s
  br i1 %.not.i, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.090.i = phi ptr [ %0, %.lr.ph.i ], [ %i.by, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  %i.bz = load i64, ptr %.090.i, align 8
  store i64 %i.bz, ptr %35, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  call void @_ZN4mlir6affine11AffineForOp7getStepEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %32, ptr noundef nonnull align 8 dereferenceable(8) %35) #20
  %i.ca = load i32, ptr %i.t, align 8, !tbaa !31  ; 3 uses
  %i.cb = icmp ult i32 %i.ca, 65
  br i1 %i.cb, label %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i, label %bb.f

_ZNK4llvm5APInt12getSExtValueEv.exit.i.i:         ; preds = %bb.e
  %i.cc = load i64, ptr %32, align 8, !tbaa !32
  %i.cd = icmp eq i32 %i.ca, 0
  %i.ce = sub nuw nsw i32 64, %i.ca
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = shl i64 %i.cc, %i.cf
  %i.ch = ashr exact i64 %i.cg, %i.cf
  br i1 %i.cd, label %_ZN4mlir6affine11AffineForOp12getStepAsIntEv.exit.thread.i, label %_ZN4mlir6affine11AffineForOp12getStepAsIntEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ci = load ptr, ptr %32, align 8, !tbaa !32   ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !89
  call void @_ZdaPv(ptr noundef nonnull %i.ci) #22
  br label %_ZN4mlir6affine11AffineForOp12getStepAsIntEv.exit.i

_ZN4mlir6affine11AffineForOp12getStepAsIntEv.exit.thread.i: ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  br label %.thread.i

_ZN4mlir6affine11AffineForOp12getStepAsIntEv.exit.i: ; preds = %bb.f, %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i
  %.0.i2.i.i = phi i64 [ %i.ch, %_ZNK4llvm5APInt12getSExtValueEv.exit.i.i ], [ %i.cj, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  %.not40.i = icmp eq i64 %.0.i2.i.i, 1
  br i1 %.not40.i, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %_ZN4mlir6affine11AffineForOp12getStepAsIntEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  %i.ck = load ptr, ptr %35, align 8, !tbaa !36
  store ptr %i.u, ptr %36, align 8, !tbaa !114
  store i32 1, ptr %i.w, align 4, !tbaa !116
  store ptr %i.ck, ptr %i.u, align 8
  store i32 1, ptr %i.v, align 8, !tbaa !115
  %i.cl = call i8 @_ZN4mlir6affine11getIndexSetEN4llvm15MutableArrayRefIPNS_9OperationEEEPNS0_26FlatAffineValueConstraintsE(ptr nonnull %i.u, i64 1, ptr noundef nonnull %34) #20 ; 0 uses
  %i.cm = load i32, ptr %i.x, align 8, !tbaa !218
  %i.cn = load i32, ptr %i.y, align 4, !tbaa !219
  %i.co = load i32, ptr %i.z, align 8, !tbaa !220
  %i.cp = add i32 %i.cm, -1
  %i.cq = add i32 %i.cp, %i.cn
  %i.cr = add i32 %i.cq, %i.co
  call void @_ZN4mlir10presburger15PresburgerSpace22setVarSymbolSeparationEj(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i32 noundef %i.cr) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4mlir10presburger15IntegerRelationE, i64 16), ptr %38, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 17, i1 false)
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !114
  store i32 0, ptr %i.ae, align 8, !tbaa !115
  store i32 0, ptr %i.af, align 4, !tbaa !116
  %i.cs = load i32, ptr %i.ag, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit.i.i, label %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i

_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i: ; preds = %bb.g
  %i.ct = zext i32 %i.cs to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull %i.ad, i64 noundef %i.ct, i64 noundef 8) #20
  %i.cu = load i32, ptr %i.ag, align 8, !tbaa !115 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.ac, align 8, !tbaa !114
  %i.cx = load ptr, ptr %i.ab, align 8, !tbaa !114
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.cv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 8 %i.cw, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.h, %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i
  store i32 %i.cs, ptr %i.ae, align 8, !tbaa !115
  br label %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit.i.i

_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit.i.i: ; preds = %.sink.split.i.i.i.i.i, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.ad, ptr noundef nonnull align 8 dereferenceable(288) %i.ah, i64 12, i1 false)
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !114
  store i32 0, ptr %i.ak, align 8, !tbaa !115
  store i32 16, ptr %i.al, align 4, !tbaa !116
  %i.cy = load i32, ptr %i.am, align 8, !tbaa !115
  %.not.i.i.i.i4.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i.i4.i.i, label %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit.i.i
  %i.cz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.ai, ptr noundef nonnull align 8 dereferenceable(272) %i.an) ; 0 uses
  br label %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i.i

_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i.i:  ; preds = %bb.i, %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.ao, ptr noundef nonnull align 8 dereferenceable(288) %i.ap, i64 12, i1 false)
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !114
  store i32 0, ptr %i.as, align 8, !tbaa !115
  store i32 16, ptr %i.at, align 4, !tbaa !116
  %i.da = load i32, ptr %i.au, align 8, !tbaa !115
  %.not.i.i.i.i5.i.i = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i.i5.i.i, label %_ZN4mlir10presburger15IntegerRelationC2ERKS1_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i.i
  %i.db = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.aq, ptr noundef nonnull align 8 dereferenceable(272) %i.av) ; 0 uses
  br label %_ZN4mlir10presburger15IntegerRelationC2ERKS1_.exit.i

_ZN4mlir10presburger15IntegerRelationC2ERKS1_.exit.i: ; preds = %bb.j, %_ZN4mlir10presburger9IntMatrixC2ERKS1_.exit.i.i
  call void @_ZNK4mlir10presburger15IntegerRelation25getConstantBoundOnDimSizeEjPN4llvm15SmallVectorImplINS2_12DynamicAPIntEEEPS4_S6_PjS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.990") align 8 %37, ptr noundef nonnull align 8 dereferenceable(624) %38, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #20
  %i.dc = load i8, ptr %i.aw, align 8, !tbaa !662, !range !28, !noundef !29
  %i.dd = trunc nuw i8 %i.dc to i1                ; 2 uses
  %i.de = load i32, ptr %i.c, align 4
  %i.df = load i32, ptr %i.d, align 4
  %i.dg = icmp ne i32 %i.de, %i.df
  %.not42.i = select i1 %i.dd, i1 %i.dg, i1 false ; 2 uses
  br i1 %i.dd, label %bb.k, label %_ZNSt14_Optional_baseIN4llvm12DynamicAPIntELb0ELb0EED2Ev.exit.i

bb.k:                                             ; preds = %_ZN4mlir10presburger15IntegerRelationC2ERKS1_.exit.i
  store i8 0, ptr %i.aw, align 8, !tbaa !662
  %i.dh = load i32, ptr %i.ax, align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i.i43.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i.i43.i, label %_ZNSt14_Optional_baseIN4llvm12DynamicAPIntELb0ELb0EED2Ev.exit.i, label %bb.l, !prof !148

bb.l:                                             ; preds = %bb.k
  %i.di = icmp ugt i32 %i.dh, 64
  br i1 %i.di, label %bb.m, label %_ZNSt14_Optional_baseIN4llvm12DynamicAPIntELb0ELb0EED2Ev.exit.i

bb.m:                                             ; preds = %bb.l
  %i.dj = load ptr, ptr %37, align 8, !tbaa !32   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZNSt14_Optional_baseIN4llvm12DynamicAPIntELb0ELb0EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.dj) #22
  br label %_ZNSt14_Optional_baseIN4llvm12DynamicAPIntELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN4llvm12DynamicAPIntELb0ELb0EED2Ev.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %_ZN4mlir10presburger15IntegerRelationC2ERKS1_.exit.i
  call void @_ZN4mlir10presburger15IntegerRelationD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br i1 %.not42.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm12DynamicAPIntELb0ELb0EED2Ev.exit.i
  call void @_ZN4mlir10presburger15PresburgerSpace22setVarSymbolSeparationEj(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i32 noundef 0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  store ptr %i.ay, ptr %39, align 8, !tbaa !114
  store i32 0, ptr %i.az, align 8, !tbaa !115
  store i32 8, ptr %i.ba, align 4, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !114
  store i32 0, ptr %i.be, align 8, !tbaa !115
  store i32 4, ptr %i.bf, align 4, !tbaa !116
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !114
  store i32 0, ptr %i.bi, align 8, !tbaa !115
  store i32 4, ptr %i.bj, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  store ptr %i.bk, ptr %40, align 8, !tbaa !114
  store i32 0, ptr %i.bl, align 8, !tbaa !115
  store i32 8, ptr %i.bm, align 4, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !114
  store i32 0, ptr %i.bq, align 8, !tbaa !115
  store i32 4, ptr %i.br, align 4, !tbaa !116
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !114
  store i32 0, ptr %i.bu, align 8, !tbaa !115
  store i32 4, ptr %i.bv, align 4, !tbaa !116
  %i.dl = load i32, ptr %i.c, align 4, !tbaa !143
  %46 = load ptr, ptr %44, align 8, !tbaa !65     ; 2 uses
  call void @_ZNK4mlir6affine26FlatAffineValueConstraints23getIneqAsAffineValueMapEjjRNS0_14AffineValueMapEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(624) %34, i32 noundef 0, i32 noundef %i.dl, ptr noundef nonnull align 8 dereferenceable(192) %39, ptr noundef %46) #20
  %i.dm = load i32, ptr %i.d, align 4, !tbaa !143
  call void @_ZNK4mlir6affine26FlatAffineValueConstraints23getIneqAsAffineValueMapEjjRNS0_14AffineValueMapEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(624) %34, i32 noundef 0, i32 noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(192) %40, ptr noundef %46) #20
  %i.dn = load ptr, ptr %35, align 8, !tbaa !36
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.do, align 8
  %i.dp = call { ptr, i64 } @_ZNK4mlir6affine14AffineValueMap11getOperandsEv(ptr noundef nonnull align 8 dereferenceable(192) %39) #20 ; 2 uses
  %i.dq = extractvalue { ptr, i64 } %i.dp, 0
  %i.dr = extractvalue { ptr, i64 } %i.dp, 1
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr %i.dq, i64 %i.dr) #20
  %i.ds = call ptr @_ZNK4mlir6affine14AffineValueMap12getAffineMapEv(ptr noundef nonnull align 8 dereferenceable(192) %39) #20
  %i.dt = call { ptr, i64 } @_ZNK4mlir6affine14AffineValueMap11getOperandsEv(ptr noundef nonnull align 8 dereferenceable(192) %40) #20 ; 2 uses
  %i.du = extractvalue { ptr, i64 } %i.dt, 0
  %i.dv = extractvalue { ptr, i64 } %i.dt, 1
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %42, ptr %i.du, i64 %i.dv) #20
  %i.dw = call ptr @_ZNK4mlir6affine14AffineValueMap12getAffineMapEv(ptr noundef nonnull align 8 dereferenceable(192) %40) #20
  %i.dx = load i64, ptr %41, align 8
  %i.dy = load i64, ptr %i.bw, align 8
  %i.dz = load i64, ptr %42, align 8
  %i.ea = load i64, ptr %i.bx, align 8
  %i.eb = ptrtoint ptr %i.dw to i64
  %i.ec = call ptr @_ZN4mlir6affine30createCanonicalizedAffineForOpENS_9OpBuilderENS_8LocationENS_10ValueRangeENS_9AffineMapES3_S4_l(ptr noundef nonnull byval(%"class.mlir::OpBuilder") align 8 %44, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.dx, i64 %i.dy, ptr %i.ds, i64 %i.dz, i64 %i.ea, i64 %i.eb, i64 noundef 1) ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 44
  %i.ee = load i32, ptr %i.ed, align 4            ; 3 uses
  %i.ef = and i32 %i.ee, 8388607
  %i.eg = icmp ne i32 %i.ef, 0
  call void @llvm.assume(i1 %i.eg)
  %i.eh = lshr i32 %i.ee, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.eh, 1
  %i.ei = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.ei
  %i.ek = lshr i32 %i.ee, 21
  %i.el = and i32 %i.ek, 2040
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !53
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.en, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !54
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -8 ; 3 uses
  %i.ev = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.eu) #20, !noalias !663
  %i.ew = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef %i.ev) #20, !noalias !663
  %i.ex = call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.eu) #20, !noalias !663
  %i.ey = call noundef ptr @_ZN4mlir6Region10getContextEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ex) #20, !noalias !663
  store ptr %i.ey, ptr %44, align 8
  store ptr null, ptr %.sroa.277.0..sroa_idx, align 8
  store ptr %i.eu, ptr %.sroa.378.0..sroa_idx, align 8
  store ptr %i.ew, ptr %.sroa.479.0..sroa_idx, align 8
  %i.ez = load i32, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.fa = load i32, ptr %i.j, align 4, !tbaa !116
  %.not.i.i = icmp ult i32 %i.ez, %i.fa
  br i1 %.not.i.i, label %bb.q, label %bb.p, !prof !148

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr nonnull %i.ec)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE9push_backES3_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.fb = zext i32 %i.ez to i64
  %i.fc = load ptr, ptr %45, align 8, !tbaa !114
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb
  store ptr %i.ec, ptr %i.fd, align 1
  %i.fe = load i32, ptr %i.i, align 8, !tbaa !115
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.i, align 8, !tbaa !115
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE9push_backES3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE9push_backES3_.exit.i: ; preds = %bb.q, %bb.p
  call void @_ZN4mlir6affine14AffineValueMapD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %40) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  call void @_ZN4mlir6affine14AffineValueMapD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %39) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.r

bb.r:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE9push_backES3_.exit.i, %_ZNSt14_Optional_baseIN4llvm12DynamicAPIntELb0ELb0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.fg = load ptr, ptr %36, align 8, !tbaa !114  ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.u
  br i1 %i.fh, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.fg) #20
  br label %bb.t

.thread.i:                                        ; preds = %_ZN4mlir6affine11AffineForOp12getStepAsIntEv.exit.i, %_ZN4mlir6affine11AffineForOp12getStepAsIntEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  br label %.loopexit

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  br i1 %.not42.i, label %bb.d, label %.loopexit

._crit_edge.i:                                    ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %43, i8 0, i64 72, i1 false)
  br label %.lr.ph96.i

._crit_edge97.i:                                  ; preds = %.lr.ph96.i
  %i.fi = load ptr, ptr %45, align 8, !tbaa !114
  %i.fj = load i32, ptr %i.i, align 8, !tbaa !115
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fk
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !36 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 44
  %i.fp = load i32, ptr %i.fo, align 4            ; 3 uses
  %i.fq = and i32 %i.fp, 8388607
  %i.fr = icmp ne i32 %i.fq, 0
  call void @llvm.assume(i1 %i.fr)
  %i.fs = lshr i32 %i.fp, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i44.i = and i32 %i.fs, 1
  %i.ft = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i44.i to i64
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %i.ft
  %i.fv = lshr i32 %i.fp, 21
  %i.fw = and i32 %i.fv, 2040
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !53
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %i.fy, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 72
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !54
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -8 ; 3 uses
  %i.gg = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.gf) #20, !noalias !664
  %i.gh = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef %i.gg) #20, !noalias !664
  %i.gi = call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.gf) #20, !noalias !664
  %i.gj = call noundef ptr @_ZN4mlir6Region10getContextEv(ptr noundef nonnull align 8 dereferenceable(28) %i.gi) #20, !noalias !664
  store ptr %i.gj, ptr %44, align 8
  store ptr null, ptr %.sroa.277.0..sroa_idx, align 8
  store ptr %i.gf, ptr %.sroa.378.0..sroa_idx, align 8
  store ptr %i.gh, ptr %.sroa.479.0..sroa_idx, align 8
  %i.gk = getelementptr i8, ptr %i.s, i64 -8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !36 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 44
  %i.gn = load i32, ptr %i.gm, align 4            ; 3 uses
  %i.go = and i32 %i.gn, 8388607
  %i.gp = icmp ne i32 %i.go, 0
  call void @llvm.assume(i1 %i.gp)
  %i.gq = lshr i32 %i.gn, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i45.i = and i32 %i.gq, 1
  %i.gr = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i45.i to i64
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %i.gr
  %i.gt = lshr i32 %i.gn, 21
  %i.gu = and i32 %i.gt, 2040
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !53
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [32 x i8], ptr %i.gw, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 72
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !54 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !54
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %._crit_edge101.i, label %_ZN4mlir5Block18without_terminatorEv.exit.i

_ZN4mlir5Block18without_terminatorEv.exit.i:      ; preds = %._crit_edge97.i
  %i.hh = getelementptr inbounds i8, ptr %i.hc, i64 -8
  %i.hi = call { ptr, ptr } @_ZN4mlir5Block23without_terminator_implEv(ptr noundef nonnull align 8 dereferenceable(80) %i.hh) #20 ; 2 uses
  %i.hj = extractvalue { ptr, ptr } %i.hi, 0      ; 2 uses
  %i.hk = extractvalue { ptr, ptr } %i.hi, 1      ; 2 uses
  %.not8898.i = icmp eq ptr %i.hj, %i.hk
  br i1 %.not8898.i, label %._crit_edge101.i, label %.lr.ph100.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i, %._crit_edge.i
  %.sroa.7.094.i = phi i64 [ %i.jd, %.lr.ph96.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.060.093.i = phi ptr [ %i.je, %.lr.ph96.i ], [ %0, %._crit_edge.i ] ; 2 uses
  %i.hl = load ptr, ptr %.sroa.060.093.i, align 8, !tbaa !36 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 44
  %i.hn = load i32, ptr %i.hm, align 4            ; 3 uses
  %i.ho = and i32 %i.hn, 8388607
  %i.hp = icmp ne i32 %i.ho, 0
  call void @llvm.assume(i1 %i.hp)
  %i.hq = lshr i32 %i.hn, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.hq, 1
  %i.hr = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.hr
  %i.ht = lshr i32 %i.hn, 21
  %i.hu = and i32 %i.ht, 2040
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !53
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [32 x i8], ptr %i.hw, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 72
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !54
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i47.i = load ptr, ptr %i.ie, align 8
  %i.if = load ptr, ptr %45, align 8, !tbaa !114
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.sroa.7.094.i
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !36 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 44
  %i.ij = load i32, ptr %i.ii, align 4            ; 3 uses
  %i.ik = and i32 %i.ij, 8388607
  %i.il = icmp ne i32 %i.ik, 0
  call void @llvm.assume(i1 %i.il)
  %i.im = lshr i32 %i.ij, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i48.i = and i32 %i.im, 1
  %i.in = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i48.i to i64
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.ih, i64 %i.in
  %i.ip = lshr i32 %i.ij, 21
  %i.iq = and i32 %i.ip, 2040
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !53
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [32 x i8], ptr %i.is, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 72
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !54
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 48
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i49.i = load ptr, ptr %i.ja, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  store ptr %.sroa.0.0.copyload.i.i47.i, ptr %31, align 8
  %i.jb = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %43, ptr noundef nonnull align 8 dereferenceable(8) %31)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.jb, 0
  %i.jc = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  store ptr %.sroa.0.0.copyload.i.i49.i, ptr %i.jc, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  %i.jd = add nuw nsw i64 %.sroa.7.094.i, 1
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.060.093.i, i64 8 ; 2 uses
  %.not87.i = icmp eq ptr %i.je, %i.s
  br i1 %.not87.i, label %._crit_edge97.i, label %.lr.ph96.i

._crit_edge101.i:                                 ; preds = %.lr.ph100.i, %_ZN4mlir5Block18without_terminatorEv.exit.i, %._crit_edge97.i
  %i.jf = getelementptr inbounds nuw i8, ptr %43, i64 68
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !128 ; 2 uses
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i, label %bb.u

bb.u:                                             ; preds = %._crit_edge101.i
  %i.ji = getelementptr inbounds nuw i8, ptr %43, i64 48
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !129
  %i.jk = zext i32 %i.jg to i64                   ; 2 uses
  %i.jl = shl nuw nsw i64 %i.jk, 4
  %i.jm = add nuw nsw i64 %i.jk, 31
  %i.jn = lshr i64 %i.jm, 3
  %i.jo = and i64 %i.jn, 1073741820
  %i.jp = add nuw nsw i64 %i.jo, %i.jl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.jj, i64 noundef %i.jp, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i: ; preds = %bb.u, %._crit_edge101.i
  %i.jq = getelementptr inbounds nuw i8, ptr %43, i64 44
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !132 ; 2 uses
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !133
  %i.jv = zext i32 %i.jr to i64                   ; 2 uses
  %i.jw = shl nuw nsw i64 %i.jv, 4
  %i.jx = add nuw nsw i64 %i.jv, 31
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = and i64 %i.jy, 1073741820
  %i.ka = add nuw nsw i64 %i.jz, %i.jw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ju, i64 noundef %i.ka, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i: ; preds = %bb.v, %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %43, i64 20
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !136 ; 2 uses
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %.lr.ph147.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i.i
end_hunk_0
