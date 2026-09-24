Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestTilingInterfaceTransformOps?download=true
inline.NumInlined: 14007
inline.NumDeleted: 5873
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4mlir9transform18TestFuseAndYieldOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail36TestFuseAndYieldOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #27
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !252
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !13

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform18TestFuseAndYieldOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail36TestFuseAndYieldOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.527") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.68, i64 29) #27
  call void @_ZN4mlir9transform18TestFuseAndYieldOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail36TestFuseAndYieldOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.527") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !186
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform18TestFuseAndYieldOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform18TestFuseAndYieldOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail36TestFuseAndYieldOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.527") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.68, i64 29) #27
  call void @_ZN4mlir9transform18TestFuseAndYieldOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail36TestFuseAndYieldOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.527") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !238
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform18TestFuseAndYieldOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform18TestFuseAndYieldOp25populateDefaultPropertiesENS_13OperationNameERNS0_6detail36TestFuseAndYieldOpGenericAdaptorBase10PropertiesE(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %3 = alloca %"class.mlir::Builder", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.b = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store ptr %i.b, ptr %3, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr null, i64 0) #27
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !50
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr null, i64 0) #27
  store ptr %i.i, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = call ptr @_ZN4mlir7Builder11getBoolAttrEb(ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false) #27
  store ptr %i.m, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

declare ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform18TestFuseAndYieldOp20verifyInvariantsImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.804, align 8            ; 4 uses
  %2 = alloca %class.anon.803, align 8            ; 4 uses
  %3 = alloca %class.anon.803, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %.sroa.037.0.copyload = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.036.0.copyload = load ptr, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.035.0.copyload = load ptr, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.a, ptr %3, align 8, !tbaa !257
  %i.j = ptrtoint ptr %3 to i64
  %i.k = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.036.0.copyload, ptr nonnull @.str.16, i64 10, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %.thread105

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.m, ptr %2, align 8, !tbaa !257
  %i.n = ptrtoint ptr %2 to i64
  %i.o = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.037.0.copyload, ptr nonnull @.str.14, i64 16, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %.thread105

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr %i.q, ptr %1, align 8, !tbaa !259
  %i.r = ptrtoint ptr %1 to i64
  %i.s = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps2N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.035.0.copyload, ptr nonnull @.str.18, i64 10, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps2PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4mlir9transform18TestFuseAndYieldOp14getODSOperandsEj.exit, label %.thread105

_ZN4mlir9transform18TestFuseAndYieldOp14getODSOperandsEj.exit: ; preds = %bb.c
  %i.u = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.y, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.u, ptr %i.aa, ptr nonnull @.str.21, i64 7, i32 noundef 0)
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %.thread105

bb.d:                                             ; preds = %_ZN4mlir9transform18TestFuseAndYieldOp14getODSOperandsEj.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !47
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.af = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef 0) #27
  %i.ag = load ptr, ptr %0, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.0.copyload.i.i.i.i.i58 = load i64, ptr %i.ah, align 8
  %i.ai = and i64 %.0.copyload.i.i.i.i.i58, -8
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.ag, ptr %i.aj, ptr nonnull @.str.22, i64 6, i32 noundef 0)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN4mlir9transform18TestFuseAndYieldOp13getODSResultsEj.exit, label %.thread105

_ZN4mlir9transform18TestFuseAndYieldOp13getODSResultsEj.exit: ; preds = %bb.d
  %i.am = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !152 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -16
  %i.aq = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 noundef 1) #27
  %.not120128 = icmp eq i32 %i.ao, 1
  br i1 %.not120128, label %.thread105, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4mlir9transform18TestFuseAndYieldOp13getODSResultsEj.exit
  %4 = zext i32 %i.ao to i64
  %5 = add nsw i64 %4, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.2130 = phi i32 [ %i.ay, %bb.e ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4.0129 = phi i64 [ %i.az, %bb.e ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ar = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 noundef %.sroa.4.0129) #27
  %i.as = load ptr, ptr %0, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.copyload.i.i.i.i.i66 = load i64, ptr %i.at, align 8
  %i.au = and i64 %.0.copyload.i.i.i.i.i66, -8
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.as, ptr %i.av, ptr nonnull @.str.22, i64 6, i32 noundef %.2130)
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %.thread105

bb.e:                                             ; preds = %.lr.ph
  %i.ay = add i32 %.2130, 1
  %i.az = add nuw nsw i64 %.sroa.4.0129, 1
  %.not120 = icmp eq i64 %.sroa.4.0129, %5
  br i1 %.not120, label %.thread105, label %.lr.ph

.thread105:                                       ; preds = %.lr.ph, %bb.e, %_ZN4mlir9transform18TestFuseAndYieldOp14getODSOperandsEj.exit, %bb.d, %_ZN4mlir9transform18TestFuseAndYieldOp13getODSResultsEj.exit, %bb.c, %bb.b, %bb.a
  %.sroa.039.10 = phi i8 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %_ZN4mlir9transform18TestFuseAndYieldOp14getODSOperandsEj.exit ], [ 1, %_ZN4mlir9transform18TestFuseAndYieldOp13getODSResultsEj.exit ], [ 0, %.lr.ph ], [ 1, %bb.e ]
  ret i8 %.sroa.039.10
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !262    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !263

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #27
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 45) #27
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #27
  br label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !246 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.k = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1    ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.k ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !246
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !15

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !238
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.t, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread

_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !265
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.t

_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.d, %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 5, ptr %i.w, align 8, !tbaa !105
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !103
  store ptr %2, ptr %10, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %3, ptr %i.y, align 8, !tbaa !104
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %10) #27
  %i.z = load ptr, ptr %9, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store i32 3, ptr %8, align 8, !tbaa !233
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.69, ptr %i.ab, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 12 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f, !prof !121

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.pr = load ptr, ptr %9, align 8, !tbaa !113
  %.not.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i4, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store i32 5, ptr %7, align 8, !tbaa !233
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = zext i32 %4 to i64
  store i64 %i.am, ptr %i.al, align 8, !tbaa !104
  %i.an = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.ao = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i5 = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i.i.i.i.i5, label %bb.j, label %bb.i, !prof !121

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ap = zext i32 %i.an to i64
  %i.aq = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.as = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %.pr12 = load ptr, ptr %9, align 8, !tbaa !113
  %.not.i.i6 = icmp eq ptr %.pr12, null
  br i1 %.not.i.i6, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i32 3, ptr %6, align 8, !tbaa !233
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.70, ptr %i.au, align 8, !tbaa !235
  %.sroa.2.0..sroa_idx.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 56, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i7, align 8, !tbaa !57
  %i.av = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.aw = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i8 = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i.i.i.i.i8, label %bb.m, label %bb.l, !prof !121

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit

