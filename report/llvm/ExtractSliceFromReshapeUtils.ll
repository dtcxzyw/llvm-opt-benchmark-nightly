Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExtractSliceFromReshapeUtils?download=true
inline.NumInlined: 1464
inline.NumDeleted: 815
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir6tensor15CollapseShapeOp23getReassociationIndicesEv:bb.a
  br label %_ZN4llvm9to_vectorILj2ENS_14iterator_rangeINS_15mapped_iteratorIPKN4mlir9AttributeEZNS3_6tensor15CollapseShapeOp23getReassociationIndicesEvEUlS4_E_lEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOSF_.exit

_ZN4llvm9to_vectorILj2ENS_14iterator_rangeINS_15mapped_iteratorIPKN4mlir9AttributeEZNS3_6tensor15CollapseShapeOp23getReassociationIndicesEvEUlS4_E_lEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOSF_.exit: ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIPKN4mlir9AttributeEZNS4_6tensor15CollapseShapeOp23getReassociationIndicesEvEUlS5_E_lEEPlEEvT_SD_T0_.exit.loopexit.i.i.i
  %i.aj = phi i32 [ %.pre22.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_copyINS_15mapped_iteratorIPKN4mlir9AttributeEZNS4_6tensor15CollapseShapeOp23getReassociationIndicesEvEUlS5_E_lEEPlEEvT_SD_T0_.exit.loopexit.i.i.i ], [ %i.aa, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i ]
  %i.ak = trunc i64 %i.y to i32
  %i.al = add i32 %i.aj, %i.ak
  store i32 %i.al, ptr %i.l, align 8, !tbaa !27, !alias.scope !72
  %i.am = load i32, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !28
  %.not.i.i.not.i = icmp ult i32 %i.am, %i.ap
  %.pre4.i = load ptr, ptr %0, align 8, !tbaa !25 ; 4 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i, label %bb.d, !prof !42

bb.d:                                             ; preds = %_ZN4llvm9to_vectorILj2ENS_14iterator_rangeINS_15mapped_iteratorIPKN4mlir9AttributeEZNS3_6tensor15CollapseShapeOp23getReassociationIndicesEvEUlS4_E_lEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOSF_.exit
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %.pre4.i, i64 %i.an
  %i.ar = icmp uge ptr %4, %.pre4.i
  %i.as = icmp ult ptr %4, %i.aq
  %spec.select.i.i.i.i.i = and i1 %i.ar, %i.as
  br i1 %spec.select.i.i.i.i.i, label %bb.e, label %.critedge.i.i.i, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.at = ptrtoint ptr %.pre4.i to i64
  %i.au = sub i64 %i.n, %i.at
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ao)
  %i.av = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.au
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i

.critedge.i.i.i:                                  ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ao)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !25
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i: ; preds = %.critedge.i.i.i, %bb.e, %_ZN4llvm9to_vectorILj2ENS_14iterator_rangeINS_15mapped_iteratorIPKN4mlir9AttributeEZNS3_6tensor15CollapseShapeOp23getReassociationIndicesEvEUlS4_E_lEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOSF_.exit
  %i.ax = phi ptr [ %.pre4.i, %_ZN4llvm9to_vectorILj2ENS_14iterator_rangeINS_15mapped_iteratorIPKN4mlir9AttributeEZNS3_6tensor15CollapseShapeOp23getReassociationIndicesEvEUlS4_E_lEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOSF_.exit ], [ %i.av, %bb.e ], [ %.pre.i, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %4, %_ZN4llvm9to_vectorILj2ENS_14iterator_rangeINS_15mapped_iteratorIPKN4mlir9AttributeEZNS3_6tensor15CollapseShapeOp23getReassociationIndicesEvEUlS4_E_lEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOSF_.exit ], [ %i.aw, %bb.e ], [ %4, %.critedge.i.i.i ] ; 2 uses
  %i.ay = load i32, ptr %i.b, align 8, !tbaa !27
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.az ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 0, ptr %i.bc, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 2, ptr %i.bd, align 4, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !27
  %.not.i.i3.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i3.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE9push_backEOS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i
  %i.bg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %.016.i.i.i) ; 0 uses
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE9push_backEOS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE9push_backEOS2_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i, %bb.f
  %i.bh = load i32, ptr %i.b, align 8, !tbaa !27
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.b, align 8, !tbaa !27
  %i.bj = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.k
  br i1 %i.bk, label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE9push_backEOS2_.exit
  call void @free(ptr noundef %i.bj) #10
  br label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit

