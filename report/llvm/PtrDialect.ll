Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PtrDialect?download=true
inline.NumInlined: 14421
inline.NumDeleted: 5291
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4mlir3ptr9FromPtrOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_3ptr9FromPtrOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3ptr9FromPtrOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.598") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %class.anon.1541, align 1           ; 3 uses
  %9 = alloca %class.anon.1543, align 1           ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE, ptr %i.a, align 8, !tbaa !36
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %6, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.b = ptrtoint ptr %8 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_E_EEvlS2_, ptr %i.c, align 8, !tbaa !120
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.b, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.d = ptrtoint ptr %9 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_, ptr %i.e, align 8, !tbaa !120
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !64 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.g, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %.sroa.2.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !66
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #25
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !39
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.r = zext i32 %.pre8.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !39
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !39   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !66
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #25
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !39 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #25
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !302
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !339

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !39
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir3ptr9FromPtrOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.598") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.150, i64 12) #25
  call void @_ZN4mlir3ptr9FromPtrOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.598") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3ptr9FromPtrOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir3ptr9FromPtrOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.598") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.150, i64 12) #25
  call void @_ZN4mlir3ptr9FromPtrOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.598") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #25 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_3ptr9FromPtrOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir3ptr9FromPtrOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit:
  %1 = alloca %"struct.std::array.1505", align 8  ; 4 uses
  %2 = alloca %"class.llvm::function_ref.1523", align 8 ; 5 uses
  %3 = alloca %"class.std::tuple.1483", align 8   ; 6 uses
  %4 = alloca %class.anon.1528, align 8           ; 4 uses
  %5 = alloca %class.anon.1529, align 8           ; 5 uses
  %6 = alloca %"class.llvm::function_ref.1395", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %class.anon.1527, align 8           ; 5 uses
  %8 = alloca %"class.mlir::PtrLikeTypeInterface", align 8 ; 6 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %11 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call fastcc i8 @_ZL40__mlir_ods_local_type_constraint_PtrOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.b, ptr %i.h, ptr nonnull @.str.69, i64 7, i32 noundef 0)
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.lr.ph.i.i.preheader, label %.thread145

.lr.ph.i.i.preheader:                             ; preds = %_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit
  %i.k = load ptr, ptr %0, align 8, !tbaa !43     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 8388608
  %.not.i.i.i33 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i33, label %_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit38.thread, label %_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit38, !prof !334

_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit38:  ; preds = %.lr.ph.i.i.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = zext i32 %i.p to i64
  %i.t = add nsw i64 %i.s, -1                     ; 3 uses
  %i.u = icmp ugt i64 %i.t, 1
  br i1 %i.u, label %_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit38.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit38
  %.not155165 = icmp eq i32 %i.p, 1
  br i1 %.not155165, label %._crit_edge, label %.lr.ph

_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit38.thread: ; preds = %.lr.ph.i.i.preheader, %_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit38
  %i.v = phi i64 [ %i.t, %_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit38 ], [ -1, %.lr.ph.i.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !49
  store ptr @.str.70, ptr %13, align 8, !tbaa !115
  store i8 3, ptr %i.w, align 8, !tbaa !46
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %13) #25
  %i.y = load ptr, ptr %12, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit38.thread
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store i32 5, ptr %11, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.aa, align 8, !tbaa !115
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 9 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 36 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !66
  %.not.i.i.i.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.c:                                             ; preds = %bb.a
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !39
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !39
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %.pr = load ptr, ptr %12, align 8, !tbaa !50
  %.not.i.i39 = icmp eq ptr %.pr, null
  br i1 %.not.i.i39, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store i32 3, ptr %10, align 8, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.71, ptr %i.ak, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !64
  %i.al = load i32, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %i.am = load i32, ptr %i.ad, align 4, !tbaa !66
  %.not.i.i.i.i.i40 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i40, label %bb.f, label %bb.e, !prof !67

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ab, align 8, !tbaa !39
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ab, align 8, !tbaa !39
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %.pr141 = load ptr, ptr %12, align 8, !tbaa !50
  %.not.i.i41 = icmp eq ptr %.pr141, null
  br i1 %.not.i.i41, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store i32 5, ptr %9, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.v, ptr %i.as, align 8, !tbaa !115
  %i.at = load i32, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %i.au = load i32, ptr %i.ad, align 4, !tbaa !66
  %.not.i.i.i.i.i42 = icmp ult i32 %i.at, %i.au
  br i1 %.not.i.i.i.i.i42, label %bb.i, label %bb.h, !prof !67

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.av = zext i32 %i.at to i64
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.ay = load i32, ptr %i.ab, align 8, !tbaa !39
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ab, align 8, !tbaa !39
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i:  ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit38.thread, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i
  %i.ba = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #25
  %i.bb = load ptr, ptr %12, align 8, !tbaa !50
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !68, !range !69, !noundef !70
  %i.be = trunc nuw i8 %i.bd to i1
  store i8 0, ptr %i.bc, align 8, !tbaa !68
  br i1 %i.be, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bf) #25
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.thread145

