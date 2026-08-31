Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestOpsSyntax?download=true
inline.NumInlined: 49754
inline.NumDeleted: 16231
loop-unroll.NumCompletelyUnrolled: 87
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 88
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_ZN4test28FormatCustomDirectiveResults6createERN4mlir9OpBuilderENS1_8LocationENS1_9TypeRangeENS1_10ValueRangeEN4llvm8ArrayRefINS1_14NamedAttributeEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test28FormatCustomDirectiveResults6createERN4mlir20ImplicitLocOpBuilderENS1_9TypeRangeENS1_10ValueRangeEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.185") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.253, i64 36) #28
  call void @_ZN4test28FormatCustomDirectiveResults5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.185") align 8 %5)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #28 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverIN4test28FormatCustomDirectiveResultsEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4test28FormatCustomDirectiveResults5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail46FormatCustomDirectiveResultsGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.185") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %class.anon.2477, align 1           ; 3 uses
  %9 = alloca %class.anon.2479, align 1           ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_ZN4mlir6detail14TypeIDResolverIN4test6detail46FormatCustomDirectiveResultsGenericAdaptorBase10PropertiesEvE2idE, ptr %i.a, align 8, !tbaa !151
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %6, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.b = ptrtoint ptr %8 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesIN4test6detail46FormatCustomDirectiveResultsGenericAdaptorBase10PropertiesEEEvRT_EUlS2_E_EEvlS2_, ptr %i.c, align 8, !tbaa !191
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.b, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.d = ptrtoint ptr %9 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesIN4test6detail46FormatCustomDirectiveResultsGenericAdaptorBase10PropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_, ptr %i.e, align 8, !tbaa !191
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !32 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.g, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %.sroa.2.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #28
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !34
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
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !34
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !34   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !36
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #28
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !34 ; 2 uses
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
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #28
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !127
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !188

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !34
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test28FormatCustomDirectiveResults6createERN4mlir9OpBuilderENS1_8LocationENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail46FormatCustomDirectiveResultsGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.185") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.253, i64 36) #28
  call void @_ZN4test28FormatCustomDirectiveResults5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail46FormatCustomDirectiveResultsGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.185") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverIN4test28FormatCustomDirectiveResultsEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test28FormatCustomDirectiveResults6createERN4mlir20ImplicitLocOpBuilderENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail46FormatCustomDirectiveResultsGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.185") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.253, i64 36) #28
  call void @_ZN4test28FormatCustomDirectiveResults5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail46FormatCustomDirectiveResultsGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.185") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #28 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverIN4test28FormatCustomDirectiveResultsEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4test28FormatCustomDirectiveResults20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !248  ; 6 uses
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.j = zext i32 %i.h to i64
  %.not124 = icmp eq i32 %i.h, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.488.0125 = phi i64 [ %i.r, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %indvars145 = trunc i64 %.sroa.488.0125 to i32
  %i.k = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %.sroa.488.0125) #28
  %i.l = load ptr, ptr %0, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.m, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call fastcc i8 @_ZL47__mlir_ods_local_type_constraint_TestOpsSyntax1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.l, ptr %i.o, ptr nonnull @.str.31, i64 6, i32 noundef %indvars145)
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %.thread114

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i64 %.sroa.488.0125, 1       ; 2 uses
  %.not = icmp eq i64 %i.r, %i.j
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre146 = load i32, ptr %.phi.trans.insert, align 4
  %.pre147 = lshr i32 %.pre146, 23
  %.pre148 = and i32 %.pre147, 1
  %.pre149 = zext nneg i32 %.pre148 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi150 = phi i64 [ %.pre149, %._crit_edge.loopexit ], [ %i.f, %bb.a ]
  %i.s = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.pre-phi150 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !248  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !248
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  %i.z = icmp eq i32 %i.v, 0
  br i1 %i.z, label %_ZN4test28FormatCustomDirectiveResults13getODSResultsEj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.aa = zext i32 %i.v to i64                    ; 2 uses
  %i.ab = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 noundef %i.aa) #28
  br label %_ZN4test28FormatCustomDirectiveResults13getODSResultsEj.exit