bb.m:                                             ; preds = %bb.k
  %i.ax = zext i32 %i.av to i64
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.ba = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.pr14.pr = load ptr, ptr %9, align 8, !tbaa !113
  %.not.i.i9 = icmp eq ptr %.pr14.pr, null
  br i1 %.not.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %1) #27
  %i.bc = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.bd = load i32, ptr %i.ae, align 4, !tbaa !54
  %.not.i.i.i.i.i10 = icmp ult i32 %i.bc, %i.bd
  br i1 %.not.i.i.i.i.i10, label %bb.p, label %bb.o, !prof !121

bb.o:                                             ; preds = %bb.n
end_hunk_0
begin_hunk_1_@_ZN4mlir9transform18TestFuseConsumerOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail36TestFuseConsumerOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  %9 = alloca %class.anon.1212, align 1           ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail36TestFuseConsumerOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.a, align 8, !tbaa !246
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %6, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.b = ptrtoint ptr %8 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesINS1_9transform6detail36TestFuseConsumerOpGenericAdaptorBase10PropertiesEEEvRT_EUlS2_E_EEvlS2_, ptr %i.c, align 8, !tbaa !123
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.b, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.d = ptrtoint ptr %9 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesINS1_9transform6detail36TestFuseConsumerOpGenericAdaptorBase10PropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_, ptr %i.e, align 8, !tbaa !123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !254
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !57 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.g, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %.sroa.2.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !54
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #27
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !53
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.r = zext i32 %.pre8.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !53
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !53   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !54
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #27
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !53 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #27
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !252
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !13

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform18TestFuseConsumerOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail36TestFuseConsumerOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.527") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.74, i64 28) #27
  call void @_ZN4mlir9transform18TestFuseConsumerOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail36TestFuseConsumerOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.527") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !186
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform18TestFuseConsumerOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform18TestFuseConsumerOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail36TestFuseConsumerOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.527") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.74, i64 28) #27
  call void @_ZN4mlir9transform18TestFuseConsumerOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail36TestFuseConsumerOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.527") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !238
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform18TestFuseConsumerOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform18TestFuseConsumerOp20verifyInvariantsImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.807, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.040.0.copyload = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr %i.a, ptr %1, align 8, !tbaa !291
  %i.h = ptrtoint ptr %1 to i64
  %i.i = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps3N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.040.0.copyload, ptr nonnull @.str.28, i64 21, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps3PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir9transform18TestFuseConsumerOp14getODSOperandsEj.exit, label %.thread140

_ZN4mlir9transform18TestFuseConsumerOp14getODSOperandsEj.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.k, ptr %i.q, ptr nonnull @.str.21, i64 7, i32 noundef 0)
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %.thread140

.lr.ph.i.i.preheader:                             ; preds = %_ZN4mlir9transform18TestFuseConsumerOp14getODSOperandsEj.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 8388608
  %.not.i.i.i53 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i53, label %.lr.ph.preheader, label %_ZN4mlir9transform18TestFuseConsumerOp14getODSOperandsEj.exit57, !prof !117

_ZN4mlir9transform18TestFuseConsumerOp14getODSOperandsEj.exit57: ; preds = %.lr.ph.i.i.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !118  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !94
  %i.ab = zext i32 %i.y to i64
  %.not158168 = icmp eq i32 %i.y, 1
  br i1 %.not158168, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.preheader, %_ZN4mlir9transform18TestFuseConsumerOp14getODSOperandsEj.exit57
  %2 = phi i64 [ %i.ab, %_ZN4mlir9transform18TestFuseConsumerOp14getODSOperandsEj.exit57 ], [ 0, %.lr.ph.i.i.preheader ]
  %.sroa.0.0.i.i.i.i54188 = phi ptr [ %i.aa, %_ZN4mlir9transform18TestFuseConsumerOp14getODSOperandsEj.exit57 ], [ null, %.lr.ph.i.i.preheader ]
  %3 = add nsw i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.245170 = phi i32 [ %i.ak, %bb.b ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4114.0169 = phi i64 [ %i.al, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i54188, i64 %.sroa.4114.0169
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.sroa.0.0.copyload.i.i.i62 = load ptr, ptr %i.ad, align 8, !tbaa !96
  %i.ae = load ptr, ptr %0, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i62, i64 8
  %.0.copyload.i.i.i.i.i63 = load i64, ptr %i.af, align 8
  %i.ag = and i64 %.0.copyload.i.i.i.i.i63, -8
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.ae, ptr %i.ah, ptr nonnull @.str.21, i64 7, i32 noundef %.245170)
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.b, label %.thread140

bb.b:                                             ; preds = %.lr.ph
  %i.ak = add i32 %.245170, 1
  %i.al = add nuw nsw i64 %.sroa.4114.0169, 1
  %.not158 = icmp eq i64 %.sroa.4114.0169, %3
  br i1 %.not158, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4mlir9transform18TestFuseConsumerOp14getODSOperandsEj.exit57
  %i.am = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.t, %_ZN4mlir9transform18TestFuseConsumerOp14getODSOperandsEj.exit57 ]
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -16
  %i.ao = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 noundef 0) #27
  %i.ap = load ptr, ptr %0, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.0.copyload.i.i.i.i.i72 = load i64, ptr %i.aq, align 8
  %i.ar = and i64 %.0.copyload.i.i.i.i.i72, -8
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.ap, ptr %i.as, ptr nonnull @.str.22, i64 6, i32 noundef 0)
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN4mlir9transform18TestFuseConsumerOp13getODSResultsEj.exit, label %.thread140

_ZN4mlir9transform18TestFuseConsumerOp13getODSResultsEj.exit: ; preds = %._crit_edge
  %i.av = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !152 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 -16
  %i.az = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 noundef 1) #27
  %.not160173 = icmp eq i32 %i.ax, 1
  br i1 %.not160173, label %.thread140, label %.lr.ph176.preheader

.lr.ph176.preheader:                              ; preds = %_ZN4mlir9transform18TestFuseConsumerOp13getODSResultsEj.exit
  %4 = zext i32 %i.ax to i64
  %5 = add nsw i64 %4, -2
  br label %.lr.ph176

.lr.ph176:                                        ; preds = %.lr.ph176.preheader, %bb.c
  %.248175 = phi i32 [ %i.bh, %bb.c ], [ 1, %.lr.ph176.preheader ] ; 2 uses
  %.sroa.4.0174 = phi i64 [ %i.bi, %bb.c ], [ 0, %.lr.ph176.preheader ] ; 3 uses
  %i.ba = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 noundef %.sroa.4.0174) #27
  %i.bb = load ptr, ptr %0, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.0.copyload.i.i.i.i.i88 = load i64, ptr %i.bc, align 8
  %i.bd = and i64 %.0.copyload.i.i.i.i.i88, -8
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bb, ptr %i.be, ptr nonnull @.str.22, i64 6, i32 noundef %.248175)
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.c, label %.thread140

