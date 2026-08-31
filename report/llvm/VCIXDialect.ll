Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VCIXDialect?download=true
inline.NumInlined: 2021
inline.NumDeleted: 1004
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir4vcix11BinaryImmOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail29BinaryImmOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !117
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !119

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !103
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4vcix11BinaryImmOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail29BinaryImmOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.55") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.25, i64 9) #24
  call void @_ZN4mlir4vcix11BinaryImmOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail29BinaryImmOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.55") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_4vcix11BinaryImmOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4vcix11BinaryImmOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail29BinaryImmOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.55") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.25, i64 9) #24
  call void @_ZN4mlir4vcix11BinaryImmOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail29BinaryImmOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.55") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_4vcix11BinaryImmOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir4vcix11BinaryImmOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon, align 8                ; 4 uses
  %2 = alloca %class.anon, align 8                ; 4 uses
  %3 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.e, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = lshr i32 %i.e, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !74
  store ptr @.str.10, ptr %4, align 8, !tbaa !77
  store i8 3, ptr %i.m, align 8, !tbaa !78
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %4) #24
  %i.o = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #24
  %i.p = load ptr, ptr %3, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !87, !range !66, !noundef !67
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !87
  br i1 %i.s, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.thread113

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44   ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !74
  store ptr @.str.11, ptr %6, align 8, !tbaa !77
  store i8 3, ptr %i.x, align 8, !tbaa !78
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) #24
  %i.z = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #24
  %i.aa = load ptr, ptr %5, align 8, !tbaa !79
  %.not.i36 = icmp eq ptr %i.aa, null
  br i1 %.not.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !87, !range !66, !noundef !67
  %i.ad = trunc nuw i8 %i.ac to i1
  store i8 0, ptr %i.ab, align 8, !tbaa !87
  br i1 %i.ad, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit37

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ae) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit37

_ZN4mlir18InFlightDiagnosticD2Ev.exit37:          ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.thread113

bb.k:                                             ; preds = %bb.f
  %i.af = inttoptr i64 %i.v to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.c, ptr %2, align 8, !tbaa !124
  %i.ag = ptrtoint ptr %2 to i64
  %i.ah = call fastcc i8 @_ZL41__mlir_ods_local_attr_constraint_VCIXOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.af, ptr nonnull @.str.7, i64 6, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL41__mlir_ods_local_attr_constraint_VCIXOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.l, label %.thread113

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %0, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr %i.aj, ptr %1, align 8, !tbaa !124
  %i.ak = ptrtoint ptr %1 to i64
  %i.al = call fastcc i8 @_ZL41__mlir_ods_local_attr_constraint_VCIXOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.k, ptr nonnull @.str.5, i64 3, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL41__mlir_ods_local_attr_constraint_VCIXOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit, label %.thread113

_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !93    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !126
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ar, align 8
  %i.as = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.at = inttoptr i64 %i.as to ptr
  store i32 1, ptr %i.a, align 4, !tbaa !128
  %i.au = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_VCIXOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.an, ptr %i.at, ptr nonnull @.str.12, i64 7, i32 noundef 0)
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.lr.ph.i.i.preheader, label %.thread105

.lr.ph.i.i.preheader:                             ; preds = %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !93    ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %i.ay, 8388608
  %.not.i.i.i42 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i42, label %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit47.thread, label %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit47, !prof !69

_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit47: ; preds = %.lr.ph.i.i.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !73 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !70
  %i.be = zext i32 %i.bb to i64
  %i.bf = add nsw i64 %i.be, -1                   ; 2 uses
  %i.bg = icmp ugt i64 %i.bf, 1
  br i1 %i.bg, label %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit47.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit47
  %.not115118 = icmp eq i32 %i.bb, 1
  br i1 %.not115118, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %9 = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %.sroa.0.0.copyload.i.i.i52 = load ptr, ptr %9, align 8, !tbaa !126
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i52, i64 8
  %.0.copyload.i.i.i.i.i53 = load i64, ptr %10, align 8
  %11 = and i64 %.0.copyload.i.i.i.i.i53, -8
  %12 = inttoptr i64 %11 to ptr
  %13 = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_VCIXOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.aw, ptr %12, ptr nonnull @.str.12, i64 7, i32 noundef 1)
  %14 = trunc nuw i8 %13 to i1
  br i1 %14, label %.lr.ph, label %bb.m

