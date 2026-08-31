Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestOps.0?download=true
inline.NumInlined: 12432
inline.NumDeleted: 4778
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN4test28AttrSizedResultCompileTestOp5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail46AttrSizedResultCompileTestOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE:bb.a
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #27
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !185
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !187

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !61
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test28AttrSizedResultCompileTestOp6createERN4mlir9OpBuilderENS1_8LocationENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail46AttrSizedResultCompileTestOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.63") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.105, i64 36) #27
  call void @_ZN4test28AttrSizedResultCompileTestOp5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail46AttrSizedResultCompileTestOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.63") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverIN4test28AttrSizedResultCompileTestOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4test28AttrSizedResultCompileTestOp6createERN4mlir20ImplicitLocOpBuilderENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail46AttrSizedResultCompileTestOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.63") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.105, i64 36) #27
  call void @_ZN4test28AttrSizedResultCompileTestOp5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_9TypeRangeENS1_10ValueRangeERKNS_6detail46AttrSizedResultCompileTestOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.63") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !184
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverIN4test28AttrSizedResultCompileTestOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4test28AttrSizedResultCompileTestOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !192    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !256  ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.j = zext i32 %i.h to i64
  %.not124 = icmp eq i32 %i.h, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.488.0125 = phi i64 [ %i.r, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %indvars145 = trunc i64 %.sroa.488.0125 to i32
  %i.k = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %.sroa.488.0125) #27
  %i.l = load ptr, ptr %0, align 8, !tbaa !192
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.m, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_0TestOps6PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.l, ptr %i.o, ptr nonnull @.str.14, i64 6, i32 noundef %indvars145)
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %.thread114

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i64 %.sroa.488.0125, 1       ; 2 uses
  %.not = icmp eq i64 %i.r, %i.j
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !192   ; 2 uses
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
  %i.v = load i32, ptr %i.u, align 4, !tbaa !256  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !256
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  %i.z = icmp eq i32 %i.v, 0
  br i1 %i.z, label %_ZN4test28AttrSizedResultCompileTestOp13getODSResultsEj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.aa = zext i32 %i.v to i64                    ; 2 uses
  %i.ab = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 noundef %i.aa) #27
  br label %_ZN4test28AttrSizedResultCompileTestOp13getODSResultsEj.exit

_ZN4test28AttrSizedResultCompileTestOp13getODSResultsEj.exit: ; preds = %._crit_edge, %bb.c
  %.09.lcssa.i28.i = phi i64 [ %i.aa, %bb.c ], [ 0, %._crit_edge ] ; 3 uses
  %i.ac = phi ptr [ %i.ab, %bb.c ], [ %i.y, %._crit_edge ]
  %.09.lcssa.i.tr.i = trunc nuw i64 %.09.lcssa.i28.i to i32
  %.narrow.i = add i32 %i.x, %.09.lcssa.i.tr.i
  %i.ad = zext i32 %.narrow.i to i64              ; 2 uses
  %i.ae = sub nsw i64 %i.ad, %.09.lcssa.i28.i
  %.not117127 = icmp eq i64 %.09.lcssa.i28.i, %i.ad
  br i1 %.not117127, label %._crit_edge131, label %.lr.ph130

.lr.ph130:                                        ; preds = %_ZN4test28AttrSizedResultCompileTestOp13getODSResultsEj.exit, %bb.d
  %.2129 = phi i32 [ %i.am, %bb.d ], [ %i.h, %_ZN4test28AttrSizedResultCompileTestOp13getODSResultsEj.exit ] ; 2 uses
  %.sroa.476.0128 = phi i64 [ %i.an, %bb.d ], [ 0, %_ZN4test28AttrSizedResultCompileTestOp13getODSResultsEj.exit ] ; 2 uses
  %i.af = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %.sroa.476.0128) #27
  %i.ag = load ptr, ptr %0, align 8, !tbaa !192
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.0.copyload.i.i.i.i.i36 = load i64, ptr %i.ah, align 8
  %i.ai = and i64 %.0.copyload.i.i.i.i.i36, -8
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = tail call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_0TestOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.ag, ptr %i.aj, ptr nonnull @.str.14, i64 6, i32 noundef %.2129)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.d, label %.thread114

bb.d:                                             ; preds = %.lr.ph130
  %i.am = add i32 %.2129, 1                       ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.476.0128, 1      ; 2 uses
  %.not117 = icmp eq i64 %i.an, %i.ae
  br i1 %.not117, label %._crit_edge131, label %.lr.ph130