_ZN4test28FormatCustomDirectiveResults13getODSResultsEj.exit: ; preds = %._crit_edge, %bb.c
  %.09.lcssa.i28.i = phi i64 [ %i.aa, %bb.c ], [ 0, %._crit_edge ] ; 3 uses
  %i.ac = phi ptr [ %i.ab, %bb.c ], [ %i.y, %._crit_edge ]
  %.09.lcssa.i.tr.i = trunc nuw i64 %.09.lcssa.i28.i to i32
  %.narrow.i = add i32 %i.x, %.09.lcssa.i.tr.i
  %i.ad = zext i32 %.narrow.i to i64              ; 2 uses
  %i.ae = sub nsw i64 %i.ad, %.09.lcssa.i28.i     ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 1
  br i1 %i.af, label %bb.d, label %.preheader

.preheader:                                       ; preds = %_ZN4test28FormatCustomDirectiveResults13getODSResultsEj.exit
  %.not117127 = icmp eq i64 %.09.lcssa.i28.i, %i.ad
  br i1 %.not117127, label %._crit_edge131, label %.lr.ph130.preheader

.lr.ph130.preheader:                              ; preds = %.preheader
  %6 = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef 0) #28
  %7 = load ptr, ptr %0, align 8, !tbaa !40
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.0.copyload.i.i.i.i.i40 = load i64, ptr %8, align 8
  %9 = and i64 %.0.copyload.i.i.i.i.i40, -8
  %10 = inttoptr i64 %9 to ptr
  %11 = tail call fastcc i8 @_ZL47__mlir_ods_local_type_constraint_TestOpsSyntax1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %7, ptr %10, ptr nonnull @.str.31, i64 6, i32 noundef %i.h)
  %12 = trunc nuw i8 %11 to i1
  br i1 %12, label %bb.q, label %.thread114

bb.d:                                             ; preds = %_ZN4test28FormatCustomDirectiveResults13getODSResultsEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ah, align 1, !tbaa !15
  store ptr @.str.66, ptr %5, align 8, !tbaa !18
  store i8 3, ptr %i.ag, align 8, !tbaa !19
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #28
  %i.ai = load ptr, ptr %4, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i32 5, ptr %3, align 8, !tbaa !153
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = zext i32 %i.h to i64
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 9 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !36
  %.not.i.i.i.i.i = icmp ult i32 %i.an, %i.ap
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f, !prof !156

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = zext i32 %i.an to i64
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.at = load i32, ptr %i.am, align 8, !tbaa !34
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.am, align 8, !tbaa !34
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.pr = load ptr, ptr %4, align 8, !tbaa !20
  %.not.i.i32 = icmp eq ptr %.pr, null
  br i1 %.not.i.i32, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i32 3, ptr %2, align 8, !tbaa !153
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.19, ptr %i.av, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !32
  %i.aw = load i32, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.ax = load i32, ptr %i.ao, align 4, !tbaa !36
  %.not.i.i.i.i.i33 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i.i.i.i.i33, label %bb.j, label %bb.i, !prof !156

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = zext i32 %i.aw to i64
  %i.az = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bb = load i32, ptr %i.am, align 8, !tbaa !34
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.am, align 8, !tbaa !34
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.pr104 = load ptr, ptr %4, align 8, !tbaa !20
  %.not.i.i34 = icmp eq ptr %.pr104, null
  br i1 %.not.i.i34, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i32 5, ptr %1, align 8, !tbaa !153
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ae, ptr %i.bd, align 8, !tbaa !18
  %i.be = load i32, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !36
  %.not.i.i.i.i.i35 = icmp ult i32 %i.be, %i.bf
  br i1 %.not.i.i.i.i.i35, label %bb.m, label %bb.l, !prof !156

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.bg = zext i32 %i.be to i64
  %i.bh = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bj = load i32, ptr %i.am, align 8, !tbaa !34
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.am, align 8, !tbaa !34
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i:  ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %bb.d, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i
  %i.bl = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #28
  %i.bm = load ptr, ptr %4, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !29, !range !30, !noundef !31
  %i.bp = trunc nuw i8 %i.bo to i1
  store i8 0, ptr %i.bn, align 8, !tbaa !29
  br i1 %i.bp, label %bb.p, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bq) #28
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.thread114

