Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SMTExtensionOps?download=true
inline.NumInlined: 2051
inline.NumDeleted: 1241
begin_hunk_0_@_ZN4mlir9transform3smt17ConstrainParamsOp21setPropertiesFromAttrERNS_15EmptyPropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE:bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.m = load i32, ptr %i.f, align 8, !tbaa !62
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !62
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.pr = load ptr, ptr %5, align 8, !tbaa !53
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #15
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !66, !range !67, !noundef !68
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !66
  br i1 %i.q, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #15
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.0 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN4mlir9transform3smt17ConstrainParamsOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #3 align 2 {
_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4mlir9transform3smt17ConstrainParamsOp21computePropertiesHashERKNS_15EmptyPropertiesE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::array", align 1       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 0) #15
  %i.b = xor i64 %i.a, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i8 } @_ZN4mlir9transform3smt17ConstrainParamsOp15getInherentAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesEN4llvm9StringRefE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir9transform3smt17ConstrainParamsOp15setInherentAttrERNS_15EmptyPropertiesEN4llvm9StringRefENS_9AttributeE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir9transform3smt17ConstrainParamsOp21populateInherentAttrsEPNS_11MLIRContextERKNS_15EmptyPropertiesERNS_13NamedAttrListE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %2) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir9transform3smt17ConstrainParamsOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform3smt17ConstrainParamsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.52") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #15
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !70
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !60 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.b, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = add nsw i64 %.sroa.2.0.copyload, %i.e    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.h = load i32, ptr %i.g, align 4, !tbaa !63
  %i.i = zext i32 %i.h to i64
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 16) #15
  %.pre8.pre.i.i.i.i = load i32, ptr %i.c, align 8, !tbaa !62
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.d, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.m = zext i32 %.pre8.i.i.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.c, align 8, !tbaa !62
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.o = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.p = trunc i64 %.sroa.2.0.copyload to i32
  %i.q = add i32 %i.o, %i.p
  store i32 %i.q, ptr %i.c, align 8, !tbaa !62
  %i.r = tail call noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #15 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !62   ; 2 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = add i64 %3, %i.v                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.y = load i32, ptr %i.x, align 4, !tbaa !63
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp ugt i64 %i.w, %i.z
  br i1 %i.aa, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull %i.ab, i64 noundef %i.w, i64 noundef 8) #15
  %.pre.i.i = load i32, ptr %i.t, align 8, !tbaa !62 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.v, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ac = phi i32 [ %i.u, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.af = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #15
  %i.ag = ptrtoint ptr %i.af to i64
  store i64 %i.ag, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !72
  %i.ah = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ah, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.t, align 8, !tbaa !62
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.aj = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ac, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ak = trunc i64 %3 to i32
  %i.al = add i32 %i.aj, %i.ak
  store i32 %i.al, ptr %i.t, align 8, !tbaa !62
  ret void
}

declare void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304), i64, i64) local_unnamed_addr #2

declare noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform3smt17ConstrainParamsOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.52") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %1, ptr nonnull @.str.15, i64 30) #15
  call void @_ZN4mlir9transform3smt17ConstrainParamsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.52") align 8 %6)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform3smt17ConstrainParamsOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  ret ptr %spec.select.i.i
}

declare void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304), ptr, ptr, i64) unnamed_addr #2

declare noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform3smt17ConstrainParamsOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.52") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.15, i64 30) #15
  call void @_ZN4mlir9transform3smt17ConstrainParamsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.52") align 8 %5)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform3smt17ConstrainParamsOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform3smt17ConstrainParamsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.52") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %class.anon.272, align 1            ; 3 uses
  %9 = alloca %class.anon.274, align 1            ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE, ptr %i.a, align 8, !tbaa !45
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %6, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.b = ptrtoint ptr %8 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_E_EEvlS2_, ptr %i.c, align 8, !tbaa !119
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.b, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.d = ptrtoint ptr %9 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_, ptr %i.e, align 8, !tbaa !119
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !70
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !60 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.g, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !62   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %.sroa.2.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !63
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #15
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !62
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.r = zext i32 %.pre8.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !62
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !62
  %i.w = call noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #15 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !62   ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = add i64 %3, %i.aa                       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !63
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull %i.ag, i64 noundef %i.ab, i64 noundef 8) #15
  %.pre.i.i = load i32, ptr %i.y, align 8, !tbaa !62 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.aa, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ah = phi i32 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ak = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #15
  %i.al = ptrtoint ptr %i.ak to i64
  store i64 %i.al, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !72
  %i.am = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.am, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.y, align 8, !tbaa !62
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.ao = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ah, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ap = trunc i64 %3 to i32
  %i.aq = add i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %i.y, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform3smt17ConstrainParamsOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.52") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.15, i64 30) #15
  call void @_ZN4mlir9transform3smt17ConstrainParamsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.52") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform3smt17ConstrainParamsOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform3smt17ConstrainParamsOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.52") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.15, i64 30) #15
  call void @_ZN4mlir9transform3smt17ConstrainParamsOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.52") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform3smt17ConstrainParamsOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform3smt17ConstrainParamsOp20verifyInvariantsImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %3 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %._crit_edge, label %_ZN4mlir9transform3smt17ConstrainParamsOp14getODSOperandsEj.exit, !prof !35