_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit47.thread: ; preds = %.lr.ph.i.i.preheader, %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit47
  %i.bh = phi i64 [ %i.bf, %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit47 ], [ -1, %.lr.ph.i.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.bj, align 1, !tbaa !74
  store ptr @.str.13, ptr %8, align 8, !tbaa !77
  store i8 3, ptr %i.bi, align 8, !tbaa !78
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #24
  %i.bk = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.bl = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bk, ptr noundef nonnull align 1 dereferenceable(37) @.str.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !102
  %i.bm = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.bn = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.bm) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.thread105

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.bo = load ptr, ptr %0, align 8, !tbaa !93
  br label %._crit_edge

.thread105:                                       ; preds = %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit, %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit47.thread
  %.sroa.032.7.ph = phi i8 [ %i.bn, %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit47.thread ], [ 0, %_ZN4mlir4vcix11BinaryImmOp14getODSOperandsEj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.thread113

bb.m:                                             ; preds = %.lr.ph.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.thread113

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.bp = phi ptr [ %i.bo, %.lr.ph ], [ %i.aw, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -16
  %i.br = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 noundef 0) #24
  %i.bs = load ptr, ptr %0, align 8, !tbaa !93
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.0.copyload.i.i.i.i.i60 = load i64, ptr %i.bt, align 8
  %i.bu = and i64 %.0.copyload.i.i.i.i.i60, -8
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_VCIXOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bs, ptr %i.bv, ptr nonnull @.str.15, i64 6, i32 noundef 0)
  br label %.thread113

.thread113:                                       ; preds = %._crit_edge, %_ZN4mlir18InFlightDiagnosticD2Ev.exit37, %bb.k, %bb.l, %.thread105, %bb.m, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.032.12 = phi i8 [ %i.o, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.z, %_ZN4mlir18InFlightDiagnosticD2Ev.exit37 ], [ 0, %bb.m ], [ 0, %bb.k ], [ %.sroa.032.7.ph, %.thread105 ], [ 0, %bb.l ], [ %i.bw, %._crit_edge ]
  ret i8 %.sroa.032.12
}

declare void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL41__mlir_ods_local_type_constraint_VCIXOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZN4mlir4LLVM22isCompatibleVectorTypeENS_4TypeE(ptr %1) #24
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 5, ptr %i.b, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.c, align 1, !tbaa !74
  store ptr %2, ptr %10, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %3, ptr %i.d, align 8, !tbaa !77
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %10) #24
  %i.e = load ptr, ptr %9, align 8, !tbaa !79
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store i32 3, ptr %8, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.26, ptr %i.g, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 12 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !105
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !106

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !103
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !103
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.pr = load ptr, ptr %9, align 8, !tbaa !79
  %.not.i.i5 = icmp eq ptr %.pr, null
  br i1 %.not.i.i5, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 5, ptr %7, align 8, !tbaa !98
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = zext i32 %4 to i64
  store i64 %i.r, ptr %i.q, align 8, !tbaa !77
  %i.s = load i32, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %i.t = load i32, ptr %i.j, align 4, !tbaa !105
  %.not.i.i.i.i.i6 = icmp ult i32 %i.s, %i.t
  br i1 %.not.i.i.i.i.i6, label %bb.h, label %bb.g, !prof !106

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.h:                                             ; preds = %bb.f
  %i.u = zext i32 %i.s to i64
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.x = load i32, ptr %i.h, align 8, !tbaa !103
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.h, align 8, !tbaa !103
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.pr13 = load ptr, ptr %9, align 8, !tbaa !79
  %.not.i.i7 = icmp eq ptr %.pr13, null
  br i1 %.not.i.i7, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i32 3, ptr %6, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.27, ptr %i.z, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 54, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i8, align 8, !tbaa !102
  %i.aa = load i32, ptr %i.h, align 8, !tbaa !103 ; 2 uses
  %i.ab = load i32, ptr %i.j, align 4, !tbaa !105
  %.not.i.i.i.i.i9 = icmp ult i32 %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i9, label %bb.k, label %bb.j, !prof !106

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.af = load i32, ptr %i.h, align 8, !tbaa !103
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.h, align 8, !tbaa !103
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.pr15.pr = load ptr, ptr %9, align 8, !tbaa !79
  %.not.i.i10 = icmp eq ptr %.pr15.pr, null
  br i1 %.not.i.i10, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %1) #24
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !103 ; 2 uses
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !105
  %.not.i.i.i.i.i11 = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i.i.i.i.i11, label %bb.n, label %bb.m, !prof !106

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.aj = zext i32 %i.ah to i64
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.am = load i32, ptr %i.h, align 8, !tbaa !103
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.h, align 8, !tbaa !103
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit, %bb.b, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i
  %i.ao = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !87, !range !66, !noundef !67
  %i.as = trunc nuw i8 %i.ar to i1
  store i8 0, ptr %i.aq, align 8, !tbaa !87
  br i1 %i.as, label %bb.q, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.at) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.04.0 = phi i8 [ %i.ao, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.04.0
}
end_hunk_0
begin_hunk_1_@_ZN4mlir4vcix8BinaryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail26BinaryOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #24
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !103 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !107
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #24
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !117
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !119

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !103
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4vcix8BinaryOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail26BinaryOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.55") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.29, i64 9) #24
  call void @_ZN4mlir4vcix8BinaryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail26BinaryOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.55") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_4vcix8BinaryOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4vcix8BinaryOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail26BinaryOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.55") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.29, i64 9) #24
  call void @_ZN4mlir4vcix8BinaryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail26BinaryOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.55") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_4vcix8BinaryOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir4vcix8BinaryOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 10 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %class.anon, align 8               ; 4 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.k, align 1, !tbaa !74
  store ptr @.str.11, ptr %13, align 8, !tbaa !77
  store i8 3, ptr %i.j, align 8, !tbaa !78
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %13) #24
  %i.l = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #24
  %i.m = load ptr, ptr %12, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !87, !range !66, !noundef !67
  %i.p = trunc nuw i8 %i.o to i1
  store i8 0, ptr %i.n, align 8, !tbaa !87
  br i1 %i.p, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.q) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.thread180