_ZN4llvm11SmallVectorIlLj2EED2Ev.exit:            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE9push_backEOS2_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.bl = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.j
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare i8 @_ZN4mlir17reifyResultShapesERNS_9OpBuilderEPNS_9OperationERN4llvm11SmallVectorINS5_INS_12OpFoldResultELj6EEELj1EEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_ZN4mlir23getLinearizedDimensionsEN4llvm8ArrayRefINS0_11SmallVectorIlLj2EEEEE(ptr dead_on_unwind writable sret(%"class.llvm::SmallBitVector") align 8, ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir19getSlicedDimensionsEN4llvm8ArrayRefINS_12OpFoldResultEEENS1_INS_5RangeEEE(ptr dead_on_unwind writable sret(%"class.llvm::SmallBitVector") align 8, ptr, i64, ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir6tensor13getMixedSizesERNS_9OpBuilderENS_8LocationENS_5ValueE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir31getValueOrCreateConstantIndexOpERNS_9OpBuilderENS_8LocationENS_12OpFoldResultE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6tensor30ExtractSliceFromCollapseHelperC2ENS0_15CollapseShapeOpEN4llvm8ArrayRefINS_12OpFoldResultEEES6_NS4_INS_5RangeEEERKNS3_14SmallBitVectorESB_NS4_INS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.llvm::ArrayRef") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef byval(%"class.llvm::ArrayRef.115") align 8 %9) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 6, ptr %i.d, align 4, !tbaa !28
  %.idx.i = shl nuw nsw i64 %3, 3
  %i.e = icmp ugt i64 %3, 6
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull %i.b, i64 noundef %3, i64 noundef 8) #10
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !27
  %i.f = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %bb.b

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.thread.i ], [ %i.b, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.f, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.pre8.i5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 8 %2, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !27
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i, %bb.b
  %i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.j = trunc i64 %3 to i32
  %i.k = add i32 %i.i, %i.j
  store i32 %i.k, ptr %i.c, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store i32 0, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 6, ptr %i.o, align 4, !tbaa !28
  %.idx.i14 = shl nuw nsw i64 %5, 3
  %i.p = icmp ugt i64 %5, 6
  br i1 %i.p, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.thread.i19, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i15

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.thread.i19: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull %i.m, i64 noundef %5, i64 noundef 8) #10
  %.pre8.pre.i.i20 = load i32, ptr %i.n, align 8, !tbaa !27
  %i.q = zext i32 %.pre8.pre.i.i20 to i64
  %.pre46 = load ptr, ptr %i.l, align 8, !tbaa !25
  br label %bb.c

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i15: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit
  %.not.i.i.i16 = icmp eq i64 %5, 0
  br i1 %.not.i.i.i16, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit21, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i15, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.thread.i19
  %i.r = phi ptr [ %.pre46, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.thread.i19 ], [ %i.m, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i15 ]
  %.pre8.i5.i17 = phi i64 [ %i.q, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.thread.i19 ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i15 ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre8.i5.i17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %4, i64 %.idx.i14, i1 false)
  %.pre.i.i18 = load i32, ptr %i.n, align 8, !tbaa !27
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit21

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit21: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i15, %bb.c
  %i.t = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i15 ], [ %.pre.i.i18, %bb.c ]
  %i.u = trunc i64 %5 to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.n, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %.sroa.01.0.copyload = load ptr, ptr %6, align 8, !tbaa !55
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !57 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  store i32 0, ptr %i.y, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 2, ptr %i.z, align 4, !tbaa !28
  %.idx.i22 = mul nuw nsw i64 %.sroa.22.0.copyload, 24
  %i.aa = icmp ugt i64 %.sroa.22.0.copyload, 2
  br i1 %i.aa, label %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.thread.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit21
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull %i.x, i64 noundef %.sroa.22.0.copyload, i64 noundef 24) #10
  %.pre8.pre.i.i26 = load i32, ptr %i.y, align 8, !tbaa !27
  %i.ab = zext i32 %.pre8.pre.i.i26 to i64
  %.pre47 = load ptr, ptr %i.w, align 8, !tbaa !25
  br label %bb.d

