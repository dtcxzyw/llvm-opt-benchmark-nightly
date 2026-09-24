Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestOps.0?download=true
inline.NumInlined: 12432
inline.NumDeleted: 4778
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN4test14AsmInterfaceOp6createERN4mlir9OpBuilderENS1_8LocationENS1_9TypeRangeENS1_10ValueRangeEN4llvm8ArrayRefINS1_14NamedAttributeEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test14AsmInterfaceOp6createERN4mlir20ImplicitLocOpBuilderENS1_9TypeRangeENS1_10ValueRangeEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.63") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.97, i64 21) #27
  call void @_ZN4test14AsmInterfaceOp5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.63") align 8 %5)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverIN4test14AsmInterfaceOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4test14AsmInterfaceOp5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS1_15EmptyPropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.63") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %class.anon.1307, align 1           ; 3 uses
  %9 = alloca %class.anon.1309, align 1           ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE, ptr %i.a, align 8, !tbaa !37
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %6, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.b = ptrtoint ptr %8 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_E_EEvlS2_, ptr %i.c, align 8, !tbaa !90
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.b, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.d = ptrtoint ptr %9 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_, ptr %i.e, align 8, !tbaa !90
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !89
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !79 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.g, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %.sroa.2.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #27
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !31
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.r = zext i32 %.pre8.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !31
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !31   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #27
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !31 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #27
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !86
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !31
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test14AsmInterfaceOp6createERN4mlir9OpBuilderENS1_8LocationENS1_9TypeRangeENS1_10ValueRangeERKNS1_15EmptyPropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.63") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.97, i64 21) #27
  call void @_ZN4test14AsmInterfaceOp5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS1_15EmptyPropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.63") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverIN4test14AsmInterfaceOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test14AsmInterfaceOp6createERN4mlir20ImplicitLocOpBuilderENS1_9TypeRangeENS1_10ValueRangeERKNS1_15EmptyPropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.63") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.97, i64 21) #27
  call void @_ZN4test14AsmInterfaceOp5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS1_15EmptyPropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.63") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverIN4test14AsmInterfaceOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4test14AsmInterfaceOp20verifyInvariantsImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.c = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0) #27
  %i.d = load ptr, ptr %0, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_0TestOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.d, ptr %i.g, ptr nonnull @.str.14, i64 6, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4test14AsmInterfaceOp13getODSResultsEj.exit, label %.thread104

_ZN4test14AsmInterfaceOp13getODSResultsEj.exit:   ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !134  ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -16
  %i.n = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef 1) #27
  %.not107115 = icmp eq i32 %i.l, 2
  br i1 %.not107115, label %.lr.ph.i.i44.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4test14AsmInterfaceOp13getODSResultsEj.exit
  %.narrow = add i32 %i.l, -1
  %1 = zext i32 %.narrow to i64
  %2 = add nsw i64 %1, -2
  br label %.lr.ph

.lr.ph.i.i44.preheader:                           ; preds = %bb.b, %_ZN4test14AsmInterfaceOp13getODSResultsEj.exit
  %.2.lcssa = phi i32 [ 1, %_ZN4test14AsmInterfaceOp13getODSResultsEj.exit ], [ %i.ab, %bb.b ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !134
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %.sroa.0.0.insert.ext.i.i51 = zext i32 %i.r to i64 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 -16 ; 2 uses
  %i.t = icmp eq i32 %i.r, 0
  br i1 %i.t, label %_ZN4test14AsmInterfaceOp13getODSResultsEj.exit55, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.2117 = phi i32 [ %i.ab, %bb.b ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.474.0116 = phi i64 [ %i.ac, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef %.sroa.474.0116) #27
  %i.v = load ptr, ptr %0, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i43 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i43, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_0TestOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.14, i64 6, i32 noundef %.2117)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.b, label %.thread104

bb.b:                                             ; preds = %.lr.ph
  %i.ab = add i32 %.2117, 1                       ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.474.0116, 1
  %.not107 = icmp eq i64 %.sroa.474.0116, %2
  br i1 %.not107, label %.lr.ph.i.i44.preheader, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph.i.i44.preheader
  %i.ad = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 noundef %.sroa.0.0.insert.ext.i.i51) #27
  br label %_ZN4test14AsmInterfaceOp13getODSResultsEj.exit55

