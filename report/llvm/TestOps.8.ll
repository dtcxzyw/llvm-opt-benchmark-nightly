Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestOps.8?download=true
inline.NumInlined: 10003
inline.NumDeleted: 3874
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4test20OperandsHaveSameType5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS1_15EmptyPropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #25
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !27
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.r = zext i32 %.pre8.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !27
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !27   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !28
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #25
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !27 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #25
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !85
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !27
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test20OperandsHaveSameType6createERN4mlir9OpBuilderENS1_8LocationENS1_9TypeRangeENS1_10ValueRangeERKNS1_15EmptyPropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.66") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.73, i64 28) #25
  call void @_ZN4test20OperandsHaveSameType5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS1_15EmptyPropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.66") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverIN4test20OperandsHaveSameTypeEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test20OperandsHaveSameType6createERN4mlir20ImplicitLocOpBuilderENS1_9TypeRangeENS1_10ValueRangeERKNS1_15EmptyPropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.66") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.73, i64 28) #25
  call void @_ZN4test20OperandsHaveSameType5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS1_15EmptyPropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.66") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #25 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverIN4test20OperandsHaveSameTypeEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4test20OperandsHaveSameType20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_8TestOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.3, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit31, label %.thread121

_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit31: ; preds = %_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i36 = load ptr, ptr %i.m, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i36, i64 8
  %.0.copyload.i.i.i.i.i37 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i37, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_8TestOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.3, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit51, label %.thread121

_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit51: ; preds = %_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit31
  %i.s = load ptr, ptr %0, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.copyload.i.i.i45 = load ptr, ptr %i.v, align 8, !tbaa !91
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i45, i64 8
  %.0.copyload.i.i.i.i.i46 = load i64, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.0.0.copyload.i.i.i54 = load ptr, ptr %i.x, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i54, i64 8
  %.0.copyload.i.i.i.i.i55 = load i64, ptr %i.y, align 8
  %i.z = xor i64 %.0.copyload.i.i.i.i.i55, %.0.copyload.i.i.i.i.i46
  %i.aa = icmp ult i64 %i.z, 8
  br i1 %i.aa, label %.thread121, label %.thread136

.thread136:                                       ; preds = %_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !99
  store ptr @.str.30, ptr %2, align 8, !tbaa !100
  store i8 3, ptr %i.ab, align 8, !tbaa !98
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #25
  %i.ad = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #25
  %i.ae = load ptr, ptr %1, align 8, !tbaa !71
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.thread136
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread136
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !80, !range !81, !noundef !82
  %i.ah = trunc nuw i8 %i.ag to i1
  store i8 0, ptr %i.af, align 8, !tbaa !80
  br i1 %i.ah, label %bb.c, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ai) #25
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %.thread121

.thread121:                                       ; preds = %_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit51, %_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit, %_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit31, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.019.7 = phi i8 [ %i.ad, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit ], [ 0, %_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit31 ], [ 1, %_ZN4test20OperandsHaveSameType14getODSOperandsEj.exit51 ]
  ret i8 %.sroa.019.7
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4test20OperandsHaveSameType16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4test20OperandsHaveSameType20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4test20OperandsHaveSameType27setPropertiesFromParsedAttrERN4mlir15EmptyPropertiesENS1_9AttributeEN4llvm12function_refIFNS1_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DictionaryAttr", align 8 ; 6 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %9 = alloca %"class.mlir::NamedAttribute", align 8 ; 5 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, i64 noundef %3) #25, !inline_history !1
  %i.e = load ptr, ptr %8, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 3, ptr %6, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.2, ptr %i.g, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !27
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.pr = load ptr, ptr %8, align 8, !tbaa !71
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #25
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !80, !range !81, !noundef !82
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !80
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #25
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir10StringAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

bb.h:                                             ; preds = %bb.a
  %i.u = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #25 ; 0 uses
  %i.v = call noundef ptr @_ZNK4mlir14DictionaryAttr5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #25 ; 2 uses
  %i.w = call noundef ptr @_ZNK4mlir14DictionaryAttr3endEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #25
  %.not = icmp eq ptr %i.v, %i.w
  br i1 %.not, label %_ZN4llvm6detail12DenseSetImplIN4mlir10StringAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !102
  %i.x = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, i64 noundef %3) #25, !inline_history !1
  %i.y = load ptr, ptr %10, align 8, !tbaa !71
  %.not.i.i9 = icmp eq ptr %i.y, null
  br i1 %.not.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i32 3, ptr %5, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.5, ptr %i.aa, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 13, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i10, align 8, !tbaa !78
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %.not.i.i.i.i.i11 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i11, label %bb.l, label %bb.k, !prof !79

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !27
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !27
  br label %_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit: ; preds = %bb.i, %_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i
  %i.ak = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  %i.al = load ptr, ptr %10, align 8, !tbaa !71
  %.not.i.i12 = icmp eq ptr %i.al, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.an = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(192) %i.am, ptr %i.ak) #25 ; 0 uses
  %.pr29 = load ptr, ptr %10, align 8, !tbaa !71
  %.not.i.i14 = icmp eq ptr %.pr29, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i32 3, ptr %4, align 8, !tbaa !74
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.6, ptr %i.ap, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !28
  %.not.i.i.i.i.i16 = icmp ult i32 %i.ar, %i.at
  br i1 %.not.i.i.i.i.i16, label %bb.o, label %bb.n, !prof !79

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.au = zext i32 %i.ar to i64
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.ax = load i32, ptr %i.aq, align 8, !tbaa !27
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aq, align 8, !tbaa !27
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i
  %i.az = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #25
  %i.ba = load ptr, ptr %10, align 8, !tbaa !71
  %.not.i17 = icmp eq ptr %i.ba, null
  br i1 %.not.i17, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
end_hunk_0