bb.f:                                             ; preds = %bb.a
  %i.r = inttoptr i64 %i.h to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %i.a, ptr %11, align 8, !tbaa !124
  %i.s = ptrtoint ptr %11 to i64
  %i.t = call fastcc i8 @_ZL41__mlir_ods_local_attr_constraint_VCIXOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.r, ptr nonnull @.str.7, i64 6, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL41__mlir_ods_local_attr_constraint_VCIXOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit, label %.thread180

_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit:    ; preds = %bb.f
  %i.v = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.z, align 8
  %i.aa = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_VCIXOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.v, ptr %i.ab, ptr nonnull @.str.12, i64 7, i32 noundef 0)
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.lr.ph.i.i.preheader, label %.thread180

.lr.ph.i.i.preheader:                             ; preds = %_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !93    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 33
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i102 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 12 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i95 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.0.0.copyload.i.i.i54 = load ptr, ptr %i.as, align 8, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i54, i64 8
  %.0.copyload.i.i.i.i.i55 = load i64, ptr %i.at, align 8
  %i.au = and i64 %.0.copyload.i.i.i.i.i55, -8
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.av, ptr %8, align 8
  %i.aw = call noundef zeroext i1 @_ZN4mlir4LLVM22isCompatibleVectorTypeENS_4TypeE(ptr %i.av) #24
  br i1 %i.aw, label %_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread, label %bb.g

.lr.ph.i.i56.preheader:                           ; preds = %_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread, %_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !93    ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre219 = load i32, ptr %.phi.trans.insert, align 4
  %.pre221 = and i32 %.pre219, 8388608
  %.not.i.i.i63 = icmp eq i32 %.pre221, 0
  br i1 %.not.i.i.i63, label %_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit69.thread, label %_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit69, !prof !69

bb.g:                                             ; preds = %.lr.ph.i.i.preheader
  %i.ax = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 64) #24
  br i1 %i.ax, label %_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 32) #24
  br i1 %i.ay, label %_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = call noundef zeroext i1 @_ZNK4mlir4Type5isF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br i1 %i.az, label %_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br i1 %i.ba, label %_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = call noundef zeroext i1 @_ZNK4mlir4Type5isF64Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br i1 %i.bb, label %_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store i8 5, ptr %i.ah, align 8, !tbaa !78
  store i8 1, ptr %i.ai, align 1, !tbaa !74
  store ptr @.str.12, ptr %10, align 8, !tbaa !77
  store i64 7, ptr %i.aj, align 8, !tbaa !77
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(34) %10) #24
  %i.bc = load ptr, ptr %9, align 8, !tbaa !79
  %.not.i.i101 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i101, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i32 3, ptr %1, align 8, !tbaa !98
  store ptr @.str.26, ptr %i.al, align 8, !tbaa !101
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i102, align 8, !tbaa !102
  %i.bd = load i32, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %i.be = load i32, ptr %i.an, align 4, !tbaa !105
  %.not.i.i.i.i.i103 = icmp ult i32 %i.bd, %i.be
  br i1 %.not.i.i.i.i.i103, label %bb.o, label %bb.n, !prof !106

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

