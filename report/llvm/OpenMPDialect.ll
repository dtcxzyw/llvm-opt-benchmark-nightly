Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenMPDialect?download=true
inline.NumInlined: 86000
inline.NumDeleted: 22767
loop-unroll.NumCompletelyUnrolled: 325
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 331
begin_hunk_0_@_ZN4mlir3omp15CanonicalLoopOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE
define dso_local ptr @_ZN4mlir3omp15CanonicalLoopOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.815") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.1019, i64 18) #32
  call void @_ZN4mlir3omp15CanonicalLoopOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.815") align 8 %5)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !221
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !301
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_3omp15CanonicalLoopOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3omp15CanonicalLoopOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.815") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %class.anon.6284, align 1           ; 3 uses
  %9 = alloca %class.anon.6286, align 1           ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE, ptr %i.a, align 8, !tbaa !32
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %6, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !328
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.b = ptrtoint ptr %8 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_E_EEvlS2_, ptr %i.c, align 8, !tbaa !328
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.b, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.d = ptrtoint ptr %9 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_, ptr %i.e, align 8, !tbaa !328
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !1614
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !88 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.g, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !80   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %.sroa.2.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !81
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #32
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !80
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.r = zext i32 %.pre8.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !80
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !80
  %i.w = call noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #32 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80   ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = add i64 %3, %i.aa                       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull %i.ag, i64 noundef %i.ab, i64 noundef 8) #32
  %.pre.i.i = load i32, ptr %i.y, align 8, !tbaa !80 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.aa, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ah = phi i32 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !79
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ak = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #32
  %i.al = ptrtoint ptr %i.ak to i64
  store i64 %i.al, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !214
  %i.am = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.am, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1613

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.y, align 8, !tbaa !80
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.ao = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ah, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ap = trunc i64 %3 to i32
  %i.aq = add i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %i.y, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir3omp15CanonicalLoopOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.815") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.1019, i64 18) #32
  call void @_ZN4mlir3omp15CanonicalLoopOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.815") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !221
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !301
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3omp15CanonicalLoopOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir3omp15CanonicalLoopOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.815") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.1019, i64 18) #32
  call void @_ZN4mlir3omp15CanonicalLoopOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.815") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !221
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !301
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_3omp15CanonicalLoopOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir3omp15CanonicalLoopOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !314
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !319
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL43__mlir_ods_local_type_constraint_OpenMPOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.322, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.lr.ph.i.i.preheader, label %.thread92

.lr.ph.i.i.preheader:                             ; preds = %_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 8388608
  %.not.i.i.i37 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i37, label %_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit42.thread, label %_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit42, !prof !313

_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit42: ; preds = %.lr.ph.i.i.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !420  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !314
  %i.r = zext i32 %i.o to i64
  %i.s = add nsw i64 %i.r, -1                     ; 2 uses
  %i.t = icmp ugt i64 %i.s, 1
  br i1 %i.t, label %_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit42.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit42
  %.not96102 = icmp eq i32 %i.o, 1
  br i1 %.not96102, label %bb.m, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %6 = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.0.0.copyload.i.i.i51 = load ptr, ptr %6, align 8, !tbaa !319
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i51, i64 8
  %.0.copyload.i.i.i.i.i52 = load i64, ptr %7, align 8
  %8 = and i64 %.0.copyload.i.i.i.i.i52, -8
  %9 = inttoptr i64 %8 to ptr
  %10 = tail call fastcc i8 @_ZL43__mlir_ods_local_type_constraint_OpenMPOps9PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %9, ptr nonnull @.str.322, i64 7, i32 noundef 1)
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %bb.m, label %.thread92

_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit42.thread: ; preds = %.lr.ph.i.i.preheader, %_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit42
  %i.u = phi i64 [ %i.s, %_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit42 ], [ -1, %.lr.ph.i.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !64
  store ptr @.str.344, ptr %5, align 8, !tbaa !65
  store i8 3, ptr %i.v, align 8, !tbaa !58
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #32
  %i.x = load ptr, ptr %4, align 8, !tbaa !302
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit42.thread
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i32 5, ptr %3, align 8, !tbaa !321
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.z, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 9 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81
  %.not.i.i.i.i.i = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b, !prof !82

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.c:                                             ; preds = %bb.a
  %i.ae = zext i32 %i.ab to i64
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !80
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !80
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.pr = load ptr, ptr %4, align 8, !tbaa !302
  %.not.i.i43 = icmp eq ptr %.pr, null
  br i1 %.not.i.i43, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i32 3, ptr %2, align 8, !tbaa !321
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.345, ptr %i.aj, align 8, !tbaa !87
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !88
  %i.ak = load i32, ptr %i.aa, align 8, !tbaa !80 ; 2 uses
  %i.al = load i32, ptr %i.ac, align 4, !tbaa !81
  %.not.i.i.i.i.i44 = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i.i.i.i.i44, label %bb.f, label %bb.e, !prof !82

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.am = zext i32 %i.ak to i64
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !79
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ap = load i32, ptr %i.aa, align 8, !tbaa !80
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.aa, align 8, !tbaa !80
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %.pr88 = load ptr, ptr %4, align 8, !tbaa !302
  %.not.i.i45 = icmp eq ptr %.pr88, null
  br i1 %.not.i.i45, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store i32 5, ptr %1, align 8, !tbaa !321
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.u, ptr %i.ar, align 8, !tbaa !65
  %i.as = load i32, ptr %i.aa, align 8, !tbaa !80 ; 2 uses
  %i.at = load i32, ptr %i.ac, align 4, !tbaa !81
  %.not.i.i.i.i.i46 = icmp ult i32 %i.as, %i.at
  br i1 %.not.i.i.i.i.i46, label %bb.i, label %bb.h, !prof !82

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.au = zext i32 %i.as to i64
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !79
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ax = load i32, ptr %i.aa, align 8, !tbaa !80
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aa, align 8, !tbaa !80
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i:  ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit42.thread, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i
  %i.az = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #32
  %i.ba = load ptr, ptr %4, align 8, !tbaa !302
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !310, !range !311, !noundef !54
  %i.bd = trunc nuw i8 %i.bc to i1
  store i8 0, ptr %i.bb, align 8, !tbaa !310
  br i1 %i.bd, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.be) #32
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.thread92

