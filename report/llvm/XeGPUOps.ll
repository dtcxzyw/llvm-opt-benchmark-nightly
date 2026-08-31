Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XeGPUOps?download=true
inline.NumInlined: 17016
inline.NumDeleted: 4194
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4mlir5xegpu6DpasOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24DpasOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #26
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !32
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.r = zext i32 %.pre8.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !32
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !34
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #26
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !32 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #26
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !137
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !289

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !32
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir5xegpu6DpasOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24DpasOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.602") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.312, i64 10) #26
  call void @_ZN4mlir5xegpu6DpasOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24DpasOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.602") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #26 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_5xegpu6DpasOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir5xegpu6DpasOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24DpasOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.602") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.312, i64 10) #26
  call void @_ZN4mlir5xegpu6DpasOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail24DpasOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.602") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !288
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_5xegpu6DpasOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir5xegpu6DpasOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.944, align 8            ; 4 uses
  %2 = alloca %class.anon.944, align 8            ; 4 uses
  %3 = alloca %class.anon.944, align 8            ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !105    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.e, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = lshr i32 %i.e, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 3 uses
  %.sroa.050.0.copyload = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.048.0.copyload = load ptr, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.047.0.copyload = load ptr, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.c, ptr %3, align 8, !tbaa !309
  %i.l = ptrtoint ptr %3 to i64
  %i.m = call fastcc i8 @_ZL39__mlir_ods_local_attr_constraint_XeGPU3N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr readonly %.sroa.050.0.copyload, ptr nonnull @.str.139, i64 8, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL39__mlir_ods_local_attr_constraint_XeGPU3PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %.thread222

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.o, ptr %2, align 8, !tbaa !309
  %i.p = ptrtoint ptr %2 to i64
  %i.q = call fastcc i8 @_ZL39__mlir_ods_local_attr_constraint_XeGPU3N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr readonly %.sroa.048.0.copyload, ptr nonnull @.str.143, i64 8, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL39__mlir_ods_local_attr_constraint_XeGPU3PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %.thread222

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.s, ptr %1, align 8, !tbaa !309
  %i.t = ptrtoint ptr %1 to i64
  %i.u = call fastcc i8 @_ZL39__mlir_ods_local_attr_constraint_XeGPU3N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr readonly %.sroa.047.0.copyload, ptr nonnull @.str.147, i64 9, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL39__mlir_ods_local_attr_constraint_XeGPU3PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit, label %.thread222

_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit:     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.aa, align 8
  %i.ab = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = call fastcc i8 @_ZL39__mlir_ods_local_type_constraint_XeGPU9PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.w, ptr %i.ac, ptr nonnull @.str.80, i64 7, i32 noundef 0)
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i.i.preheader, label %.thread214

.lr.ph.i.i.preheader:                             ; preds = %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !108
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ai, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.aj, align 8
  %i.ak = and i64 %.0.copyload.i.i.i.i.i74, -8
  %i.al = inttoptr i64 %i.ak to ptr
  store i32 2, ptr %i.a, align 4, !tbaa !125
  %i.am = call fastcc i8 @_ZL39__mlir_ods_local_type_constraint_XeGPU9PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.af, ptr %i.al, ptr nonnull @.str.80, i64 7, i32 noundef 1)
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i75.preheader, label %.thread214

.lr.ph.i.i75.preheader:                           ; preds = %.lr.ph.i.i.preheader
  %.pre = load ptr, ptr %0, align 8, !tbaa !105   ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre239 = load i32, ptr %.phi.trans.insert, align 4
  %.pre241 = and i32 %.pre239, 8388608
  %.not.i.i.i82 = icmp eq i32 %.pre241, 0
  br i1 %.not.i.i.i82, label %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit88.thread, label %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit88, !prof !126

_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit88:   ; preds = %.lr.ph.i.i75.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre, i64 68
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !133 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !108
  %i.as = zext i32 %i.ap to i64
  %i.at = add nsw i64 %i.as, -2                   ; 2 uses
  %i.au = icmp ugt i64 %i.at, 1
  br i1 %i.au, label %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit88.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit88
  %.not225232 = icmp eq i32 %i.ap, 2
  br i1 %.not225232, label %._crit_edge, label %.lr.ph234.preheader