bb.q:                                             ; preds = %.lr.ph130.preheader
  %i.br = add i32 %i.h, 1
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %bb.q, %.preheader
  %.2.lcssa = phi i32 [ %i.h, %.preheader ], [ %i.br, %bb.q ]
  %i.bs = load ptr, ptr %0, align 8, !tbaa !40    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %.not.i.i.i.i41 = icmp ugt i32 %i.bu, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i41)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bw = lshr i32 %i.bu, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i42 = and i32 %i.bw, 1
  %i.bx = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i42 to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bx ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !248
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !248
  %i.cc = add i32 %i.cb, %i.bz                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !248
  %i.cf = getelementptr inbounds i8, ptr %i.bs, i64 -16 ; 2 uses
  %i.cg = icmp eq i32 %i.cc, 0
  br i1 %i.cg, label %_ZN4test28FormatCustomDirectiveResults13getODSResultsEj.exit55, label %bb.r

bb.r:                                             ; preds = %._crit_edge131
  %i.ch = zext i32 %i.cc to i64                   ; 2 uses
  %i.ci = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 noundef %i.ch) #28
  br label %_ZN4test28FormatCustomDirectiveResults13getODSResultsEj.exit55

_ZN4test28FormatCustomDirectiveResults13getODSResultsEj.exit55: ; preds = %._crit_edge131, %bb.r
  %.09.lcssa.i28.i50 = phi i64 [ %i.ch, %bb.r ], [ 0, %._crit_edge131 ] ; 3 uses
  %i.cj = phi ptr [ %i.ci, %bb.r ], [ %i.cf, %._crit_edge131 ]
  %.09.lcssa.i.tr.i51 = trunc nuw i64 %.09.lcssa.i28.i50 to i32
  %.narrow.i52 = add i32 %i.ce, %.09.lcssa.i.tr.i51
  %i.ck = zext i32 %.narrow.i52 to i64            ; 2 uses
  %i.cl = sub nsw i64 %i.ck, %.09.lcssa.i28.i50
  %.not118133 = icmp eq i64 %.09.lcssa.i28.i50, %i.ck
  br i1 %.not118133, label %.thread114, label %.lr.ph136

.lr.ph136:                                        ; preds = %_ZN4test28FormatCustomDirectiveResults13getODSResultsEj.exit55, %bb.s
  %.4135 = phi i32 [ %i.ct, %bb.s ], [ %.2.lcssa, %_ZN4test28FormatCustomDirectiveResults13getODSResultsEj.exit55 ] ; 2 uses
  %.sroa.4.0134 = phi i64 [ %i.cu, %bb.s ], [ 0, %_ZN4test28FormatCustomDirectiveResults13getODSResultsEj.exit55 ] ; 2 uses
  %i.cm = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 noundef %.sroa.4.0134) #28
  %i.cn = load ptr, ptr %0, align 8, !tbaa !40
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.0.copyload.i.i.i.i.i60 = load i64, ptr %i.co, align 8
  %i.cp = and i64 %.0.copyload.i.i.i.i.i60, -8
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = tail call fastcc i8 @_ZL47__mlir_ods_local_type_constraint_TestOpsSyntax4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.cn, ptr %i.cq, ptr nonnull @.str.31, i64 6, i32 noundef %.4135)
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.s, label %.thread114

bb.s:                                             ; preds = %.lr.ph136
  %i.ct = add i32 %.4135, 1
  %i.cu = add nuw nsw i64 %.sroa.4.0134, 1        ; 2 uses
  %.not118 = icmp eq i64 %i.cu, %i.cl
  br i1 %.not118, label %.thread114, label %.lr.ph136

.thread114:                                       ; preds = %.lr.ph, %bb.s, %.lr.ph136, %.lr.ph130.preheader, %_ZN4test28FormatCustomDirectiveResults13getODSResultsEj.exit55, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.023.11 = phi i8 [ %i.bl, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %.lr.ph130.preheader ], [ 1, %_ZN4test28FormatCustomDirectiveResults13getODSResultsEj.exit55 ], [ 0, %.lr.ph136 ], [ 1, %bb.s ], [ 0, %.lr.ph ]
  ret i8 %.sroa.023.11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4test28FormatCustomDirectiveResults16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4test28FormatCustomDirectiveResults20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4test28FormatCustomDirectiveResults5parseERN4mlir11OpAsmParserERNS1_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #0 align 2 {