_ZN4mlir9transform3smt17ConstrainParamsOp14getODSOperandsEj.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = zext i32 %i.f to i64
  %.not8993 = icmp eq i32 %i.f, 0
  br i1 %.not8993, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir9transform3smt17ConstrainParamsOp14getODSOperandsEj.exit, %bb.b
  %.sroa.468.094 = phi i64 [ %i.r, %bb.b ], [ 0, %_ZN4mlir9transform3smt17ConstrainParamsOp14getODSOperandsEj.exit ] ; 3 uses
  %indvars107 = trunc i64 %.sroa.468.094 to i32
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.468.094
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.l = load ptr, ptr %0, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.m, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call fastcc i8 @_ZL49__mlir_ods_local_type_constraint_SMTExtensionOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.l, ptr %i.o, ptr nonnull @.str.1, i64 7, i32 noundef %indvars107)
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i64 %.sroa.468.094, 1        ; 2 uses
  %.not89 = icmp eq i64 %i.r, %i.i
  br i1 %.not89, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !42
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %_ZN4mlir9transform3smt17ConstrainParamsOp14getODSOperandsEj.exit
  %i.s = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %_ZN4mlir9transform3smt17ConstrainParamsOp14getODSOperandsEj.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.w = zext i32 %i.u to i64
  %.not9096 = icmp eq i32 %i.u, 0
  br i1 %.not9096, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %._crit_edge, %bb.c
  %.sroa.4.097 = phi i64 [ %i.ae, %bb.c ], [ 0, %._crit_edge ] ; 3 uses
  %indvars108 = trunc i64 %.sroa.4.097 to i32
  %i.x = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 noundef %.sroa.4.097) #15
  %i.y = load ptr, ptr %0, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.z, align 8
  %i.aa = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = tail call fastcc i8 @_ZL49__mlir_ods_local_type_constraint_SMTExtensionOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.y, ptr %i.ab, ptr nonnull @.str.2, i64 6, i32 noundef %indvars108)
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph100
  %i.ae = add nuw nsw i64 %.sroa.4.097, 1         ; 2 uses
  %.not90 = icmp eq i64 %i.ae, %i.w
  br i1 %.not90, label %._crit_edge101.loopexit, label %.lr.ph100

._crit_edge101.loopexit:                          ; preds = %bb.c
  %.pre110 = load ptr, ptr %0, align 8, !tbaa !42
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %._crit_edge
  %i.af = phi ptr [ %.pre110, %._crit_edge101.loopexit ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.ah = load i32, ptr %i.ag, align 4            ; 3 uses
  %i.ai = and i32 %i.ah, 8388607
  %i.aj = icmp ne i32 %i.ai, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.al = lshr i32 %i.ah, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.al, 1
  %i.am = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.am
  %i.ao = lshr i32 %i.ah, 21
  %i.ap = and i32 %i.ao, 2040
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.at = load i32, ptr %i.as, align 8, !tbaa !34
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 33
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 33
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !78 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.av
  br i1 %i.bo, label %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.thread.i, label %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.i

_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.i: ; preds = %._crit_edge101
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !78
  %.not1317.i.i.i = icmp eq ptr %i.bq, %i.av
  br i1 %.not1317.i.i.i, label %_ZL51__mlir_ods_local_region_constraint_SMTExtensionOps1PN4mlir9OperationERNS_6RegionEN4llvm9StringRefEj.exit.thread, label %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.thread.i

_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.thread.i: ; preds = %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.i, %._crit_edge101
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i8 1, ptr %i.ax, align 1, !tbaa !81
  store ptr @.str.22, ptr %4, align 8, !tbaa !82
  store i8 3, ptr %i.aw, align 8, !tbaa !83
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(34) %4) #15
  %i.br = load ptr, ptr %3, align 8, !tbaa !53
  %.not.i.i3.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i3.i, label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i32 5, ptr %2, align 8, !tbaa !56
  store i64 0, ptr %i.az, align 8, !tbaa !82
  %i.bs = load i32, ptr %i.ba, align 8, !tbaa !62 ; 2 uses
  %i.bt = load i32, ptr %i.bb, align 4, !tbaa !63
  %.not.i.i.i.i.i.i = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e, !prof !64

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.bu = zext i32 %i.bs to i64
  %i.bv = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bx = load i32, ptr %i.ba, align 8, !tbaa !62
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.ba, align 8, !tbaa !62
  br label %_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i.i