bb.o:                                             ; preds = %bb.m
  %i.bf = zext i32 %i.bd to i64
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !107
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bi = load i32, ptr %i.am, align 8, !tbaa !103
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.am, align 8, !tbaa !103
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %.pr = load ptr, ptr %9, align 8, !tbaa !79
  %.not.i.i97 = icmp eq ptr %.pr, null
  br i1 %.not.i.i97, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i32 5, ptr %2, align 8, !tbaa !98
  store i64 1, ptr %i.ao, align 8, !tbaa !77
  %i.bk = load i32, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %i.bl = load i32, ptr %i.an, align 4, !tbaa !105
  %.not.i.i.i.i.i98 = icmp ult i32 %i.bk, %i.bl
  br i1 %.not.i.i.i.i.i98, label %bb.r, label %bb.q, !prof !106

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit100

bb.r:                                             ; preds = %bb.p
  %i.bm = zext i32 %i.bk to i64
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !107
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bp = load i32, ptr %i.am, align 8, !tbaa !103
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.am, align 8, !tbaa !103
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit100

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit100: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pr162 = load ptr, ptr %9, align 8, !tbaa !79
  %.not.i.i94 = icmp eq ptr %.pr162, null
  br i1 %.not.i.i94, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit100
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 3, ptr %3, align 8, !tbaa !98
  store ptr @.str.30, ptr %i.ap, align 8, !tbaa !101
  store i64 156, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i95, align 8, !tbaa !102
  %i.br = load i32, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %i.bs = load i32, ptr %i.an, align 4, !tbaa !105
  %.not.i.i.i.i.i96 = icmp ult i32 %i.br, %i.bs
  br i1 %.not.i.i.i.i.i96, label %bb.u, label %bb.t, !prof !106

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA157_KcEEOS0_OT_.exit

bb.u:                                             ; preds = %bb.s
  %i.bt = zext i32 %i.br to i64
  %i.bu = load ptr, ptr %i.ak, align 8, !tbaa !107
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bw = load i32, ptr %i.am, align 8, !tbaa !103
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.am, align 8, !tbaa !103
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA157_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA157_KcEEOS0_OT_.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.pr164.pr = load ptr, ptr %9, align 8, !tbaa !79
  %.not.i.i92 = icmp eq ptr %.pr164.pr, null
  br i1 %.not.i.i92, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA157_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %8, align 8, !tbaa !117
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %.sroa.0.0.copyload.i.i.i.i) #24
  %i.by = load i32, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %i.bz = load i32, ptr %i.an, align 4, !tbaa !105
  %.not.i.i.i.i.i93 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i.i.i.i.i93, label %bb.x, label %bb.w, !prof !106

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %i.ak, align 8, !tbaa !107
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.cd = load i32, ptr %i.am, align 8, !tbaa !103
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.am, align 8, !tbaa !103
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit, %bb.l, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit100, %_ZNO4mlir18InFlightDiagnosticlsIRA157_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i
  %i.cf = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #24
  %i.cg = load ptr, ptr %9, align 8, !tbaa !79
  %.not.i90 = icmp eq ptr %i.cg, null
  br i1 %.not.i90, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  %i.ch = load i8, ptr %i.aq, align 8, !tbaa !87, !range !66, !noundef !67
  %i.ci = trunc nuw i8 %i.ch to i1
  store i8 0, ptr %i.aq, align 8, !tbaa !87
  br i1 %i.ci, label %bb.aa, label %_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit

_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %.lr.ph.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.lr.ph.i.i56.preheader

_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.cj = trunc nuw i8 %i.cf to i1
  br i1 %i.cj, label %.lr.ph.i.i56.preheader, label %.thread180

_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit69:  ; preds = %.lr.ph.i.i56.preheader
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre, i64 68
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !73 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !70
  %i.co = zext i32 %i.cl to i64
  %i.cp = add nsw i64 %i.co, -2                   ; 2 uses
  %i.cq = icmp ugt i64 %i.cp, 1
  br i1 %i.cq, label %_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit69.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit69
  %.not194206 = icmp eq i32 %i.cl, 2
  br i1 %.not194206, label %._crit_edge, label %.lr.ph209.preheader