_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit21
  %.not.i.i.i23 = icmp eq i64 %.sroa.22.0.copyload, 0
  br i1 %.not.i.i.i23, label %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2IS2_vEENS_8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.thread.i
  %i.ac = phi ptr [ %.pre47, %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.thread.i ], [ %i.x, %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i ]
  %.pre8.i5.i24 = phi i64 [ %i.ab, %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i ]
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.pre8.i5.i24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 8 %.sroa.01.0.copyload, i64 %.idx.i22, i1 false)
  %.pre.i.i25 = load i32, ptr %i.y, align 8, !tbaa !27
  br label %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2IS2_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2IS2_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i, %bb.d
  %i.ae = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5RangeEE7reserveEm.exit.i.i ], [ %.pre.i.i25, %bb.d ]
  %i.af = trunc i64 %.sroa.22.0.copyload to i32
  %i.ag = add i32 %i.ae, %i.af
  store i32 %i.ag, ptr %i.y, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i64 1, ptr %i.ah, align 8, !tbaa !63
  %i.ai = load i64, ptr %7, align 8, !tbaa !63    ; 2 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %_ZN4llvm14SmallBitVectorC2ERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2IS2_vEENS_8ArrayRefIT_EE.exit
  %i.ak = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 9 uses
  %10 = load i64, ptr %7, align 8, !tbaa !63
  %i.al = inttoptr i64 %10 to ptr                 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 6, ptr %i.ao, align 4, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !27 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  %i.ar = icmp eq ptr %i.ak, %i.al
  %or.cond.i.i.i = or i1 %i.ar, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvm9BitVectorC2ERKS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = icmp ugt i32 %i.aq, 6
  br i1 %i.as, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i:       ; preds = %bb.f
  %i.at = zext i32 %i.aq to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.ak, ptr noundef nonnull %i.am, i64 noundef %i.at, i64 noundef 8) #10
  %.pre.i.i.i = load i32, ptr %i.ap, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  %.pre.i.i27 = load ptr, ptr %i.ak, align 8, !tbaa !25
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i, %bb.f
  %i.au = phi ptr [ %.pre.i.i27, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.am, %bb.f ]
  %i.av = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.aq, %bb.f ]
  %i.aw = zext i32 %i.av to i64
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !25
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.aw, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 8 %i.ax, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  store i32 %i.aq, ptr %i.an, align 8, !tbaa !27
  br label %_ZN4llvm9BitVectorC2ERKS0_.exit.i

_ZN4llvm9BitVectorC2ERKS0_.exit.i:                ; preds = %.sink.split.i.i.i.i, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !76
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !76
  %i.bb = ptrtoint ptr %i.ak to i64
  br label %_ZN4llvm14SmallBitVectorC2ERKS0_.exit

_ZN4llvm14SmallBitVectorC2ERKS0_.exit:            ; preds = %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2IS2_vEENS_8ArrayRefIT_EE.exit, %_ZN4llvm9BitVectorC2ERKS0_.exit.i
  %storemerge.i = phi i64 [ %i.bb, %_ZN4llvm9BitVectorC2ERKS0_.exit.i ], [ %i.ai, %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EEC2IS2_vEENS_8ArrayRefIT_EE.exit ]
  store i64 %storemerge.i, ptr %i.ah, align 8, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store i64 1, ptr %i.bc, align 8, !tbaa !63
  %i.bd = load i64, ptr %8, align 8, !tbaa !63    ; 2 uses
  %i.be = trunc i64 %i.bd to i1
  br i1 %i.be, label %_ZN4llvm14SmallBitVectorC2ERKS0_.exit40, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit
  %i.bf = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 9 uses
  %11 = load i64, ptr %8, align 8, !tbaa !63
  %i.bg = inttoptr i64 %11 to ptr                 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 6, ptr %i.bj, align 4, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !27 ; 5 uses
  %.not.i.i.i.i28 = icmp eq i32 %i.bl, 0
  %i.bm = icmp eq ptr %i.bf, %i.bg
  %or.cond.i.i.i29 = or i1 %i.bm, %.not.i.i.i.i28
  br i1 %or.cond.i.i.i29, label %_ZN4llvm9BitVectorC2ERKS0_.exit.i33, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = icmp ugt i32 %i.bl, 6
  br i1 %i.bn, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i35, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i30

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i35:     ; preds = %bb.h
  %i.bo = zext i32 %i.bl to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.bf, ptr noundef nonnull %i.bh, i64 noundef %i.bo, i64 noundef 8) #10
  %.pre.i.i.i36 = load i32, ptr %i.bk, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq i32 %.pre.i.i.i36, 0
  br i1 %.not.i.i.i.i.i37, label %.sink.split.i.i.i.i32, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i38

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i38: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i35
  %.pre.i.i39 = load ptr, ptr %i.bf, align 8, !tbaa !25
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i30

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i30: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i38, %bb.h
  %i.bp = phi ptr [ %.pre.i.i39, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i38 ], [ %i.bh, %bb.h ]
  %i.bq = phi i32 [ %.pre.i.i.i36, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i38 ], [ %i.bl, %bb.h ]
  %i.br = zext i32 %i.bq to i64
  %i.bs = load ptr, ptr %i.bg, align 8, !tbaa !25
  %gepdiff.i.i.i.i31 = shl nuw nsw i64 %i.br, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 8 %i.bs, i64 %gepdiff.i.i.i.i31, i1 false)
  br label %.sink.split.i.i.i.i32

