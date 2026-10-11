Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVOpDefinition?download=true
inline.NumInlined: 150838
inline.NumDeleted: 17958
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN4mlir5spirv6SDotOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24SDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #26
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !130 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !133
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #26
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !140
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !130
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir5spirv6SDotOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24SDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.56") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.1352, i64 10) #26
  call void @_ZN4mlir5spirv6SDotOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24SDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #26 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_5spirv6SDotOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir5spirv6SDotOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24SDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.56") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.1352, i64 10) #26
  call void @_ZN4mlir5spirv6SDotOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24SDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_5spirv6SDotOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir5spirv6SDotOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.15171, align 8          ; 4 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.033.0.copyload = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.a, ptr %1, align 8, !tbaa !307
  %i.h = ptrtoint ptr %1 to i64
  %i.i = call fastcc i8 @_ZL43__mlir_ods_local_attr_constraint_SPIRVOps31N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr readonly %.sroa.033.0.copyload, ptr nonnull @.str.590, i64 6, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL43__mlir_ods_local_attr_constraint_SPIRVOps31PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit, label %.thread159

_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit:     ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !145
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_SPIRVOps7PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.k, ptr %i.q, ptr nonnull @.str.1, i64 7, i32 noundef 0)
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit48, label %.thread159

_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit48:   ; preds = %_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sroa.0.0.copyload.i.i.i53 = load ptr, ptr %i.w, align 8, !tbaa !145
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i53, i64 8
  %.0.copyload.i.i.i.i.i54 = load i64, ptr %i.x, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i54, -8
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_SPIRVOps7PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.t, ptr %i.z, ptr nonnull @.str.1, i64 7, i32 noundef 1)
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.b, label %.thread159

bb.b:                                             ; preds = %_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit48
  %i.ac = load ptr, ptr %0, align 8, !tbaa !108
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.ae = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 noundef 0) #26
  %i.af = load ptr, ptr %0, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i.i.i.i.i61 = load i64, ptr %i.ag, align 8
  %i.ah = and i64 %.0.copyload.i.i.i.i.i61, -8
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_SPIRVOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.af, ptr %i.ai, ptr nonnull @.str.2, i64 6, i32 noundef 0)
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit75, label %.thread159

_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit75:   ; preds = %bb.b
  %i.al = load ptr, ptr %0, align 8, !tbaa !108
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !104 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.0.0.copyload.i.i.i69 = load ptr, ptr %i.ao, align 8, !tbaa !145
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i69, i64 8
  %.0.copyload.i.i.i.i.i70 = load i64, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %.sroa.0.0.copyload.i.i.i78 = load ptr, ptr %i.aq, align 8, !tbaa !145
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i78, i64 8
  %.0.copyload.i.i.i.i.i79 = load i64, ptr %i.ar, align 8
  %i.as = xor i64 %.0.copyload.i.i.i.i.i79, %.0.copyload.i.i.i.i.i70
  %i.at = icmp ult i64 %i.as, 8
  br i1 %i.at, label %.thread159, label %.thread181

.thread181:                                       ; preds = %_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.av, align 1, !tbaa !153
  store ptr @.str.158, ptr %3, align 8, !tbaa !154
  store i8 3, ptr %i.au, align 8, !tbaa !152
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #26
  %i.aw = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  %i.ax = load ptr, ptr %2, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread181
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread181
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !134, !range !135, !noundef !136
  %i.ba = trunc nuw i8 %i.az to i1
  store i8 0, ptr %i.ay, align 8, !tbaa !134
  br i1 %i.ba, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bb) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.thread159

.thread159:                                       ; preds = %_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit75, %_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit, %_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit48, %bb.b, %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.035.10 = phi i8 [ 0, %_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit ], [ %i.aw, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit48 ], [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %_ZN4mlir5spirv6SDotOp14getODSOperandsEj.exit75 ]
  ret i8 %.sroa.035.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5spirv6SDotOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir5spirv6SDotOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir5spirv6SDotOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.02.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i8 %.sroa.02.0
}