bb.a:
  %2 = alloca %class.anon.2473, align 1           ; 3 uses
  %3 = alloca %class.anon.2475, align 1           ; 3 uses
  %4 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %5 = alloca %"class.llvm::SmallVector.313", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SmallVector.313", align 8 ; 9 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr null, ptr %4, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr null, ptr %7, align 8, !tbaa !144
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0) #28, !inline_history !298
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i8 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #28, !inline_history !298
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call i8 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0) #28, !inline_history !298
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 568
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call i8 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #28, !inline_history !298
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = load ptr, ptr %0, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %0) #28, !inline_history !298
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %0, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 296
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #28, !inline_history !298
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = call i8 @_ZN4mlir9AsmParser13parseTypeListERN4llvm15SmallVectorImplINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %6) #28
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZL27parseCustomDirectiveResultsRN4mlir11OpAsmParserERNS_4TypeES3_RN4llvm15SmallVectorImplIS2_EE.exit, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

_ZL27parseCustomDirectiveResultsRN4mlir11OpAsmParserERNS_4TypeES3_RN4llvm15SmallVectorImplIS2_EE.exit: ; preds = %bb.g
  %i.am = load ptr, ptr %0, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 312
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i8 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %0) #28, !inline_history !298
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.h, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.h:                                             ; preds = %_ZL27parseCustomDirectiveResultsRN4mlir11OpAsmParserERNS_4TypeES3_RN4llvm15SmallVectorImplIS2_EE.exit
  %i.ar = load ptr, ptr %7, align 8, !tbaa !144   ; 3 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load i32, ptr %i.b, align 8, !tbaa !34  ; 2 uses
  %i.at = load i32, ptr %i.c, align 4, !tbaa !36
  %.not.i = icmp ult i32 %i.as, %i.at
  br i1 %.not.i, label %bb.k, label %bb.j, !prof !156

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.ar)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.au = zext i32 %i.as to i64
  %i.av = load ptr, ptr %5, align 8, !tbaa !37
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  store ptr %i.ar, ptr %i.aw, align 1
  %i.ax = load i32, ptr %i.b, align 8, !tbaa !34
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.b, align 8, !tbaa !34
  br label %bb.l

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %bb.b, %bb.a, %_ZL27parseCustomDirectiveResultsRN4mlir11OpAsmParserERNS_4TypeES3_RN4llvm15SmallVectorImplIS2_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.critedge

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.az = load ptr, ptr %0, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %0) #28 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.be = load ptr, ptr %0, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 520
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call i8 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.bd) #28
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bj = load i32, ptr %i.b, align 8, !tbaa !34
  %i.bk = load i32, ptr %i.e, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !207 ; 2 uses
  %.not.i23 = icmp eq ptr %i.bm, null
  br i1 %.not.i23, label %bb.n, label %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bo = call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bo, i8 0, i64 12, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverIN4test6detail46FormatCustomDirectiveResultsGenericAdaptorBase10PropertiesEvE2idE, ptr %i.bn, align 8, !tbaa !151
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.bp = ptrtoint ptr %2 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesIN4test6detail46FormatCustomDirectiveResultsGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.bq, align 8, !tbaa !191
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.bp, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.br = ptrtoint ptr %3 to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesIN4test6detail46FormatCustomDirectiveResultsGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.bs, align 8, !tbaa !191
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.br, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit

_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit: ; preds = %bb.m, %bb.n
  %i.bt = phi ptr [ %i.bo, %bb.n ], [ %i.bm, %bb.m ] ; 3 uses
  store i32 1, ptr %i.bt, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bj, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %i.bk, ptr %.sroa.5.0..sroa_idx, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 10 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !34 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !36
  %.not50 = icmp ult i32 %i.bw, %i.by
  br i1 %.not50, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit
  %i.bz = zext i32 %i.bw to i64
  %i.ca = add nuw nsw i64 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull %i.cb, i64 noundef %i.ca, i64 noundef 8) #28
  %.pre8.pre.i.i = load i32, ptr %i.bv, align 8, !tbaa !34
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %bb.o, %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit
  %.pre8.i.i = phi i32 [ %i.bw, %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit ], [ %.pre8.pre.i.i, %bb.o ]
  %i.cc = load ptr, ptr %i.bu, align 8, !tbaa !37
  %i.cd = zext i32 %.pre8.i.i to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i64, ptr %4, align 8
  store i64 %i.cf, ptr %i.ce, align 1
