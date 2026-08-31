Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemRefOps?download=true
inline.NumInlined: 26998
inline.NumDeleted: 8857
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4mlir6memref9ReallocOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6memref9ReallocOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail27ReallocOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.249") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %class.anon.3041, align 1           ; 3 uses
  %9 = alloca %class.anon.3043, align 1           ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_6memref6detail27ReallocOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.a, align 8, !tbaa !24
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %6, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !500
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.b = ptrtoint ptr %8 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesINS1_6memref6detail27ReallocOpGenericAdaptorBase10PropertiesEEEvRT_EUlS2_E_EEvlS2_, ptr %i.c, align 8, !tbaa !500
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.b, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.d = ptrtoint ptr %9 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesINS1_6memref6detail27ReallocOpGenericAdaptorBase10PropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_, ptr %i.e, align 8, !tbaa !500
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !497
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !35 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.g, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %.sroa.2.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #26
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
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !40
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #26
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
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #26
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !178
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !680

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
define dso_local ptr @_ZN4mlir6memref9ReallocOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail27ReallocOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.249") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.373, i64 14) #26
  call void @_ZN4mlir6memref9ReallocOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail27ReallocOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.249") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #26 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_6memref9ReallocOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir6memref9ReallocOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail27ReallocOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.249") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.373, i64 14) #26
  call void @_ZN4mlir6memref9ReallocOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail27ReallocOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.249") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_6memref9ReallocOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir6memref9ReallocOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %class.anon.2161, align 8           ; 4 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.029.0.copyload = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.a, ptr %4, align 8, !tbaa !1014
  %i.h = ptrtoint ptr %4 to i64
  %i.i = call fastcc i8 @_ZL43__mlir_ods_local_attr_constraint_MemRefOps4N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %.sroa.029.0.copyload, ptr nonnull @.str.134, i64 9, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL43__mlir_ods_local_attr_constraint_MemRefOps4PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit, label %.thread109

_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_MemRefOps14PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.k, ptr %i.q, ptr nonnull @.str.139, i64 7, i32 noundef 0)
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %.thread109

.lr.ph.i.i.preheader:                             ; preds = %_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !44     ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 8388608
  %.not.i.i.i37 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i37, label %_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit42.thread, label %_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit42, !prof !8

_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit42: ; preds = %.lr.ph.i.i.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !13   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !9
  %i.ab = zext i32 %i.y to i64
  %i.ac = add nsw i64 %i.ab, -1                   ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 1
  br i1 %i.ad, label %_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit42.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit42
  %.not119126 = icmp eq i32 %i.y, 1
  br i1 %.not119126, label %._crit_edge, label %.lr.ph

_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit42.thread: ; preds = %.lr.ph.i.i.preheader, %_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit42
  %i.ae = phi i64 [ %i.ac, %_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit42 ], [ -1, %.lr.ph.i.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.ag, align 1, !tbaa !47
  store ptr @.str.245, ptr %6, align 8, !tbaa !50
  store i8 3, ptr %i.af, align 8, !tbaa !51
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) #26
  %i.ah = load ptr, ptr %5, align 8, !tbaa !52
  %.not.i.i43 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i43, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit42.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 5, ptr %3, align 8, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.aj, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !39 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !40
  %.not.i.i.i.i.i = icmp ult i32 %i.al, %i.an
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !41

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.d:                                             ; preds = %bb.b
  %i.ao = zext i32 %i.al to i64
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !39
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ak, align 8, !tbaa !39
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.pr = load ptr, ptr %5, align 8, !tbaa !52
  %.not.i.i44 = icmp eq ptr %.pr, null
  br i1 %.not.i.i44, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 3, ptr %2, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.246, ptr %i.at, align 8, !tbaa !72
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !35
  %i.au = load i32, ptr %i.ak, align 8, !tbaa !39 ; 2 uses
  %i.av = load i32, ptr %i.am, align 4, !tbaa !40
  %.not.i.i.i.i.i45 = icmp ult i32 %i.au, %i.av
  br i1 %.not.i.i.i.i.i45, label %bb.g, label %bb.f, !prof !41

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.aw = zext i32 %i.au to i64
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.az = load i32, ptr %i.ak, align 8, !tbaa !39
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ak, align 8, !tbaa !39
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.pr105 = load ptr, ptr %5, align 8, !tbaa !52
  %.not.i.i46 = icmp eq ptr %.pr105, null
  br i1 %.not.i.i46, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i32 5, ptr %1, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ae, ptr %i.bb, align 8, !tbaa !50
  %i.bc = load i32, ptr %i.ak, align 8, !tbaa !39 ; 2 uses
  %i.bd = load i32, ptr %i.am, align 4, !tbaa !40
  %.not.i.i.i.i.i47 = icmp ult i32 %i.bc, %i.bd
  br i1 %.not.i.i.i.i.i47, label %bb.j, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.be = zext i32 %i.bc to i64
  %i.bf = load ptr, ptr %i.ai, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bh = load i32, ptr %i.ak, align 8, !tbaa !39
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ak, align 8, !tbaa !39
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i:  ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit42.thread, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i
  %i.bj = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #26
  %i.bk = load ptr, ptr %5, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !61, !range !62, !noundef !63
  %i.bn = trunc nuw i8 %i.bm to i1
  store i8 0, ptr %i.bl, align 8, !tbaa !61
  br i1 %i.bn, label %bb.m, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bo) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.thread109