.lr.ph209.preheader:                              ; preds = %.preheader
  %16 = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  %.sroa.0.0.copyload.i.i.i81 = load ptr, ptr %16, align 8, !tbaa !126
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i81, i64 8
  %.0.copyload.i.i.i.i.i82 = load i64, ptr %17, align 8
  %18 = and i64 %.0.copyload.i.i.i.i.i82, -8
  %19 = inttoptr i64 %18 to ptr
  %20 = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_VCIXOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %.pre, ptr %19, ptr nonnull @.str.12, i64 7, i32 noundef 2)
  %21 = trunc nuw i8 %20 to i1
  br i1 %21, label %._crit_edge.loopexit, label %.thread180

_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit69.thread: ; preds = %.lr.ph.i.i56.preheader, %_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit69
  %i.cr = phi i64 [ %i.cp, %_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit69 ], [ -2, %.lr.ph.i.i56.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.ct, align 1, !tbaa !74
  store ptr @.str.13, ptr %15, align 8, !tbaa !77
  store i8 3, ptr %i.cs, align 8, !tbaa !78
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %15) #24
  %i.cu = load ptr, ptr %14, align 8, !tbaa !79
  %.not.i.i70 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i70, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit69.thread
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 5, ptr %7, align 8, !tbaa !98
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.cw, align 8, !tbaa !77
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 9 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !103 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 36 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !105
  %.not.i.i.i.i.i = icmp ult i32 %i.cy, %i.da
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.ac, !prof !106

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.db = zext i32 %i.cy to i64
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !107
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.de = load i32, ptr %i.cx, align 8, !tbaa !103
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.cx, align 8, !tbaa !103
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.pr173 = load ptr, ptr %14, align 8, !tbaa !79
  %.not.i.i71 = icmp eq ptr %.pr173, null
  br i1 %.not.i.i71, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i32 3, ptr %6, align 8, !tbaa !98
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.14, ptr %i.dg, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !102
  %i.dh = load i32, ptr %i.cx, align 8, !tbaa !103 ; 2 uses
  %i.di = load i32, ptr %i.cz, align 4, !tbaa !105
  %.not.i.i.i.i.i72 = icmp ult i32 %i.dh, %i.di
  br i1 %.not.i.i.i.i.i72, label %bb.ag, label %bb.af, !prof !106

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dj = zext i32 %i.dh to i64
  %i.dk = load ptr, ptr %i.cv, align 8, !tbaa !107
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.dm = load i32, ptr %i.cx, align 8, !tbaa !103
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.cx, align 8, !tbaa !103
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.pr175 = load ptr, ptr %14, align 8, !tbaa !79
  %.not.i.i73 = icmp eq ptr %.pr175, null
  br i1 %.not.i.i73, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i32 5, ptr %5, align 8, !tbaa !98
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cr, ptr %i.do, align 8, !tbaa !77
  %i.dp = load i32, ptr %i.cx, align 8, !tbaa !103 ; 2 uses
  %i.dq = load i32, ptr %i.cz, align 4, !tbaa !105
  %.not.i.i.i.i.i74 = icmp ult i32 %i.dp, %i.dq
  br i1 %.not.i.i.i.i.i74, label %bb.aj, label %bb.ai, !prof !106

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dr = zext i32 %i.dp to i64
  %i.ds = load ptr, ptr %i.cv, align 8, !tbaa !107
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.du = load i32, ptr %i.cx, align 8, !tbaa !103
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.cx, align 8, !tbaa !103
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i:  ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit69.thread, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i
  %i.dw = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #24
  %i.dx = load ptr, ptr %14, align 8, !tbaa !79
  %.not.i75 = icmp eq ptr %i.dx, null
  br i1 %.not.i75, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !87, !range !66, !noundef !67
  %i.ea = trunc nuw i8 %i.dz to i1
  store i8 0, ptr %i.dy, align 8, !tbaa !87
  br i1 %i.ea, label %bb.am, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit76

bb.am:                                            ; preds = %bb.al
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.eb) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit76

_ZN4mlir18InFlightDiagnosticD2Ev.exit76:          ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %.thread180

._crit_edge.loopexit:                             ; preds = %.lr.ph209.preheader
  %.pre220 = load ptr, ptr %0, align 8, !tbaa !93
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ec = phi ptr [ %.pre220, %._crit_edge.loopexit ], [ %.pre, %.preheader ]
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -16
  %i.ee = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i64 noundef 0) #24
  %i.ef = load ptr, ptr %0, align 8, !tbaa !93
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.0.copyload.i.i.i.i.i89 = load i64, ptr %i.eg, align 8
  %i.eh = and i64 %.0.copyload.i.i.i.i.i89, -8
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_VCIXOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.ef, ptr %i.ei, ptr nonnull @.str.15, i64 6, i32 noundef 0)
  br label %.thread180