bb.c:                                             ; preds = %.lr.ph176
  %i.bh = add i32 %.248175, 1
  %i.bi = add nuw nsw i64 %.sroa.4.0174, 1
  %.not160 = icmp eq i64 %.sroa.4.0174, %5
  br i1 %.not160, label %.thread140, label %.lr.ph176

.thread140:                                       ; preds = %.lr.ph, %.lr.ph176, %bb.c, %_ZN4mlir9transform18TestFuseConsumerOp14getODSOperandsEj.exit, %._crit_edge, %_ZN4mlir9transform18TestFuseConsumerOp13getODSResultsEj.exit, %bb.a
  %.sroa.042.14 = phi i8 [ 0, %._crit_edge ], [ 0, %_ZN4mlir9transform18TestFuseConsumerOp14getODSOperandsEj.exit ], [ 1, %bb.c ], [ 0, %bb.a ], [ 1, %_ZN4mlir9transform18TestFuseConsumerOp13getODSResultsEj.exit ], [ 0, %.lr.ph176 ], [ 0, %.lr.ph ]
  ret i8 %.sroa.042.14
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform18TestFuseConsumerOp16verifyInvariantsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::DenseArrayAttrImpl", align 8 ; 4 uses
  %2 = alloca %"class.mlir::detail::DenseArrayAttrImpl", align 8 ; 4 uses
  %3 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  %i.a = tail call i8 @_ZN4mlir9transform18TestFuseConsumerOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i32 %i.e, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = lshr i32 %i.e, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 2 uses
  store ptr %i.j, ptr %1, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #27
  store ptr %i.m, ptr %3, align 8, !tbaa !61
  %i.n = call ptr @_ZN4mlir7Builder20getDenseI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr null, i64 0) #27
  store ptr %i.n, ptr %2, align 8
  %i.o = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN4mlir9transform18TestFuseConsumerOp6verifyEv.exit

bb.d:                                             ; preds = %bb.b
  %i.p = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  br label %_ZN4mlir9transform18TestFuseConsumerOp6verifyEv.exit

_ZN4mlir9transform18TestFuseConsumerOp6verifyEv.exit: ; preds = %bb.c, %bb.d
  %.pn.i.i = phi { ptr, i64 } [ %i.o, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.q = extractvalue { ptr, i64 } %.pn.i.i, 0
  %i.r = extractvalue { ptr, i64 } %.pn.i.i, 1
  %i.s = call i8 @_ZN4mlir25verifyInnerTileAlignmentsEPNS_9OperationEN4llvm8ArrayRefIlEE(ptr noundef nonnull %i.c, ptr %i.q, i64 %i.r) #27
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir9transform18TestFuseConsumerOp6verifyEv.exit, %bb.a
  br label %bb.f

bb.f:                                             ; preds = %_ZN4mlir9transform18TestFuseConsumerOp6verifyEv.exit, %bb.e
  %.sroa.02.0 = phi i8 [ 0, %bb.e ], [ 1, %_ZN4mlir9transform18TestFuseConsumerOp6verifyEv.exit ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform18TestFuseConsumerOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %3 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %4 = alloca %"class.llvm::ArrayRef.581", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SmallVector.621", align 8 ; 9 uses
  %6 = alloca %"class.mlir::detail::DenseArrayAttrImpl", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.572", align 8 ; 6 uses
  %8 = alloca %"class.llvm::SMLoc", align 8       ; 5 uses
  %9 = alloca %class.anon.626, align 8            ; 6 uses
  %10 = alloca %"class.mlir::FunctionType", align 8 ; 6 uses
  %11 = alloca %"class.llvm::detail::concat_range", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %3, ptr %4, align 8, !tbaa !268
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr null, ptr %6, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %0, align 8, !tbaa !174
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0) #27 ; 0 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !174
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 736
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call i8 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %3, i1 noundef zeroext true) #27
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i16 257, ptr %i.n, align 8
  %i.o = load ptr, ptr %0, align 8, !tbaa !174
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 416
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call i8 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.30, i64 4, ptr noundef nonnull align 8 dereferenceable(34) %2) #27, !inline_history !21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %0, align 8, !tbaa !174
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call i8 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %0, align 8, !tbaa !174
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %0) #27 ; 0 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !174
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 752
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0, i1 noundef zeroext true, i32 noundef -1) #27
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %0, align 8, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 312
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call i8 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %0, align 8, !tbaa !174
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 424
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i8 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.28, i64 21) #27
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %0, align 8, !tbaa !174
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i8 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aw = call i8 @_ZN4mlir28parseInnerTileAlignmentArrayERNS_11OpAsmParserERNS_6detail18DenseArrayAttrImplIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %6, align 8, !tbaa !50
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail36TestFuseConsumerOpGenericAdaptorBase10PropertiesEEERT_v(ptr noundef nonnull align 8 dereferenceable(304) %1)
  %i.ba = load i64, ptr %6, align 8
  store i64 %i.ba, ptr %i.az, align 8
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.bb = load ptr, ptr %0, align 8, !tbaa !174
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  store ptr %i.be, ptr %8, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !174
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 520
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call i8 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.bf) #27
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.011.0.copyload = load ptr, ptr %i.bl, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
end_hunk_1
begin_hunk_2_@_ZN4mlir9transform21TestFuseUsingForallOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  store i32 %i.v, ptr %i.h, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !53   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !54
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #27
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !53 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #27
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !252
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !13

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform21TestFuseUsingForallOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.527") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.86, i64 32) #27
  call void @_ZN4mlir9transform21TestFuseUsingForallOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.527") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !186
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform21TestFuseUsingForallOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform21TestFuseUsingForallOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.527") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.86, i64 32) #27
  call void @_ZN4mlir9transform21TestFuseUsingForallOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.527") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !238
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform21TestFuseUsingForallOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform21TestFuseUsingForallOp25populateDefaultPropertiesENS_13OperationNameERNS0_6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesE(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %3 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.b = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store ptr %i.b, ptr %3, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr null, i64 0) #27
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform21TestFuseUsingForallOp20verifyInvariantsImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.816, align 8            ; 4 uses
  %2 = alloca %class.anon.803, align 8            ; 4 uses
  %3 = alloca %class.anon.803, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %.sroa.037.0.copyload = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.036.0.copyload = load ptr, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.035.0.copyload = load ptr, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.a, ptr %3, align 8, !tbaa !257
  %i.j = ptrtoint ptr %3 to i64
  %i.k = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.035.0.copyload, ptr nonnull @.str.16, i64 10, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %.thread105

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.m, ptr %2, align 8, !tbaa !257
  %i.n = ptrtoint ptr %2 to i64
  %i.o = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.037.0.copyload, ptr nonnull @.str.23, i64 11, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %.thread105

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr %i.q, ptr %1, align 8, !tbaa !302
  %i.r = ptrtoint ptr %1 to i64
  %i.s = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps5N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.036.0.copyload, ptr nonnull @.str.47, i64 7, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps5PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4mlir9transform21TestFuseUsingForallOp14getODSOperandsEj.exit, label %.thread105