.lr.ph234.preheader:                              ; preds = %.preheader
  %8 = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %.sroa.0.0.copyload.i.i.i93 = load ptr, ptr %8, align 8, !tbaa !111
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i93, i64 8
  %.0.copyload.i.i.i.i.i94 = load i64, ptr %9, align 8
  %10 = and i64 %.0.copyload.i.i.i.i.i94, -8
  %11 = inttoptr i64 %10 to ptr
  %12 = call fastcc i8 @_ZL39__mlir_ods_local_type_constraint_XeGPU9PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %.pre, ptr %11, ptr nonnull @.str.80, i64 7, i32 noundef 2)
  %13 = trunc nuw i8 %12 to i1
  br i1 %13, label %.lr.ph234, label %bb.d

_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit88.thread: ; preds = %.lr.ph.i.i75.preheader, %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit88
  %i.av = phi i64 [ %i.at, %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit88 ], [ -2, %.lr.ph.i.i75.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ax, align 1, !tbaa !113
  store ptr @.str.149, ptr %5, align 8, !tbaa !116
  store i8 3, ptr %i.aw, align 8, !tbaa !117
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #26
  %i.ay = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.az = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ay, ptr noundef nonnull align 1 dereferenceable(37) @.str.150)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.av, ptr %i.b, align 8, !tbaa !31
  %i.ba = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.bb = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ba) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.thread214

.lr.ph234:                                        ; preds = %.lr.ph234.preheader
  %i.bc = load ptr, ptr %0, align 8, !tbaa !105
  br label %._crit_edge

.thread214:                                       ; preds = %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit, %.lr.ph.i.i.preheader, %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit88.thread
  %.sroa.053.11.ph = phi i8 [ %i.bb, %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit88.thread ], [ 0, %.lr.ph.i.i.preheader ], [ 0, %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread222

bb.d:                                             ; preds = %.lr.ph234.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread222

._crit_edge:                                      ; preds = %.lr.ph234, %.preheader
  %i.bd = phi ptr [ %i.bc, %.lr.ph234 ], [ %.pre, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -16
  %i.bf = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 noundef 0) #26
  %i.bg = load ptr, ptr %0, align 8, !tbaa !105
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.0.copyload.i.i.i.i.i101 = load i64, ptr %i.bh, align 8
  %i.bi = and i64 %.0.copyload.i.i.i.i.i101, -8
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = call fastcc i8 @_ZL39__mlir_ods_local_type_constraint_XeGPU9PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bg, ptr %i.bj, ptr nonnull @.str.81, i64 6, i32 noundef 0)
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit109, label %.thread222

_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit109:  ; preds = %._crit_edge
  %i.bm = load ptr, ptr %0, align 8, !tbaa !105
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !108
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.sroa.0.0.copyload.i.i.i112 = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.bq = call ptr @_ZN4mlir20getElementTypeOrSelfENS_5ValueE(ptr %.sroa.0.0.copyload.i.i.i112) #26
  %i.br = load ptr, ptr %0, align 8, !tbaa !105
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !108
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %.sroa.0.0.copyload.i.i.i129 = load ptr, ptr %i.bu, align 8, !tbaa !111
  %i.bv = call ptr @_ZN4mlir20getElementTypeOrSelfENS_5ValueE(ptr %.sroa.0.0.copyload.i.i.i129) #26
  %i.bw = icmp eq ptr %i.bq, %i.bv
  br i1 %i.bw, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit109
  %i.bx = call { ptr, i64 } @_ZN4mlir5xegpu6DpasOp14getODSOperandsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1)
  %i.by = extractvalue { ptr, i64 } %i.bx, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %.sroa.0.0.copyload.i.i.i132 = load ptr, ptr %i.bz, align 8, !tbaa !111
  %i.ca = call ptr @_ZN4mlir20getElementTypeOrSelfENS_5ValueE(ptr %.sroa.0.0.copyload.i.i.i132) #26
  %i.cb = call { ptr, i64 } @_ZN4mlir5xegpu6DpasOp14getODSOperandsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0)
  %i.cc = extractvalue { ptr, i64 } %i.cb, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.sroa.0.0.copyload.i.i.i135 = load ptr, ptr %i.cd, align 8, !tbaa !111
  %i.ce = call ptr @_ZN4mlir20getElementTypeOrSelfENS_5ValueE(ptr %.sroa.0.0.copyload.i.i.i135) #26
  %.not227 = icmp eq ptr %i.ca, %i.ce
  br i1 %.not227, label %.thread222, label %.critedge