._crit_edge131:                                   ; preds = %bb.d, %_ZN4test28AttrSizedResultCompileTestOp13getODSResultsEj.exit
  %.2.lcssa = phi i32 [ %i.h, %_ZN4test28AttrSizedResultCompileTestOp13getODSResultsEj.exit ], [ %i.am, %bb.d ] ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !192   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %.not.i.i.i.i37 = icmp ugt i32 %i.aq, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i37)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.as = lshr i32 %i.aq, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i38 = and i32 %i.as, 1
  %i.at = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i38 to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.at ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !256
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !256
  %i.ay = add i32 %i.ax, %i.av                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !256
  %i.bb = getelementptr inbounds i8, ptr %i.ao, i64 -16 ; 2 uses
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4test28AttrSizedResultCompileTestOp13getODSResultsEj.exit51, label %bb.e

bb.e:                                             ; preds = %._crit_edge131
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 noundef %i.bd) #27
  br label %_ZN4test28AttrSizedResultCompileTestOp13getODSResultsEj.exit51

_ZN4test28AttrSizedResultCompileTestOp13getODSResultsEj.exit51: ; preds = %._crit_edge131, %bb.e
  %.09.lcssa.i28.i46 = phi i64 [ %i.bd, %bb.e ], [ 0, %._crit_edge131 ] ; 3 uses
  %i.bf = phi ptr [ %i.be, %bb.e ], [ %i.bb, %._crit_edge131 ]
  %.09.lcssa.i.tr.i47 = trunc nuw i64 %.09.lcssa.i28.i46 to i32
  %.narrow.i48 = add i32 %i.ba, %.09.lcssa.i.tr.i47
  %i.bg = zext i32 %.narrow.i48 to i64            ; 2 uses
  %i.bh = sub nsw i64 %i.bg, %.09.lcssa.i28.i46   ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 1
  br i1 %i.bi, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN4test28AttrSizedResultCompileTestOp13getODSResultsEj.exit51
  %.not118133 = icmp eq i64 %.09.lcssa.i28.i46, %i.bg
  br i1 %.not118133, label %.thread114, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %.preheader
  %6 = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 noundef 0) #27
  %7 = load ptr, ptr %0, align 8, !tbaa !192
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.0.copyload.i.i.i.i.i60 = load i64, ptr %8, align 8
  %9 = and i64 %.0.copyload.i.i.i.i.i60, -8
  %10 = inttoptr i64 %9 to ptr
  %11 = tail call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_0TestOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %7, ptr %10, ptr nonnull @.str.14, i64 6, i32 noundef %.2.lcssa)
  br label %.thread114

bb.f:                                             ; preds = %_ZN4test28AttrSizedResultCompileTestOp13getODSResultsEj.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.bk, align 1, !tbaa !196
  store ptr @.str.53, ptr %5, align 8, !tbaa !199
  store i8 3, ptr %i.bj, align 8, !tbaa !200
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #27
  %i.bl = load ptr, ptr %4, align 8, !tbaa !165
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 5, ptr %3, align 8, !tbaa !173
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = zext i32 %.2.lcssa to i64
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !199
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 9 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !61 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !62
  %.not.i.i.i.i.i = icmp ult i32 %i.bq, %i.bs
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h, !prof !180

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.i:                                             ; preds = %bb.g
  %i.bt = zext i32 %i.bq to i64
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !59
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !61
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bp, align 8, !tbaa !61
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pr = load ptr, ptr %4, align 8, !tbaa !165
  %.not.i.i52 = icmp eq ptr %.pr, null
  br i1 %.not.i.i52, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i32 3, ptr %2, align 8, !tbaa !173
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.54, ptr %i.by, align 8, !tbaa !176
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !178
  %i.bz = load i32, ptr %i.bp, align 8, !tbaa !61 ; 2 uses
  %i.ca = load i32, ptr %i.br, align 4, !tbaa !62
  %.not.i.i.i.i.i53 = icmp ult i32 %i.bz, %i.ca
  br i1 %.not.i.i.i.i.i53, label %bb.l, label %bb.k, !prof !180

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.l:                                             ; preds = %bb.j
  %i.cb = zext i32 %i.bz to i64
  %i.cc = load ptr, ptr %i.bm, align 8, !tbaa !59
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ce = load i32, ptr %i.bp, align 8, !tbaa !61
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.bp, align 8, !tbaa !61
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %.pr110 = load ptr, ptr %4, align 8, !tbaa !165
  %.not.i.i54 = icmp eq ptr %.pr110, null
  br i1 %.not.i.i54, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i32 5, ptr %1, align 8, !tbaa !173
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bh, ptr %i.cg, align 8, !tbaa !199
  %i.ch = load i32, ptr %i.bp, align 8, !tbaa !61 ; 2 uses
  %i.ci = load i32, ptr %i.br, align 4, !tbaa !62
  %.not.i.i.i.i.i55 = icmp ult i32 %i.ch, %i.ci
  br i1 %.not.i.i.i.i.i55, label %bb.o, label %bb.n, !prof !180

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.cj = zext i32 %i.ch to i64
  %i.ck = load ptr, ptr %i.bm, align 8, !tbaa !59
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cm = load i32, ptr %i.bp, align 8, !tbaa !61
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.bp, align 8, !tbaa !61
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i:  ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i
  %i.co = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #27
  %i.cp = load ptr, ptr %4, align 8, !tbaa !165
  %.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !181, !range !182, !noundef !183
  %i.cs = trunc nuw i8 %i.cr to i1
  store i8 0, ptr %i.cq, align 8, !tbaa !181
  br i1 %i.cs, label %bb.r, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ct) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.thread114

