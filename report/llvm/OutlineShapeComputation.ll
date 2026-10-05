Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OutlineShapeComputation?download=true
inline.NumInlined: 3703
inline.NumDeleted: 2172
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_5shape17ShapeMappingValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E16shrink_and_clearEv:bb.a
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_5shape17ShapeMappingValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E9initEmptyEv.exit

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_5shape17ShapeMappingValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit
  %i.aj = load i32, ptr %i.g, align 4, !tbaa !53  ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvm8DenseMapIN4mlir5ValueENS1_5shape17ShapeMappingValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %0, align 8, !tbaa !54
  %i.am = zext i32 %i.aj to i64                   ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 80
  %i.ao = add nuw nsw i64 %i.am, 31
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = and i64 %i.ap, 1073741820
  %i.ar = add nuw nsw i64 %i.aq, %i.an
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.al, i64 noundef %i.ar, i64 noundef 8) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS1_5shape17ShapeMappingValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIN4mlir5ValueENS1_5shape17ShapeMappingValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit: ; preds = %bb.g, %bb.h
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !53
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapIN4mlir5ValueENS1_5shape17ShapeMappingValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit
  %i.as = mul nuw nsw i64 %.sroa.39.0.insert.ext.i, 80
  %i.at = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741820
  %i.aw = add nuw nsw i64 %i.av, %i.as
  %i.ax = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aw, i64 noundef 8) #19 ; 2 uses
  %i.ay = load i32, ptr %i.g, align 4, !tbaa !53  ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = mul nuw nsw i64 %i.az, 80
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba ; 2 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !54
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !55
  store i32 0, ptr %i.a, align 8, !tbaa !52
  %.not.i.i5 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_5shape17ShapeMappingValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E9initEmptyEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = add nuw nsw i64 %i.az, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bb, i8 0, i64 %i.bf, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_5shape17ShapeMappingValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E9initEmptyEv.exit

bb.k:                                             ; preds = %_ZN4llvm8DenseMapIN4mlir5ValueENS1_5shape17ShapeMappingValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_5shape17ShapeMappingValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_5shape17ShapeMappingValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E9initEmptyEv.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #19, !inline_history !299
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #19 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !102 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !102 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #19
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #19, !inline_history !299
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_127OutlineShapeComputationPass14runOnOperationEvE3$_0NS1_4func6FuncOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %2 = alloca %"class.mlir::GreedyRewriteConfig", align 8 ; 13 uses
  %3 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %4 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %5 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %6 = alloca %"class.llvm::SmallDenseSet", align 8 ; 13 uses
  %7 = alloca %"class.llvm::SmallDenseSet.663", align 8 ; 14 uses
  %8 = alloca %"class.mlir::Value", align 8       ; 8 uses
  %9 = alloca %"class.llvm::SmallVector.582", align 8 ; 12 uses
  %10 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %11 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %12 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %13 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %14 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %15 = alloca %"class.mlir::ValueTypeRange", align 8 ; 6 uses
  %16 = alloca %"class.mlir::ValueRange", align 8 ; 4 uses
  %17 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %18 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %19 = alloca %"class.mlir::shape::FuncOp", align 8 ; 7 uses
  %20 = alloca %"class.llvm::ArrayRef.607", align 8 ; 4 uses
  %21 = alloca %"class.llvm::ArrayRef.608", align 8 ; 4 uses
  %22 = alloca %"class.mlir::IRMapping", align 8  ; 14 uses
  %23 = alloca %"class.llvm::SmallVector.582", align 8 ; 7 uses
  %24 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %25 = alloca %"struct.std::pair.658", align 8   ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.mlir::OpBuilder", align 8  ; 11 uses
  %28 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %29 = alloca %"class.mlir::Value", align 8      ; 7 uses
  %30 = alloca %"struct.mlir::shape::ShapeMappingValue", align 8 ; 13 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"struct.std::pair.533", align 8   ; 9 uses
  %34 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %35 = alloca %"struct.std::pair.166", align 8   ; 9 uses
  %36 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %37 = alloca %"class.llvm::DenseSet", align 16  ; 10 uses
  %38 = alloca %"class.llvm::DenseSet", align 8   ; 11 uses
  %39 = alloca %"class.std::queue", align 8       ; 16 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %40 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %41 = alloca %"class.llvm::DenseMap.491", align 8 ; 16 uses
  %42 = alloca %class.anon.496, align 8           ; 5 uses
  %43 = alloca %"class.llvm::DenseMap.475", align 8 ; 13 uses
  %44 = alloca %class.anon.474, align 8           ; 4 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %45 = alloca %"class.mlir::GreedyRewriteConfig", align 8 ; 13 uses
  %46 = alloca %"class.llvm::ArrayRef.317", align 8 ; 4 uses
  %47 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %48 = alloca %"class.mlir::RewritePatternSet", align 8 ; 16 uses
  %49 = alloca %"class.mlir::FrozenRewritePatternSet", align 8 ; 7 uses
  %50 = alloca %class.anon.266, align 8           ; 4 uses
  %51 = alloca %"class.std::vector.267", align 8  ; 10 uses
  %52 = alloca %class.anon.272, align 8           ; 4 uses
  %53 = alloca %"class.llvm::DenseMap.273", align 8 ; 9 uses
  %54 = alloca %"class.mlir::FrozenRewritePatternSet", align 8 ; 7 uses
  %i.f = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.j = icmp ne ptr %i.i, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %55 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %55, %i.j
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_127OutlineShapeComputationPass14runOnOperationEvE3$_0NS_4func6FuncOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %.val, align 8, !tbaa !73  ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  store ptr %i.m, ptr %48, align 8, !tbaa !469
  %i.n = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %48, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %48, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  store ptr %i.p, ptr %i.o, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %48, i64 48
  store i32 0, ptr %i.q, align 8, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %48, i64 52
  store i32 6, ptr %i.r, align 4, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %48, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %48, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 40, i1 false)
  store i32 40, ptr %i.t, align 8, !tbaa !470
  %i.u = getelementptr inbounds nuw i8, ptr %48, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %48, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.u, i8 0, i64 16, i1 false)
  store i32 40, ptr %i.v, align 8, !tbaa !470
  call void @llvm.lifetime.start.p0(ptr nonnull %47), !noalias !471
  %i.w = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #18, !noalias !472 ; 10 uses
  call void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2) %47, i32 noundef 1) #19, !noalias !472
  %i.x = load i16, ptr %47, align 2, !noalias !472
  call void @llvm.lifetime.start.p0(ptr nonnull %46), !noalias !472
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false), !noalias !472
  call void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr nonnull @.str.12, i64 10, i16 %i.x, ptr noundef %i.m, ptr noundef nonnull byval(%"class.llvm::ArrayRef.317") align 8 %46) #19, !noalias !472
  call void @llvm.lifetime.end.p0(ptr nonnull %46), !noalias !472
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_119TensorDimOpRewriterE, i64 16), ptr %i.w, align 8, !tbaa !29, !noalias !472
  call void @llvm.lifetime.end.p0(ptr nonnull %47), !noalias !471
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !99, !noalias !471
  %i.z = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.z, label %bb.c, label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119TensorDimOpRewriterEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.13, i64 49), ptr %i.aa, align 8, !tbaa !474, !noalias !471
  store i64 42, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !99, !noalias !471
  br label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119TensorDimOpRewriterEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i.i.i