.sink.split.i.i.i.i32:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i30, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i35
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !27
  br label %_ZN4llvm9BitVectorC2ERKS0_.exit.i33

_ZN4llvm9BitVectorC2ERKS0_.exit.i33:              ; preds = %.sink.split.i.i.i.i32, %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !76
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !76
  %i.bw = ptrtoint ptr %i.bf to i64
  br label %_ZN4llvm14SmallBitVectorC2ERKS0_.exit40

_ZN4llvm14SmallBitVectorC2ERKS0_.exit40:          ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit, %_ZN4llvm9BitVectorC2ERKS0_.exit.i33
  %storemerge.i34 = phi i64 [ %i.bw, %_ZN4llvm9BitVectorC2ERKS0_.exit.i33 ], [ %i.bd, %_ZN4llvm14SmallBitVectorC2ERKS0_.exit ]
  store i64 %storemerge.i34, ptr %i.bc, align 8, !tbaa !63
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %9, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !57 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  store i32 0, ptr %i.bz, align 8, !tbaa !27
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 6, ptr %i.ca, align 4, !tbaa !28
  %.idx.i41 = shl nuw nsw i64 %.sroa.2.0.copyload, 3
  %i.cb = icmp ugt i64 %.sroa.2.0.copyload, 6
  br i1 %i.cb, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.thread.i: ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit40
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.bx, ptr noundef nonnull %i.by, i64 noundef %.sroa.2.0.copyload, i64 noundef 8) #10
  %.pre8.pre.i.i45 = load i32, ptr %i.bz, align 8, !tbaa !27
  %i.cc = zext i32 %.pre8.pre.i.i45 to i64
  %.pre48 = load ptr, ptr %i.bx, align 8, !tbaa !25
  br label %bb.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i: ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit40
  %.not.i.i.i42 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i42, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.thread.i
  %i.cd = phi ptr [ %.pre48, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.thread.i ], [ %i.by, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i ]
  %.pre8.i5.i43 = phi i64 [ %i.cc, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.pre8.i5.i43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i41, i1 false)
  %.pre.i.i44 = load i32, ptr %i.bz, align 8, !tbaa !27
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2IS2_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i, %bb.i
  %i.cf = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i ], [ %.pre.i.i44, %bb.i ]
  %i.cg = trunc i64 %.sroa.2.0.copyload to i32
  %i.ch = add i32 %i.cf, %i.cg
  store i32 %i.ch, ptr %i.bz, align 8, !tbaa !27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6tensor30ExtractSliceFromCollapseHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #10
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load i64, ptr %i.e, align 8, !tbaa !63   ; 3 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZN4llvm14SmallBitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit
  %i.h = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_ZN4llvm14SmallBitVectorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm9BitVectorD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.j) #10
  br label %_ZN4llvm9BitVectorD2Ev.exit.i

_ZN4llvm9BitVectorD2Ev.exit.i:                    ; preds = %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 72) #11
  br label %_ZN4llvm14SmallBitVectorD2Ev.exit

_ZN4llvm14SmallBitVectorD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, %bb.c, %_ZN4llvm9BitVectorD2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = load i64, ptr %i.m, align 8, !tbaa !63   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %_ZN4llvm14SmallBitVectorD2Ev.exit2, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm14SmallBitVectorD2Ev.exit
  %i.p = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %_ZN4llvm14SmallBitVectorD2Ev.exit2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4llvm9BitVectorD2Ev.exit.i1, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.r) #10
  br label %_ZN4llvm9BitVectorD2Ev.exit.i1

_ZN4llvm9BitVectorD2Ev.exit.i1:                   ; preds = %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 72) #11
  br label %_ZN4llvm14SmallBitVectorD2Ev.exit2

_ZN4llvm14SmallBitVectorD2Ev.exit2:               ; preds = %_ZN4llvm14SmallBitVectorD2Ev.exit, %bb.f, %_ZN4llvm9BitVectorD2Ev.exit.i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm14SmallBitVectorD2Ev.exit2
  tail call void @free(ptr noundef %i.v) #10
  br label %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5RangeELj2EED2Ev.exit: ; preds = %_ZN4llvm14SmallBitVectorD2Ev.exit2, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EED2Ev.exit
  tail call void @free(ptr noundef %i.z) #10
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5RangeELj2EED2Ev.exit, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit3, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #10
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit3

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit3: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6tensor30ExtractSliceFromCollapseHelper16emitLoopNestBodyERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, i64 %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %7 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %8 = alloca %"class.mlir::AffineExpr", align 8  ; 4 uses
  %9 = alloca %"class.mlir::AffineExpr", align 8  ; 4 uses
end_hunk_0