declare i8 @_ZN4mlir5spirv6SDotOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5spirv6SDotOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.103", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::spirv::PackedVectorFormatAttr", align 8 ; 6 uses
  %6 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef.90", align 8 ; 6 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %9 = alloca %"class.llvm::SMLoc", align 8       ; 5 uses
  %10 = alloca %class.anon.10975, align 8         ; 7 uses
  %11 = alloca %"class.mlir::Type", align 8       ; 6 uses
  %12 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %2, ptr %3, align 8, !tbaa !157
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %5, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr null, ptr %6, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %6, ptr %7, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.c = load ptr, ptr %0, align 8, !tbaa !166
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.g = load ptr, ptr %0, align 8, !tbaa !166
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #26
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !166
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i8 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !166
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0) #26 ; 0 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !166
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 736
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #26
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %0, align 8, !tbaa !166
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = call i8 @_ZN4mlir9AsmParser32parseCustomAttributeWithFallbackINS_5spirv22PackedVectorFormatAttrEEENSt9enable_ifIXsr23detect_has_parse_methodIT_EE5valueEN4llvm11ParseResultEE4typeERS5_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr null)
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %5, align 8, !tbaa !177
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir14OperationState18getOrAddPropertiesINS_5spirv6detail24SDotOpGenericAdaptorBase10PropertiesEEERT_v(ptr noundef nonnull align 8 dereferenceable(304) %1)
  %i.ai = load i64, ptr %5, align 8
  store i64 %i.ai, ptr %i.ah, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.aj = load ptr, ptr %0, align 8, !tbaa !166
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call ptr %i.al(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  store ptr %i.am, ptr %9, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !166
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 520
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.an) #26
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.014.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %0, ptr %10, align 8, !tbaa !187
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.au, align 8, !tbaa !189
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %1, ptr %i.av, align 8, !tbaa !191
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !179
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8
  %i.ax = call ptr @_ZNK4mlir13NamedAttrList3getENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(88) %i.an, ptr %.sroa.0.0.copyload.i.i.i) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = ptrtoint ptr %10 to i64
  %i.az = call fastcc i8 @_ZL43__mlir_ods_local_attr_constraint_SPIRVOps31N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.ax, ptr nonnull @.str.590, i64 6, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_5spirv6SDotOp5parseERNS1_11OpAsmParserERNS1_14OperationStateEE3$_0EES2_l", i64 %i.ay)
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge

bb.l:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bb = load ptr, ptr %0, align 8, !tbaa !166
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr null, ptr %11, align 8, !tbaa !160
  %i.bg = load ptr, ptr %0, align 8, !tbaa !166
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 568
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call i8 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #26, !inline_history !2
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bl = load i64, ptr %11, align 8, !tbaa !140
  store i64 %i.bl, ptr %6, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.bm = load ptr, ptr %0, align 8, !tbaa !166
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call i8 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr null, ptr %12, align 8, !tbaa !160
  %i.br = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %.thread69

.thread69:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bt = load i64, ptr %12, align 8, !tbaa !140
end_hunk_0
begin_hunk_1_@_ZN4mlir5spirv7SUDotOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail25SUDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #26
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !130 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !133
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #26
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !140
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !130
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir5spirv7SUDotOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail25SUDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.56") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.1362, i64 11) #26
  call void @_ZN4mlir5spirv7SUDotOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail25SUDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #26 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_5spirv7SUDotOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir5spirv7SUDotOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail25SUDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.56") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.1362, i64 11) #26
  call void @_ZN4mlir5spirv7SUDotOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail25SUDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_5spirv7SUDotOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir5spirv7SUDotOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.15171, align 8          ; 4 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.033.0.copyload = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.a, ptr %1, align 8, !tbaa !307
  %i.h = ptrtoint ptr %1 to i64
  %i.i = call fastcc i8 @_ZL43__mlir_ods_local_attr_constraint_SPIRVOps31N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr readonly %.sroa.033.0.copyload, ptr nonnull @.str.590, i64 6, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL43__mlir_ods_local_attr_constraint_SPIRVOps31PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit, label %.thread159

_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit:    ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !145
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_SPIRVOps7PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.k, ptr %i.q, ptr nonnull @.str.1, i64 7, i32 noundef 0)
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit48, label %.thread159