.thread180:                                       ; preds = %._crit_edge, %_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit, %_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit, %.lr.ph209.preheader, %_ZN4mlir18InFlightDiagnosticD2Ev.exit76, %bb.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.038.15 = phi i8 [ %i.l, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %_ZL41__mlir_ods_local_type_constraint_VCIXOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit ], [ 0, %_ZN4mlir4vcix8BinaryOp14getODSOperandsEj.exit ], [ 0, %.lr.ph209.preheader ], [ 0, %bb.f ], [ %i.dw, %_ZN4mlir18InFlightDiagnosticD2Ev.exit76 ], [ %i.ej, %._crit_edge ]
  ret i8 %.sroa.038.15
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir4vcix8BinaryOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir4vcix8BinaryOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir4vcix8BinaryOp27setPropertiesFromParsedAttrERNS0_6detail26BinaryOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DictionaryAttr", align 8 ; 7 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %10 = alloca %"class.llvm::DenseSet.115", align 8 ; 8 uses
  %11 = alloca %"class.mlir::StringAttr", align 8 ; 5 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %14 = alloca %"class.mlir::NamedAttribute", align 8 ; 6 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %8, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, i64 noundef %3) #24, !inline_history !97
  %i.e = load ptr, ptr %9, align 8, !tbaa !79
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 3, ptr %7, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.4, ptr %i.g, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !105
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !106

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !103
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !103
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.pr = load ptr, ptr %9, align 8, !tbaa !79
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !87, !range !66, !noundef !67
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !87
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ae

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.u = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !74
  store ptr @.str.7, ptr %12, align 8, !tbaa !77
  store i8 3, ptr %i.v, align 8, !tbaa !78
  %i.x = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(34) %12) #24 ; 2 uses
  store ptr %i.x, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.y = call ptr @_ZNK4mlir14DictionaryAttr3getENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr %i.x) #24 ; 2 uses
  %i.z = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(8) %11), !noalias !159 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.ac = icmp eq ptr %i.y, null
  br i1 %i.ac, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %13, i64 noundef %3) #24, !inline_history !97
  %i.ad = load ptr, ptr %13, align 8, !tbaa !79
  %.not.i.i17 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i17, label %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i32 3, ptr %6, align 8, !tbaa !98
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.16, ptr %i.af, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i.i.i.i.i18 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 66, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i18, align 8, !tbaa !102
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !103 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !105
  %.not.i.i.i.i.i19 = icmp ult i32 %i.ah, %i.aj
  br i1 %.not.i.i.i.i.i19, label %bb.l, label %bb.k, !prof !106

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = zext i32 %i.ah to i64
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.an = load i32, ptr %i.ag, align 8, !tbaa !103
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.ag, align 8, !tbaa !103
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.pr55 = load ptr, ptr %13, align 8, !tbaa !79
  %.not.i20 = icmp eq ptr %.pr55, null
  br i1 %.not.i20, label %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit.thread: ; preds = %bb.i, %bb.m, %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !87, !range !66, !noundef !67
  %i.ar = trunc nuw i8 %i.aq to i1
  store i8 0, ptr %i.ap, align 8, !tbaa !87
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.as) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.thread69

bb.p:                                             ; preds = %bb.h
  %i.at = ptrtoint ptr %i.y to i64
  store i64 %i.at, ptr %0, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.au = call noundef ptr @_ZNK4mlir14DictionaryAttr5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24 ; 2 uses
  %i.av = call noundef ptr @_ZNK4mlir14DictionaryAttr3endEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24 ; 2 uses
  %.not72 = icmp eq ptr %i.au, %i.av
  br i1 %.not72, label %.thread69, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.ab
  %.073 = phi ptr [ %i.di, %bb.ab ], [ %i.au, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %.073, i64 16, i1 false), !tbaa.struct !43
  %i.aw = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #24 ; 2 uses
  %i.ax = load ptr, ptr %10, align 8, !tbaa !143, !noalias !166
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !151, !noalias !166 ; 2 uses
  %i.az = load i32, ptr %i.ab, align 4, !tbaa !152, !noalias !166 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %bb.q
end_hunk_1