_ZN4mlir9transform21TestFuseUsingForallOp14getODSOperandsEj.exit: ; preds = %bb.c
  %i.u = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.y, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.u, ptr %i.aa, ptr nonnull @.str.21, i64 7, i32 noundef 0)
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %.thread105

bb.d:                                             ; preds = %_ZN4mlir9transform21TestFuseUsingForallOp14getODSOperandsEj.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !47
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.af = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef 0) #27
  %i.ag = load ptr, ptr %0, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.0.copyload.i.i.i.i.i58 = load i64, ptr %i.ah, align 8
  %i.ai = and i64 %.0.copyload.i.i.i.i.i58, -8
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.ag, ptr %i.aj, ptr nonnull @.str.22, i64 6, i32 noundef 0)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN4mlir9transform21TestFuseUsingForallOp13getODSResultsEj.exit, label %.thread105

_ZN4mlir9transform21TestFuseUsingForallOp13getODSResultsEj.exit: ; preds = %bb.d
  %i.am = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !152 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -16
  %i.aq = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 noundef 1) #27
  %.not120128 = icmp eq i32 %i.ao, 1
  br i1 %.not120128, label %.thread105, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4mlir9transform21TestFuseUsingForallOp13getODSResultsEj.exit
  %4 = zext i32 %i.ao to i64
  %5 = add nsw i64 %4, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.2130 = phi i32 [ %i.ay, %bb.e ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4.0129 = phi i64 [ %i.az, %bb.e ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ar = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 noundef %.sroa.4.0129) #27
  %i.as = load ptr, ptr %0, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.copyload.i.i.i.i.i66 = load i64, ptr %i.at, align 8
  %i.au = and i64 %.0.copyload.i.i.i.i.i66, -8
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.as, ptr %i.av, ptr nonnull @.str.22, i64 6, i32 noundef %.2130)
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %.thread105

bb.e:                                             ; preds = %.lr.ph
  %i.ay = add i32 %.2130, 1
  %i.az = add nuw nsw i64 %.sroa.4.0129, 1
  %.not120 = icmp eq i64 %.sroa.4.0129, %5
  br i1 %.not120, label %.thread105, label %.lr.ph

.thread105:                                       ; preds = %.lr.ph, %bb.e, %_ZN4mlir9transform21TestFuseUsingForallOp14getODSOperandsEj.exit, %bb.d, %_ZN4mlir9transform21TestFuseUsingForallOp13getODSResultsEj.exit, %bb.c, %bb.b, %bb.a
  %.sroa.039.10 = phi i8 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %_ZN4mlir9transform21TestFuseUsingForallOp14getODSOperandsEj.exit ], [ 1, %_ZN4mlir9transform21TestFuseUsingForallOp13getODSResultsEj.exit ], [ 0, %.lr.ph ], [ 1, %bb.e ]
  ret i8 %.sroa.039.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform21TestFuseUsingForallOp16verifyInvariantsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir9transform21TestFuseUsingForallOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform21TestFuseUsingForallOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #0 align 2 {
bb.a:
  %2 = alloca %class.anon.1264, align 1           ; 3 uses
  %3 = alloca %class.anon.1266, align 1           ; 3 uses
  %4 = alloca %class.anon.1264, align 1           ; 3 uses
  %5 = alloca %class.anon.1266, align 1           ; 3 uses
  %6 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef.581", align 8 ; 5 uses
  %8 = alloca %"class.mlir::ArrayAttr", align 8   ; 6 uses
  %9 = alloca %"class.mlir::ArrayAttr", align 8   ; 6 uses
  %10 = alloca %"class.mlir::ArrayAttr", align 8  ; 6 uses
  %11 = alloca %"class.llvm::ArrayRef.572", align 8 ; 6 uses
  %12 = alloca %"class.llvm::SMLoc", align 8      ; 5 uses
  %13 = alloca %class.anon.656, align 8           ; 6 uses
  %14 = alloca %"class.mlir::FunctionType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %6, ptr %7, align 8, !tbaa !268
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr null, ptr %8, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr null, ptr %9, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr null, ptr %10, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %0, align 8, !tbaa !174
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0) #27 ; 0 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 736
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i8 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %6, i1 noundef zeroext true) #27
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !174
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.p = call ptr @_ZN4mlir8NoneType3getEPNS_11MLIRContextE(ptr noundef %i.o) #27
  %i.q = load ptr, ptr %0, align 8, !tbaa !174
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 496
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call i16 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr %i.p) #27 ; 2 uses
  %i.u = and i16 %i.t, 256
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = trunc i16 %i.t to i1
  br i1 %i.v, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %8, align 8                ; 2 uses
  %.not84 = icmp eq ptr %i.w, null
  br i1 %.not84, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !250  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.f, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ab = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.aa, align 8, !tbaa !246
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ac = ptrtoint ptr %4 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.ad, align 8, !tbaa !123
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.ac, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ae = ptrtoint ptr %5 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.af, align 8, !tbaa !123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %.pre = load i64, ptr %8, align 8
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %bb.e, %bb.f
  %i.ag = phi i64 [ %.pre, %bb.f ], [ %i.x, %bb.e ]
  %i.ah = phi ptr [ %i.ab, %bb.f ], [ %i.z, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.ag, ptr %i.ai, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %bb.b, %bb.d, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit
  %i.aj = load ptr, ptr %0, align 8, !tbaa !174
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 424
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call i8 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.23, i64 11) #27
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.critedge2
  %i.ao = load ptr, ptr %0, align 8, !tbaa !174
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !61
  %i.at = call ptr @_ZN4mlir8NoneType3getEPNS_11MLIRContextE(ptr noundef %i.as) #27
  %i.au = call i8 @_ZN4mlir9AsmParser14parseAttributeINS_9ArrayAttrEEEN4llvm11ParseResultERT_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr %i.at)
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %9, align 8               ; 2 uses
  %.not85 = icmp eq ptr %i.aw, null
  br i1 %.not85, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !250 ; 2 uses
  %.not.i64 = icmp eq ptr %i.az, null
  br i1 %.not.i64, label %bb.j, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit67

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bb = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.ba, align 8, !tbaa !246
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.bd, align 8, !tbaa !123
  %.sroa.43.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.bc, ptr %.sroa.43.0..sroa_idx.i65, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.be = ptrtoint ptr %3 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.bf, align 8, !tbaa !123
  %.sroa.4.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.be, ptr %.sroa.4.0..sroa_idx.i66, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pre87 = load i64, ptr %9, align 8
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit67

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit67: ; preds = %bb.i, %bb.j
  %i.bg = phi i64 [ %.pre87, %bb.j ], [ %i.ax, %bb.i ]
  %i.bh = phi ptr [ %i.bb, %bb.j ], [ %i.az, %bb.i ]
  store i64 %i.bg, ptr %i.bh, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestFuseUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit67, %.critedge2
  %i.bi = load ptr, ptr %0, align 8, !tbaa !174
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 424
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call i8 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.47, i64 7) #27
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %0, align 8, !tbaa !174
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call i8 %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %0, align 8, !tbaa !174
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !61
  %i.bx = call ptr @_ZN4mlir8NoneType3getEPNS_11MLIRContextE(ptr noundef %i.bw) #27
  %i.by = call i8 @_ZN4mlir9AsmParser14parseAttributeINS_9ArrayAttrEEEN4llvm11ParseResultERT_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr %i.bx)