_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit48:  ; preds = %_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sroa.0.0.copyload.i.i.i53 = load ptr, ptr %i.w, align 8, !tbaa !145
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i53, i64 8
  %.0.copyload.i.i.i.i.i54 = load i64, ptr %i.x, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i54, -8
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_SPIRVOps7PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.t, ptr %i.z, ptr nonnull @.str.1, i64 7, i32 noundef 1)
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.b, label %.thread159

bb.b:                                             ; preds = %_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit48
  %i.ac = load ptr, ptr %0, align 8, !tbaa !108
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.ae = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 noundef 0) #26
  %i.af = load ptr, ptr %0, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i.i.i.i.i61 = load i64, ptr %i.ag, align 8
  %i.ah = and i64 %.0.copyload.i.i.i.i.i61, -8
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_SPIRVOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.af, ptr %i.ai, ptr nonnull @.str.2, i64 6, i32 noundef 0)
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit75, label %.thread159

_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit75:  ; preds = %bb.b
  %i.al = load ptr, ptr %0, align 8, !tbaa !108
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !104 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.0.0.copyload.i.i.i69 = load ptr, ptr %i.ao, align 8, !tbaa !145
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i69, i64 8
  %.0.copyload.i.i.i.i.i70 = load i64, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %.sroa.0.0.copyload.i.i.i78 = load ptr, ptr %i.aq, align 8, !tbaa !145
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i78, i64 8
  %.0.copyload.i.i.i.i.i79 = load i64, ptr %i.ar, align 8
  %i.as = xor i64 %.0.copyload.i.i.i.i.i79, %.0.copyload.i.i.i.i.i70
  %i.at = icmp ult i64 %i.as, 8
  br i1 %i.at, label %.thread159, label %.thread181

.thread181:                                       ; preds = %_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.av, align 1, !tbaa !153
  store ptr @.str.158, ptr %3, align 8, !tbaa !154
  store i8 3, ptr %i.au, align 8, !tbaa !152
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #26
  %i.aw = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  %i.ax = load ptr, ptr %2, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread181
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread181
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !134, !range !135, !noundef !136
  %i.ba = trunc nuw i8 %i.az to i1
  store i8 0, ptr %i.ay, align 8, !tbaa !134
  br i1 %i.ba, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bb) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.thread159

.thread159:                                       ; preds = %_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit75, %_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit, %_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit48, %bb.b, %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.035.10 = phi i8 [ 0, %_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit ], [ %i.aw, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit48 ], [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %_ZN4mlir5spirv7SUDotOp14getODSOperandsEj.exit75 ]
  ret i8 %.sroa.035.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5spirv7SUDotOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir5spirv7SUDotOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir5spirv7SUDotOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.02.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i8 %.sroa.02.0
}

declare i8 @_ZN4mlir5spirv7SUDotOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5spirv7SUDotOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.103", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::spirv::PackedVectorFormatAttr", align 8 ; 6 uses
  %6 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef.90", align 8 ; 6 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %9 = alloca %"class.llvm::SMLoc", align 8       ; 5 uses
  %10 = alloca %class.anon.11399, align 8         ; 7 uses
  %11 = alloca %"class.mlir::Type", align 8       ; 6 uses
  %12 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %2, ptr %3, align 8, !tbaa !157
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %5, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr null, ptr %6, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %6, ptr %7, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.c = load ptr, ptr %0, align 8, !tbaa !166
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.g = load ptr, ptr %0, align 8, !tbaa !166
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #26
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !166
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i8 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !166
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0) #26 ; 0 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !166
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 736
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #26
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %0, align 8, !tbaa !166
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = call i8 @_ZN4mlir9AsmParser32parseCustomAttributeWithFallbackINS_5spirv22PackedVectorFormatAttrEEENSt9enable_ifIXsr23detect_has_parse_methodIT_EE5valueEN4llvm11ParseResultEE4typeERS5_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr null)
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %5, align 8, !tbaa !177
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir14OperationState18getOrAddPropertiesINS_5spirv6detail25SUDotOpGenericAdaptorBase10PropertiesEEERT_v(ptr noundef nonnull align 8 dereferenceable(304) %1)
  %i.ai = load i64, ptr %5, align 8
  store i64 %i.ai, ptr %i.ah, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.aj = load ptr, ptr %0, align 8, !tbaa !166
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call ptr %i.al(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  store ptr %i.am, ptr %9, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !166
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 520
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.an) #26
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.014.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %0, ptr %10, align 8, !tbaa !187
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.au, align 8, !tbaa !189
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %1, ptr %i.av, align 8, !tbaa !191
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !179
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8
  %i.ax = call ptr @_ZNK4mlir13NamedAttrList3getENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(88) %i.an, ptr %.sroa.0.0.copyload.i.i.i) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = ptrtoint ptr %10 to i64
  %i.az = call fastcc i8 @_ZL43__mlir_ods_local_attr_constraint_SPIRVOps31N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.ax, ptr nonnull @.str.590, i64 6, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_5spirv7SUDotOp5parseERNS1_11OpAsmParserERNS1_14OperationStateEE3$_0EES2_l", i64 %i.ay)
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge

bb.l:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bb = load ptr, ptr %0, align 8, !tbaa !166
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr null, ptr %11, align 8, !tbaa !160
  %i.bg = load ptr, ptr %0, align 8, !tbaa !166
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 568
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call i8 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #26, !inline_history !2
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bl = load i64, ptr %11, align 8, !tbaa !140
  store i64 %i.bl, ptr %6, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.bm = load ptr, ptr %0, align 8, !tbaa !166
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call i8 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr null, ptr %12, align 8, !tbaa !160
  %i.br = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %.thread69

.thread69:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bt = load i64, ptr %12, align 8, !tbaa !140
end_hunk_1
begin_hunk_2_@_ZN4mlir5spirv6UDotOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24UDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #26
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !130 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !133
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #26
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !140
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !130
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir5spirv6UDotOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24UDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.56") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.1519, i64 10) #26
  call void @_ZN4mlir5spirv6UDotOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24UDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #26 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_5spirv6UDotOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir5spirv6UDotOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24UDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.56") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.1519, i64 10) #26
  call void @_ZN4mlir5spirv6UDotOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24UDotOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.56") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_5spirv6UDotOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir5spirv6UDotOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.15171, align 8          ; 4 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.033.0.copyload = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.a, ptr %1, align 8, !tbaa !307
  %i.h = ptrtoint ptr %1 to i64
  %i.i = call fastcc i8 @_ZL43__mlir_ods_local_attr_constraint_SPIRVOps31N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr readonly %.sroa.033.0.copyload, ptr nonnull @.str.590, i64 6, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL43__mlir_ods_local_attr_constraint_SPIRVOps31PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit, label %.thread159

_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit:     ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !145
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_SPIRVOps7PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.k, ptr %i.q, ptr nonnull @.str.1, i64 7, i32 noundef 0)
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit48, label %.thread159

_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit48:   ; preds = %_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sroa.0.0.copyload.i.i.i53 = load ptr, ptr %i.w, align 8, !tbaa !145
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i53, i64 8
  %.0.copyload.i.i.i.i.i54 = load i64, ptr %i.x, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i54, -8
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_SPIRVOps7PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.t, ptr %i.z, ptr nonnull @.str.1, i64 7, i32 noundef 1)
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.b, label %.thread159

bb.b:                                             ; preds = %_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit48
  %i.ac = load ptr, ptr %0, align 8, !tbaa !108
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.ae = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 noundef 0) #26
  %i.af = load ptr, ptr %0, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i.i.i.i.i61 = load i64, ptr %i.ag, align 8
  %i.ah = and i64 %.0.copyload.i.i.i.i.i61, -8
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_SPIRVOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.af, ptr %i.ai, ptr nonnull @.str.2, i64 6, i32 noundef 0)
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit75, label %.thread159

_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit75:   ; preds = %bb.b
  %i.al = load ptr, ptr %0, align 8, !tbaa !108
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !104 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.0.0.copyload.i.i.i69 = load ptr, ptr %i.ao, align 8, !tbaa !145
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i69, i64 8
  %.0.copyload.i.i.i.i.i70 = load i64, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %.sroa.0.0.copyload.i.i.i78 = load ptr, ptr %i.aq, align 8, !tbaa !145
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i78, i64 8
  %.0.copyload.i.i.i.i.i79 = load i64, ptr %i.ar, align 8
  %i.as = xor i64 %.0.copyload.i.i.i.i.i79, %.0.copyload.i.i.i.i.i70
  %i.at = icmp ult i64 %i.as, 8
  br i1 %i.at, label %.thread159, label %.thread181