end_hunk_0
begin_hunk_1_@_ZN4test40FormatCustomDirectiveResultsWithTypeRefs6createERN4mlir9OpBuilderENS1_8LocationENS1_9TypeRangeENS1_10ValueRangeEN4llvm8ArrayRefINS1_14NamedAttributeEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test40FormatCustomDirectiveResultsWithTypeRefs6createERN4mlir20ImplicitLocOpBuilderENS1_9TypeRangeENS1_10ValueRangeEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.185") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.254, i64 51) #28
  call void @_ZN4test40FormatCustomDirectiveResultsWithTypeRefs5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.185") align 8 %5)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #28 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverIN4test40FormatCustomDirectiveResultsWithTypeRefsEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4test40FormatCustomDirectiveResultsWithTypeRefs5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail58FormatCustomDirectiveResultsWithTypeRefsGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.185") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %class.anon.2485, align 1           ; 3 uses
  %9 = alloca %class.anon.2487, align 1           ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_ZN4mlir6detail14TypeIDResolverIN4test6detail58FormatCustomDirectiveResultsWithTypeRefsGenericAdaptorBase10PropertiesEvE2idE, ptr %i.a, align 8, !tbaa !151
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %6, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.b = ptrtoint ptr %8 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesIN4test6detail58FormatCustomDirectiveResultsWithTypeRefsGenericAdaptorBase10PropertiesEEEvRT_EUlS2_E_EEvlS2_, ptr %i.c, align 8, !tbaa !191
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.b, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.d = ptrtoint ptr %9 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesIN4test6detail58FormatCustomDirectiveResultsWithTypeRefsGenericAdaptorBase10PropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_, ptr %i.e, align 8, !tbaa !191
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !32 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.g, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %.sroa.2.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #28
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !34
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
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !34
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !34   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !36
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #28
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !34 ; 2 uses
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
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #28
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !127
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !188

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !34
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test40FormatCustomDirectiveResultsWithTypeRefs6createERN4mlir9OpBuilderENS1_8LocationENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail58FormatCustomDirectiveResultsWithTypeRefsGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.185") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.254, i64 51) #28
  call void @_ZN4test40FormatCustomDirectiveResultsWithTypeRefs5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail58FormatCustomDirectiveResultsWithTypeRefsGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.185") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverIN4test40FormatCustomDirectiveResultsWithTypeRefsEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test40FormatCustomDirectiveResultsWithTypeRefs6createERN4mlir20ImplicitLocOpBuilderENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail58FormatCustomDirectiveResultsWithTypeRefsGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.185") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.254, i64 51) #28
  call void @_ZN4test40FormatCustomDirectiveResultsWithTypeRefs5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail58FormatCustomDirectiveResultsWithTypeRefsGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.185") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #28 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverIN4test40FormatCustomDirectiveResultsWithTypeRefsEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4test40FormatCustomDirectiveResultsWithTypeRefs20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !248  ; 6 uses
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.j = zext i32 %i.h to i64
  %.not124 = icmp eq i32 %i.h, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.488.0125 = phi i64 [ %i.r, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %indvars145 = trunc i64 %.sroa.488.0125 to i32
  %i.k = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %.sroa.488.0125) #28
  %i.l = load ptr, ptr %0, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.m, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call fastcc i8 @_ZL47__mlir_ods_local_type_constraint_TestOpsSyntax1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.l, ptr %i.o, ptr nonnull @.str.31, i64 6, i32 noundef %indvars145)
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %.thread114

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i64 %.sroa.488.0125, 1       ; 2 uses
  %.not = icmp eq i64 %i.r, %i.j
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre146 = load i32, ptr %.phi.trans.insert, align 4
  %.pre147 = lshr i32 %.pre146, 23
  %.pre148 = and i32 %.pre147, 1
  %.pre149 = zext nneg i32 %.pre148 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi150 = phi i64 [ %.pre149, %._crit_edge.loopexit ], [ %i.f, %bb.a ]
  %i.s = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.pre-phi150 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !248  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !248
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  %i.z = icmp eq i32 %i.v, 0
  br i1 %i.z, label %_ZN4test40FormatCustomDirectiveResultsWithTypeRefs13getODSResultsEj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.aa = zext i32 %i.v to i64                    ; 2 uses
  %i.ab = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 noundef %i.aa) #28
  br label %_ZN4test40FormatCustomDirectiveResultsWithTypeRefs13getODSResultsEj.exit