end_hunk_2
begin_hunk_3_@_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #27
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !53 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #27
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !252
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !13

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.527") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.89, i64 61) #27
  call void @_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.527") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !186
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform46TestTileAndFuseOuterParallelPartialReductionOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.527") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.89, i64 61) #27
  call void @_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.527") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !238
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform46TestTileAndFuseOuterParallelPartialReductionOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp25populateDefaultPropertiesENS_13OperationNameERNS0_6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesE(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %3 = alloca %"class.mlir::Builder", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.b = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store ptr %i.b, ptr %3, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr null, i64 0) #27
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr null, i64 0) #27
  store ptr %i.j, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp20verifyInvariantsImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.816, align 8            ; 4 uses
  %2 = alloca %class.anon.803, align 8            ; 4 uses
  %3 = alloca %class.anon.803, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %.sroa.037.0.copyload = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.036.0.copyload = load ptr, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.035.0.copyload = load ptr, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.a, ptr %3, align 8, !tbaa !257
  %i.j = ptrtoint ptr %3 to i64
  %i.k = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.036.0.copyload, ptr nonnull @.str.52, i64 14, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %.thread105

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.m, ptr %2, align 8, !tbaa !257
  %i.n = ptrtoint ptr %2 to i64
  %i.o = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.035.0.copyload, ptr nonnull @.str.16, i64 10, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %.thread105

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr %i.q, ptr %1, align 8, !tbaa !302
  %i.r = ptrtoint ptr %1 to i64
  %i.s = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps5N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.037.0.copyload, ptr nonnull @.str.47, i64 7, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps5PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp14getODSOperandsEj.exit, label %.thread105

_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp14getODSOperandsEj.exit: ; preds = %bb.c
  %i.u = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.y, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.u, ptr %i.aa, ptr nonnull @.str.21, i64 7, i32 noundef 0)
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %.thread105

bb.d:                                             ; preds = %_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp14getODSOperandsEj.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !47
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.af = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef 0) #27
  %i.ag = load ptr, ptr %0, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.0.copyload.i.i.i.i.i58 = load i64, ptr %i.ah, align 8
  %i.ai = and i64 %.0.copyload.i.i.i.i.i58, -8
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.ag, ptr %i.aj, ptr nonnull @.str.22, i64 6, i32 noundef 0)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp13getODSResultsEj.exit, label %.thread105

_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp13getODSResultsEj.exit: ; preds = %bb.d
  %i.am = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !152 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -16
  %i.aq = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 noundef 1) #27
  %.not120128 = icmp eq i32 %i.ao, 1
  br i1 %.not120128, label %.thread105, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp13getODSResultsEj.exit
  %4 = zext i32 %i.ao to i64
  %5 = add nsw i64 %4, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.2130 = phi i32 [ %i.ay, %bb.e ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4.0129 = phi i64 [ %i.az, %bb.e ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ar = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 noundef %.sroa.4.0129) #27
  %i.as = load ptr, ptr %0, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.copyload.i.i.i.i.i66 = load i64, ptr %i.at, align 8
  %i.au = and i64 %.0.copyload.i.i.i.i.i66, -8
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.as, ptr %i.av, ptr nonnull @.str.22, i64 6, i32 noundef %.2130)
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %.thread105

bb.e:                                             ; preds = %.lr.ph
  %i.ay = add i32 %.2130, 1
  %i.az = add nuw nsw i64 %.sroa.4.0129, 1
  %.not120 = icmp eq i64 %.sroa.4.0129, %5
  br i1 %.not120, label %.thread105, label %.lr.ph

.thread105:                                       ; preds = %.lr.ph, %bb.e, %_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp14getODSOperandsEj.exit, %bb.d, %_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp13getODSResultsEj.exit, %bb.c, %bb.b, %bb.a
  %.sroa.039.10 = phi i8 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp14getODSOperandsEj.exit ], [ 1, %_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp13getODSResultsEj.exit ], [ 0, %.lr.ph ], [ 1, %bb.e ]
  ret i8 %.sroa.039.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp16verifyInvariantsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform46TestTileAndFuseOuterParallelPartialReductionOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #0 align 2 {