_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %.pre111 = load ptr, ptr %3, align 8, !tbaa !53
  %i.bz = icmp eq ptr %.pre111, null
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i: ; preds = %_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i.i, %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.thread.i
  %.not.i.i5.i = phi i1 [ %i.bz, %_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i.i ], [ true, %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i8 3, ptr %i.bc, align 8, !tbaa !83, !alias.scope !126
  store i8 5, ptr %i.bd, align 1, !tbaa !81, !alias.scope !126
  store ptr @.str.24, ptr %6, align 8, !tbaa !82, !alias.scope !126
  store ptr @.str.3, ptr %i.be, align 8, !tbaa !82, !alias.scope !126
  store i64 4, ptr %i.bf, align 8, !tbaa !82, !alias.scope !126
  store ptr %6, ptr %5, align 8, !alias.scope !127
  store ptr @.str.25, ptr %i.bg, align 8, !alias.scope !127
  store i8 2, ptr %i.bh, align 8, !tbaa !83, !alias.scope !127
  store i8 3, ptr %i.bi, align 1, !tbaa !81, !alias.scope !127
  br i1 %.not.i.i5.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit.i, label %_ZNO4mlir18InFlightDiagnosticlsIN4llvm5TwineEEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIN4llvm5TwineEEEOS0_OT_.exit.i: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i
  %i.ca = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.bj, ptr noundef nonnull align 8 dereferenceable(34) %5) #15 ; 0 uses
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !53
  %.not.i.i6.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i6.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIN4llvm5TwineEEEOS0_OT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store i32 3, ptr %1, align 8, !tbaa !56
  store ptr @.str.26, ptr %i.bk, align 8, !tbaa !58
  store i64 49, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !60
  %i.cb = load i32, ptr %i.ba, align 8, !tbaa !62 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL49__mlir_ods_local_type_constraint_SMTExtensionOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj:bb.a