_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119TensorDimOpRewriterEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 88 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !80 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 92
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !27
  %i.af = icmp ugt i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119TensorDimOpRewriterEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i.i.i
  %i.ag = zext i32 %i.ac to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull %i.ai, i64 noundef %i.ag, i64 noundef 16) #19
  %.pre8.pre.i.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !80
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i.i.i: ; preds = %bb.d, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119TensorDimOpRewriterEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i.i.i
  %.pre8.i.i.i.i.i.i = phi i32 [ %i.ac, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119TensorDimOpRewriterEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i.i.i ], [ %.pre8.pre.i.i.i.i.i.i, %bb.d ]
  store i32 %.pre8.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !80
  %i.aj = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !475 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %48, i64 24 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !476
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i.i.i
  store ptr %i.w, ptr %i.ak, align 8, !tbaa !479
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !475
  br label %_ZN4mlir17RewritePatternSet6insertIJN12_GLOBAL__N_119TensorDimOpRewriterEERPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit.i.i

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i.i.i
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !480 ; 10 uses
  %i.ap = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #21
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i4.i.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i4.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #18 ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store ptr %i.w, ptr %i.ba, align 8, !tbaa !479
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.ak
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.bb = add i64 %i.ap, -8
  %i.bc = sub i64 %i.bb, %i.aq                    ; 3 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader325, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.bf = and i64 %i.bc, -8
  %i.bg = add i64 %i.bf, 8                        ; 2 uses
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.ao, i64 %i.bg
  %bound0 = icmp ult ptr %i.az, %i.bi
  %bound1 = icmp ult ptr %i.ao, %i.bh
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader325, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.az, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ao, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.bm ; 2 uses
  %next.gep280 = getelementptr i8, ptr %i.ao, i64 %i.bm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.bn = getelementptr i8, ptr %next.gep280, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep280, align 8, !tbaa !483, !alias.scope !484, !noalias !481
  %wide.load281 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !483, !alias.scope !484, !noalias !481
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !483, !alias.scope !485, !noalias !484
  store <2 x i64> %wide.load281, ptr %i.bo, align 8, !tbaa !483, !alias.scope !485, !noalias !484
  %i.bp = getelementptr i8, ptr %next.gep280, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep280, align 8, !tbaa !483, !alias.scope !484, !noalias !481
  store <2 x ptr> splat (ptr null), ptr %i.bp, align 8, !tbaa !483, !alias.scope !484, !noalias !481
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader325

.lr.ph.i.i.i.i.i.i.i.i.i.preheader325:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader325, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader325 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader325 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.br = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i, align 8, !tbaa !483, !alias.scope !482, !noalias !481
  store i64 %i.br, ptr %.012.i.i.i.i.i.i.i.i.i, align 8, !tbaa !483, !alias.scope !481, !noalias !482
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i.i, align 8, !tbaa !483, !alias.scope !482, !noalias !481
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.ak
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !311

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.bk, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_119TensorDimOpRewriterES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i
  %i.bv = load ptr, ptr %i.al, align 8, !tbaa !476
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bx) #20
  br label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_119TensorDimOpRewriterES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_119TensorDimOpRewriterES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i.i.i
  store ptr %i.az, ptr %i.n, align 8, !tbaa !480
  store ptr %i.bu, ptr %i.aj, align 8, !tbaa !475
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.by, ptr %i.al, align 8, !tbaa !476
  br label %_ZN4mlir17RewritePatternSet6insertIJN12_GLOBAL__N_119TensorDimOpRewriterEERPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit.i.i

_ZN4mlir17RewritePatternSet6insertIJN12_GLOBAL__N_119TensorDimOpRewriterEERPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_119TensorDimOpRewriterES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  call void @_ZN4mlir23FrozenRewritePatternSetC1EONS_17RewritePatternSetEN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(176) %48, ptr null, i64 0, ptr null, i64 0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  %.sroa.12114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %45, i64 51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.12114.0..sroa_idx.i.i, i8 0, i64 5, i1 false)
end_hunk_0
begin_hunk_1_@"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_127OutlineShapeComputationPass14runOnOperationEvE3$_0NS1_4func6FuncOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_":bb.a

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i: ; preds = %bb.dh
  store i32 0, ptr %i.yn, align 8, !tbaa !80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.yl, ptr noundef nonnull %i.ym, i64 noundef %i.axh, i64 noundef 8) #19
  %.pre.i26.i.i = load i32, ptr %i.axf, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i.i42.i.i.i = icmp eq i32 %.pre.i26.i.i, 0
  br i1 %.not.i.i.i.i42.i.i.i, label %.sink.split.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.thread.i_crit_edge.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.yl, align 8, !tbaa !26
  %.pre213.i.i = zext i32 %.pre.i26.i.i to i64
  br label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.thread.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.thread.i.i.i: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.thread.i_crit_edge.i.i, %bb.dh
  %.pre-phi.i.i = phi i64 [ %.pre213.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.thread.i_crit_edge.i.i ], [ %i.axh, %bb.dh ]
  %i.axj = phi ptr [ %.pre.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.thread.i_crit_edge.i.i ], [ %i.ym, %bb.dh ]
  %i.axk = load ptr, ptr %i.axd, align 8, !tbaa !26
  %gepdiff.i.i.i.i.i.i = shl nuw nsw i64 %.pre-phi.i.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.axj, ptr align 8 %i.axk, i64 %gepdiff.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.thread.i.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i, %bb.dg
  store i32 %i.axg, ptr %i.yn, align 8, !tbaa !80
  br label %_ZN4mlir5shape17ShapeMappingValueaSERKS1_.exit.i.i.i

_ZN4mlir5shape17ShapeMappingValueaSERKS1_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i, %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i
  %.1.i.i.i = phi i32 [ %i.acj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i ], [ %.0121.i.i.i, %bb.df ], [ %.0121.i.i.i, %.sink.split.i.i.i.i.i.i ]
  %i.axl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_5shape17ShapeMappingValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.yb, ptr noundef nonnull align 8 dereferenceable(8) %29)
  %.fca.0.extract.i43.i.i.i = extractvalue { ptr, i8 } %i.axl, 0 ; 5 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i43.i.i.i, i64 8 ; 2 uses
  %i.axn = load i64, ptr %30, align 8             ; 2 uses
  store i64 %i.axn, ptr %i.axm, align 8
  %i.axo = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i43.i.i.i, i64 16 ; 4 uses
  %i.axp = icmp eq ptr %i.axm, %30
  %.pre140.i.i.i = load i32, ptr %i.yn, align 8, !tbaa !80 ; 7 uses
  br i1 %i.axp, label %_ZN4mlir5shape17ShapeMappingValueaSERKS1_.exit57.i.i.i, label %bb.di