.lr.ph:                                           ; preds = %.preheader, %24
  %.2167 = phi i32 [ %25, %24 ], [ 1, %.preheader ] ; 2 uses
  %.sroa.4113.0166 = phi i64 [ %26, %24 ], [ 0, %.preheader ] ; 2 uses
  %16 = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.4113.0166
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 56
  %.sroa.0.0.copyload.i.i.i47 = load ptr, ptr %17, align 8, !tbaa !25
  %18 = load ptr, ptr %0, align 8, !tbaa !43
  %19 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i47, i64 8
  %.0.copyload.i.i.i.i.i48 = load i64, ptr %19, align 8
  %20 = and i64 %.0.copyload.i.i.i.i.i48, -8
  %21 = inttoptr i64 %20 to ptr
  %22 = tail call fastcc i8 @_ZL40__mlir_ods_local_type_constraint_PtrOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %18, ptr %21, ptr nonnull @.str.69, i64 7, i32 noundef %.2167)
  %23 = trunc nuw i8 %22 to i1
  br i1 %23, label %24, label %.thread145

24:                                               ; preds = %.lr.ph
  %25 = add i32 %.2167, 1
  %26 = add nuw nsw i64 %.sroa.4113.0166, 1       ; 2 uses
  %.not155 = icmp eq i64 %26, %i.t
  br i1 %.not155, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %24
  %.pre = load ptr, ptr %0, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bg = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.k, %.preheader ]
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -16
  %i.bi = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 noundef 0) #25
  %i.bj = load ptr, ptr %0, align 8, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.0.copyload.i.i.i.i.i55 = load i64, ptr %i.bk, align 8
  %i.bl = and i64 %.0.copyload.i.i.i.i.i55, -8
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = tail call fastcc i8 @_ZL40__mlir_ods_local_type_constraint_PtrOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bj, ptr %i.bm, ptr nonnull @.str.67, i64 6, i32 noundef 0)
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.m, label %.thread145

bb.m:                                             ; preds = %._crit_edge
  %i.bp = load ptr, ptr %0, align 8, !tbaa !43
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -16
  %i.br = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 noundef 0) #25
  %.not157 = icmp eq ptr %i.br, null
  br i1 %.not157, label %.thread145, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %0, align 8, !tbaa !43    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 68
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !29
  %i.bv = icmp eq i32 %i.bu, 1
  br i1 %i.bv, label %.thread145, label %_ZN4mlir3ptr9FromPtrOp11getMetadataEv.exit

_ZN4mlir3ptr9FromPtrOp11getMetadataEv.exit:       ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.by, align 8, !tbaa !25
  %.not158 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, null
  br i1 %.not158, label %.thread145, label %bb.o

bb.o:                                             ; preds = %_ZN4mlir3ptr9FromPtrOp11getMetadataEv.exit
  %i.bz = getelementptr inbounds i8, ptr %i.bs, i64 -16
  %i.ca = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 noundef 0) #25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.0.copyload.i.i.i.i.i61 = load i64, ptr %i.cb, align 8
  %i.cc = and i64 %.0.copyload.i.i.i.i.i61, -8    ; 2 uses
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %.not.i.i.i.i.i62 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i.i.i62, label %_ZN4llvm4castIN4mlir20PtrLikeTypeInterfaceENS1_4TypeEEEDcRKT0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20PtrLikeTypeInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %_ZN4mlir6detail9InterfaceINS_20PtrLikeTypeInterfaceENS_4TypeENS0_35PtrLikeTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !35