.thread114:                                       ; preds = %.lr.ph, %.lr.ph130, %.lr.ph136.preheader, %.preheader, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.023.12 = phi i8 [ 1, %.preheader ], [ 0, %.lr.ph130 ], [ %i.co, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %11, %.lr.ph136.preheader ], [ 0, %.lr.ph ]
  ret i8 %.sroa.023.12
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4test28AttrSizedResultCompileTestOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4test28AttrSizedResultCompileTestOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4test28AttrSizedResultCompileTestOp27setPropertiesFromParsedAttrERNS_6detail46AttrSizedResultCompileTestOpGenericAdaptorBase10PropertiesEN4mlir9AttributeEN4llvm12function_refIFNS5_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DictionaryAttr", align 8 ; 6 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %9 = alloca %"class.mlir::NamedAttribute", align 8 ; 5 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, i64 noundef %3) #27, !inline_history !164
  %i.e = load ptr, ptr %8, align 8, !tbaa !165
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i32 3, ptr %6, align 8, !tbaa !173
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str, ptr %i.g, align 8, !tbaa !176
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !62
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !180

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !61
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !61
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.pr = load ptr, ptr %8, align 8, !tbaa !165
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !181, !range !182, !noundef !183
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !181
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !209
  %i.x = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, i64 noundef %3) #27, !inline_history !164
  %i.y = load ptr, ptr %10, align 8, !tbaa !165
  %.not.i.i9 = icmp eq ptr %i.y, null
  br i1 %.not.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i32 3, ptr %5, align 8, !tbaa !173
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.2, ptr %i.aa, align 8, !tbaa !176
  %.sroa.2.0..sroa_idx.i.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 13, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i10, align 8, !tbaa !178
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !61 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !62
  %.not.i.i.i.i.i11 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i11, label %bb.l, label %bb.k, !prof !180

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !61
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !61
  br label %_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit: ; preds = %bb.i, %_ZN4mlir10Diagnostic6appendIRA14_KcEERS0_OT_.exit.i.i
  %i.ak = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #27
  %i.al = load ptr, ptr %10, align 8, !tbaa !165
  %.not.i.i12 = icmp eq ptr %i.al, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.an = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(192) %i.am, ptr %i.ak) #27 ; 0 uses
  %.pr29 = load ptr, ptr %10, align 8, !tbaa !165
  %.not.i.i14 = icmp eq ptr %.pr29, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i32 3, ptr %4, align 8, !tbaa !173
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.3, ptr %i.ap, align 8, !tbaa !176
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !178
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !62
  %.not.i.i.i.i.i16 = icmp ult i32 %i.ar, %i.at
  br i1 %.not.i.i.i.i.i16, label %bb.o, label %bb.n, !prof !180

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.au = zext i32 %i.ar to i64
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !59
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.ax = load i32, ptr %i.aq, align 8, !tbaa !61
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aq, align 8, !tbaa !61
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsINS_10StringAttrEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i
  %i.az = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #27
  %i.ba = load ptr, ptr %10, align 8, !tbaa !165
  %.not.i17 = icmp eq ptr %i.ba, null
  br i1 %.not.i17, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
end_hunk_0