bb.di:                                            ; preds = %_ZN4mlir5shape17ShapeMappingValueaSERKS1_.exit.i.i.i
  %i.axq = zext i32 %.pre140.i.i.i to i64         ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i43.i.i.i, i64 24 ; 3 uses
  %i.axs = load i32, ptr %i.axr, align 8, !tbaa !80 ; 4 uses
  %i.axt = zext i32 %i.axs to i64                 ; 2 uses
  %.not.i.i.i44.i.i.i = icmp ult i32 %i.axs, %.pre140.i.i.i
  br i1 %.not.i.i.i44.i.i.i, label %bb.dn, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %.not29.i.i.i45.i.i.i = icmp eq i32 %.pre140.i.i.i, 0
  br i1 %.not29.i.i.i45.i.i.i, label %.sink.split.i.i.i48.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.axu = load ptr, ptr %i.yl, align 8, !tbaa !26 ; 2 uses
  %i.axv = load ptr, ptr %i.axo, align 8, !tbaa !26 ; 2 uses
  %.not31.i.i.i46.i.i.i = icmp eq i32 %.pre140.i.i.i, 1
  br i1 %.not31.i.i.i46.i.i.i, label %bb.dm, label %bb.dl, !prof !164

bb.dl:                                            ; preds = %bb.dk
  %.idx.i.i.i47.i.i.i = shl nuw nsw i64 %i.axq, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.axv, ptr align 8 %i.axu, i64 %.idx.i.i.i47.i.i.i, i1 false)
  br label %.sink.split.i.i.i48.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.axw = load i64, ptr %i.axu, align 8, !tbaa !144
  store i64 %i.axw, ptr %i.axv, align 8, !tbaa !144
  br label %.sink.split.i.i.i48.i.i.i

bb.dn:                                            ; preds = %bb.di
  %i.axx = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i43.i.i.i, i64 28
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !27
  %i.axz = icmp ult i32 %i.axy, %.pre140.i.i.i
  br i1 %i.axz, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i32 0, ptr %i.axr, align 8, !tbaa !80
  %i.aya = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i43.i.i.i, i64 32
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.axo, ptr noundef nonnull %i.aya, i64 noundef %i.axq, i64 noundef 8) #19
  br label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i52.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %.not28.i.i.i49.i.i.i = icmp eq i32 %i.axs, 0
  br i1 %.not28.i.i.i49.i.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i52.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ayb = load ptr, ptr %i.yl, align 8, !tbaa !26 ; 2 uses
  %i.ayc = load ptr, ptr %i.axo, align 8, !tbaa !26 ; 2 uses
  %.not33.i.i.i50.i.i.i = icmp eq i32 %i.axs, 1
  br i1 %.not33.i.i.i50.i.i.i, label %bb.ds, label %bb.dr, !prof !164

bb.dr:                                            ; preds = %bb.dq
  %.idx32.i.i.i51.i.i.i = shl nuw nsw i64 %i.axt, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ayc, ptr align 8 %i.ayb, i64 %.idx32.i.i.i51.i.i.i, i1 false)
  br label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i52.i.i.i

bb.ds:                                            ; preds = %bb.dq
  %i.ayd = load i64, ptr %i.ayb, align 8, !tbaa !144
  store i64 %i.ayd, ptr %i.ayc, align 8, !tbaa !144
  br label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i52.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i52.i.i.i: ; preds = %bb.ds, %bb.dr, %bb.dp, %bb.do
  %.022.i.i.i53.i.i.i = phi i64 [ 0, %bb.do ], [ 0, %bb.dp ], [ %i.axt, %bb.dr ], [ 1, %bb.ds ] ; 4 uses
  %i.aye = load i32, ptr %i.yn, align 8, !tbaa !80
  %i.ayf = zext i32 %i.aye to i64                 ; 2 uses
  %.not.i.i.i.i54.i.i.i = icmp samesign eq i64 %.022.i.i.i53.i.i.i, %i.ayf
  br i1 %.not.i.i.i.i54.i.i.i, label %.sink.split.i.i.i48.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i52.i.i.i
  %i.ayg = load ptr, ptr %i.yl, align 8, !tbaa !26
  %.idx35.i.i.i55.i.i.i = shl nuw nsw i64 %.022.i.i.i53.i.i.i, 3
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 %.idx35.i.i.i55.i.i.i
  %i.ayi = load ptr, ptr %i.axo, align 8, !tbaa !26
  %i.ayj = getelementptr inbounds nuw [8 x i8], ptr %i.ayi, i64 %.022.i.i.i53.i.i.i
  %i.ayk = sub nsw i64 %i.ayf, %.022.i.i.i53.i.i.i
  %gepdiff.i.i.i56.i.i.i = shl nsw i64 %i.ayk, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ayj, ptr align 8 %i.ayh, i64 %gepdiff.i.i.i56.i.i.i, i1 false)
  br label %.sink.split.i.i.i48.i.i.i

.sink.split.i.i.i48.i.i.i:                        ; preds = %bb.dt, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i52.i.i.i, %bb.dm, %bb.dl, %bb.dj
  store i32 %.pre140.i.i.i, ptr %i.axr, align 8, !tbaa !80
  %.pre138.i.i.i = load i64, ptr %30, align 8, !noalias !573
  %.pre139.i.i.i = load i32, ptr %i.yn, align 8, !tbaa !80, !noalias !573
  br label %_ZN4mlir5shape17ShapeMappingValueaSERKS1_.exit57.i.i.i

_ZN4mlir5shape17ShapeMappingValueaSERKS1_.exit57.i.i.i: ; preds = %.sink.split.i.i.i48.i.i.i, %_ZN4mlir5shape17ShapeMappingValueaSERKS1_.exit.i.i.i
  %i.ayl = phi i32 [ %.pre140.i.i.i, %_ZN4mlir5shape17ShapeMappingValueaSERKS1_.exit.i.i.i ], [ %.pre139.i.i.i, %.sink.split.i.i.i48.i.i.i ] ; 5 uses
  %i.aym = phi i64 [ %i.axn, %_ZN4mlir5shape17ShapeMappingValueaSERKS1_.exit.i.i.i ], [ %.pre138.i.i.i, %.sink.split.i.i.i48.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.ayn = load i64, ptr %28, align 8, !tbaa !144, !noalias !573
  store i64 %i.ayn, ptr %35, align 8, !tbaa !144, !alias.scope !573
  store i64 %i.aym, ptr %i.aaa, align 8, !alias.scope !573
  store ptr %i.aac, ptr %i.aab, align 8, !tbaa !26, !alias.scope !573
  store i32 0, ptr %i.aad, align 8, !tbaa !80, !alias.scope !573
  store i32 6, ptr %i.aae, align 4, !tbaa !27, !alias.scope !573
  %.not.i.i.i.i.i58.i.i.i = icmp eq i32 %i.ayl, 0
  br i1 %.not.i.i.i.i.i58.i.i.i, label %_ZSt9make_pairIRN4mlir5ValueERNS0_5shape17ShapeMappingValueEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit.i.i.i, label %bb.du

bb.du:                                            ; preds = %_ZN4mlir5shape17ShapeMappingValueaSERKS1_.exit57.i.i.i
  %i.ayo = icmp ugt i32 %i.ayl, 6
  br i1 %i.ayo, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i61.i.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i59.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i61.i.i.i: ; preds = %bb.du
  %i.ayp = zext i32 %i.ayl to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.aab, ptr noundef nonnull %i.aac, i64 noundef %i.ayp, i64 noundef 8) #19
  %.pre.i.i.i.i62.i.i.i = load i32, ptr %i.yn, align 8, !tbaa !80, !noalias !573 ; 2 uses
  %.not.i.i.i.i.i.i63.i.i.i = icmp eq i32 %.pre.i.i.i.i62.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i63.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i64.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i64.i.i.i: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i61.i.i.i
  %.pre.i.i.i65.i.i.i = load ptr, ptr %i.aab, align 8, !tbaa !26, !alias.scope !573
  br label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i59.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i59.i.i.i: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i64.i.i.i, %bb.du
  %i.ayq = phi ptr [ %.pre.i.i.i65.i.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i64.i.i.i ], [ %i.aac, %bb.du ]
  %i.ayr = phi i32 [ %.pre.i.i.i.i62.i.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i64.i.i.i ], [ %i.ayl, %bb.du ]
  %i.ays = zext i32 %i.ayr to i64
  %i.ayt = load ptr, ptr %i.yl, align 8, !tbaa !26, !noalias !573
  %gepdiff.i.i.i.i.i60.i.i.i = shl nuw nsw i64 %i.ays, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ayq, ptr align 8 %i.ayt, i64 %gepdiff.i.i.i.i.i60.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i59.i.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i61.i.i.i
  store i32 %i.ayl, ptr %i.aad, align 8, !tbaa !80, !alias.scope !573
  br label %_ZSt9make_pairIRN4mlir5ValueERNS0_5shape17ShapeMappingValueEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit.i.i.i