bb.a:
  %2 = alloca %class.anon.1283, align 1           ; 3 uses
  %3 = alloca %class.anon.1285, align 1           ; 3 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.581", align 8 ; 5 uses
  %6 = alloca %"class.mlir::ArrayAttr", align 8   ; 6 uses
  %7 = alloca %"class.mlir::ArrayAttr", align 8   ; 6 uses
  %8 = alloca %"class.mlir::ArrayAttr", align 8   ; 6 uses
  %9 = alloca %"class.llvm::ArrayRef.572", align 8 ; 6 uses
  %10 = alloca %"class.llvm::SMLoc", align 8      ; 5 uses
  %11 = alloca %class.anon.666, align 8           ; 6 uses
  %12 = alloca %"class.mlir::FunctionType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %4, ptr %5, align 8, !tbaa !268
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr null, ptr %6, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr null, ptr %7, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr null, ptr %8, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %0, align 8, !tbaa !174
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0) #27 ; 0 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 736
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i8 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #27
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !174
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 424
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call i8 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.52, i64 14) #27
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !174
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %0, align 8, !tbaa !174
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !61
  %i.z = call ptr @_ZN4mlir8NoneType3getEPNS_11MLIRContextE(ptr noundef %i.y) #27
  %i.aa = call i8 @_ZN4mlir9AsmParser14parseAttributeINS_9ArrayAttrEEEN4llvm11ParseResultERT_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %i.z)
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %6, align 8               ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !250 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.g, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ah = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.ag, align 8, !tbaa !246
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.aj, align 8, !tbaa !123
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.ai, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ak = ptrtoint ptr %3 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.al, align 8, !tbaa !123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.ak, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pre = load i64, ptr %6, align 8
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %bb.f, %bb.g
  %i.am = phi i64 [ %.pre, %bb.g ], [ %i.ad, %bb.f ]
  %i.an = phi ptr [ %i.ah, %bb.g ], [ %i.af, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.am, ptr %i.ao, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEEERT_v.exit, %bb.b
  %i.ap = load ptr, ptr %0, align 8, !tbaa !174
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 424
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call i8 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.16, i64 10) #27
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %0, align 8, !tbaa !174
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call i8 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.j, label %bb.x

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %0, align 8, !tbaa !174
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !61
  %i.be = call ptr @_ZN4mlir8NoneType3getEPNS_11MLIRContextE(ptr noundef %i.bd) #27
  %i.bf = call i8 @_ZN4mlir9AsmParser14parseAttributeINS_9ArrayAttrEEEN4llvm11ParseResultERT_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %i.be)
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.k, label %bb.x

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr %7, align 8, !tbaa !50
  %.not81 = icmp eq ptr %i.bh, null
  br i1 %.not81, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEEERT_v(ptr noundef nonnull align 8 dereferenceable(304) %1)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %7, align 8
  store i64 %i.bk, ptr %i.bj, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.h
  %i.bl = load ptr, ptr %0, align 8, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 424
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call i8 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.47, i64 7) #27
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %0, align 8, !tbaa !174
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 136
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call i8 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %0, align 8, !tbaa !174
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !61
  %i.ca = call ptr @_ZN4mlir8NoneType3getEPNS_11MLIRContextE(ptr noundef %i.bz) #27
  %i.cb = call i8 @_ZN4mlir9AsmParser14parseAttributeINS_9ArrayAttrEEEN4llvm11ParseResultERT_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr %i.ca)
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %8, align 8, !tbaa !50
  %.not82 = icmp eq ptr %i.cd, null
  br i1 %.not82, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail64TestTileAndFuseOuterParallelPartialReductionOpGenericAdaptorBase10PropertiesEEERT_v(ptr noundef nonnull align 8 dereferenceable(304) %1)
  %i.cf = load i64, ptr %8, align 8
  store i64 %i.cf, ptr %i.ce, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.m
end_hunk_3
begin_hunk_4_@_ZN4mlir9transform25TestTileUsingCustomLoopOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #27
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !53
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.r = zext i32 %.pre8.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !53
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !53   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !54
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #27
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !53 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #27
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !252
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !13

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform25TestTileUsingCustomLoopOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.527") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.90, i64 37) #27
  call void @_ZN4mlir9transform25TestTileUsingCustomLoopOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.527") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !186
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform25TestTileUsingCustomLoopOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform25TestTileUsingCustomLoopOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.527") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.90, i64 37) #27
  call void @_ZN4mlir9transform25TestTileUsingCustomLoopOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.527") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !238
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform25TestTileUsingCustomLoopOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform25TestTileUsingCustomLoopOp25populateDefaultPropertiesENS_13OperationNameERNS0_6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesE(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %3 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.b = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store ptr %i.b, ptr %3, align 8, !tbaa !61
  %i.c = load ptr, ptr %1, align 8, !tbaa !50
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr null, i64 0) #27
  store ptr %i.e, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform25TestTileUsingCustomLoopOp20verifyInvariantsImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.803, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.031.0.copyload = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr %i.a, ptr %1, align 8, !tbaa !257
  %i.h = ptrtoint ptr %1 to i64
  %i.i = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.031.0.copyload, ptr nonnull @.str.16, i64 10, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir9transform25TestTileUsingCustomLoopOp14getODSOperandsEj.exit, label %.thread91

_ZN4mlir9transform25TestTileUsingCustomLoopOp14getODSOperandsEj.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.k, ptr %i.q, ptr nonnull @.str.21, i64 7, i32 noundef 0)
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %.thread91

bb.b:                                             ; preds = %_ZN4mlir9transform25TestTileUsingCustomLoopOp14getODSOperandsEj.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !47
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16
  %i.v = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 noundef 0) #27
  %i.w = load ptr, ptr %0, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.0.copyload.i.i.i.i.i48 = load i64, ptr %i.x, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i48, -8
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.w, ptr %i.z, ptr nonnull @.str.22, i64 6, i32 noundef 0)
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN4mlir9transform25TestTileUsingCustomLoopOp13getODSResultsEj.exit, label %.thread91

_ZN4mlir9transform25TestTileUsingCustomLoopOp13getODSResultsEj.exit: ; preds = %bb.b
  %i.ac = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !152 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.ag = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 noundef 1) #27
  %.not106114 = icmp eq i32 %i.ae, 1
  br i1 %.not106114, label %.thread91, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4mlir9transform25TestTileUsingCustomLoopOp13getODSResultsEj.exit
  %2 = zext i32 %i.ae to i64
  %3 = add nsw i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.237116 = phi i32 [ %i.ao, %bb.c ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4.0115 = phi i64 [ %i.ap, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ah = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 noundef %.sroa.4.0115) #27
  %i.ai = load ptr, ptr %0, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.aj, align 8
  %i.ak = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.ai, ptr %i.al, ptr nonnull @.str.22, i64 6, i32 noundef %.237116)
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.c, label %.thread91

bb.c:                                             ; preds = %.lr.ph
  %i.ao = add i32 %.237116, 1
  %i.ap = add nuw nsw i64 %.sroa.4.0115, 1
  %.not106 = icmp eq i64 %.sroa.4.0115, %3
  br i1 %.not106, label %.thread91, label %.lr.ph

.thread91:                                        ; preds = %.lr.ph, %bb.c, %_ZN4mlir9transform25TestTileUsingCustomLoopOp14getODSOperandsEj.exit, %bb.b, %_ZN4mlir9transform25TestTileUsingCustomLoopOp13getODSResultsEj.exit, %bb.a
  %.sroa.033.10 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %_ZN4mlir9transform25TestTileUsingCustomLoopOp14getODSOperandsEj.exit ], [ 1, %_ZN4mlir9transform25TestTileUsingCustomLoopOp13getODSResultsEj.exit ], [ 0, %.lr.ph ], [ 1, %bb.c ]
  ret i8 %.sroa.033.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform25TestTileUsingCustomLoopOp16verifyInvariantsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir9transform25TestTileUsingCustomLoopOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform25TestTileUsingCustomLoopOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #0 align 2 {