_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit, %_ZN4llvm3isaIJN4mlir9transform27TransformParamTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA68_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i
  %i.bj = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #15
  %i.bk = load ptr, ptr %9, align 8, !tbaa !53
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !66, !range !67, !noundef !68
  %i.bn = trunc nuw i8 %i.bm to i1
  store i8 0, ptr %i.bl, align 8, !tbaa !66
  br i1 %i.bn, label %bb.s, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bo) #15
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm3isaIJN4mlir9transform27TransformParamTypeInterfaceEENS1_4TypeEEEbRKT0_.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.03.0 = phi i8 [ %i.bj, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4llvm3isaIJN4mlir9transform27TransformParamTypeInterfaceEENS1_4TypeEEEbRKT0_.exit ]
  ret i8 %.sroa.03.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform3smt17ConstrainParamsOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir9transform3smt17ConstrainParamsOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir9transform3smt17ConstrainParamsOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.02.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir9transform3smt17ConstrainParamsOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %12 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %13 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %14 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %17 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %18 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %21 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %22 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %23 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %25 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %26 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %27 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %30 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %31 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %32 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %34 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %35 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 16 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %37 = alloca %"class.mlir::transform::ParamType", align 8 ; 4 uses
  %38 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 20 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %40 = alloca %"class.mlir::IntegerType", align 8 ; 5 uses
  %41 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 20 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %43 = alloca %"class.mlir::smt::BitVectorType", align 8 ; 5 uses
  %44 = alloca %"class.mlir::IntegerType", align 8 ; 5 uses
  %45 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 22 uses
  %46 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %47 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %48 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %49 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %50 = alloca %"class.mlir::Region::OpIterator", align 8 ; 4 uses
  %51 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %52 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %53 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %54 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %55 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %56 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %57 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %58 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %59 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %60 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %61 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %62 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %63 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %64 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %65 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %66 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %67 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %68 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %69 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %70 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %71 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %72 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %73 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %74 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %75 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %76 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %77 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %78 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %79 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %80 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %81 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %82 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %83 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %84 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %85 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 16 uses
  %86 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %87 = alloca %"class.mlir::transform::ParamType", align 8 ; 4 uses
  %88 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 20 uses
  %89 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %90 = alloca %"class.mlir::IntegerType", align 8 ; 5 uses
  %91 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 20 uses
  %92 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %93 = alloca %"class.mlir::smt::BitVectorType", align 8 ; 5 uses
  %94 = alloca %"class.mlir::IntegerType", align 8 ; 5 uses
  %95 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 22 uses
  %96 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %97 = alloca %"class.mlir::OperandRange", align 8 ; 5 uses
  %98 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %99 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %100 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %101 = alloca %"class.mlir::smt::YieldOp", align 8 ; 9 uses
  %102 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %103 = alloca %"class.llvm::Twine", align 8     ; 5 uses
  %104 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %105 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %106 = alloca %"class.mlir::ValueTypeRange", align 8 ; 6 uses
  %107 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %108 = alloca %"class.llvm::iterator_range.197", align 8 ; 7 uses
  %109 = alloca %"class.mlir::Region::OpIterator", align 8 ; 6 uses
  %110 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %111 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %112 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %113 = alloca %"class.llvm::Twine", align 8     ; 5 uses
  %114 = alloca %"class.mlir::ValueTypeRange", align 8 ; 7 uses
  %115 = alloca %"class.mlir::OperandRange", align 8 ; 6 uses
  %116 = alloca %"class.mlir::ValueTypeRange.118", align 8 ; 5 uses
  %117 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #15
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = and i32 %i.c, 8388607
  %i.e = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.g
  %i.i = lshr i32 %i.c, 21
  %i.j = and i32 %i.i, 2040
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !87
  %i.u = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.t) #15 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.y = icmp eq ptr %i.x, @_ZN4mlir6detail14TypeIDResolverINS_3smt7YieldOpEvE2idE ; 2 uses
  %spec.select.i.i = select i1 %i.y, ptr %i.u, ptr null
  store ptr %spec.select.i.i, ptr %101, align 8
  br i1 %i.y, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #15
  %i.z = getelementptr inbounds nuw i8, ptr %103, i64 32
  store i8 1, ptr %i.z, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %103, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !81
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %102, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %103) #15
  %i.ab = load ptr, ptr %102, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA16_KcEEOS0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %102, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #15
  store i32 3, ptr %100, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %100, i64 8
  store ptr @.str.8, ptr %i.ad, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %100, i64 16
  store i64 10, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %102, i64 32 ; 6 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !62 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %102, i64 36 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !63
  %.not.i.i.i.i.i = icmp ult i32 %i.af, %i.ah
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !64

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %100)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA11_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = zext i32 %i.af to i64
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %100, i64 24, i1 false)
  %i.al = load i32, ptr %i.ae, align 8, !tbaa !62
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ae, align 8, !tbaa !62
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA11_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA11_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #15
  %.pr = load ptr, ptr %102, align 8, !tbaa !53
  %.not.i.i37 = icmp eq ptr %.pr, null
  br i1 %.not.i.i37, label %_ZNO4mlir18InFlightDiagnosticlsIRA16_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsIN4llvm13StringLiteralEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIN4llvm13StringLiteralEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA11_KcEEOS0_OT_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %102, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #15
  %i.ao = getelementptr inbounds nuw i8, ptr %99, i64 32
  store i8 6, ptr %i.ao, align 8, !tbaa !83
  %i.ap = getelementptr inbounds nuw i8, ptr %99, i64 33
  store i8 1, ptr %i.ap, align 1, !tbaa !81
  store ptr @.str.27, ptr %99, align 8, !tbaa !82
  %i.aq = getelementptr inbounds nuw i8, ptr %99, i64 8
  store i64 9, ptr %i.aq, align 8, !tbaa !82
  %i.ar = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.an, ptr noundef nonnull align 8 dereferenceable(34) %99) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #15
  %.pr314 = load ptr, ptr %102, align 8, !tbaa !53
  %.not.i.i38 = icmp eq ptr %.pr314, null
  br i1 %.not.i.i38, label %_ZNO4mlir18InFlightDiagnosticlsIRA16_KcEEOS0_OT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIN4llvm13StringLiteralEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #15
  store i32 3, ptr %98, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %98, i64 8
  store ptr @.str.9, ptr %i.as, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i.i.i.i.i39 = getelementptr inbounds nuw i8, ptr %98, i64 16
  store i64 15, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i39, align 8, !tbaa !60
  %i.at = load i32, ptr %i.ae, align 8, !tbaa !62 ; 2 uses
  %i.au = load i32, ptr %i.ag, align 4, !tbaa !63
  %.not.i.i.i.i.i40 = icmp ult i32 %i.at, %i.au
  br i1 %.not.i.i.i.i.i40, label %bb.h, label %bb.g, !prof !64

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %98)
  br label %_ZN4mlir10Diagnostic6appendIRA16_KcEERS0_OT_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.av = zext i32 %i.at to i64
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !65
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %98, i64 24, i1 false)
  %i.ay = load i32, ptr %i.ae, align 8, !tbaa !62
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ae, align 8, !tbaa !62
  br label %_ZN4mlir10Diagnostic6appendIRA16_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA16_KcEERS0_OT_.exit.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #15
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA16_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA16_KcEEOS0_OT_.exit: ; preds = %bb.b, %_ZNO4mlir18InFlightDiagnosticlsIRA11_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIN4llvm13StringLiteralEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA16_KcEERS0_OT_.exit.i.i
  %i.ba = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %102) #15
  %i.bb = load ptr, ptr %102, align 8, !tbaa !53
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA16_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %102) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNO4mlir18InFlightDiagnosticlsIRA16_KcEEOS0_OT_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %102, i64 200 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !66, !range !67, !noundef !68
  %i.be = trunc nuw i8 %i.bd to i1
  store i8 0, ptr %i.bc, align 8, !tbaa !66
  br i1 %i.be, label %bb.k, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %102, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bf) #15
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #15
  br label %.thread