_ZSt9make_pairIRN4mlir5ValueERNS0_5shape17ShapeMappingValueEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i, %_ZN4mlir5shape17ShapeMappingValueaSERKS1_.exit57.i.i.i
  %i.ayu = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_5shape17ShapeMappingValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %i.yd, ptr noundef nonnull align 8 dereferenceable(80) %35, ptr noundef nonnull align 8 dereferenceable(72) %i.aaa), !noalias !574 ; 0 uses
  %i.ayv = load ptr, ptr %i.aab, align 8, !tbaa !26 ; 2 uses
  %i.ayw = icmp eq ptr %i.ayv, %i.aac
  br i1 %i.ayw, label %_ZNSt4pairIN4mlir5ValueENS0_5shape17ShapeMappingValueEED2Ev.exit.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %_ZSt9make_pairIRN4mlir5ValueERNS0_5shape17ShapeMappingValueEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit.i.i.i
  call void @free(ptr noundef %i.ayv) #19
  br label %_ZNSt4pairIN4mlir5ValueENS0_5shape17ShapeMappingValueEED2Ev.exit.i.i.i

_ZNSt4pairIN4mlir5ValueENS0_5shape17ShapeMappingValueEED2Ev.exit.i.i.i: ; preds = %bb.dv, %_ZSt9make_pairIRN4mlir5ValueERNS0_5shape17ShapeMappingValueEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  %i.ayx = load ptr, ptr %i.yl, align 8, !tbaa !26 ; 2 uses
  %i.ayy = icmp eq ptr %i.ayx, %i.ym
  br i1 %i.ayy, label %_ZN4mlir5shape17ShapeMappingValueD2Ev.exit.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt4pairIN4mlir5ValueENS0_5shape17ShapeMappingValueEED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.ayx) #19
  br label %_ZN4mlir5shape17ShapeMappingValueD2Ev.exit.i.i.i

_ZN4mlir5shape17ShapeMappingValueD2Ev.exit.i.i.i: ; preds = %bb.dw, %_ZNSt4pairIN4mlir5ValueENS0_5shape17ShapeMappingValueEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %bb.dx

bb.dx:                                            ; preds = %_ZN4mlir5shape17ShapeMappingValueD2Ev.exit.i.i.i, %bb.az
  %.2.i.i.i = phi i32 [ %.1.i.i.i, %_ZN4mlir5shape17ShapeMappingValueD2Ev.exit.i.i.i ], [ %.0121.i.i.i, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  %i.ayz = getelementptr inbounds nuw i8, ptr %.sroa.094.0120.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ayz, %i.yk
  br i1 %.not.i23.i.i, label %._crit_edge.i24.i.i, label %bb.az

_ZN12_GLOBAL__N_118constructShapeFuncERKSt6vectorIN4mlir5shape6WithOpESaIS3_EEPNS1_11MLIRContextERN4llvm8DenseMapINS1_5ValueENSA_11SmallVectorIPNS1_9OperationELj8EEENSA_12DenseMapInfoISC_vEENSA_6detail12DenseMapPairISC_SG_EEEERNS1_11SymbolTableERNSB_ISC_NS2_17ShapeMappingValueESI_NSK_ISC_SQ_EEEENS1_4func6FuncOpERNS2_20ShapeMappingAnalysisE.exit.i.i: ; preds = %._crit_edge.thread.i46.i.i, %._crit_edge.i24.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  %i.aza = load ptr, ptr %51, align 8, !tbaa !487 ; 2 uses
  %i.azb = load ptr, ptr %i.dq, align 8, !tbaa !487 ; 2 uses
  %.not169.i.i = icmp eq ptr %i.aza, %i.azb
  br i1 %.not169.i.i, label %._crit_edge172.i.i, label %.lr.ph173.i.i

.lr.ph173.i.i:                                    ; preds = %_ZN12_GLOBAL__N_118constructShapeFuncERKSt6vectorIN4mlir5shape6WithOpESaIS3_EEPNS1_11MLIRContextERN4llvm8DenseMapINS1_5ValueENSA_11SmallVectorIPNS1_9OperationELj8EEENSA_12DenseMapInfoISC_vEENSA_6detail12DenseMapPairISC_SG_EEEERNS1_11SymbolTableERNSB_ISC_NS2_17ShapeMappingValueESI_NSK_ISC_SQ_EEEENS1_4func6FuncOpERNS2_20ShapeMappingAnalysisE.exit.i.i
  %56 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5shape9ValueOfOpEvE2idE
  br label %.lr.ph171.i.i

._crit_edge172.i.i:                               ; preds = %._crit_edge.i.i, %_ZN12_GLOBAL__N_118constructShapeFuncERKSt6vectorIN4mlir5shape6WithOpESaIS3_EEPNS1_11MLIRContextERN4llvm8DenseMapINS1_5ValueENSA_11SmallVectorIPNS1_9OperationELj8EEENSA_12DenseMapInfoISC_vEENSA_6detail12DenseMapPairISC_SG_EEEERNS1_11SymbolTableERNSB_ISC_NS2_17ShapeMappingValueESI_NSK_ISC_SQ_EEEENS1_4func6FuncOpERNS2_20ShapeMappingAnalysisE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  call void @_ZN4mlir23FrozenRewritePatternSetC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %54) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.12.0..sroa_idx.i.i, i8 0, i64 5, i1 false)
  %.sroa.480.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  store i32 2, ptr %.sroa.480.0..sroa_idx.i.i, align 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 10, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 -1, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 49
  store i8 1, ptr %.sroa.10.0..sroa_idx.i.i, align 1
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 50
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i, align 2
  %i.azc = load i32, ptr %i.bz, align 4           ; 3 uses
  %i.azd = and i32 %i.azc, 8388607                ; 2 uses
  %i.aze = icmp eq i32 %i.azd, 0
  br i1 %i.aze, label %_ZN4mlir21applyPatternsGreedilyEPNS_9OperationERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb.exit58.thread.i.i, label %_ZN4mlir9Operation10getRegionsEv.exit.i47.i.i