bb.m:                                             ; preds = %.lr.ph.preheader, %.preheader
  br label %.thread92

.thread92:                                        ; preds = %_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit, %.lr.ph.preheader, %bb.m, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.11 = phi i8 [ 1, %bb.m ], [ 0, %.lr.ph.preheader ], [ %i.az, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %_ZN4mlir3omp15CanonicalLoopOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.11
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL43__mlir_ods_local_type_constraint_OpenMPOps9PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !944
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_3omp21CanonicalLoopInfoTypeEvE2idE
  br i1 %i.c, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 5, ptr %i.d, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !64
  store ptr %2, ptr %10, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %3, ptr %i.f, align 8, !tbaa !65
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %10) #32
  %i.g = load ptr, ptr %9, align 8, !tbaa !302
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store i32 3, ptr %8, align 8, !tbaa !321
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.976, ptr %i.i, align 8, !tbaa !87
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 12 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !80   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !81
  %.not.i.i.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !82

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = zext i32 %i.k to i64
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.q = load i32, ptr %i.j, align 8, !tbaa !80
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !80
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %.pr = load ptr, ptr %9, align 8, !tbaa !302
  %.not.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i4, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store i32 5, ptr %7, align 8, !tbaa !321
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = zext i32 %4 to i64
  store i64 %i.t, ptr %i.s, align 8, !tbaa !65
  %i.u = load i32, ptr %i.j, align 8, !tbaa !80   ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !81
  %.not.i.i.i.i.i5 = icmp ult i32 %i.u, %i.v
  br i1 %.not.i.i.i.i.i5, label %bb.h, label %bb.g, !prof !82

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.h:                                             ; preds = %bb.f
  %i.w = zext i32 %i.u to i64
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.z = load i32, ptr %i.j, align 8, !tbaa !80
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.j, align 8, !tbaa !80
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %.pr12 = load ptr, ptr %9, align 8, !tbaa !302
  %.not.i.i6 = icmp eq ptr %.pr12, null
  br i1 %.not.i.i6, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store i32 3, ptr %6, align 8, !tbaa !321
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.1020, ptr %i.ab, align 8, !tbaa !87
  %.sroa.2.0..sroa_idx.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 72, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i7, align 8, !tbaa !88
  %i.ac = load i32, ptr %i.j, align 8, !tbaa !80  ; 2 uses
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !81
  %.not.i.i.i.i.i8 = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i.i.i.i.i8, label %bb.k, label %bb.j, !prof !82

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA73_KcEEOS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = zext i32 %i.ac to i64
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.ah = load i32, ptr %i.j, align 8, !tbaa !80
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.j, align 8, !tbaa !80
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA73_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA73_KcEEOS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.pr14.pr = load ptr, ptr %9, align 8, !tbaa !302
  %.not.i.i9 = icmp eq ptr %.pr14.pr, null
  br i1 %.not.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA73_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %1) #32
  %i.aj = load i32, ptr %i.j, align 8, !tbaa !80  ; 2 uses
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !81
  %.not.i.i.i.i.i10 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i10, label %bb.n, label %bb.m, !prof !82

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ao = load i32, ptr %i.j, align 8, !tbaa !80
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.j, align 8, !tbaa !80
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit, %bb.b, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA73_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i
  %i.aq = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #32
  %i.ar = load ptr, ptr %9, align 8, !tbaa !302
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !310, !range !311, !noundef !54
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.as, align 8, !tbaa !310
  br i1 %i.au, label %bb.q, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.av) #32
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.03.0 = phi i8 [ %i.aq, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.03.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir3omp15CanonicalLoopOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir3omp15CanonicalLoopOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir3omp15CanonicalLoopOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c
end_hunk_0