_ZN4test14AsmInterfaceOp13getODSResultsEj.exit55: ; preds = %.lr.ph.i.i44.preheader, %bb.c
  %i.ae = phi ptr [ %i.ad, %bb.c ], [ %i.s, %.lr.ph.i.i44.preheader ]
  %i.af = add nuw nsw i64 %.sroa.0.0.insert.ext.i.i51, 1
  %i.ag = and i64 %i.af, 4294967295               ; 2 uses
  %i.ah = sub nsw i64 %i.ag, %.sroa.0.0.insert.ext.i.i51
  %.not108118 = icmp eq i64 %i.ag, %.sroa.0.0.insert.ext.i.i51
  br i1 %.not108118, label %.thread104, label %.lr.ph121

.lr.ph121:                                        ; preds = %_ZN4test14AsmInterfaceOp13getODSResultsEj.exit55, %bb.d
  %.4120 = phi i32 [ %i.ap, %bb.d ], [ %.2.lcssa, %_ZN4test14AsmInterfaceOp13getODSResultsEj.exit55 ] ; 2 uses
  %.sroa.4.0119 = phi i64 [ %i.aq, %bb.d ], [ 0, %_ZN4test14AsmInterfaceOp13getODSResultsEj.exit55 ] ; 2 uses
  %i.ai = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef %.sroa.4.0119) #27
  %i.aj = load ptr, ptr %0, align 8, !tbaa !93
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.0.copyload.i.i.i.i.i60 = load i64, ptr %i.ak, align 8
  %i.al = and i64 %.0.copyload.i.i.i.i.i60, -8
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = tail call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_0TestOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.aj, ptr %i.am, ptr nonnull @.str.14, i64 6, i32 noundef %.4120)
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %.thread104

bb.d:                                             ; preds = %.lr.ph121
  %i.ap = add i32 %.4120, 1
  %i.aq = add nuw nsw i64 %.sroa.4.0119, 1        ; 2 uses
  %.not108 = icmp eq i64 %i.aq, %i.ah
  br i1 %.not108, label %.thread104, label %.lr.ph121

.thread104:                                       ; preds = %.lr.ph, %bb.d, %.lr.ph121, %bb.a, %_ZN4test14AsmInterfaceOp13getODSResultsEj.exit55
  %.sroa.026.11 = phi i8 [ 0, %.lr.ph121 ], [ 1, %_ZN4test14AsmInterfaceOp13getODSResultsEj.exit55 ], [ 0, %bb.a ], [ 1, %bb.d ], [ 0, %.lr.ph ]
  ret i8 %.sroa.026.11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4test14AsmInterfaceOp16verifyInvariantsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4test14AsmInterfaceOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4test14AsmInterfaceOp27setPropertiesFromParsedAttrERN4mlir15EmptyPropertiesENS1_9AttributeEN4llvm12function_refIFNS1_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DictionaryAttr", align 8 ; 6 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %9 = alloca %"class.mlir::NamedAttribute", align 8 ; 5 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, i64 noundef %3) #27, !inline_history !1
  %i.e = load ptr, ptr %8, align 8, !tbaa !72
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i32 3, ptr %6, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str, ptr %i.g, align 8, !tbaa !77
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !31
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !31
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.pr = load ptr, ptr %8, align 8, !tbaa !72
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !81, !range !82, !noundef !83
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !81
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir10StringAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

bb.h:                                             ; preds = %bb.a
  %i.u = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #27 ; 0 uses
  %i.v = call noundef ptr @_ZNK4mlir14DictionaryAttr5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #27 ; 2 uses
  %i.w = call noundef ptr @_ZNK4mlir14DictionaryAttr3endEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  %.not = icmp eq ptr %i.v, %i.w
  br i1 %.not, label %_ZN4llvm6detail12DenseSetImplIN4mlir10StringAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !101
  %i.x = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, i64 noundef %3) #27, !inline_history !1
  %i.y = load ptr, ptr %10, align 8, !tbaa !72
  %.not.i.i9 = icmp eq ptr %i.y, null
  br i1 %.not.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i32 3, ptr %5, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.2, ptr %i.aa, align 8, !tbaa !77
  %.sroa.2.0..sroa_idx.i.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 13, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i10, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32
  %.not.i.i.i.i.i11 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i11, label %bb.l, label %bb.k, !prof !80

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !31
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !31
  br label %_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit: ; preds = %bb.i, %_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i
  %i.ak = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #27
  %i.al = load ptr, ptr %10, align 8, !tbaa !72
  %.not.i.i12 = icmp eq ptr %i.al, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.an = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(192) %i.am, ptr %i.ak) #27 ; 0 uses
  %.pr29 = load ptr, ptr %10, align 8, !tbaa !72
  %.not.i.i14 = icmp eq ptr %.pr29, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i32 3, ptr %4, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.3, ptr %i.ap, align 8, !tbaa !77
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !79
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
end_hunk_0