_ZN4test40FormatCustomDirectiveResultsWithTypeRefs13getODSResultsEj.exit: ; preds = %._crit_edge, %bb.c
  %.09.lcssa.i28.i = phi i64 [ %i.aa, %bb.c ], [ 0, %._crit_edge ] ; 3 uses
  %i.ac = phi ptr [ %i.ab, %bb.c ], [ %i.y, %._crit_edge ]
  %.09.lcssa.i.tr.i = trunc nuw i64 %.09.lcssa.i28.i to i32
  %.narrow.i = add i32 %i.x, %.09.lcssa.i.tr.i
  %i.ad = zext i32 %.narrow.i to i64              ; 2 uses
  %i.ae = sub nsw i64 %i.ad, %.09.lcssa.i28.i     ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 1
  br i1 %i.af, label %bb.d, label %.preheader

.preheader:                                       ; preds = %_ZN4test40FormatCustomDirectiveResultsWithTypeRefs13getODSResultsEj.exit
  %.not117127 = icmp eq i64 %.09.lcssa.i28.i, %i.ad
  br i1 %.not117127, label %._crit_edge131, label %.lr.ph130.preheader

.lr.ph130.preheader:                              ; preds = %.preheader
  %6 = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef 0) #28
  %7 = load ptr, ptr %0, align 8, !tbaa !40
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.0.copyload.i.i.i.i.i40 = load i64, ptr %8, align 8
  %9 = and i64 %.0.copyload.i.i.i.i.i40, -8
  %10 = inttoptr i64 %9 to ptr
  %11 = tail call fastcc i8 @_ZL47__mlir_ods_local_type_constraint_TestOpsSyntax1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %7, ptr %10, ptr nonnull @.str.31, i64 6, i32 noundef %i.h)
  %12 = trunc nuw i8 %11 to i1
  br i1 %12, label %bb.q, label %.thread114

bb.d:                                             ; preds = %_ZN4test40FormatCustomDirectiveResultsWithTypeRefs13getODSResultsEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ah, align 1, !tbaa !15
  store ptr @.str.66, ptr %5, align 8, !tbaa !18
  store i8 3, ptr %i.ag, align 8, !tbaa !19
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #28
  %i.ai = load ptr, ptr %4, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i32 5, ptr %3, align 8, !tbaa !153
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = zext i32 %i.h to i64
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 9 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !36
  %.not.i.i.i.i.i = icmp ult i32 %i.an, %i.ap
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f, !prof !156

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = zext i32 %i.an to i64
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.at = load i32, ptr %i.am, align 8, !tbaa !34
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.am, align 8, !tbaa !34
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.pr = load ptr, ptr %4, align 8, !tbaa !20
  %.not.i.i32 = icmp eq ptr %.pr, null
  br i1 %.not.i.i32, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i32 3, ptr %2, align 8, !tbaa !153
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.19, ptr %i.av, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !32
  %i.aw = load i32, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.ax = load i32, ptr %i.ao, align 4, !tbaa !36
  %.not.i.i.i.i.i33 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i.i.i.i.i33, label %bb.j, label %bb.i, !prof !156

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = zext i32 %i.aw to i64
  %i.az = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bb = load i32, ptr %i.am, align 8, !tbaa !34
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.am, align 8, !tbaa !34
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.pr104 = load ptr, ptr %4, align 8, !tbaa !20
  %.not.i.i34 = icmp eq ptr %.pr104, null
  br i1 %.not.i.i34, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i32 5, ptr %1, align 8, !tbaa !153
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ae, ptr %i.bd, align 8, !tbaa !18
  %i.be = load i32, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !36
  %.not.i.i.i.i.i35 = icmp ult i32 %i.be, %i.bf
  br i1 %.not.i.i.i.i.i35, label %bb.m, label %bb.l, !prof !156

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.bg = zext i32 %i.be to i64
  %i.bh = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bj = load i32, ptr %i.am, align 8, !tbaa !34
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.am, align 8, !tbaa !34
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i:  ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %bb.d, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i
  %i.bl = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #28
  %i.bm = load ptr, ptr %4, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !29, !range !30, !noundef !31
  %i.bp = trunc nuw i8 %i.bo to i1
  store i8 0, ptr %i.bn, align 8, !tbaa !29
  br i1 %i.bp, label %bb.p, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bq) #28
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.thread114

bb.q:                                             ; preds = %.lr.ph130.preheader
  %i.br = add i32 %i.h, 1
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %bb.q, %.preheader
  %.2.lcssa = phi i32 [ %i.h, %.preheader ], [ %i.br, %bb.q ]
  %i.bs = load ptr, ptr %0, align 8, !tbaa !40    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %.not.i.i.i.i41 = icmp ugt i32 %i.bu, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i41)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bw = lshr i32 %i.bu, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i42 = and i32 %i.bw, 1
  %i.bx = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i42 to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bx ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !248
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !248
  %i.cc = add i32 %i.cb, %i.bz                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !248
  %i.cf = getelementptr inbounds i8, ptr %i.bs, i64 -16 ; 2 uses
  %i.cg = icmp eq i32 %i.cc, 0
  br i1 %i.cg, label %_ZN4test40FormatCustomDirectiveResultsWithTypeRefs13getODSResultsEj.exit55, label %bb.r