.critedge:                                        ; preds = %_ZN4mlir5xegpu6DpasOp14getODSOperandsEj.exit109, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.cg, align 1, !tbaa !113
  store ptr @.str.157, ptr %7, align 8, !tbaa !116
  store i8 3, ptr %i.cf, align 8, !tbaa !117
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %7) #26
  %i.ch = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %6) #26
  %i.ci = load ptr, ptr %6, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %6) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !37, !range !38, !noundef !39
  %i.cl = trunc nuw i8 %i.ck to i1
  store i8 0, ptr %i.cj, align 8, !tbaa !37
  br i1 %i.cl, label %bb.h, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cm) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.thread222

.thread222:                                       ; preds = %._crit_edge, %bb.e, %bb.d, %.thread214, %bb.c, %bb.b, %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.053.15 = phi i8 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ch, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %.sroa.053.11.ph, %.thread214 ], [ 1, %bb.e ], [ 0, %bb.c ], [ 0, %._crit_edge ]
  ret i8 %.sroa.053.15
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4mlir5xegpu6DpasOp14getODSOperandsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %1 to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %vec.phi27 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %i.a = getelementptr inbounds nuw i8, ptr @__const._ZN4mlir5xegpu9StoreNdOp27getODSOperandIndexAndLengthEj.isVariadic, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.load = load <4 x i8>, ptr %i.a, align 1, !tbaa !311
  %wide.load28 = load <4 x i8>, ptr %i.b, align 1, !tbaa !311
  %i.c = zext nneg <4 x i8> %wide.load to <4 x i32>
  %i.d = zext nneg <4 x i8> %wide.load28 to <4 x i32>
  %i.e = add <4 x i32> %vec.phi, %i.c             ; 2 uses
  %i.f = add <4 x i32> %vec.phi27, %i.d           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !487

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.f, %i.e
  %i.h = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.014.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.h, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.h, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.i = load ptr, ptr %0, align 8, !tbaa !105    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 8388608
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation13operand_beginEv.exit, label %bb.b, !prof !126

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.014.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr @__const._ZN4mlir5xegpu9StoreNdOp27getODSOperandIndexAndLengthEj.isVariadic, i64 %indvars.iv.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !311, !range !38, !noundef !39
  %i.o = zext nneg i8 %i.n to i32
  %spec.select.i = add nuw nsw i32 %.014.i, %i.o  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !488

bb.b:                                             ; preds = %._crit_edge.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !133
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108
  br label %_ZN4mlir9Operation13operand_beginEv.exit

_ZN4mlir9Operation13operand_beginEv.exit:         ; preds = %._crit_edge.i, %bb.b
  %i.t = phi i32 [ %i.q, %bb.b ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.b ], [ null, %._crit_edge.i ]
  %.pn = zext i32 %1 to i64
  %.in = getelementptr inbounds nuw i8, ptr @__const._ZN4mlir5xegpu9StoreNdOp27getODSOperandIndexAndLengthEj.isVariadic, i64 %.pn
  %i.u = load i8, ptr %.in, align 1, !tbaa !311, !range !38, !noundef !39
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = add i32 %i.t, -2
  %i.x = zext i32 %i.w to i64
  %.sroa.2.0.insert.shift.i = select i1 %i.v, i64 %i.x, i64 1
  %i.y = add i32 %i.t, -3
  %i.z = mul nsw i32 %i.y, %.0.lcssa.i
  %i.aa = add i32 %i.z, %1
  %.sroa.0.0.insert.ext.i = zext i32 %i.aa to i64 ; 3 uses
  %i.ab = add nuw nsw i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i, i64 %.sroa.0.0.insert.ext.i
  %i.ae = sub nsw i64 %i.ac, %.sroa.0.0.insert.ext.i
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.ad, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.ae, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5xegpu6DpasOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir5xegpu6DpasOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir5xegpu6DpasOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.02.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5xegpu6DpasOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.687", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
end_hunk_0