_ZN4mlir21applyPatternsGreedilyEPNS_9OperationERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb.exit58.thread.i.i: ; preds = %._crit_edge172.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %54) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  br label %bb.em

_ZN4mlir9Operation10getRegionsEv.exit.i47.i.i:    ; preds = %._crit_edge172.i.i
  %i.azf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.azg = lshr i32 %i.azc, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i48.i.i = and i32 %i.azg, 1
  %i.azh = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i48.i.i to i64
  %i.azi = getelementptr inbounds nuw [16 x i8], ptr %i.azf, i64 %i.azh
  %i.azj = lshr i32 %i.azc, 21
  %i.azk = and i32 %i.azj, 2040
  %i.azl = zext nneg i32 %i.azk to i64
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azi, i64 %i.azl
  %i.azn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.azo = load i32, ptr %i.azn, align 8, !tbaa !123
  %i.azp = zext i32 %i.azo to i64
  %i.azq = getelementptr inbounds nuw [32 x i8], ptr %i.azm, i64 %i.azp ; 2 uses
  %i.azr = shl nuw nsw i32 %i.azd, 5
  %i.azs = zext nneg i32 %i.azr to i64
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azq, i64 %i.azs
  br label %.lr.ph.i49.i.i

.lr.ph.i49.i.i:                                   ; preds = %.lr.ph.i49.i.i, %_ZN4mlir9Operation10getRegionsEv.exit.i47.i.i
  %.01422.i51.i.i = phi ptr [ %i.azy, %.lr.ph.i49.i.i ], [ %i.azq, %_ZN4mlir9Operation10getRegionsEv.exit.i47.i.i ] ; 2 uses
  %.01521.i52.i.i = phi i1 [ %i.azx, %.lr.ph.i49.i.i ], [ false, %_ZN4mlir9Operation10getRegionsEv.exit.i47.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.azu = call i8 @_ZN4mlir21applyPatternsGreedilyERNS_6RegionERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb(ptr noundef nonnull align 8 dereferenceable(28) %.01422.i51.i.i, ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull byval(%"class.mlir::GreedyRewriteConfig") align 8 %2, ptr noundef nonnull %i.a) #19
  %i.azv = trunc nuw i8 %i.azu to i1
  %i.azw = xor i1 %i.azv, true
  %i.azx = or i1 %.01521.i52.i.i, %i.azw          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.azy = getelementptr inbounds nuw i8, ptr %.01422.i51.i.i, i64 32 ; 2 uses
  %.not.i53.i.i = icmp eq ptr %i.azy, %i.azt
  br i1 %.not.i53.i.i, label %_ZN4mlir21applyPatternsGreedilyEPNS_9OperationERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb.exit58.i.i, label %.lr.ph.i49.i.i

_ZN4mlir21applyPatternsGreedilyEPNS_9OperationERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb.exit58.i.i: ; preds = %.lr.ph.i49.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %54) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  br i1 %i.azx, label %bb.el, label %bb.em

.lr.ph171.i.i:                                    ; preds = %._crit_edge.i.i, %.lr.ph173.i.i
  %.sroa.099.0170.i.i = phi ptr [ %i.aza, %.lr.ph173.i.i ], [ %i.bai, %._crit_edge.i.i ] ; 2 uses
  %i.azz = load i64, ptr %.sroa.099.0170.i.i, align 8
  %i.baa = inttoptr i64 %i.azz to ptr             ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 72
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !149
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 24
  %.sroa.0.0.copyload.i.i.i.i60.i.i = load ptr, ptr %i.bad, align 8, !tbaa !144 ; 9 uses
  %i.bae = getelementptr inbounds i8, ptr %i.baa, i64 -16
  %i.baf = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bae, i64 noundef 0) #19
  %i.bag = load ptr, ptr %i.baf, align 8, !tbaa !181 ; 2 uses
  %.not125167.i.i = icmp eq ptr %i.bag, null
  br i1 %.not125167.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph171.i.i
  %i.bah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i60.i.i, i64 8
  br i1 %56, label %._crit_edge.i.i, label %bb.dy

._crit_edge.i.i:                                  ; preds = %_ZN4mlir7OpTrait9OneResultINS_5shape9ValueOfOpEE18replaceAllUsesWithENS_5ValueE.exit.i.i, %.lr.ph.i.i, %.lr.ph171.i.i
  %i.bai = getelementptr inbounds nuw i8, ptr %.sroa.099.0170.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bai, %i.azb
  br i1 %.not.i.i, label %._crit_edge172.i.i, label %.lr.ph171.i.i

bb.dy:                                            ; preds = %.lr.ph.i.i, %_ZN4mlir7OpTrait9OneResultINS_5shape9ValueOfOpEE18replaceAllUsesWithENS_5ValueE.exit.i.i
  %.sroa.089.0168.i.i = phi ptr [ %i.baj, %_ZN4mlir7OpTrait9OneResultINS_5shape9ValueOfOpEE18replaceAllUsesWithENS_5ValueE.exit.i.i ], [ %i.bag, %.lr.ph.i.i ] ; 2 uses
  %i.baj = load ptr, ptr %.sroa.089.0168.i.i, align 8, !tbaa !575 ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %.sroa.089.0168.i.i, i64 16
  %i.bal = load ptr, ptr %i.bak, align 8, !tbaa !184 ; 5 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i63.i.i = load ptr, ptr %i.bam, align 8, !tbaa !75
  %i.ban = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i63.i.i, i64 16
  %i.bao = load ptr, ptr %i.ban, align 8, !tbaa !77
  %i.bap = icmp ne ptr %i.bao, @_ZN4mlir6detail14TypeIDResolverINS_5shape9ValueOfOpEvE2idE
  %.not126127.i.i = icmp eq ptr %i.bal, null
  %.not126.i.i = or i1 %.not126127.i.i, %i.bap
  br i1 %.not126.i.i, label %_ZN4mlir7OpTrait9OneResultINS_5shape9ValueOfOpEE18replaceAllUsesWithENS_5ValueE.exit.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.baq = getelementptr inbounds i8, ptr %i.bal, i64 -16 ; 2 uses
  %i.bar = getelementptr inbounds i8, ptr %i.bal, i64 -8
  %.0.copyload.i.i.i.i.i.i78.i.i = load i64, ptr %i.bar, align 8
  %i.bas = and i64 %.0.copyload.i.i.i.i.i.i78.i.i, -8 ; 2 uses
  %.not.i.i.i.i.i.i79.i.i = icmp eq i64 %i.bas, 0
  br i1 %.not.i.i.i.i.i.i79.i.i, label %_ZNK4mlir6detail10TypedValueINS_10ShapedTypeEE7getTypeEv.exit.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.bat = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bau = icmp eq i8 %i.bat, 0
  br i1 %i.bau, label %bb.eb, label %_ZNK4mlir6detail10TypedValueINS_10ShapedTypeEE7getTypeEv.exit.i.i, !prof !58