bb.r:                                             ; preds = %._crit_edge131
  %i.ch = zext i32 %i.cc to i64                   ; 2 uses
  %i.ci = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 noundef %i.ch) #28
  br label %_ZN4test40FormatCustomDirectiveResultsWithTypeRefs13getODSResultsEj.exit55

_ZN4test40FormatCustomDirectiveResultsWithTypeRefs13getODSResultsEj.exit55: ; preds = %._crit_edge131, %bb.r
  %.09.lcssa.i28.i50 = phi i64 [ %i.ch, %bb.r ], [ 0, %._crit_edge131 ] ; 3 uses
  %i.cj = phi ptr [ %i.ci, %bb.r ], [ %i.cf, %._crit_edge131 ]
  %.09.lcssa.i.tr.i51 = trunc nuw i64 %.09.lcssa.i28.i50 to i32
  %.narrow.i52 = add i32 %i.ce, %.09.lcssa.i.tr.i51
  %i.ck = zext i32 %.narrow.i52 to i64            ; 2 uses
  %i.cl = sub nsw i64 %i.ck, %.09.lcssa.i28.i50
  %.not118133 = icmp eq i64 %.09.lcssa.i28.i50, %i.ck
  br i1 %.not118133, label %.thread114, label %.lr.ph136

.lr.ph136:                                        ; preds = %_ZN4test40FormatCustomDirectiveResultsWithTypeRefs13getODSResultsEj.exit55, %bb.s
  %.4135 = phi i32 [ %i.ct, %bb.s ], [ %.2.lcssa, %_ZN4test40FormatCustomDirectiveResultsWithTypeRefs13getODSResultsEj.exit55 ] ; 2 uses
  %.sroa.4.0134 = phi i64 [ %i.cu, %bb.s ], [ 0, %_ZN4test40FormatCustomDirectiveResultsWithTypeRefs13getODSResultsEj.exit55 ] ; 2 uses
  %i.cm = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 noundef %.sroa.4.0134) #28
  %i.cn = load ptr, ptr %0, align 8, !tbaa !40
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.0.copyload.i.i.i.i.i60 = load i64, ptr %i.co, align 8
  %i.cp = and i64 %.0.copyload.i.i.i.i.i60, -8
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = tail call fastcc i8 @_ZL47__mlir_ods_local_type_constraint_TestOpsSyntax4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.cn, ptr %i.cq, ptr nonnull @.str.31, i64 6, i32 noundef %.4135)
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.s, label %.thread114

bb.s:                                             ; preds = %.lr.ph136
  %i.ct = add i32 %.4135, 1
  %i.cu = add nuw nsw i64 %.sroa.4.0134, 1        ; 2 uses
  %.not118 = icmp eq i64 %i.cu, %i.cl
  br i1 %.not118, label %.thread114, label %.lr.ph136

.thread114:                                       ; preds = %.lr.ph, %bb.s, %.lr.ph136, %.lr.ph130.preheader, %_ZN4test40FormatCustomDirectiveResultsWithTypeRefs13getODSResultsEj.exit55, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.023.11 = phi i8 [ %i.bl, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %.lr.ph130.preheader ], [ 1, %_ZN4test40FormatCustomDirectiveResultsWithTypeRefs13getODSResultsEj.exit55 ], [ 0, %.lr.ph136 ], [ 1, %bb.s ], [ 0, %.lr.ph ]
  ret i8 %.sroa.023.11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4test40FormatCustomDirectiveResultsWithTypeRefs16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4test40FormatCustomDirectiveResultsWithTypeRefs20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4test40FormatCustomDirectiveResultsWithTypeRefs5parseERN4mlir11OpAsmParserERNS1_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #0 align 2 {