.thread181:                                       ; preds = %_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.av, align 1, !tbaa !153
  store ptr @.str.158, ptr %3, align 8, !tbaa !154
  store i8 3, ptr %i.au, align 8, !tbaa !152
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #26
  %i.aw = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  %i.ax = load ptr, ptr %2, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread181
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread181
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !134, !range !135, !noundef !136
  %i.ba = trunc nuw i8 %i.az to i1
  store i8 0, ptr %i.ay, align 8, !tbaa !134
  br i1 %i.ba, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bb) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.thread159

.thread159:                                       ; preds = %_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit75, %_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit, %_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit48, %bb.b, %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.035.10 = phi i8 [ 0, %_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit ], [ %i.aw, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit48 ], [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %_ZN4mlir5spirv6UDotOp14getODSOperandsEj.exit75 ]
  ret i8 %.sroa.035.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5spirv6UDotOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir5spirv6UDotOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir5spirv6UDotOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.02.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i8 %.sroa.02.0
}

declare i8 @_ZN4mlir5spirv6UDotOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5spirv6UDotOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.103", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::spirv::PackedVectorFormatAttr", align 8 ; 6 uses
  %6 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef.90", align 8 ; 6 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %9 = alloca %"class.llvm::SMLoc", align 8       ; 5 uses
  %10 = alloca %class.anon.14373, align 8         ; 7 uses
  %11 = alloca %"class.mlir::Type", align 8       ; 6 uses
  %12 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %2, ptr %3, align 8, !tbaa !157
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %5, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr null, ptr %6, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %6, ptr %7, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.c = load ptr, ptr %0, align 8, !tbaa !166
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.g = load ptr, ptr %0, align 8, !tbaa !166
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #26
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !166
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i8 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !166
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0) #26 ; 0 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !166
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 736
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #26
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %0, align 8, !tbaa !166
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = call i8 @_ZN4mlir9AsmParser32parseCustomAttributeWithFallbackINS_5spirv22PackedVectorFormatAttrEEENSt9enable_ifIXsr23detect_has_parse_methodIT_EE5valueEN4llvm11ParseResultEE4typeERS5_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr null)
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %5, align 8, !tbaa !177
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir14OperationState18getOrAddPropertiesINS_5spirv6detail24UDotOpGenericAdaptorBase10PropertiesEEERT_v(ptr noundef nonnull align 8 dereferenceable(304) %1)
  %i.ai = load i64, ptr %5, align 8
  store i64 %i.ai, ptr %i.ah, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.aj = load ptr, ptr %0, align 8, !tbaa !166
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call ptr %i.al(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  store ptr %i.am, ptr %9, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !166
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 520
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.an) #26
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.014.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %0, ptr %10, align 8, !tbaa !187
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.au, align 8, !tbaa !189
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %1, ptr %i.av, align 8, !tbaa !191
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !179
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8
  %i.ax = call ptr @_ZNK4mlir13NamedAttrList3getENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(88) %i.an, ptr %.sroa.0.0.copyload.i.i.i) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = ptrtoint ptr %10 to i64
  %i.az = call fastcc i8 @_ZL43__mlir_ods_local_attr_constraint_SPIRVOps31N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.ax, ptr nonnull @.str.590, i64 6, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_5spirv6UDotOp5parseERNS1_11OpAsmParserERNS1_14OperationStateEE3$_0EES2_l", i64 %i.ay)
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge

bb.l:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bb = load ptr, ptr %0, align 8, !tbaa !166
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr null, ptr %11, align 8, !tbaa !160
  %i.bg = load ptr, ptr %0, align 8, !tbaa !166
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 568
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call i8 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #26, !inline_history !2
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bl = load i64, ptr %11, align 8, !tbaa !140
  store i64 %i.bl, ptr %6, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.bm = load ptr, ptr %0, align 8, !tbaa !166
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call i8 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr null, ptr %12, align 8, !tbaa !160
  %i.br = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %.thread69

.thread69:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bt = load i64, ptr %12, align 8, !tbaa !140
end_hunk_2