bb.l:                                             ; preds = %bb.a
  %i.bg = load ptr, ptr %0, align 8, !tbaa !42    ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.bi = load i32, ptr %i.bh, align 4            ; 4 uses
  %i.bj = and i32 %i.bi, 8388608
  %.not.i.i.i = icmp eq i32 %i.bj, 0              ; 2 uses
  br i1 %.not.i.i.i, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_9transform3smt17ConstrainParamsOpENS0_16VariadicOperandsEE11getOperandsEv.exit, label %bb.m, !prof !35

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 68
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !39
  %i.bm = zext i32 %i.bl to i64
  br label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_9transform3smt17ConstrainParamsOpENS0_16VariadicOperandsEE11getOperandsEv.exit

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_9transform3smt17ConstrainParamsOpENS0_16VariadicOperandsEE11getOperandsEv.exit: ; preds = %bb.l, %bb.m
  %.sroa.4.0.i.i.i = phi i64 [ %i.bm, %bb.m ], [ 0, %bb.l ]
  %i.bn = and i32 %i.bi, 8388607
  %i.bo = icmp ne i32 %i.bn, 0
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bq = lshr i32 %i.bi, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i41 = and i32 %i.bq, 1
  %i.br = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i41 to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.br
  %i.bt = lshr i32 %i.bi, 21
  %i.bu = and i32 %i.bt, 2040
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !34
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.bz ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !87
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZN4mlir6Region15getNumArgumentsEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_9transform3smt17ConstrainParamsOpENS0_16VariadicOperandsEE11getOperandsEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !78 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !156
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !157
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = lshr exact i64 %i.cl, 3
  %i.cn = and i64 %i.cm, 4294967295
  br label %_ZN4mlir6Region15getNumArgumentsEv.exit

_ZN4mlir6Region15getNumArgumentsEv.exit:          ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_9transform3smt17ConstrainParamsOpENS0_16VariadicOperandsEE11getOperandsEv.exit, %bb.n
  %.sroa.4.0.i.i = phi i64 [ %i.cn, %bb.n ], [ 0, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_9transform3smt17ConstrainParamsOpENS0_16VariadicOperandsEE11getOperandsEv.exit ]
  %.not = icmp eq i64 %.sroa.4.0.i.i.i, %.sroa.4.0.i.i
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN4mlir6Region15getNumArgumentsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #15
  %i.co = getelementptr inbounds nuw i8, ptr %105, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %105, i64 33
  store i8 1, ptr %i.cp, align 1, !tbaa !81
  store ptr @.str.10, ptr %105, align 8, !tbaa !82
  store i8 3, ptr %i.co, align 8, !tbaa !83
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %104, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %105) #15
  %i.cq = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %104) #15
  %i.cr = load ptr, ptr %104, align 8, !tbaa !53
  %.not.i42 = icmp eq ptr %i.cr, null
  br i1 %.not.i42, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %104) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %104, i64 200 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !66, !range !67, !noundef !68
  %i.cu = trunc nuw i8 %i.ct to i1
  store i8 0, ptr %i.cs, align 8, !tbaa !66
  br i1 %i.cu, label %bb.r, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit43
end_hunk_1