bb.a:
  %2 = alloca %class.anon.2481, align 1           ; 3 uses
  %3 = alloca %class.anon.2483, align 1           ; 3 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %7 = alloca %"class.llvm::SmallVector.313", align 8 ; 9 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.llvm::SmallVector.313", align 8 ; 11 uses
  %10 = alloca %"class.llvm::SmallVector.313", align 8 ; 10 uses
  %11 = alloca %"class.mlir::Type", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr null, ptr %8, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.a, ptr %9, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store i32 0, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.d, ptr %10, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store ptr null, ptr %11, align 8, !tbaa !144
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0) #28, !inline_history !298
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i8 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #28, !inline_history !298
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call i8 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0) #28, !inline_history !298
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 568
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call i8 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #28, !inline_history !298
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = load ptr, ptr %0, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %0) #28, !inline_history !298
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %0, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 296
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #28, !inline_history !298
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = call i8 @_ZN4mlir9AsmParser13parseTypeListERN4llvm15SmallVectorImplINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %10) #28
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZL27parseCustomDirectiveResultsRN4mlir11OpAsmParserERNS_4TypeES3_RN4llvm15SmallVectorImplIS2_EE.exit, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

_ZL27parseCustomDirectiveResultsRN4mlir11OpAsmParserERNS_4TypeES3_RN4llvm15SmallVectorImplIS2_EE.exit: ; preds = %bb.g
  %i.am = load ptr, ptr %0, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 312
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i8 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %0) #28, !inline_history !298
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.h, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.h:                                             ; preds = %_ZL27parseCustomDirectiveResultsRN4mlir11OpAsmParserERNS_4TypeES3_RN4llvm15SmallVectorImplIS2_EE.exit
  %i.ar = load ptr, ptr %11, align 8, !tbaa !144  ; 3 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %thread-pre-split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load i32, ptr %i.b, align 8, !tbaa !34  ; 2 uses
  %i.at = load i32, ptr %i.c, align 4, !tbaa !36
  %.not.i = icmp ult i32 %i.as, %i.at
  br i1 %.not.i, label %bb.k, label %bb.j, !prof !156

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %i.ar)
  br label %thread-pre-split

bb.k:                                             ; preds = %bb.i
  %i.au = zext i32 %i.as to i64
  %i.av = load ptr, ptr %9, align 8, !tbaa !37
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  store ptr %i.ar, ptr %i.aw, align 1
  %i.ax = load i32, ptr %i.b, align 8, !tbaa !34
  %i.ay = add i32 %i.ax, 1                        ; 2 uses
  store i32 %i.ay, ptr %i.b, align 8, !tbaa !34
  br label %bb.l

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %bb.b, %bb.a, %_ZL27parseCustomDirectiveResultsRN4mlir11OpAsmParserERNS_4TypeES3_RN4llvm15SmallVectorImplIS2_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %_ZL32parseCustomDirectiveWithTypeRefsRN4mlir11OpAsmParserENS_4TypeES2_RKN4llvm15SmallVectorImplIS2_EE.exit.thread

thread-pre-split:                                 ; preds = %bb.j, %bb.h
  %.pr = load i32, ptr %i.b, align 8, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split, %bb.k
  %i.az = phi i32 [ %.pr, %thread-pre-split ], [ %i.ay, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %.not.i31 = icmp eq i32 %i.az, 0
  br i1 %.not.i31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %9, align 8, !tbaa !37
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !127
  %i.bc = inttoptr i64 %i.bb to ptr
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.056.0 = phi ptr [ %i.bc, %bb.m ], [ null, %bb.l ]
  %.sroa.012.0.copyload = load ptr, ptr %8, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.bd, align 8
  %i.be = load ptr, ptr %0, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 416
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call i8 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.255, i64 17, ptr noundef nonnull align 8 dereferenceable(34) %4) #28, !inline_history !306
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.o, label %_ZL32parseCustomDirectiveWithTypeRefsRN4mlir11OpAsmParserENS_4TypeES2_RKN4llvm15SmallVectorImplIS2_EE.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr null, ptr %5, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr null, ptr %6, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.bj, ptr %7, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.bk, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 1, ptr %i.bl, align 4, !tbaa !36
  %i.bm = load ptr, ptr %0, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call i8 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %0) #28, !inline_history !307
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.p, label %_ZNK4llvm15SmallVectorImplIN4mlir4TypeEEneERKS3_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %0, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 568
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call i8 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !307
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.q, label %_ZNK4llvm15SmallVectorImplIN4mlir4TypeEEneERKS3_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %0, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call i8 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %0) #28, !inline_history !307
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr %0, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 568
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call i8 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #28, !inline_history !307
end_hunk_1