bb.eb:                                            ; preds = %bb.ea
  %i.bav = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bav, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4mlir6detail10TypedValueINS_10ShapedTypeEE7getTypeEv.exit.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.baw = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.20, i64 49), i64 16) #19
  store ptr %i.baw, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #19
  br label %_ZNK4mlir6detail10TypedValueINS_10ShapedTypeEE7getTypeEv.exit.i.i

_ZNK4mlir6detail10TypedValueINS_10ShapedTypeEE7getTypeEv.exit.i.i: ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dz
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bah, align 8
  %i.bax = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.bay = icmp eq i64 %i.bas, %i.bax
  br i1 %i.bay, label %bb.ed, label %bb.eh

bb.ed:                                            ; preds = %_ZNK4mlir6detail10TypedValueINS_10ShapedTypeEE7getTypeEv.exit.i.i
  %i.baz = load ptr, ptr %i.baq, align 8, !tbaa !181 ; 2 uses
  %i.bba = icmp eq ptr %i.baz, null
  br i1 %i.bba, label %_ZN4mlir7OpTrait9OneResultINS_5shape9ValueOfOpEE18replaceAllUsesWithENS_5ValueE.exit.i.i, label %.lr.ph.i.i.i64.i.i

.lr.ph.i.i.i64.i.i:                               ; preds = %bb.ed, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i.i.i.i
  %i.bbb = phi ptr [ %i.bbj, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i.i.i.i ], [ %i.baz, %bb.ed ] ; 6 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 8 ; 2 uses
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !576 ; 3 uses
  %.not.i.i.i.i.i65.i.i = icmp eq ptr %i.bbd, null
  br i1 %.not.i.i.i.i.i65.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i.i.i64.i.i
  %i.bbe = load ptr, ptr %i.bbb, align 8, !tbaa !575 ; 3 uses
  store ptr %i.bbe, ptr %i.bbd, align 8, !tbaa !185
  %.not2.i.i.i.i.i.i.i = icmp eq ptr %i.bbe, null
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 8
  store ptr %i.bbd, ptr %i.bbf, align 8, !tbaa !576
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i.i: ; preds = %bb.ef, %bb.ee, %.lr.ph.i.i.i64.i.i
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbb, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i60.i.i, ptr %i.bbg, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i.i.i60.i.i, ptr %i.bbc, align 8, !tbaa !576
  %i.bbh = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i60.i.i, align 8, !tbaa !181 ; 3 uses
  store ptr %i.bbh, ptr %i.bbb, align 8, !tbaa !575
  %.not.i.i.i.i.i.i66.i.i = icmp eq ptr %i.bbh, null
  br i1 %.not.i.i.i.i.i.i66.i.i, label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i.i
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbh, i64 8
  store ptr %i.bbb, ptr %i.bbi, align 8, !tbaa !576
  br label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i.i.i.i

_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i.i.i.i: ; preds = %bb.eg, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i.i
  store ptr %i.bbb, ptr %.sroa.0.0.copyload.i.i.i.i60.i.i, align 8, !tbaa !181
  %i.bbj = load ptr, ptr %i.baq, align 8, !tbaa !181 ; 2 uses
  %i.bbk = icmp eq ptr %i.bbj, null
  br i1 %i.bbk, label %_ZN4mlir7OpTrait9OneResultINS_5shape9ValueOfOpEE18replaceAllUsesWithENS_5ValueE.exit.i.i, label %.lr.ph.i.i.i64.i.i, !llvm.loop !450

bb.eh:                                            ; preds = %_ZNK4mlir6detail10TypedValueINS_10ShapedTypeEE7getTypeEv.exit.i.i
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bal, i64 72
  %i.bbm = load ptr, ptr %i.bbl, align 8, !tbaa !149 ; 6 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 8 ; 2 uses
  %i.bbo = load ptr, ptr %i.bbn, align 8, !tbaa !576 ; 3 uses
  %.not.i.i.i.i67.i.i = icmp eq ptr %i.bbo, null
  br i1 %.not.i.i.i.i67.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.bbp = load ptr, ptr %i.bbm, align 8, !tbaa !575 ; 3 uses
  store ptr %i.bbp, ptr %i.bbo, align 8, !tbaa !185
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.bbp, null
  br i1 %.not2.i.i.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 8
  store ptr %i.bbo, ptr %i.bbq, align 8, !tbaa !576
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i: ; preds = %bb.ej, %bb.ei, %bb.eh
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbm, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i60.i.i, ptr %i.bbr, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i.i.i60.i.i, ptr %i.bbn, align 8, !tbaa !576
  %i.bbs = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i60.i.i, align 8, !tbaa !181 ; 3 uses
  store ptr %i.bbs, ptr %i.bbm, align 8, !tbaa !575
  %.not.i.i.i.i.i68.i.i = icmp eq ptr %i.bbs, null
  br i1 %.not.i.i.i.i.i68.i.i, label %_ZN4mlir7OpTrait10OneOperandINS_5shape9ValueOfOpEE10setOperandENS_5ValueE.exit.i.i, label %bb.ek

bb.ek:                                            ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 8
  store ptr %i.bbm, ptr %i.bbt, align 8, !tbaa !576
  br label %_ZN4mlir7OpTrait10OneOperandINS_5shape9ValueOfOpEE10setOperandENS_5ValueE.exit.i.i

_ZN4mlir7OpTrait10OneOperandINS_5shape9ValueOfOpEE10setOperandENS_5ValueE.exit.i.i: ; preds = %bb.ek, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i.i
  store ptr %i.bbm, ptr %.sroa.0.0.copyload.i.i.i.i60.i.i, align 8, !tbaa !181
  br label %_ZN4mlir7OpTrait9OneResultINS_5shape9ValueOfOpEE18replaceAllUsesWithENS_5ValueE.exit.i.i

_ZN4mlir7OpTrait9OneResultINS_5shape9ValueOfOpEE18replaceAllUsesWithENS_5ValueE.exit.i.i: ; preds = %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i.i.i.i, %_ZN4mlir7OpTrait10OneOperandINS_5shape9ValueOfOpEE10setOperandENS_5ValueE.exit.i.i, %bb.ed, %bb.dy
  %.not125.i.i = icmp eq ptr %i.baj, null
  br i1 %.not125.i.i, label %._crit_edge.i.i, label %bb.dy

bb.el:                                            ; preds = %_ZN4mlir21applyPatternsGreedilyEPNS_9OperationERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb.exit58.i.i
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %.0.copyload.i.i.i.i69.i.i = load i64, ptr %i.bbu, align 8
  %i.bbv = or i64 %.0.copyload.i.i.i.i69.i.i, 4
  store i64 %i.bbv, ptr %i.bbu, align 8
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_ZN4mlir21applyPatternsGreedilyEPNS_9OperationERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb.exit58.i.i, %_ZN4mlir21applyPatternsGreedilyEPNS_9OperationERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb.exit58.thread.i.i
  %i.bbw = getelementptr inbounds nuw i8, ptr %53, i64 20 ; 2 uses
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !188 ; 2 uses
  %i.bby = icmp eq i32 %i.bbx, 0
  br i1 %i.bby, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS1_9OperationELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit.i.i, label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %bb.em
  %i.bbz = load ptr, ptr %53, align 8, !tbaa !189
  %i.bca = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.bcb = load ptr, ptr %i.bca, align 8, !tbaa !190
  %i.bcc = zext i32 %i.bbx to i64
  %i.bcd = add nuw nsw i64 %i.bcc, 31
  %i.bce = lshr i64 %i.bcd, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i71.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i71.i.i ] ; 3 uses
  %i.bcf = getelementptr inbounds nuw [4 x i8], ptr %i.bcb, i64 %indvars.iv.i.i.i.i
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !56 ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.bcg, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i71.i.i, label %.lr.ph.i.i70.i.i