bb.a:
  %2 = alloca %class.anon.1293, align 1           ; 3 uses
  %3 = alloca %class.anon.1295, align 1           ; 3 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.581", align 8 ; 5 uses
  %7 = alloca %"class.mlir::ArrayAttr", align 8   ; 6 uses
  %8 = alloca %"class.llvm::ArrayRef.572", align 8 ; 6 uses
  %9 = alloca %"class.llvm::SMLoc", align 8       ; 5 uses
  %10 = alloca %class.anon.669, align 8           ; 7 uses
  %11 = alloca %"class.mlir::FunctionType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %5, ptr %6, align 8, !tbaa !268
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr null, ptr %7, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %0, align 8, !tbaa !174
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0) #27 ; 0 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 736
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i8 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %5, i1 noundef zeroext true) #27
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8, !tbaa !174
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 416
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i8 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.16, i64 10, ptr noundef nonnull align 8 dereferenceable(34) %4) #27, !inline_history !21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !174
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call i8 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !174
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !61
  %i.aa = call ptr @_ZN4mlir8NoneType3getEPNS_11MLIRContextE(ptr noundef %i.z) #27
  %i.ab = call i8 @_ZN4mlir9AsmParser14parseAttributeINS_9ArrayAttrEEEN4llvm11ParseResultERT_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %i.aa)
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %7, align 8               ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !250 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.g, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ai = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #28 ; 3 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !50
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.ah, align 8, !tbaa !246
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.aj = ptrtoint ptr %2 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.ak, align 8, !tbaa !123
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.aj, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.al = ptrtoint ptr %3 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.am, align 8, !tbaa !123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.al, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pre = load i64, ptr %7, align 8
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %bb.f, %bb.g
  %i.an = phi i64 [ %.pre, %bb.g ], [ %i.ae, %bb.f ]
  %i.ao = phi ptr [ %i.ai, %bb.g ], [ %i.ag, %bb.f ]
  store i64 %i.an, ptr %i.ao, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail43TestTileUsingCustomLoopOpGenericAdaptorBase10PropertiesEEERT_v.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ap = load ptr, ptr %0, align 8, !tbaa !174
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  store ptr %i.as, ptr %9, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !174
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 520
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call i8 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.at) #27
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.010.0.copyload = load ptr, ptr %i.az, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr %0, ptr %10, align 8, !tbaa !271
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.ba, align 8, !tbaa !273
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %1, ptr %i.bb, align 8, !tbaa !275
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !188
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8
  %i.bd = call ptr @_ZNK4mlir13NamedAttrList3getENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(88) %i.at, ptr %.sroa.0.0.copyload.i.i.i) #27 ; 2 uses
  %.not.i39 = icmp eq ptr %i.bd, null
  br i1 %.not.i39, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = ptrtoint ptr %10 to i64
  %i.bf = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.bd, ptr nonnull @.str.16, i64 10, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9transform25TestTileUsingCustomLoopOp5parseERNS1_11OpAsmParserERNS1_14OperationStateEE3$_0EES2_l", i64 %i.be)
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %.critedge

bb.l:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.bh = load ptr, ptr %0, align 8, !tbaa !174
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call i8 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store ptr null, ptr %11, align 8, !tbaa !277
  %i.bm = call i8 @_ZN4mlir9AsmParser9parseTypeINS_12FunctionTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = call { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #27 ; 2 uses
  %i.bp = extractvalue { ptr, i64 } %i.bo, 0
  %i.bq = extractvalue { ptr, i64 } %i.bo, 1
  store ptr %i.bp, ptr %8, align 8, !tbaa !279
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bq, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !57
  %i.br = call { ptr, i64 } @_ZNK4mlir12FunctionType10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #27 ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 0
  %i.bt = extractvalue { ptr, i64 } %i.br, 1
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %i.bs, i64 %i.bt)
  %i.bu = load ptr, ptr %0, align 8, !tbaa !174
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.by)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.052.0 = phi i8 [ %i.bz, %bb.n ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
end_hunk_4
begin_hunk_5_@_ZN4mlir9transform21TestTileUsingForallOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  store i32 %i.v, ptr %i.h, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !53   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !54
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #27
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !53 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #27
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !252
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !13

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform21TestTileUsingForallOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.527") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.91, i64 32) #27
  call void @_ZN4mlir9transform21TestTileUsingForallOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.527") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !186
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform21TestTileUsingForallOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform21TestTileUsingForallOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.527") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.91, i64 32) #27
  call void @_ZN4mlir9transform21TestTileUsingForallOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.527") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !238
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform21TestTileUsingForallOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform21TestTileUsingForallOp25populateDefaultPropertiesENS_13OperationNameERNS0_6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesE(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %3 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.b = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store ptr %i.b, ptr %3, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr null, i64 0) #27
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform21TestTileUsingForallOp20verifyInvariantsImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.816, align 8            ; 4 uses
  %2 = alloca %class.anon.803, align 8            ; 4 uses
  %3 = alloca %class.anon.803, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %.sroa.037.0.copyload = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.036.0.copyload = load ptr, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.035.0.copyload = load ptr, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.a, ptr %3, align 8, !tbaa !257
  %i.j = ptrtoint ptr %3 to i64
  %i.k = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.035.0.copyload, ptr nonnull @.str.16, i64 10, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %.thread105

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.m, ptr %2, align 8, !tbaa !257
  %i.n = ptrtoint ptr %2 to i64
  %i.o = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.037.0.copyload, ptr nonnull @.str.23, i64 11, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %.thread105

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr %i.q, ptr %1, align 8, !tbaa !302
  %i.r = ptrtoint ptr %1 to i64
  %i.s = call fastcc i8 @_ZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps5N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.036.0.copyload, ptr nonnull @.str.47, i64 7, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL65__mlir_ods_local_attr_constraint_TestTilingInterfaceTransformOps5PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4mlir9transform21TestTileUsingForallOp14getODSOperandsEj.exit, label %.thread105

_ZN4mlir9transform21TestTileUsingForallOp14getODSOperandsEj.exit: ; preds = %bb.c
  %i.u = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.y, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.u, ptr %i.aa, ptr nonnull @.str.21, i64 7, i32 noundef 0)
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %.thread105

bb.d:                                             ; preds = %_ZN4mlir9transform21TestTileUsingForallOp14getODSOperandsEj.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !47
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.af = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef 0) #27
  %i.ag = load ptr, ptr %0, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.0.copyload.i.i.i.i.i58 = load i64, ptr %i.ah, align 8
  %i.ai = and i64 %.0.copyload.i.i.i.i.i58, -8
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.ag, ptr %i.aj, ptr nonnull @.str.22, i64 6, i32 noundef 0)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN4mlir9transform21TestTileUsingForallOp13getODSResultsEj.exit, label %.thread105