bb.q:                                             ; preds = %bb.p
  %i.ci = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20PtrLikeTypeInterfaceEvE13resolveTypeIDEvE2id) #25
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_20PtrLikeTypeInterfaceENS_4TypeENS0_35PtrLikeTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.153, i64 49), i64 26) #25
  store ptr %i.cj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20PtrLikeTypeInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20PtrLikeTypeInterfaceEvE13resolveTypeIDEvE2id) #25
  br label %_ZN4mlir6detail9InterfaceINS_20PtrLikeTypeInterfaceENS_4TypeENS0_35PtrLikeTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_20PtrLikeTypeInterfaceENS_4TypeENS0_35PtrLikeTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20PtrLikeTypeInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !36 ; 2 uses
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !37 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_20PtrLikeTypeInterfaceENS_4TypeENS0_35PtrLikeTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ck, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.co = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.co ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !36
  %i.cq = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cs = xor i64 %i.co, -1
  %i.ct = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.cs
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.cq, ptr %i.cr, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.cq, i64 %i.ct, i64 %i.co ; 2 uses
  %i.cu = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cu, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !40

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_20PtrLikeTypeInterfaceENS_4TypeENS0_35PtrLikeTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_20PtrLikeTypeInterfaceENS_4TypeENS0_35PtrLikeTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.cn, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ck, %_ZN4mlir6detail9InterfaceINS_20PtrLikeTypeInterfaceENS_4TypeENS0_35PtrLikeTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.cv
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir20PtrLikeTypeInterfaceENS1_4TypeEEEDcRKT0_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.cw = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !26
  %i.cx = icmp eq ptr %i.cw, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cx, label %bb.t, label %_ZN4llvm4castIN4mlir20PtrLikeTypeInterfaceENS1_4TypeEEEDcRKT0_.exit

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !41
  br label %_ZN4llvm4castIN4mlir20PtrLikeTypeInterfaceENS1_4TypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir20PtrLikeTypeInterfaceENS1_4TypeEEEDcRKT0_.exit: ; preds = %bb.o, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.s, %bb.t
  %i.da = phi ptr [ null, %bb.o ], [ %i.cz, %bb.t ], [ null, %bb.s ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.cd, ptr %8, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.da, ptr %i.db, align 8
  %i.dc = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.dc, ptr %i.a, align 8, !tbaa !234
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext14getTypeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_3ptr15PtrMetadataTypeEvE2idE, ptr %7, align 8, !tbaa !36
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.de, align 8, !tbaa !287
  %i.df = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @_ZN4llvm12function_refIFvPN4mlir3ptr6detail22PtrMetadataTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15PtrMetadataTypeEJRNS1_20PtrLikeTypeInterfaceEEEENSt9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_, ptr %2, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.df, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !302
  %i.dh = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i to i64
  %i.di = mul i64 %i.dh, -4658895280553007687     ; 2 uses
  %i.dj = lshr i64 %i.di, 31
  %i.dk = xor i64 %i.dj, %i.di
  %i.dl = and i64 %i.dk, 4294967295
  store i64 %i.dl, ptr %1, align 8
  %i.dm = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.dn = trunc i64 %i.dm to i32
  %i.do = xor i32 %i.dn, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %3, ptr %4, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %3, ptr %5, align 8, !tbaa !298
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.dp, align 8, !tbaa !300
  %i.dq = ptrtoint ptr %4 to i64
  store ptr @_ZN4llvm12function_refIFPN4mlir14StorageUniquer11BaseStorageERNS2_16StorageAllocatorEEE11callback_fnIZNS2_3getINS1_3ptr6detail22PtrMetadataTypeStorageEJRNS1_20PtrLikeTypeInterfaceEEEEPT_NS0_IFvSH_EEENS1_6TypeIDEDpOT0_EUlS6_E_EES4_lS6_, ptr %6, align 8, !tbaa !206
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ds = ptrtoint ptr %5 to i64
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !208
  %i.dt = call noundef ptr @_ZN4mlir14StorageUniquer28getParametricStorageTypeImplENS_6TypeIDEjN4llvm12function_refIFbPKNS0_11BaseStorageEEEENS3_IFPS4_RNS0_16StorageAllocatorEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3ptr15PtrMetadataTypeEvE2idE, i32 noundef %i.do, ptr nonnull @_ZN4llvm12function_refIFbPKN4mlir14StorageUniquer11BaseStorageEEE11callback_fnIZNS2_3getINS1_3ptr6detail22PtrMetadataTypeStorageEJRNS1_20PtrLikeTypeInterfaceEEEEPT_NS0_IFvSG_EEENS1_6TypeIDEDpOT0_EUlS5_E_EEblS5_, i64 %i.dq, ptr noundef nonnull byval(%"class.llvm::function_ref.1395") align 8 %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.du = load ptr, ptr %0, align 8, !tbaa !43
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !22
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  %.sroa.0.0.copyload.i.i.i79 = load ptr, ptr %i.dx, align 8, !tbaa !25
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i79, i64 8
  %.0.copyload.i.i.i.i.i80 = load i64, ptr %i.dy, align 8
  %i.dz = and i64 %.0.copyload.i.i.i.i.i80, -8
  %i.ea = inttoptr i64 %i.dz to ptr
  %.not159 = icmp eq ptr %i.dt, %i.ea
  br i1 %.not159, label %.thread145, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm4castIN4mlir20PtrLikeTypeInterfaceENS1_4TypeEEEDcRKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.ec, align 1, !tbaa !49
  store ptr @.str.72, ptr %15, align 8, !tbaa !115
  store i8 3, ptr %i.eb, align 8, !tbaa !46
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %15) #25
  %i.ed = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #25
  %i.ee = load ptr, ptr %14, align 8, !tbaa !50
  %.not.i82 = icmp eq ptr %i.ee, null
  br i1 %.not.i82, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !68, !range !69, !noundef !70
  %i.eh = trunc nuw i8 %i.eg to i1
  store i8 0, ptr %i.ef, align 8, !tbaa !68
  br i1 %i.eh, label %bb.x, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit83