.lr.ph.i.i70.i.i:                                 ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.bch = shl nuw i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.en

bb.en:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i70.i.i
  %.0.i3.i.i.i.i = phi i32 [ %i.bcg, %.lr.ph.i.i70.i.i ], [ %i.bcr, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.bci = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.bcj = or disjoint i32 %i.bci, %i.bch
  %i.bck = zext i32 %i.bcj to i64
  %i.bcl = getelementptr inbounds nuw [88 x i8], ptr %i.bbz, i64 %i.bck ; 2 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcl, i64 8
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !26 ; 2 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcl, i64 24
  %i.bcp = icmp eq ptr %i.bcn, %i.bco
  br i1 %i.bcp, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @free(ptr noundef %i.bcn) #19
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %bb.eo, %bb.en
  %i.bcq = add i32 %.0.i3.i.i.i.i, -1
  %i.bcr = and i32 %i.bcq, %.0.i3.i.i.i.i         ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.bcr, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i71.i.i, label %bb.en, !llvm.loop !8

._crit_edge.i.i71.i.i:                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i72.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.bce
  br i1 %.not.i.i.i72.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !9

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i71.i.i
  %.pr.i.i.i = load i32, ptr %i.bbw, align 4, !tbaa !188 ; 2 uses
  %i.bcs = icmp eq i32 %.pr.i.i.i, 0
  br i1 %i.bcs, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS1_9OperationELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit.i.i, label %bb.ep

bb.ep:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i.i.i
  %i.bct = load ptr, ptr %53, align 8, !tbaa !189
  %i.bcu = zext i32 %.pr.i.i.i to i64             ; 2 uses
  %i.bcv = mul nuw nsw i64 %i.bcu, 88
  %i.bcw = add nuw nsw i64 %i.bcu, 31
  %i.bcx = lshr i64 %i.bcw, 3
  %i.bcy = and i64 %i.bcx, 1073741820
  %i.bcz = add nuw nsw i64 %i.bcy, %i.bcv
end_hunk_1
begin_hunk_2_@_ZNK12_GLOBAL__N_119TensorDimOpRewriter15matchAndRewriteEN4mlir6tensor5DimOpERNS1_15PatternRewriterE:bb.a
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.0.0.copyload.i.i.i.i7 = load ptr, ptr %i.k, align 8, !tbaa !144
  %.sroa.0.0.copyload.i.i8 = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.m = tail call ptr @_ZN4mlir5shape11GetExtentOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %.sroa.0.0.copyload.i.i8, ptr %i.i, ptr nonnull %i.l, ptr %.sroa.0.0.copyload.i.i.i.i7) #19
  %i.n = load ptr, ptr %2, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1, ptr noundef %i.m) #19, !inline_history !577
  ret i8 1
}

declare void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64, i16, ptr noundef, ptr noundef byval(%"class.llvm::ArrayRef.317") align 8) unnamed_addr #6

declare ptr @_ZN4mlir5shape9ShapeOfOp6createERNS_9OpBuilderENS_8LocationENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr) local_unnamed_addr #6

declare ptr @_ZN4mlir5shape11GetExtentOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr) local_unnamed_addr #6

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

declare i8 @_ZN4mlir21applyPatternsGreedilyERNS_6RegionERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef byval(%"class.mlir::GreedyRewriteConfig") align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !36   ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !124
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !125
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !37
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #19
  store i32 0, ptr %i.r, align 4, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !36
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit
  %i.ab = shl nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 3
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #19 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !36 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !125
  store i32 0, ptr %i.a, align 8, !tbaa !124
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw nsw i64 %i.ai, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZZN12_GLOBAL__N_127OutlineShapeComputationPass14runOnOperationEvENK3$_0clENS1_4func6FuncOpEEUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.b = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_127OutlineShapeComputationPass34calOnlyUsedByWithShapesRecursivelyEPN4mlir9OperationENS1_5ValueE(ptr noundef nonnull align 8 dereferenceable(360) %.val, ptr noundef %1, ptr null) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_127OutlineShapeComputationPass34calOnlyUsedByWithShapesRecursivelyEPN4mlir9OperationENS1_5ValueE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef %1, ptr nofree readnone captures(address) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37, !noalias !588
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125, !noalias !588 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36, !noalias !588 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %i.g, -1                         ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.i, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = lshr i64 %i.p, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !56
  %i.t = and i32 %i.o, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i.i, label %.loopexit, !prof !87

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.w = phi i64 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %.019.i.i.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !145
  %i.z = icmp eq ptr %1, %i.y
  br i1 %i.z, label %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit, label %bb.c, !prof !88

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = add nuw i32 %.019.i.i.i, 1
  %i.ab = and i32 %i.aa, %i.i                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !56
  %i.ag = and i32 %i.ab, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %.loopexit, !prof !89

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !77
  %i.am = icmp ne ptr %i.al, @_ZN4mlir6detail14TypeIDResolverINS_5shape6WithOpEvE2idE
  %3 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5shape6WithOpEvE2idE
  %spec.select.i.i.i.i.not = or i1 %3, %i.am
  %.not54 = icmp eq ptr %1, null
  %.not = or i1 %.not54, %spec.select.i.i.i.i.not
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !144
  %i.aq = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, %2
  br label %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit

bb.e:                                             ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !589 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  %i.au = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.av = zext i32 %i.as to i64                   ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.at, ptr null, ptr %i.au ; 2 uses
  %i.aw = tail call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS3_6detail12OpResultImplENS3_8OpResultES8_S8_E8iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNKS4_9use_emptyEvEUlS8_E_EEET_SG_SG_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i, i64 0, ptr %.sroa.0.0.i.i, i64 %i.av)
  %i.ax = extractvalue { ptr, i64 } %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, %i.av
  br i1 %i.ay, label %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = load i32, ptr %i.ar, align 4, !tbaa !589 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %.not5558 = icmp eq i32 %i.az, 0
  br i1 %.not5558, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %.sroa.435.059 = phi i64 [ %i.bf, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %i.bb = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 noundef %.sroa.435.059) #19 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph
  %.sroa.026.0.in = phi ptr [ %i.bb, %.lr.ph ], [ %.sroa.026.0, %bb.h ]
  %.sroa.026.0 = load ptr, ptr %.sroa.026.0.in, align 8, !tbaa !185 ; 3 uses
  %.not56 = icmp eq ptr %.sroa.026.0, null
  br i1 %.not56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.026.0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !184
  %i.be = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_127OutlineShapeComputationPass34calOnlyUsedByWithShapesRecursivelyEPN4mlir9OperationENS1_5ValueE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef %i.bd, ptr %i.bb)
  br i1 %i.be, label %bb.g, label %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.bf = add nuw nsw i64 %.sroa.435.059, 1       ; 2 uses
  %.not55 = icmp eq i64 %i.bf, %i.ba
  br i1 %.not55, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.f
  %i.bg = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !590 ; 0 uses
  br label %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit

_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.h, %bb.d, %bb.e, %._crit_edge
  %.6 = phi i1 [ %i.aq, %bb.d ], [ false, %bb.e ], [ true, %._crit_edge ], [ false, %bb.h ], [ true, %.lr.ph.i.i.i ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS3_6detail12OpResultImplENS3_8OpResultES8_S8_E8iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNKS4_9use_emptyEvEUlS8_E_EEET_SG_SG_T0_St26random_access_iterator_tag(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = sub nsw i64 %3, %1
  %i.b = ashr i64 %i.a, 2                         ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.076 = phi i64 [ %i.p, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.15.075 = phi i64 [ %i.o, %bb.e ], [ %1, %bb.a ] ; 6 uses
  %i.d = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.sroa.15.075) #19
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181
  %.not70 = icmp eq ptr %i.e, null
  br i1 %.not70, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.f = add nsw i64 %.sroa.15.075, 1             ; 2 uses
  %i.g = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.f) #19
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !181
  %.not71 = icmp eq ptr %i.h, null
  br i1 %.not71, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i64 %.sroa.15.075, 2             ; 2 uses
  %i.j = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.i) #19
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !181
  %.not72 = icmp eq ptr %i.k, null
  br i1 %.not72, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i64 %.sroa.15.075, 3             ; 2 uses
  %i.m = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.l) #19
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  %.not73 = icmp eq ptr %i.n, null
  br i1 %.not73, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i64 %.sroa.15.075, 4             ; 2 uses
  %i.p = add nsw i64 %.076, -1
  %i.q = icmp sgt i64 %.076, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !591

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.o, %bb.e ] ; 6 uses
  %i.r = sub nsw i64 %3, %.sroa.15.0.lcssa
  switch i64 %i.r, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.s = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.sroa.15.0.lcssa) #19
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i64 %.sroa.15.0.lcssa, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.15.1 = phi i64 [ %i.u, %bb.g ], [ %.sroa.15.0.lcssa, %._crit_edge ] ; 3 uses
  %i.v = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.sroa.15.1) #19
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !181
  %.not68 = icmp eq ptr %i.w, null
  br i1 %.not68, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i64 %.sroa.15.1, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.15.2 = phi i64 [ %i.x, %bb.i ], [ %.sroa.15.0.lcssa, %._crit_edge ] ; 2 uses
  %i.y = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.sroa.15.2) #19
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !181
  %.not69 = icmp eq ptr %i.z, null
  br i1 %.not69, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph, %bb.j, %bb.h, %bb.f, %bb.k
  %.sroa.014.0.in.sroa.speculated = phi ptr [ %0, %bb.h ], [ %2, %bb.k ], [ %0, %bb.j ], [ %0, %bb.f ], [ %0, %.lr.ph ], [ %0, %bb.b ], [ %0, %bb.c ], [ %0, %bb.d ]
  %.sroa.9.0 = phi i64 [ %.sroa.15.1, %bb.h ], [ %3, %bb.k ], [ %.sroa.15.2, %bb.j ], [ %.sroa.15.0.lcssa, %bb.f ], [ %i.l, %bb.d ], [ %i.i, %bb.c ], [ %i.f, %bb.b ], [ %.sroa.15.075, %.lr.ph ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.014.0.in.sroa.speculated, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.9.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !37, !noalias !596 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125, !noalias !596 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36, !noalias !596 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !145    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !56
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !87

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !145
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !88

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !56
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_:bb.a

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !165
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.25", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !37
  store ptr %i.y, ptr %i.q, align 8, !tbaa !125
  store i32 0, ptr %i.p, align 16, !tbaa !124
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !67
  %i.aa = load ptr, ptr %0, align 8, !tbaa !165
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !67
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !67
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !56 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !56
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !56
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !56
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !56
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !125  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !36
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !56   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !145  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !56 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !56 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !602

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !145
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !56
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !603

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !604

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !36
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !124
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !124
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #19
  store i32 0, ptr %i.d, align 4, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZN12_GLOBAL__N_127OutlineShapeComputationPass14runOnOperationEvENK3$_0clENS1_4func6FuncOpEEUlNS1_5shape6WithOpEE_SH_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_5shape6WithOpEvE2idE
  %2 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5shape6WithOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %2, %i.d
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZZN12_GLOBAL__N_127OutlineShapeComputationPass14runOnOperationEvENK3$_0clENS_4func6FuncOpEEUlNS_5shape6WithOpEE_SA_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeESF_OT1_ENKUlSF_E_clESF_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.e, align 8
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !610 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !611  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !193
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %1 to i64
  store i64 %i.j, ptr %i.g, align 8
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !611
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.f, align 8, !tbaa !611
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZZN12_GLOBAL__N_127OutlineShapeComputationPass14runOnOperationEvENK3$_0clENS_4func6FuncOpEEUlNS_5shape6WithOpEE_SA_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeESF_OT1_ENKUlSF_E_clESF_.exit"

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %.val.i, align 8, !tbaa !192 ; 5 uses
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN4mlir5shape6WithOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #21
  unreachable

_ZNKSt6vectorIN4mlir5shape6WithOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #18 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %i.z = ptrtoint ptr %1 to i64
  store i64 %i.z, ptr %i.y, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4mlir5shape6WithOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN4mlir5shape6WithOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN4mlir5shape6WithOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %_ZNKSt6vectorIN4mlir5shape6WithOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.aa = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !613, !noalias !612
  store i64 %i.aa, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !612, !noalias !613
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4mlir5shape6WithOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !608

_ZNSt6vectorIN4mlir5shape6WithOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4mlir5shape6WithOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorIN4mlir5shape6WithOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN4mlir5shape6WithOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4mlir5shape6WithOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !193
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ag) #20
  br label %_ZNSt6vectorIN4mlir5shape6WithOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN4mlir5shape6WithOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIN4mlir5shape6WithOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.x, ptr %.val.i, align 8, !tbaa !192
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !611
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !193
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZZN12_GLOBAL__N_127OutlineShapeComputationPass14runOnOperationEvENK3$_0clENS_4func6FuncOpEEUlNS_5shape6WithOpEE_SA_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeESF_OT1_ENKUlSF_E_clESF_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZZN12_GLOBAL__N_127OutlineShapeComputationPass14runOnOperationEvENK3$_0clENS_4func6FuncOpEEUlNS_5shape6WithOpEE_SA_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeESF_OT1_ENKUlSF_E_clESF_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorIN4mlir5shape6WithOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i
  ret void
}

declare noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIPN4mlir9OperationESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !158
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !159
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !160
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !155
  %i.ag = load ptr, ptr %0, align 8, !tbaa !156
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPN4mlir9OperationESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN4mlir9OperationESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPN4mlir9OperationESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !157
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !161
  %i.aq = load ptr, ptr %1, align 8, !tbaa !145
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !145
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !158
  store ptr %i.am, ptr %i.o, align 8, !tbaa !159
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !160
  store ptr %i.am, ptr %i.a, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIPN4mlir9OperationESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !155  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !156
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !88

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPPN4mlir9OperationES4_ET0_T_S6_S5_.exit

end_hunk_3