_ZN4mlir9transform21TestTileUsingForallOp13getODSResultsEj.exit: ; preds = %bb.d
  %i.am = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !152 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -16
  %i.aq = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 noundef 1) #27
  %.not120128 = icmp eq i32 %i.ao, 1
  br i1 %.not120128, label %.thread105, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4mlir9transform21TestTileUsingForallOp13getODSResultsEj.exit
  %4 = zext i32 %i.ao to i64
  %5 = add nsw i64 %4, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.2130 = phi i32 [ %i.ay, %bb.e ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4.0129 = phi i64 [ %i.az, %bb.e ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ar = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 noundef %.sroa.4.0129) #27
  %i.as = load ptr, ptr %0, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.copyload.i.i.i.i.i66 = load i64, ptr %i.at, align 8
  %i.au = and i64 %.0.copyload.i.i.i.i.i66, -8
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = call fastcc i8 @_ZL65__mlir_ods_local_type_constraint_TestTilingInterfaceTransformOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.as, ptr %i.av, ptr nonnull @.str.22, i64 6, i32 noundef %.2130)
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %.thread105

bb.e:                                             ; preds = %.lr.ph
  %i.ay = add i32 %.2130, 1
  %i.az = add nuw nsw i64 %.sroa.4.0129, 1
  %.not120 = icmp eq i64 %.sroa.4.0129, %5
  br i1 %.not120, label %.thread105, label %.lr.ph

.thread105:                                       ; preds = %.lr.ph, %bb.e, %_ZN4mlir9transform21TestTileUsingForallOp14getODSOperandsEj.exit, %bb.d, %_ZN4mlir9transform21TestTileUsingForallOp13getODSResultsEj.exit, %bb.c, %bb.b, %bb.a
  %.sroa.039.10 = phi i8 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %_ZN4mlir9transform21TestTileUsingForallOp14getODSOperandsEj.exit ], [ 1, %_ZN4mlir9transform21TestTileUsingForallOp13getODSResultsEj.exit ], [ 0, %.lr.ph ], [ 1, %bb.e ]
  ret i8 %.sroa.039.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform21TestTileUsingForallOp16verifyInvariantsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir9transform21TestTileUsingForallOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform21TestTileUsingForallOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #0 align 2 {
bb.a:
  %2 = alloca %class.anon.1307, align 1           ; 3 uses
  %3 = alloca %class.anon.1309, align 1           ; 3 uses
  %4 = alloca %class.anon.1307, align 1           ; 3 uses
  %5 = alloca %class.anon.1309, align 1           ; 3 uses
  %6 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef.581", align 8 ; 5 uses
  %8 = alloca %"class.mlir::ArrayAttr", align 8   ; 6 uses
  %9 = alloca %"class.mlir::ArrayAttr", align 8   ; 6 uses
  %10 = alloca %"class.mlir::ArrayAttr", align 8  ; 6 uses
  %11 = alloca %"class.llvm::ArrayRef.572", align 8 ; 6 uses
  %12 = alloca %"class.llvm::SMLoc", align 8      ; 5 uses
  %13 = alloca %class.anon.676, align 8           ; 6 uses
  %14 = alloca %"class.mlir::FunctionType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %6, ptr %7, align 8, !tbaa !268
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr null, ptr %8, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr null, ptr %9, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr null, ptr %10, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %0, align 8, !tbaa !174
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0) #27 ; 0 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 736
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i8 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %6, i1 noundef zeroext true) #27
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !174
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.p = call ptr @_ZN4mlir8NoneType3getEPNS_11MLIRContextE(ptr noundef %i.o) #27
  %i.q = load ptr, ptr %0, align 8, !tbaa !174
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 496
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call i16 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr %i.p) #27 ; 2 uses
  %i.u = and i16 %i.t, 256
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = trunc i16 %i.t to i1
  br i1 %i.v, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %8, align 8                ; 2 uses
  %.not87 = icmp eq ptr %i.w, null
  br i1 %.not87, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !250  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.f, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ab = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.aa, align 8, !tbaa !246
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ac = ptrtoint ptr %4 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.ad, align 8, !tbaa !123
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.ac, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ae = ptrtoint ptr %5 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.af, align 8, !tbaa !123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %.pre = load i64, ptr %8, align 8
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %bb.e, %bb.f
  %i.ag = phi i64 [ %.pre, %bb.f ], [ %i.x, %bb.e ]
  %i.ah = phi ptr [ %i.ab, %bb.f ], [ %i.z, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.ag, ptr %i.ai, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %bb.b, %bb.d, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit
  %i.aj = load ptr, ptr %0, align 8, !tbaa !174
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 424
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call i8 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.23, i64 11) #27
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.critedge2
  %i.ao = load ptr, ptr %0, align 8, !tbaa !174
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %0, align 8, !tbaa !174
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr %i.av(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !61
  %i.ay = call ptr @_ZN4mlir8NoneType3getEPNS_11MLIRContextE(ptr noundef %i.ax) #27
  %i.az = call i8 @_ZN4mlir9AsmParser14parseAttributeINS_9ArrayAttrEEEN4llvm11ParseResultERT_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr %i.ay)
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %9, align 8               ; 2 uses
  %.not88 = icmp eq ptr %i.bb, null
  br i1 %.not88, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !250 ; 2 uses
  %.not.i66 = icmp eq ptr %i.be, null
  br i1 %.not.i66, label %bb.k, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit69

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bg = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.bf, align 8, !tbaa !246
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bh = ptrtoint ptr %2 to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.bi, align 8, !tbaa !123
  %.sroa.43.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.bh, ptr %.sroa.43.0..sroa_idx.i67, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.bj = ptrtoint ptr %3 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.bk, align 8, !tbaa !123
  %.sroa.4.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.bj, ptr %.sroa.4.0..sroa_idx.i68, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pre90 = load i64, ptr %9, align 8
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit69

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit69: ; preds = %bb.j, %bb.k
  %i.bl = phi i64 [ %.pre90, %bb.k ], [ %i.bc, %bb.j ]
  %i.bm = phi ptr [ %i.bg, %bb.k ], [ %i.be, %bb.j ]
  store i64 %i.bl, ptr %i.bm, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail39TestTileUsingForallOpGenericAdaptorBase10PropertiesEEERT_v.exit69, %.critedge2
  %i.bn = load ptr, ptr %0, align 8, !tbaa !174
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 424
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call i8 %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.47, i64 7) #27
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %0, align 8, !tbaa !174
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.n, label %bb.w

end_hunk_5