bb.x:                                             ; preds = %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ei) #25
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit83

_ZN4mlir18InFlightDiagnosticD2Ev.exit83:          ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.thread145

.thread145:                                       ; preds = %.lr.ph, %_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit, %._crit_edge, %bb.n, %bb.m, %_ZN4mlir3ptr9FromPtrOp11getMetadataEv.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZN4llvm4castIN4mlir20PtrLikeTypeInterfaceENS1_4TypeEEEDcRKT0_.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit83
  %.sroa.027.11 = phi i8 [ %i.ed, %_ZN4mlir18InFlightDiagnosticD2Ev.exit83 ], [ 1, %bb.n ], [ 1, %_ZN4llvm4castIN4mlir20PtrLikeTypeInterfaceENS1_4TypeEEEDcRKT0_.exit ], [ 0, %_ZN4mlir3ptr9FromPtrOp14getODSOperandsEj.exit ], [ 0, %._crit_edge ], [ %i.ba, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir3ptr9FromPtrOp11getMetadataEv.exit ], [ 1, %bb.m ], [ 0, %.lr.ph ]
  ret i8 %.sroa.027.11
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL40__mlir_ods_local_type_constraint_PtrOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_3ptr15PtrMetadataTypeEvE2idE
  br i1 %i.c, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 5, ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !49
  store ptr %2, ptr %10, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %3, ptr %i.f, align 8, !tbaa !115
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %10) #25
  %i.g = load ptr, ptr %9, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i32 3, ptr %8, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.148, ptr %i.i, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 12 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !66
  %.not.i.i.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !67

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = zext i32 %i.k to i64
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.q = load i32, ptr %i.j, align 8, !tbaa !39
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !39
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.pr = load ptr, ptr %9, align 8, !tbaa !50
  %.not.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i4, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i32 5, ptr %7, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = zext i32 %4 to i64
  store i64 %i.t, ptr %i.s, align 8, !tbaa !115
  %i.u = load i32, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !66
  %.not.i.i.i.i.i5 = icmp ult i32 %i.u, %i.v
  br i1 %.not.i.i.i.i.i5, label %bb.h, label %bb.g, !prof !67

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.h:                                             ; preds = %bb.f
  %i.w = zext i32 %i.u to i64
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.z = load i32, ptr %i.j, align 8, !tbaa !39
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.j, align 8, !tbaa !39
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.pr12 = load ptr, ptr %9, align 8, !tbaa !50
  %.not.i.i6 = icmp eq ptr %.pr12, null
  br i1 %.not.i.i6, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 3, ptr %6, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.151, ptr %i.ab, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 40, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i7, align 8, !tbaa !64
  %i.ac = load i32, ptr %i.j, align 8, !tbaa !39  ; 2 uses
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !66
  %.not.i.i.i.i.i8 = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i.i.i.i.i8, label %bb.k, label %bb.j, !prof !67

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA41_KcEEOS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = zext i32 %i.ac to i64
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.ah = load i32, ptr %i.j, align 8, !tbaa !39
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.j, align 8, !tbaa !39
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA41_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA41_KcEEOS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.pr14.pr = load ptr, ptr %9, align 8, !tbaa !50
  %.not.i.i9 = icmp eq ptr %.pr14.pr, null
  br i1 %.not.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA41_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %1) #25
  %i.aj = load i32, ptr %i.j, align 8, !tbaa !39  ; 2 uses
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !66
  %.not.i.i.i.i.i10 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i10, label %bb.n, label %bb.m, !prof !67

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ao = load i32, ptr %i.j, align 8, !tbaa !39
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.j, align 8, !tbaa !39
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit, %bb.b, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA41_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i
  %i.aq = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #25
  %i.ar = load ptr, ptr %9, align 8, !tbaa !50
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !68, !range !69, !noundef !70
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.as, align 8, !tbaa !68
  br i1 %i.au, label %bb.q, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.av) #25
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.03.0 = phi i8 [ %i.aq, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.03.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL40__mlir_ods_local_type_constraint_PtrOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