.lr.ph:                                           ; preds = %.preheader, %15
  %.2128 = phi i32 [ %16, %15 ], [ 1, %.preheader ] ; 2 uses
  %.sroa.474.0127 = phi i64 [ %17, %15 ], [ 0, %.preheader ] ; 2 uses
  %7 = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.474.0127
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %.sroa.0.0.copyload.i.i.i52 = load ptr, ptr %8, align 8, !tbaa !14
  %9 = load ptr, ptr %0, align 8, !tbaa !44
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i52, i64 8
  %.0.copyload.i.i.i.i.i53 = load i64, ptr %10, align 8
  %11 = and i64 %.0.copyload.i.i.i.i.i53, -8
  %12 = inttoptr i64 %11 to ptr
  %13 = call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_MemRefOps11PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %9, ptr %12, ptr nonnull @.str.139, i64 7, i32 noundef %.2128)
  %14 = trunc nuw i8 %13 to i1
  br i1 %14, label %15, label %.thread109

15:                                               ; preds = %.lr.ph
  %16 = add i32 %.2128, 1
  %17 = add nuw nsw i64 %.sroa.474.0127, 1        ; 2 uses
  %.not119 = icmp eq i64 %17, %i.ac
  br i1 %.not119, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %15
  %.pre = load ptr, ptr %0, align 8, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bp = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.t, %.preheader ]
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -16
  %i.br = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 noundef 0) #26
  %i.bs = load ptr, ptr %0, align 8, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.0.copyload.i.i.i.i.i60 = load i64, ptr %i.bt, align 8
  %i.bu = and i64 %.0.copyload.i.i.i.i.i60, -8
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_MemRefOps14PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bs, ptr %i.bv, ptr nonnull @.str.8, i64 6, i32 noundef 0)
  br label %.thread109

.thread109:                                       ; preds = %.lr.ph, %._crit_edge, %_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %bb.a
  %.sroa.031.11 = phi i8 [ %i.bj, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %_ZN4mlir6memref9ReallocOp14getODSOperandsEj.exit ], [ %i.bw, %._crit_edge ], [ 0, %bb.a ], [ 0, %.lr.ph ]
  ret i8 %.sroa.031.11
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL44__mlir_ods_local_type_constraint_MemRefOps14PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::ShapedType", align 8  ; 6 uses
  %10 = alloca %"class.mlir::ShapedType", align 8 ; 6 uses
  %11 = alloca %"class.mlir::ShapedType", align 8 ; 6 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !21     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.277, i64 49), i64 16) #26
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !24 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !37   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !65

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !18
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.v, label %bb.f, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !66
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.y = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ], [ %i.x, %bb.f ], [ null, %bb.e ]
  store ptr %1, ptr %9, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !24
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9TokenTypeEvE2idE
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit
  %i.ad = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.h, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8, !prof !64

bb.h:                                             ; preds = %bb.g
  %i.ah = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i.i.i26 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i26, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.277, i64 49), i64 16) #26
  store ptr %i.ai, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !24 ; 2 uses
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !37 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i10 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i10, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i20, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i11

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i11: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i11
  %.017.i.i.i.i.i.i.i.i.i.i.i.i13 = phi i64 [ %i.am, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i11 ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i19, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12 ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i14 = phi ptr [ %i.aj, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i11 ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i18, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12 ] ; 2 uses
  %i.an = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i13, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i14, i64 %i.an ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i17 = load ptr, ptr %i.ao, align 8, !tbaa !24
  %i.ap = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i17, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i9 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = xor i64 %i.an, -1
  %i.as = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i13, %i.ar
  %.112.i.i.i.i.i.i.i.i.i.i.i.i18 = select i1 %i.ap, ptr %i.aq, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i14 ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i19 = select i1 %i.ap, i64 %i.as, i64 %i.an ; 2 uses
  %i.at = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i19, 0
  br i1 %i.at, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i20, !llvm.loop !65

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i20: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8
  %.pre-phi.i.i.i.i.i.i.i.i.i21 = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8 ], [ %i.am, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12 ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i22 = phi ptr [ %i.aj, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8 ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i18, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12 ] ; 3 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %.pre-phi.i.i.i.i.i.i.i.i.i21
  %.not.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i22, %i.au
  br i1 %.not.i.i.i.i.i.i.i.i.i23, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit27, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i20
  %i.av = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i22, align 8, !tbaa !18
  %i.aw = icmp eq ptr %i.av, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i9
  br i1 %i.aw, label %bb.k, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit27

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i22, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !66
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit27

_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit27: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i20, %bb.j, %bb.k
  %i.az = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i20 ], [ %i.ay, %bb.k ], [ null, %bb.j ]
  store ptr %1, ptr %10, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = call noundef zeroext i1 @_ZNK4mlir10ShapedType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #26
  br i1 %i.bb, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit27
  %i.bc = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.m, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i30, !prof !64

bb.m:                                             ; preds = %bb.l
  %i.bg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i.i.i48 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i48, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i30, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.277, i64 49), i64 16) #26
  store ptr %i.bh, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i30

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i30: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !24 ; 2 uses
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !37 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i32 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i32, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i42, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i33

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i33: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i30
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i34

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i34: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i34, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i33
  %.017.i.i.i.i.i.i.i.i.i.i.i.i35 = phi i64 [ %i.bl, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i33 ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i41, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i34 ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i36 = phi ptr [ %i.bi, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i33 ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i40, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i34 ] ; 2 uses
end_hunk_0
