Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExpr?download=true
inline.NumInlined: 75953
inline.NumDeleted: 20715
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE30TransformCXXFunctionalCastExprEPNS_21CXXFunctionalCastExprE:bb.a
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprESL_b.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprESL_b.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.sroa.025.2.i = phi i64 [ %i.ae, %bb.h ], [ %i.ad, %bb.g ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprESL_b.exit, %bb.b, %bb.a
  %.sroa.016.1 = phi i64 [ 1, %bb.a ], [ %.sroa.025.2.i, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprESL_b.exit ], [ %i.o, %bb.e ], [ 1, %bb.b ]
  ret i64 %.sroa.016.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23TransformCStyleCastExprEPNS_14CStyleCastExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2097
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #30
  %i.e = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d) ; 2 uses
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !2097
  %i.h = icmp eq ptr %i.c, %i.g
  %i.i = and i64 %i.e, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  br i1 %i.h, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1930
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %1 to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.o, align 8, !tbaa !795
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.p, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.q = tail call i64 @_ZN5clang4Sema19BuildCStyleCastExprENS_14SourceLocationEPNS_14TypeSourceInfoES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, i32 %.sroa.0.0.copyload.i12, ptr noundef %i.j) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge, %bb.b, %bb.a
  %.sroa.015.1 = phi i64 [ 1, %bb.a ], [ %i.q, %._crit_edge ], [ %i.n, %bb.e ], [ 1, %bb.b ]
  ret i64 %.sroa.015.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformBuiltinBitCastExprEPNS_18BuiltinBitCastExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2097
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1930
  %i.f = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.e) ; 2 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 8, !tbaa !795
  %i.i = and i64 %i.f, -2
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.k, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.l = tail call i64 @_ZN5clang4Sema23BuildBuiltinBitCastExprENS_14SourceLocationEPNS_14TypeSourceInfoEPNS_4ExprES1_(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, ptr noundef %i.j, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.08.1 = phi i64 [ 1, %bb.a ], [ %i.l, %bb.c ], [ 1, %bb.b ]
  ret i64 %.sroa.08.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE17TransformCallExprEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 9 uses
  %3 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1587
  %i.d = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !858
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !859
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.h, align 4, !tbaa !876
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %1, align 8
  %i.k = lshr i32 %i.j, 19
  %i.l = and i32 %i.k, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !2083
  %i.q = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE14TransformExprsEPKPNS_4ExprEjbRNS6_15SmallVectorImplISK_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n, i32 noundef %i.p, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.q, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = and i64 %i.d, -2
  %i.s = inttoptr i64 %i.r to ptr                 ; 3 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !1587
  %i.u = icmp ne ptr %i.t, %i.s
  %i.v = load i8, ptr %i.a, align 1, !range !96
  %i.w = trunc nuw i8 %i.v to i1
  %or.cond = select i1 %i.u, i1 true, i1 %i.w
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.y = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.x, ptr noundef nonnull %1) #30
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.z = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #31
  %.sroa.020.0.extract.trunc = trunc i64 %i.z to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.val16 = load ptr, ptr %0, align 8, !tbaa !2407
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(18640) %.val16) #30
  %i.aa = load i32, ptr %1, align 8               ; 2 uses
  %i.ab = and i32 %i.aa, 2097152
  %.not = icmp eq i32 %i.ab, 0
  %.val.i.pre = load ptr, ptr %0, align 8, !tbaa !2407 ; 4 uses
  br i1 %.not, label %bb.f, label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit

_ZNK5clang8CallExpr13getFPFeaturesEv.exit:        ; preds = %bb.e
  %i.ac = lshr i32 %i.aa, 19
  %i.ad = and i32 %i.ac, 1
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !2083
  %i.af = add nuw nsw i32 %i.ad, 1
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = shl i32 %i.ag, 3
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aj, align 4, !tbaa !795 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 216
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 216
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = trunc i64 %i.an to i32                  ; 3 uses
  %i.ap = lshr i32 %i.ao, 23
  %i.aq = and i32 %i.ap, 3                        ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 3
  %spec.store.select.i.i = select i1 %i.ar, i32 2, i32 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.at = load i64, ptr %i.as, align 8
  %i.au = lshr i64 %i.at, 57
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = and i32 %i.av, 4                        ; 2 uses
  %i.ax = lshr i32 %i.ao, 19
  %i.ay = and i32 %i.ax, 192
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = lshr i64 %i.ba, 36
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 32256
  %i.be = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.aw, 0
  %or.cond.not16.i.i = select i1 %i.be, i1 %.not3.i.i.i, i1 false
  %i.bf = and i32 %i.ao, 100663296
  %i.bg = icmp eq i32 %i.bf, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.bg, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 208
  %i.bi = load i64, ptr %i.bh, align 8
  %sh.diff.i.i = lshr i64 %i.bi, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.bj = and i32 %tr.sh.diff.i.i, 29360128
  %i.bk = or disjoint i32 %i.ay, %i.bd
  %i.bl = or disjoint i32 %i.bk, %i.bj
  %i.bm = or disjoint i32 %i.bl, %masksel.i.i
  %i.bn = or disjoint i32 %i.bm, %i.aw
  %i.bo = or disjoint i32 %i.bn, %spec.store.select.i.i
  %i.bp = or disjoint i32 %i.bo, 56
  %i.bq = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.br = and i32 %i.bp, %i.bq
  %i.bs = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.copyload.i.i
  %i.bt = trunc nuw i64 %i.bs to i32
  %i.bu = or i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 208
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !795
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 2024
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.bw, align 8, !tbaa !795
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit, %bb.e
  %i.bx = load ptr, ptr %2, align 8, !tbaa !858
  %i.by = load i32, ptr %i.g, align 8, !tbaa !859
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i17 = load i32, ptr %i.ca, align 4, !tbaa !795
  %i.cb = call i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i.pre, ptr noundef null, ptr noundef nonnull %i.s, i32 %.sroa.020.0.extract.trunc, ptr %i.bx, i64 %i.bz, i32 %.sroa.0.0.copyload.i17, ptr noundef null), !inline_history !38
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.d
  %.sroa.013.0 = phi i64 [ %i.y, %bb.d ], [ %i.cb, %bb.f ], [ 1, %bb.b ]
  %i.cc = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.f
  br i1 %i.cd, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.cc) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.013.1 = phi i64 [ %.sroa.013.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %bb.a ]
  ret i64 %.sroa.013.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove28TransformCXXOperatorCallExprEPNS_19CXXOperatorCallExprE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2408, !nonnull !97, !align !787 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1587
  %i.e = tail call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !95, !range !96, !noundef !97
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !98   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !99   ; 3 uses
  %i.l = zext i32 %i.k to i64
  %.idx.i.i = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i
  %.not1923.i.i = icmp eq i32 %i.k, 0
  br i1 %.not1923.i.i, label %_ZN4llvm15SmallPtrSetImplIPN5clang11DeclRefExprEE5eraseES3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.critedge.i.i
  %.01524.i.i = phi ptr [ %i.o, %.critedge.i.i ], [ %i.i, %bb.b ] ; 3 uses
  %i.n = load ptr, ptr %.01524.i.i, align 8, !tbaa !100
  %.not20.i.i = icmp eq ptr %i.n, %i.e
  br i1 %.not20.i.i, label %bb.c, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 8 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.o, %i.m
  br i1 %.not19.i.i, label %_ZN4llvm15SmallPtrSetImplIPN5clang11DeclRefExprEE5eraseES3_.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.p = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.p, ptr %i.j, align 4, !tbaa !99
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !100
  store ptr %i.s, ptr %.01524.i.i, align 8, !tbaa !100
  br label %_ZN4llvm15SmallPtrSetImplIPN5clang11DeclRefExprEE5eraseES3_.exit

bb.d:                                             ; preds = %bb.a
  %i.t = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.b, ptr noundef %i.e) #30 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.not.i.i, label %_ZN4llvm15SmallPtrSetImplIPN5clang11DeclRefExprEE5eraseES3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.b, ptr noundef nonnull %i.t) #30
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !99
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !99
  br label %_ZN4llvm15SmallPtrSetImplIPN5clang11DeclRefExprEE5eraseES3_.exit

_ZN4llvm15SmallPtrSetImplIPN5clang11DeclRefExprEE5eraseES3_.exit: ; preds = %.critedge.i.i, %bb.b, %bb.c, %bb.d, %bb.e
  %i.x = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformCXXOperatorCallExprEPNS_19CXXOperatorCallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1)
  ret i64 %i.x
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformCXXMemberCallExprEPNS_17CXXMemberCallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE17TransformCallExprEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformCUDAKernelCallExprEPNS_18CUDAKernelCallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1587
  %i.d = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1587
  %i.h = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE17TransformCallExprEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.g) ; 2 uses
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !858
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !859
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.l, align 4, !tbaa !876
  %i.m = load i32, ptr %1, align 8
  %i.n = lshr i32 %i.m, 19
  %i.o = and i32 %i.n, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !2083
  %i.t = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE14TransformExprsEPKPNS_4ExprEjbRNS6_15SmallVectorImplISK_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.q, i32 noundef %i.s, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.t, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = and i64 %i.d, -2
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !1587
  %i.x = icmp ne ptr %i.w, %i.v
  %i.y = load i8, ptr %i.a, align 1, !range !96
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.ab = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.aa, ptr noundef nonnull %1) #30
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ac = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #31
  %.sroa.013.0.extract.trunc = trunc i64 %i.ac to i32
  %i.ad = load ptr, ptr %2, align 8, !tbaa !858
  %i.ae = load i32, ptr %i.k, align 8, !tbaa !859
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.ag, align 4, !tbaa !795
  %i.ah = and i64 %i.h, -2
  %i.ai = inttoptr i64 %i.ah to ptr
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2407
  %i.aj = call i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef null, ptr noundef nonnull %i.v, i32 %.sroa.013.0.extract.trunc, ptr %i.ad, i64 %i.af, i32 %.sroa.0.0.copyload.i12, ptr noundef %i.ai), !inline_history !38
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.sroa.011.0 = phi i64 [ %i.ab, %bb.e ], [ %i.aj, %bb.f ], [ 1, %bb.c ]
  %i.ak = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.j
  br i1 %i.al, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.ak) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.b, %bb.a
  %.sroa.011.2 = phi i64 [ 1, %bb.a ], [ %.sroa.011.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %bb.b ]
  ret i64 %.sroa.011.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformCXXUuidofExprEPNS_13CXXUuidofExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE18TransformBlockExprEPNS_9BlockExprE:bb.a
  %.sroa.030.1 = phi i64 [ 1, %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit ], [ %.sroa.030.0, %bb.aa ]
  %i.fs = load ptr, ptr %6, align 8, !tbaa !1804  ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ad
  br i1 %i.ft, label %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.fs) #30
  br label %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit

_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.fu = load ptr, ptr %5, align 8, !tbaa !858   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.z
  br i1 %i.fv, label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit
  call void @free(ptr noundef %i.fu) #30
  br label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit: ; preds = %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.fw = load ptr, ptr %4, align 8, !tbaa !858   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.w
  br i1 %i.fx, label %_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit
  call void @free(ptr noundef %i.fw) #30
  br label %_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i64 %.sroa.030.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23TransformBinaryOperatorEPNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1587
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1587 ; 2 uses
  %.not.i30 = icmp eq ptr %i.f, null
  br i1 %.not.i30, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i.backedge
  %.016.i = phi ptr [ %.016.i.be, %.preheader.i.backedge ], [ %i.f, %bb.b ] ; 6 uses
  %i.g = load i16, ptr %.016.i, align 8
  %i.h = and i16 %i.g, 511
  switch i16 %i.h, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit [
    i16 81, label %bb.c
    i16 50, label %bb.d
    i16 63, label %bb.g
  ]

bb.c:                                             ; preds = %.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1930
  br label %.preheader.i.backedge

bb.d:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8 ; 3 uses
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %.preheader.i.backedge

bb.f:                                             ; preds = %bb.d
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2169
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.f, %bb.e, %bb.c
  %.016.i.be = phi ptr [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %i.r, %bb.f ]
  br label %.preheader.i

bb.g:                                             ; preds = %.preheader.i
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i, i64 4
  %i.t = load i16, ptr %i.s, align 4
  %i.u = and i16 %i.t, 256
  %.not39.i = icmp eq i16 %i.u, 0
  br i1 %.not39.i, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove25RemoveImmediateInvocationES8_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %.016.i), !inline_history !2532
  br label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit

_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit: ; preds = %.preheader.i, %bb.g, %bb.h
  %i.v = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %.016.i, i1 noundef zeroext false), !inline_history !2532 ; 2 uses
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.o, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit.thread

_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit.thread: ; preds = %bb.b, %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit
  %.sroa.0.0.i32 = phi i64 [ %i.v, %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit ], [ 0, %bb.b ] ; 3 uses
  %i.x = and i64 %i.c, -2
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1587
  %i.aa = icmp eq ptr %i.z, %i.y
  br i1 %i.aa, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit.thread
  %i.ab = and i64 %.sroa.0.0.i32, -2
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !1587
  %i.ae = icmp eq ptr %i.ad, %i.ac
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = ptrtoint ptr %1 to i64
  br label %bb.o

bb.k:                                             ; preds = %bb.i, %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit.thread
  %i.ag = load i32, ptr %1, align 8
  %i.ah = lshr i32 %i.ag, 19                      ; 2 uses
  %i.ai = and i32 %i.ah, 62
  %i.aj = add nsw i32 %i.ai, -22
  %i.ak = icmp ult i32 %i.aj, 10
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.al, align 4, !tbaa !795
  %i.am = and i32 %i.ah, 63
  %i.an = and i64 %.sroa.0.0.i32, -2
  %i.ao = inttoptr i64 %i.an to ptr
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ap = tail call i64 @_ZN5clang4Sema10BuildBinOpEPNS_5ScopeENS_14SourceLocationENS_18BinaryOperatorKindEPNS_4ExprES6_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef null, i32 %.sroa.0.0.copyload.i, i32 noundef %i.am, ptr noundef %i.y, ptr noundef %i.ao, i1 noundef zeroext false), !inline_history !4440
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %.val16 = load ptr, ptr %0, align 8, !tbaa !2407
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(18640) %.val16) #30
  %i.aq = load i32, ptr %1, align 8               ; 2 uses
  %i.ar = and i32 %i.aq, 33554432
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = and i32 %i.aq, 511
  %i.at = icmp eq i32 %i.as, 123
  %i.au = select i1 %i.at, i64 48, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.av, align 4, !tbaa !795
  br label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit

_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit: ; preds = %bb.m, %bb.n
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val15 = load ptr, ptr %0, align 8, !tbaa !2407 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val15, i64 216
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 216
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = trunc i64 %i.az to i32                  ; 3 uses
  %i.bb = lshr i32 %i.ba, 23
  %i.bc = and i32 %i.bb, 3                        ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 3
  %spec.store.select.i.i = select i1 %i.bd, i32 2, i32 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = lshr i64 %i.bf, 57
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 4                        ; 2 uses
  %i.bj = lshr i32 %i.ba, 19
  %i.bk = and i32 %i.bj, 192
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = lshr i64 %i.bm, 36
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 32256
  %i.bq = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.bi, 0
  %or.cond.not16.i.i = select i1 %i.bq, i1 %.not3.i.i.i, i1 false
  %i.br = and i32 %i.ba, 100663296
  %i.bs = icmp eq i32 %i.br, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.bs, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  %i.bu = load i64, ptr %i.bt, align 8
  %sh.diff.i.i = lshr i64 %i.bu, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.bv = and i32 %tr.sh.diff.i.i, 29360128
  %i.bw = or disjoint i32 %i.bk, %i.bp
  %i.bx = or disjoint i32 %i.bw, %i.bv
  %i.by = or disjoint i32 %i.bx, %masksel.i.i
  %i.bz = or disjoint i32 %i.by, %i.bi
  %i.ca = or disjoint i32 %i.bz, %spec.store.select.i.i
  %i.cb = or disjoint i32 %i.ca, 56
  %i.cc = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.cd = and i32 %i.cb, %i.cc
  %i.ce = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.cf = trunc nuw i64 %i.ce to i32
  %i.cg = or i32 %i.cd, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.val15, i64 208
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !795
  %i.ci = getelementptr inbounds nuw i8, ptr %.val15, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ci, align 8, !tbaa !795
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i17 = load i32, ptr %i.cj, align 4, !tbaa !795
  %i.ck = load i32, ptr %1, align 8
  %i.cl = lshr i32 %i.ck, 19
  %i.cm = and i32 %i.cl, 63
  %i.cn = and i64 %.sroa.0.0.i32, -2
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = call i64 @_ZN5clang4Sema10BuildBinOpEPNS_5ScopeENS_14SourceLocationENS_18BinaryOperatorKindEPNS_4ExprES6_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val15, ptr noundef null, i32 %.sroa.0.0.copyload.i17, i32 noundef %i.cm, ptr noundef %i.y, ptr noundef %i.co, i1 noundef zeroext false), !inline_history !4440
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.l, %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit, %bb.a
  %.sroa.028.1 = phi i64 [ 1, %bb.a ], [ %i.cp, %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit ], [ %i.af, %bb.j ], [ %i.ap, %bb.l ], [ 1, %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit ]
  ret i64 %.sroa.028.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE31TransformCompoundAssignOperatorEPNS_22CompoundAssignOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %.val6 = load ptr, ptr %0, align 8, !tbaa !2407
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(18640) %.val6) #30
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 33554432
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 511
  %i.d = icmp eq i32 %i.c, 123
  %i.e = select i1 %i.d, i64 48, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 4, !tbaa !795
  br label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit

_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val5 = load ptr, ptr %0, align 8, !tbaa !2407 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val5, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = load i64, ptr %i.i, align 8
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = lshr i32 %i.k, 23
  %i.m = and i32 %i.l, 3                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 3
  %spec.store.select.i.i = select i1 %i.n, i32 2, i32 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = load i64, ptr %i.o, align 8
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 4                          ; 2 uses
  %i.t = lshr i32 %i.k, 19
  %i.u = and i32 %i.t, 192
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.w = load i64, ptr %i.v, align 8
  %i.x = lshr i64 %i.w, 36
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = and i32 %i.y, 32256
  %i.aa = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.s, 0
  %or.cond.not16.i.i = select i1 %i.aa, i1 %.not3.i.i.i, i1 false
  %i.ab = and i32 %i.k, 100663296
  %i.ac = icmp eq i32 %i.ab, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.ac, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.ae = load i64, ptr %i.ad, align 8
  %sh.diff.i.i = lshr i64 %i.ae, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.af = and i32 %tr.sh.diff.i.i, 29360128
  %i.ag = or disjoint i32 %i.u, %i.z
  %i.ah = or disjoint i32 %i.ag, %i.af
  %i.ai = or disjoint i32 %i.ah, %masksel.i.i
  %i.aj = or disjoint i32 %i.ai, %i.s
  %i.ak = or disjoint i32 %i.aj, %spec.store.select.i.i
  %i.al = or disjoint i32 %i.ak, 56
  %i.am = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.an = and i32 %i.al, %i.am
  %i.ao = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.ap = trunc nuw i64 %i.ao to i32
  %i.aq = or i32 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.val5, i64 208
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !795
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.as, align 8, !tbaa !795
  %i.at = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23TransformBinaryOperatorEPNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1)
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i64 %i.at
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE19TransformAtomicExprEPNS_10AtomicExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !858
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !859
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.d, align 4, !tbaa !876
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2606 ; 3 uses
  %i.g = icmp ugt i32 %i.f, 8
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.b, i64 noundef %i.h, i64 noundef 8) #30
  %.pre = load i32, ptr %i.e, align 8, !tbaa !2606
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.f, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE14TransformExprsEPKPNS_4ExprEjbRNS6_15SmallVectorImplISK_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.j, i32 noundef %i.i, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.l = load i8, ptr %i.a, align 1, !range !96
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %1 to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 4 ; 3 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !858
  %i.q = load i32, ptr %i.c, align 8, !tbaa !859
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !2607
  %i.u = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.v = trunc nuw i64 %i.u to i32
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.w = call i64 @_ZN5clang4Sema15BuildAtomicExprENS_11SourceRangeES1_NS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEENS_10AtomicExpr8AtomicOpENS0_19AtomicArgumentOrderE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i, i32 %i.v, ptr %i.p, i64 %i.r, i32 noundef %i.t, i32 noundef 1) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.e, %bb.d
  %.sroa.011.0 = phi i64 [ %i.n, %bb.d ], [ %i.w, %bb.e ], [ 1, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.b
  br i1 %i.y, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.x) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i64 %.sroa.011.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE19TransformAsTypeExprEPNS_10AsTypeExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2125
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !788 ; 3 uses
  %i.f = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.f, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2407
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.i = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.h, i64 %.sroa.0.0.copyload.i, i32 0) #30, !inline_history !34
  %i.j = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i), !inline_history !34 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 8, !tbaa !788
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.d ], [ %.sroa.0.0.copyload.i, %bb.b ], [ 0, %bb.c ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.l = and i64 %i.c, -2
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.n, align 8, !tbaa !795
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.o, align 4, !tbaa !795
  %i.p = tail call i64 @_ZN5clang4Sema15BuildAsTypeExprEPNS_4ExprENS_8QualTypeENS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %i.k, ptr noundef %i.m, i64 %.sroa.0.0.i, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit
  %.sroa.09.0 = phi i64 [ %i.p, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit ], [ 1, %bb.a ]
  ret i64 %.sroa.09.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformArrayTypeTraitExprEPNS_18ArrayTypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2609
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2609
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787 ; 2 uses
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.g, i32 noundef 0, ptr noundef null, i32 noundef 4)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2610
  %i.j = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i) ; 2 uses
  %i.k = icmp eq i64 %i.j, 1
  tail call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.g)
  br i1 %i.k, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit14

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit14: ; preds = %bb.d
  %i.l = load i24, ptr %1, align 8
  %i.m = lshr i24 %i.l, 19
  %i.n = and i24 %i.m, 3
  %i.o = zext nneg i24 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.p, align 8, !tbaa !795
  %i.q = and i64 %i.j, -2
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.s, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.t = tail call i64 @_ZN5clang4Sema19BuildArrayTypeTraitENS_14ArrayTypeTraitENS_14SourceLocationEPNS_14TypeSourceInfoEPNS_4ExprES2_(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef %i.o, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, ptr noundef %i.r, i32 %.sroa.0.0.copyload.i15) #30
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.d, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit14, %bb.a, %bb.c
  %.sroa.020.1 = phi i64 [ 1, %bb.a ], [ %i.f, %bb.c ], [ %i.t, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit14 ], [ 1, %bb.d ]
  ret i64 %.sroa.020.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformArraySubscriptExprEPNS_18ArraySubscriptExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1587
  %i.d = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1587
  %i.h = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.g) ; 2 uses
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %i.d, -2
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !1587 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.k
end_hunk_1
begin_hunk_2_@_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_14SourceLocationEvEERKS1_OT_:bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !801  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %bb.c

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !802
  %i.h = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.g) ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !801
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, %bb.b
  %i.i = phi ptr [ %i.h, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 424 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !859  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 428
  %i.n = load i32, ptr %i.m, align 4, !tbaa !876
  %.not.i5.i.i.i.i = icmp ult i32 %i.l, %i.n
  br i1 %.not.i5.i.i.i.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 %.sroa.0.0.insert.insert.i.i.i, i8 1)
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_14SourceLocationEvEERKS1_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !858
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.o ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.q, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i.i, align 1
  %i.r = load i32, ptr %i.k, align 8, !tbaa !859
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !859
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_14SourceLocationEvEERKS1_OT_.exit

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.v = load i8, ptr %i.u, align 4, !tbaa !817, !range !96, !noundef !97
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_14SourceLocationEvEERKS1_OT_.exit

bb.g:                                             ; preds = %bb.f
  %i.x = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !826  ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !102
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(168) %i.z) #30, !inline_history !1
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ %i.ad, %bb.h ], [ null, %bb.g ]
  store ptr %i.ae, ptr %2, align 8, !tbaa !828
  %i.af = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !795
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !831
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %.sroa.2.0.insert.ext.i.i = zext i32 %.sroa.0.0.copyload.i to i64
  %.sroa.0.0.insert.insert.i.i = mul nuw i64 %.sroa.2.0.insert.ext.i.i, 4294967297 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !801 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %bb.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !802
  %i.ap = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ao) ; 2 uses
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !801
  br label %bb.i

bb.i:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = phi ptr [ %i.ap, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.am, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 416 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 424 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !859 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 428
  %i.av = load i32, ptr %i.au, align 4, !tbaa !876
  %.not.i5.i.i.i = icmp ult i32 %i.at, %i.av
  br i1 %.not.i5.i.i.i, label %bb.k, label %bb.j, !prof !856

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 %.sroa.0.0.insert.insert.i.i, i8 1)
  br label %_ZNK5clang17PartialDiagnosticlsINS_14SourceLocationEvEERKS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = zext i32 %i.at to i64
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !858
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %i.aw ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.ay, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i, align 1
  %i.az = load i32, ptr %i.as, align 8, !tbaa !859
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.as, align 8, !tbaa !859
  br label %_ZNK5clang17PartialDiagnosticlsINS_14SourceLocationEvEERKS0_OT_.exit

_ZNK5clang17PartialDiagnosticlsINS_14SourceLocationEvEERKS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_14SourceLocationEvEERKS1_OT_.exit

_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_14SourceLocationEvEERKS1_OT_.exit: ; preds = %bb.e, %bb.d, %bb.f, %_ZNK5clang17PartialDiagnosticlsINS_14SourceLocationEvEERKS0_OT_.exit
  ret ptr %0
}

declare i64 @_ZN5clang4Sema14BuildTypeTraitENS_9TypeTraitENS_14SourceLocationEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEES2_(ptr noundef nonnull align 8 dereferenceable(18640), i32 noundef, i32, ptr, i64, i32) local_unnamed_addr #2

declare void @_ZNK5clang32SubstNonTypeTemplateParmPackExpr15getArgumentPackEv(ptr dead_on_unwind writable sret(%"class.clang::TemplateArgument") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang32SubstNonTypeTemplateParmPackExpr16getParameterPackEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZNK5clang16TemplateArgument23getPackExpansionPatternEv(ptr dead_on_unwind writable sret(%"class.clang::TemplateArgument") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema33BuildSubstNonTypeTemplateParmExprEPNS_4DeclEjNS_8QualTypeENS_14SourceLocationENS_16TemplateArgumentENS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32 noundef, i64, i32, ptr noundef byval(%"class.clang::TemplateArgument") align 8, i32, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN5clang4Expr23IgnoreImplicitAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN5clang28getReplacedTemplateParameterEPNS_4DeclEj(ptr dead_on_unwind writable sret(%"class.std::tuple.2742") align 8, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema21CheckTemplateArgumentEPNS_9NamedDeclENS_8QualTypeEPNS_4ExprERNS_16TemplateArgumentES7_bNS0_25CheckTemplateArgumentKindE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i64, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE21TransformCompoundStmtEPNS_12CompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::FPOptions", align 4  ; 4 uses
  %4 = alloca %"class.clang::FPOptions", align 4  ; 4 uses
  %5 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.2748", align 8 ; 12 uses
  %.val33 = load ptr, ptr %0, align 8, !tbaa !2407 ; 2 uses
  tail call void @_ZN5clang4Sema24ActOnStartOfCompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val33, i1 noundef zeroext false) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %.val32 = load ptr, ptr %0, align 8, !tbaa !2407
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(18640) %.val32) #30
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 512
  %.not67 = icmp eq i16 %i.b, 0
  br i1 %.not67, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val31 = load ptr, ptr %0, align 8, !tbaa !2407 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !788
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 4, !tbaa !795 ; 2 uses
  %.sroa.451.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32 ; 2 uses
  %.sroa.451.0.extract.trunc = trunc nuw i64 %.sroa.451.0.extract.shift to i32
  %i.h = getelementptr inbounds nuw i8, ptr %.val31, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 216 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = trunc i64 %i.k to i32                    ; 3 uses
  %i.m = lshr i32 %i.l, 23
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %i.o = icmp eq i32 %i.n, 3
  %spec.store.select.i.i = select i1 %i.o, i32 2, i32 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = and i32 %i.s, 4                          ; 2 uses
  %i.u = lshr i32 %i.l, 19
  %i.v = and i32 %i.u, 192
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i64 %i.x, 36
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = and i32 %i.z, 32256
  %i.ab = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.t, 0
  %or.cond.not16.i.i = select i1 %i.ab, i1 %.not3.i.i.i, i1 false
  %i.ac = and i32 %i.l, 100663296
  %i.ad = icmp eq i32 %i.ac, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.ad, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 208 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %sh.diff.i.i = lshr i64 %i.af, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.ag = and i32 %tr.sh.diff.i.i, 29360128
  %i.ah = or disjoint i32 %i.v, %i.aa
  %i.ai = or disjoint i32 %i.ah, %i.ag
  %i.aj = or disjoint i32 %i.ai, %masksel.i.i
  %i.ak = or disjoint i32 %i.aj, %i.t
  %i.al = or disjoint i32 %i.ak, %spec.store.select.i.i
  %i.am = or disjoint i32 %i.al, 56
  %i.an = xor i32 %.sroa.451.0.extract.trunc, -1
  %i.ao = and i32 %i.am, %i.an
  %i.ap = and i64 %.sroa.451.0.extract.shift, %.sroa.0.0.copyload.i
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = or i32 %i.ao, %i.aq                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %i.ar, ptr %3, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.val31, i64 208
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.at = load i64, ptr %i.j, align 8
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %i.av = lshr i32 %i.au, 23
  %i.aw = and i32 %i.av, 3                        ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 3
  %spec.store.select.i.i35 = select i1 %i.ax, i32 2, i32 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.p, align 8
  %i.az = lshr i64 %i.ay, 57
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = and i32 %i.ba, 4                        ; 2 uses
  %i.bc = lshr i32 %i.au, 19
  %i.bd = and i32 %i.bc, 192
  %i.be = load i64, ptr %i.w, align 8
  %i.bf = lshr i64 %i.be, 36
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 32256
  %i.bi = icmp eq i32 %spec.store.select.i.i35, 1
  %.not3.i.i.i36 = icmp ne i32 %i.bb, 0
  %or.cond.not16.i.i37 = and i1 %.not3.i.i.i36, %i.bi
  %i.bj = and i32 %i.au, 100663296
  %i.bk = icmp eq i32 %i.bj, 67108864
  %or.cond15.i.i38 = select i1 %or.cond.not16.i.i37, i1 %i.bk, i1 false
  %masksel.i.i39 = select i1 %or.cond15.i.i38, i32 256, i32 0
  %i.bl = load i64, ptr %i.ae, align 8
  %sh.diff.i.i40 = lshr i64 %i.bl, 23
  %tr.sh.diff.i.i41 = trunc i64 %sh.diff.i.i40 to i32
  %i.bm = and i32 %tr.sh.diff.i.i41, 29360128
  %i.bn = or disjoint i32 %i.bd, %i.bh
  %i.bo = or disjoint i32 %i.bn, %i.bm
  %i.bp = or disjoint i32 %i.bo, %masksel.i.i39
  %i.bq = or disjoint i32 %i.bp, %i.bb
  %i.br = or disjoint i32 %i.bq, %spec.store.select.i.i35
  %i.bs = or disjoint i32 %i.br, 56               ; 2 uses
  store i32 %i.bs, ptr %4, align 4, !tbaa !1608
  %i.bt = icmp eq i32 %i.ar, %i.bs
  br i1 %i.bt, label %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bu = call i64 @_ZNK5clang9FPOptions14getChangesSlowERKS0_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #30
  br label %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit

_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.insert.insert.i.i = phi i64 [ %i.bu, %bb.c ], [ 0, %bb.b ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.val31, i64 2024
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bv, align 8, !tbaa !795
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.bw, ptr %6, align 8, !tbaa !858
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !859
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 8, ptr %i.by, align 4, !tbaa !876
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !788 ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %.idx = shl nuw nsw i64 %i.cc, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx ; 2 uses
  %.not70 = icmp eq i32 %i.cb, 0
  br i1 %.not70, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %.073.us = phi i1 [ %.1.ph.us, %bb.j ], [ false, %.lr.ph ] ; 2 uses
  %.02572.us = phi i8 [ %.126.ph.us, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %.03071.us = phi ptr [ %i.df, %bb.j ], [ %i.bz, %.lr.ph ] ; 2 uses
  %i.ce = load ptr, ptr %.03071.us, align 8, !tbaa !1587 ; 4 uses
  %i.cf = load i32, ptr %i.ca, align 4, !tbaa !788 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN5clang12CompoundStmt9body_backEv.exit.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.ch = add i32 %i.cf, -1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1587
  br label %_ZN5clang12CompoundStmt9body_backEv.exit.us

_ZN5clang12CompoundStmt9body_backEv.exit.us:      ; preds = %bb.e, %.lr.ph.split.us
  %i.cl = phi ptr [ %i.ck, %bb.e ], [ null, %.lr.ph.split.us ]
  %i.cm = icmp eq ptr %i.ce, %i.cl
  %i.cn = select i1 %i.cm, i32 2, i32 0
  %i.co = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformStmtEPNS_4StmtENSI_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ce, i32 noundef %i.cn) ; 2 uses
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5clang12CompoundStmt9body_backEv.exit.us
  %i.cq = trunc nuw i8 %.02572.us to i1
  %i.cr = and i64 %i.co, -2
  %i.cs = inttoptr i64 %i.cr to ptr               ; 3 uses
  %i.ct = icmp ne ptr %i.ce, %i.cs
  %narrow.us = select i1 %i.cq, i1 true, i1 %i.ct
  %i.cu = zext i1 %narrow.us to i8                ; 2 uses
  %i.cv = load i32, ptr %i.bx, align 8, !tbaa !859 ; 2 uses
  %i.cw = load i32, ptr %i.by, align 4, !tbaa !876
  %.not.i.us = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i.us, label %bb.h, label %bb.g, !prof !856

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.cs)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %6, align 8, !tbaa !858
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  store ptr %i.cs, ptr %i.cz, align 1
  %i.da = load i32, ptr %i.bx, align 8, !tbaa !859
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.bx, align 8, !tbaa !859
  br label %bb.j

bb.i:                                             ; preds = %_ZN5clang12CompoundStmt9body_backEv.exit.us
  %i.dc = load i16, ptr %i.ce, align 8
  %i.dd = and i16 %i.dc, 511
  %i.de = icmp eq i16 %i.dd, 255
  br i1 %i.de, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.126.ph.us = phi i8 [ %i.cu, %bb.h ], [ %i.cu, %bb.g ], [ %.02572.us, %bb.i ] ; 2 uses
  %.1.ph.us = phi i1 [ %.073.us, %bb.h ], [ %.073.us, %bb.g ], [ true, %bb.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.03071.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.df, %i.cd
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.073 = phi i1 [ %.1.ph, %bb.o ], [ false, %.lr.ph ] ; 2 uses
  %.02572 = phi i8 [ %.126.ph, %bb.o ], [ 0, %.lr.ph ] ; 2 uses
  %.03071 = phi ptr [ %i.dy, %bb.o ], [ %i.bz, %.lr.ph ] ; 2 uses
  %i.dg = load ptr, ptr %.03071, align 8, !tbaa !1587 ; 3 uses
  %i.dh = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformStmtEPNS_4StmtENSI_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dg, i32 noundef 0) ; 2 uses
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split
  %i.dj = load i16, ptr %i.dg, align 8
  %i.dk = and i16 %i.dj, 511
  %i.dl = icmp eq i16 %i.dk, 255
  br i1 %i.dl, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %bb.o

bb.l:                                             ; preds = %.lr.ph.split
  %i.dm = and i64 %i.dh, -2
  %i.dn = inttoptr i64 %i.dm to ptr               ; 3 uses
  %i.do = icmp ne ptr %i.dg, %i.dn
  %i.dp = zext i1 %i.do to i8
  %i.dq = or i8 %.02572, %i.dp                    ; 2 uses
  %i.dr = load i32, ptr %i.bx, align 8, !tbaa !859 ; 2 uses
  %i.ds = load i32, ptr %i.by, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.dr, %i.ds
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !856

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.dn)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dt = zext i32 %i.dr to i64
  %i.du = load ptr, ptr %6, align 8, !tbaa !858
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  store ptr %i.dn, ptr %i.dv, align 1
  %i.dw = load i32, ptr %i.bx, align 8, !tbaa !859
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.bx, align 8, !tbaa !859
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  %.126.ph = phi i8 [ %i.dq, %bb.n ], [ %i.dq, %bb.m ], [ %.02572, %bb.k ] ; 2 uses
  %.1.ph = phi i1 [ %.073, %bb.n ], [ %.073, %bb.m ], [ true, %bb.k ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.03071, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dy, %i.cd
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.o, %bb.j
  %.025.lcssa = phi i8 [ %.126.ph.us, %bb.j ], [ %.126.ph, %bb.o ]
  %.0.lcssa = phi i1 [ %.1.ph.us, %bb.j ], [ %.1.ph, %bb.o ]
  br i1 %.0.lcssa, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.dz = trunc nuw i8 %.025.lcssa to i1
  br i1 %i.dz, label %bb.q, label %.thread

.thread:                                          ; preds = %bb.d, %bb.p
  %i.ea = ptrtoint ptr %1 to i64
end_hunk_2
begin_hunk_3_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformCXXOperatorCallExprEPNS_19CXXOperatorCallExprE:bb.a
  %i.ak = call i64 @_ZN5clang4Sema23ActOnArraySubscriptExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef null, ptr noundef nonnull %i.l, i32 %.sroa.079.0, ptr %i.ag, i64 %i.ai, i32 %.sroa.3.0.extract.trunc.i), !inline_history !5054
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = call i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef null, ptr noundef nonnull %i.l, i32 %.sroa.079.0, ptr %i.ag, i64 %i.ai, i32 %.sroa.3.0.extract.trunc.i, ptr noundef null), !inline_history !38
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.sroa.050.0 = phi i64 [ %i.al, %bb.f ], [ %i.ak, %bb.e ], [ 1, %bb.c ]
  %i.am = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.q
  br i1 %i.an, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.am) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.av

bb.i:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !2083
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = and i32 %i.a, 2113929216
  %i.as = icmp eq i32 %i.ar, 369098752
  %or.cond = and i1 %i.as, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = lshr i32 %i.a, 19
  %i.av = and i32 %i.au, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1514 ; 5 uses
  br i1 %or.cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = and i16 %i.az, 511
  switch i16 %i.ba, label %bb.m [
    i16 71, label %bb.k
    i16 24, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.bb = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE34TransformDependentScopeDeclRefExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay, i1 noundef zeroext true, ptr noundef null), !inline_history !33
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.l:                                             ; preds = %bb.j
  %i.bc = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE29TransformUnresolvedLookupExprEPNS_20UnresolvedLookupExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay, i1 noundef zeroext true), !inline_history !33
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.m:                                             ; preds = %bb.j
  %i.bd = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay), !inline_history !33
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.n:                                             ; preds = %bb.i
  %i.be = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ay)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE25TransformAddressOfOperandEPNS_4ExprE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE25TransformAddressOfOperandEPNS_4ExprE.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.n
  %storemerge = phi i64 [ %i.be, %bb.n ], [ %i.bb, %bb.k ], [ %i.bc, %bb.l ], [ %i.bd, %bb.m ] ; 3 uses
  %i.bf = icmp eq i64 %storemerge, 1
  br i1 %i.bf, label %bb.av, label %bb.o

bb.o:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE25TransformAddressOfOperandEPNS_4ExprE.exit
  %i.bg = load i32, ptr %i.ao, align 8, !tbaa !2083
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %bb.p, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %1, align 8
  %i.bj = lshr i32 %i.bi, 19
  %i.bk = and i32 %i.bj, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1514 ; 2 uses
  %.not.i115 = icmp eq ptr %i.bo, null
  br i1 %.not.i115, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p, %.preheader.i.backedge
  %.016.i = phi ptr [ %.016.i.be, %.preheader.i.backedge ], [ %i.bo, %bb.p ] ; 6 uses
  %i.bp = load i16, ptr %.016.i, align 8
  %i.bq = and i16 %i.bp, 511
  switch i16 %i.bq, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit [
    i16 81, label %bb.q
    i16 50, label %bb.r
    i16 63, label %bb.u
  ]

bb.q:                                             ; preds = %.preheader.i
  %i.br = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1930
  br label %.preheader.i.backedge

bb.r:                                             ; preds = %.preheader.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8 ; 3 uses
  %i.bu = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %.preheader.i.backedge

bb.t:                                             ; preds = %bb.r
  %i.bx = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2169
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.t, %bb.s, %bb.q
  %.016.i.be = phi ptr [ %i.bw, %bb.s ], [ %i.bs, %bb.q ], [ %i.ca, %bb.t ]
  br label %.preheader.i

bb.u:                                             ; preds = %.preheader.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.016.i, i64 4
  %i.cc = load i16, ptr %i.cb, align 4
  %i.cd = and i16 %i.cc, 256
  %.not39.i = icmp eq i16 %i.cd, 0
  br i1 %.not39.i, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove25RemoveImmediateInvocationES8_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %.016.i), !inline_history !2532
  br label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit

_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit: ; preds = %.preheader.i, %bb.u, %bb.v
  %i.ce = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %.016.i, i1 noundef zeroext false), !inline_history !2532 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.av, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit.thread

_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit.thread: ; preds = %bb.p, %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit, %bb.o
  %.sroa.070.0 = phi i64 [ %i.ce, %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit ], [ 0, %bb.o ], [ 0, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.val57 = load ptr, ptr %0, align 8, !tbaa !2407
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(18640) %.val57) #30
  %i.cg = load i32, ptr %1, align 8               ; 2 uses
  %i.ch = and i32 %i.cg, 2097152
  %.not.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i, label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cj = lshr i32 %i.cg, 19
  %i.ck = and i32 %i.cj, 1
  %i.cl = load i32, ptr %i.ao, align 8, !tbaa !2083
  %i.cm = add nuw nsw i32 %i.ck, 1
  %i.cn = add i32 %i.cm, %i.cl
  %i.co = shl i32 %i.cn, 3
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cp
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cq, align 4, !tbaa !795
  br label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit

_ZNK5clang8CallExpr13getFPFeaturesEv.exit:        ; preds = %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit.thread, %bb.w
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.w ], [ 0, %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit.thread ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val56 = load ptr, ptr %0, align 8, !tbaa !2407 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val56, i64 216
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 216
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = trunc i64 %i.cu to i32                  ; 3 uses
  %i.cw = lshr i32 %i.cv, 23
  %i.cx = and i32 %i.cw, 3                        ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 3
  %spec.store.select.i.i = select i1 %i.cy, i32 2, i32 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = lshr i64 %i.da, 57
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = and i32 %i.dc, 4                        ; 2 uses
  %i.de = lshr i32 %i.cv, 19
  %i.df = and i32 %i.de, 192
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = lshr i64 %i.dh, 36
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = and i32 %i.dj, 32256
  %i.dl = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.dd, 0
  %or.cond.not16.i.i = select i1 %i.dl, i1 %.not3.i.i.i, i1 false
  %i.dm = and i32 %i.cv, 100663296
  %i.dn = icmp eq i32 %i.dm, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.dn, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 208
  %i.dp = load i64, ptr %i.do, align 8
  %sh.diff.i.i = lshr i64 %i.dp, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.dq = and i32 %tr.sh.diff.i.i, 29360128
  %i.dr = or disjoint i32 %i.df, %i.dk
  %i.ds = or disjoint i32 %i.dr, %i.dq
  %i.dt = or disjoint i32 %i.ds, %masksel.i.i
  %i.du = or disjoint i32 %i.dt, %i.dd
  %i.dv = or disjoint i32 %i.du, %spec.store.select.i.i
  %i.dw = or disjoint i32 %i.dv, 56
  %i.dx = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.dy = and i32 %i.dw, %i.dx
  %i.dz = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.ea = trunc nuw i64 %i.dz to i32
  %i.eb = or i32 %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %.val56, i64 208
  store i32 %i.eb, ptr %i.ec, align 8, !tbaa !795
  %i.ed = getelementptr inbounds nuw i8, ptr %.val56, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ed, align 8, !tbaa !795
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1587 ; 9 uses
  %i.eg = load i16, ptr %i.ef, align 8
  %i.eh = and i16 %i.eg, 511                      ; 2 uses
  %.not = icmp eq i16 %i.eh, 24
  br i1 %.not, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %.sroa.0.0.copyload.i.i61 = load i64, ptr %i.ei, align 8, !tbaa !815 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %.sroa.0.0.copyload.i.i62 = load i32, ptr %i.ej, align 8, !tbaa !795
  store i32 0, ptr %4, align 8, !tbaa !1722
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.ek, align 4, !tbaa !1723
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.em, ptr %i.el, align 8, !tbaa !858
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.en, align 8, !tbaa !859
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 8, ptr %i.eo, align 4, !tbaa !876
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i8 0, i64 24, i1 false)
  store ptr %.val56, ptr %i.eq, align 8, !tbaa !1724
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %.sroa.0.0.copyload.i.i61, ptr %i.er, align 8, !tbaa !815
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 %.sroa.0.0.copyload.i.i62, ptr %i.es, align 8, !tbaa !795
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.et, i64 %.sroa.0.0.copyload.i.i61) #30
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.eu, i8 0, i64 18, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 163
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 164
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.ev, align 2, !tbaa !840
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 166
  store i8 0, ptr %i.ey, align 2, !tbaa !1733
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 167
  store i8 0, ptr %i.ez, align 1, !tbaa !1835
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #30
  %i.fa = load i24, ptr %i.ef, align 8
  %i.fb = and i24 %i.fa, 1048576
  %i.fc = icmp ne i24 %i.fb, 0
  %i.fd = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformOverloadExprDeclsEPNS_12OverloadExprEbRNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ef, i1 noundef zeroext %i.fc, ptr noundef nonnull align 8 dereferenceable(168) %4)
  br i1 %i.fd, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fe = load i32, ptr %1, align 8
  %i.ff = lshr i32 %i.fe, 25
  %i.fg = and i32 %i.ff, 63
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i63 = load i32, ptr %i.fh, align 4, !tbaa !795
  %i.fi = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ef) #31
  %i.fj = load i24, ptr %i.ef, align 8
  %i.fk = and i24 %i.fj, 1048576
  %i.fl = icmp ne i24 %i.fk, 0
  %i.fm = and i64 %storemerge, -2
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = and i64 %.sroa.070.0, -2
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26RebuildCXXOperatorCallExprENS_22OverloadedOperatorKindENS_14SourceLocationESK_bRKNS_17UnresolvedSetImplEPNS_4ExprESP_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.fg, i32 %.sroa.0.0.copyload.i.i63, i32 %i.fi, i1 noundef zeroext %i.fl, ptr noundef nonnull align 1 dereferenceable(1) %i.el, ptr noundef %i.fn, ptr noundef %i.fp)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sroa.050.2 = phi i64 [ %i.fq, %bb.y ], [ 1, %bb.x ]
  %i.fr = load i8, ptr %i.ew, align 1, !tbaa !1726, !range !96, !noundef !97
  %i.fs = trunc nuw i8 %i.fr to i1
  %.pre104 = load i32, ptr %4, align 8            ; 3 uses
  br i1 %i.fs, label %bb.aa, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ft = icmp ne i32 %.pre104, 5
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = icmp ne ptr %i.fv, null
  %or.cond.i.i = select i1 %i.ft, i1 %i.fw, i1 false
  br i1 %or.cond.i.i, label %bb.ab, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.fx = load ptr, ptr %i.eq, align 8, !tbaa !1724 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 216
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = and i64 %i.gb, 18014398509481984
  %.not.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fx, ptr noundef nonnull align 8 dereferenceable(168) %4) #30
  %.pre = load i32, ptr %4, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i: ; preds = %bb.ac, %bb.aa, %bb.z
  %i.gd = phi i32 [ %.pre, %bb.ac ], [ %.pre104, %bb.z ], [ %.pre104, %bb.aa ]
  %i.ge = load i8, ptr %i.ex, align 4, !tbaa !1727, !range !96, !noundef !97
  %i.gf = trunc nuw i8 %i.ge to i1
  %i.gg = icmp eq i32 %i.gd, 5
  %or.cond97 = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %or.cond97, label %bb.ad, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

bb.ad:                                            ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.gh = load ptr, ptr %i.eq, align 8, !tbaa !1724
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.gh, ptr noundef nonnull align 8 dereferenceable(168) %4) #30
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i: ; preds = %bb.ab, %bb.ad, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.gi = load ptr, ptr %i.ep, align 8, !tbaa !1728 ; 2 uses
  %.not.i64 = icmp eq ptr %i.gi, null
  br i1 %.not.i64, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.gi) #30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  %i.gj = load ptr, ptr %i.el, align 8, !tbaa !858 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.em
  br i1 %i.gk, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.gj) #30
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.au

bb.ai:                                            ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.gl, ptr %5, align 8, !tbaa !858
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.gm, align 8, !tbaa !859
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 1, ptr %i.gn, align 4, !tbaa !876
  %.not100 = icmp eq i16 %i.eh, 81
  br i1 %.not100, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.go = call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ef) #30
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.051 = phi ptr [ %i.go, %bb.aj ], [ %i.ef, %bb.ai ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !1530 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !2065, !noalias !5063 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !2416, !noalias !5063 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !2028, !noalias !5063 ; 4 uses
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %.loopexit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gy = add i32 %i.gw, -1                       ; 2 uses
  %i.gz = ptrtoint ptr %i.gq to i64
  %i.ha = mul i64 %i.gz, -4658895280553007687     ; 2 uses
  %i.hb = lshr i64 %i.ha, 31
  %i.hc = xor i64 %i.hb, %i.ha
  %i.hd = trunc i64 %i.hc to i32
  %i.he = and i32 %i.gy, %i.hd                    ; 3 uses
  %i.hf = zext i32 %i.he to i64                   ; 2 uses
  %i.hg = lshr i64 %i.hf, 5
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !795, !noalias !5064
  %i.hj = and i32 %i.he, 31
  %i.hk = lshr i32 %i.hi, %i.hj
  %i.hl = trunc i32 %i.hk to i1
  br i1 %i.hl, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.al, %bb.am
  %i.hm = phi i64 [ %i.hs, %bb.am ], [ %i.hf, %bb.al ]
  %.017.i.i.i.i.i = phi i32 [ %i.hr, %bb.am ], [ %i.he, %bb.al ]
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.hm ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !855, !noalias !5064
  %i.hp = icmp eq ptr %i.gq, %i.ho
  br i1 %i.hp, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.am, !prof !856

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hq = add nuw i32 %.017.i.i.i.i.i, 1
  %i.hr = and i32 %i.hq, %i.gy                    ; 3 uses
  %i.hs = zext i32 %i.hr to i64                   ; 2 uses
  %i.ht = lshr i64 %i.hs, 5
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ht
end_hunk_3
begin_hunk_4_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE30TransformCXXFunctionalCastExprEPNS_21CXXFunctionalCastExprE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8, !tbaa !1514
  %i.m = load i16, ptr %i.j, align 8
  %i.n = and i16 %i.m, 511
  %i.o = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 3 uses
  switch i16 %i.n, label %bb.f [
    i16 19, label %bb.d
    i16 106, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !788
  %i.s = zext i32 %i.r to i64
  %i.t = tail call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %i.o, ptr noundef nonnull %i.d, i32 %.sroa.0.0.copyload.i, ptr nonnull %i.p, i64 %i.s, i32 %.sroa.0.0.copyload.i13, i1 noundef zeroext %i.l) #30
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprES5_b.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !2553
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.y = tail call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %i.o, ptr noundef nonnull %i.d, i32 %.sroa.0.0.copyload.i, ptr nonnull %i.x, i64 %i.w, i32 %.sroa.0.0.copyload.i13, i1 noundef zeroext %i.l) #30
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprES5_b.exit

bb.f:                                             ; preds = %bb.c
  %i.z = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %i.o, ptr noundef nonnull %i.d, i32 %.sroa.0.0.copyload.i, ptr nonnull %i.a, i64 1, i32 %.sroa.0.0.copyload.i13, i1 noundef zeroext %i.l) #30
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprES5_b.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprES5_b.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.025.2.i = phi i64 [ %i.z, %bb.f ], [ %i.y, %bb.e ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprES5_b.exit, %bb.b, %bb.a
  %.sroa.016.1 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ %.sroa.025.2.i, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprES5_b.exit ]
  ret i64 %.sroa.016.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23TransformCStyleCastExprEPNS_14CStyleCastExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2097
  %i.c = tail call noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #30
  %i.e = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d) ; 2 uses
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 8, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.h, align 4, !tbaa !795
  %i.i = and i64 %i.e, -2
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.l = tail call i64 @_ZN5clang4Sema19BuildCStyleCastExprENS_14SourceLocationEPNS_14TypeSourceInfoES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.k, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, i32 %.sroa.0.0.copyload.i12, ptr noundef %i.j) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.015.1 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ %i.l, %bb.c ]
  ret i64 %.sroa.015.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformBuiltinBitCastExprEPNS_18BuiltinBitCastExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2097
  %i.c = tail call noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1930
  %i.f = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.e) ; 2 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 8, !tbaa !795
  %i.i = and i64 %i.f, -2
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.k, align 4, !tbaa !795
  %i.l = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.m = tail call i64 @_ZN5clang4Sema23BuildBuiltinBitCastExprENS_14SourceLocationEPNS_14TypeSourceInfoEPNS_4ExprES1_(ptr noundef nonnull align 8 dereferenceable(18640) %i.l, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, ptr noundef %i.j, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.08.1 = phi i64 [ 1, %bb.a ], [ %i.m, %bb.c ], [ 1, %bb.b ]
  ret i64 %.sroa.08.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE17TransformCallExprEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 9 uses
  %3 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1587
  %i.d = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !858
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !859
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.h, align 4, !tbaa !876
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %1, align 8
  %i.k = lshr i32 %i.j, 19
  %i.l = and i32 %i.k, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !2083
  %i.q = call noundef zeroext i1 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS4_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n, i32 noundef %i.p, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = and i64 %i.d, -2
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #31
  %.sroa.017.0.extract.trunc = trunc i64 %i.t to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.u = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(18640) %i.u) #30
  %i.v = load i32, ptr %1, align 8                ; 2 uses
  %i.w = and i32 %i.v, 2097152
  %.not = icmp eq i32 %i.w, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !3284  ; 4 uses
  br i1 %.not, label %bb.d, label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit

_ZNK5clang8CallExpr13getFPFeaturesEv.exit:        ; preds = %bb.c
  %i.x = lshr i32 %i.v, 19
  %i.y = and i32 %i.x, 1
  %i.z = load i32, ptr %i.o, align 8, !tbaa !2083
  %i.aa = add nuw nsw i32 %i.y, 1
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = shl i32 %i.ab, 3
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ae, align 4, !tbaa !795 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 216
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 216
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = trunc i64 %i.ai to i32                  ; 3 uses
  %i.ak = lshr i32 %i.aj, 23
  %i.al = and i32 %i.ak, 3                        ; 2 uses
  %i.am = icmp eq i32 %i.al, 3
  %spec.store.select.i.i = select i1 %i.am, i32 2, i32 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = lshr i64 %i.ao, 57
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 4                        ; 2 uses
  %i.as = lshr i32 %i.aj, 19
  %i.at = and i32 %i.as, 192
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = lshr i64 %i.av, 36
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 32256
  %i.az = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.ar, 0
  %or.cond.not16.i.i = select i1 %i.az, i1 %.not3.i.i.i, i1 false
  %i.ba = and i32 %i.aj, 100663296
  %i.bb = icmp eq i32 %i.ba, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.bb, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 208
  %i.bd = load i64, ptr %i.bc, align 8
  %sh.diff.i.i = lshr i64 %i.bd, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.be = and i32 %tr.sh.diff.i.i, 29360128
  %i.bf = or disjoint i32 %i.at, %i.ay
  %i.bg = or disjoint i32 %i.bf, %i.be
  %i.bh = or disjoint i32 %i.bg, %masksel.i.i
  %i.bi = or disjoint i32 %i.bh, %i.ar
  %i.bj = or disjoint i32 %i.bi, %spec.store.select.i.i
  %i.bk = or disjoint i32 %i.bj, 56
  %i.bl = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.bm = and i32 %i.bk, %i.bl
  %i.bn = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.copyload.i.i
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = or i32 %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre, i64 208
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !795
  %i.br = getelementptr inbounds nuw i8, ptr %.pre, i64 2024
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.br, align 8, !tbaa !795
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit, %bb.c
  %i.bs = load ptr, ptr %2, align 8, !tbaa !858
  %i.bt = load i32, ptr %i.g, align 8, !tbaa !859
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.bv, align 4, !tbaa !795
  %i.bw = call i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %.pre, ptr noundef null, ptr noundef nonnull %i.s, i32 %.sroa.017.0.extract.trunc, ptr %i.bs, i64 %i.bu, i32 %.sroa.0.0.copyload.i14, ptr noundef null), !inline_history !68
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.013.0 = phi i64 [ 1, %bb.b ], [ %i.bw, %bb.d ]
  %i.bx = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.f
  br i1 %i.by, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.bx) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.013.1 = phi i64 [ %.sroa.013.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %bb.a ]
  ret i64 %.sroa.013.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformUserDefinedLiteralEPNS_18UserDefinedLiteralE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE17TransformCallExprEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformCXXOperatorCallExprEPNS_19CXXOperatorCallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 9 uses
  %3 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %4 = alloca %"class.clang::LookupResult", align 8 ; 26 uses
  %5 = alloca %"class.clang::UnresolvedSet.3689", align 8 ; 10 uses
  %i.a = load i32, ptr %1, align 8                ; 4 uses
  %i.b = and i32 %i.a, 2080374784
  %switch = icmp eq i32 %i.b, 1409286144
  br i1 %switch, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = lshr i32 %i.a, 19
  %i.e = and i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1514
  %i.i = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.h) ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.aq, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.i, -2
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #31 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.o = tail call i32 @_ZN5clang4Sema19getLocForEndOfTokenENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(18640) %i.n, i32 %i.m, i32 noundef 0) #30 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %.sroa.075.0 = select i1 %i.p, i32 %i.m, i32 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !858
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !859
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.s, align 4, !tbaa !876
  %i.t = load i32, ptr %1, align 8
  %i.u = lshr i32 %i.t, 19
  %i.v = and i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2083
  %i.ab = add i32 %i.aa, -1
  %i.ac = call noundef zeroext i1 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS4_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.y, i32 noundef %i.ab, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
  br i1 %i.ac, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %1, align 8
  %i.ae = and i32 %i.ad, 2113929216
  %i.af = icmp eq i32 %i.ae, 1442840576
  %i.ag = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !859
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = call i64 @_ZNK5clang19CXXOperatorCallExpr18getSourceRangeImplEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #31
  %.sroa.3.0.extract.shift.i = lshr i64 %i.aj, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32 ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = call i64 @_ZN5clang4Sema23ActOnArraySubscriptExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_(ptr noundef nonnull align 8 dereferenceable(18640) %i.ak, ptr noundef null, ptr noundef nonnull %i.l, i32 %.sroa.075.0, ptr %i.ag, i64 %i.ai, i32 %.sroa.3.0.extract.trunc.i), !inline_history !5452
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.am = call i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %i.ak, ptr noundef null, ptr noundef nonnull %i.l, i32 %.sroa.075.0, ptr %i.ag, i64 %i.ai, i32 %.sroa.3.0.extract.trunc.i, ptr noundef null), !inline_history !68
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.sroa.050.0 = phi i64 [ %i.am, %bb.f ], [ %i.al, %bb.e ], [ 1, %bb.c ]
  %i.an = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.q
  br i1 %i.ao, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.an) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.aq

bb.i:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !2083
  %i.ar = icmp eq i32 %i.aq, 1
  %i.as = and i32 %i.a, 2113929216
  %i.at = icmp eq i32 %i.as, 369098752
  %or.cond = and i1 %i.at, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = lshr i32 %i.a, 19
  %i.aw = and i32 %i.av, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1514 ; 5 uses
  br i1 %or.cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = and i16 %i.ba, 511
  switch i16 %i.bb, label %bb.m [
    i16 71, label %bb.k
    i16 24, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.bc = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE34TransformDependentScopeDeclRefExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.az, i1 noundef zeroext true, ptr noundef null), !inline_history !63
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.l:                                             ; preds = %bb.j
  %i.bd = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE29TransformUnresolvedLookupExprEPNS_20UnresolvedLookupExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.az, i1 noundef zeroext true), !inline_history !63
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.m:                                             ; preds = %bb.j
  %i.be = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.az), !inline_history !63
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.n:                                             ; preds = %bb.i
  %i.bf = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.az)
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformAddressOfOperandEPNS_4ExprE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformAddressOfOperandEPNS_4ExprE.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.n
  %storemerge = phi i64 [ %i.bf, %bb.n ], [ %i.bc, %bb.k ], [ %i.bd, %bb.l ], [ %i.be, %bb.m ] ; 3 uses
  %i.bg = icmp eq i64 %storemerge, 1
  br i1 %i.bg, label %bb.aq, label %bb.o

bb.o:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformAddressOfOperandEPNS_4ExprE.exit
  %i.bh = load i32, ptr %i.ap, align 8, !tbaa !2083
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = load i32, ptr %1, align 8
  %i.bk = lshr i32 %i.bj, 19
  %i.bl = and i32 %i.bk, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1514
  %i.bq = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bp, i1 noundef zeroext false) ; 2 uses
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.aq, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.066.0 = phi i64 [ %i.bq, %bb.p ], [ 0, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.bs = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(18640) %i.bs) #30
  %i.bt = load i32, ptr %1, align 8               ; 2 uses
  %i.bu = and i32 %i.bt, 2097152
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bw = lshr i32 %i.bt, 19
  %i.bx = and i32 %i.bw, 1
  %i.by = load i32, ptr %i.ap, align 8, !tbaa !2083
  %i.bz = add nuw nsw i32 %i.bx, 1
  %i.ca = add i32 %i.bz, %i.by
  %i.cb = shl i32 %i.ca, 3
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cc
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cd, align 4, !tbaa !795
  br label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit

_ZNK5clang8CallExpr13getFPFeaturesEv.exit:        ; preds = %bb.q, %bb.r
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.ce = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 216
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 216
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = trunc i64 %i.ci to i32                  ; 3 uses
  %i.ck = lshr i32 %i.cj, 23
  %i.cl = and i32 %i.ck, 3                        ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 3
  %spec.store.select.i.i = select i1 %i.cm, i32 2, i32 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = lshr i64 %i.co, 57
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 4                        ; 2 uses
  %i.cs = lshr i32 %i.cj, 19
  %i.ct = and i32 %i.cs, 192
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = lshr i64 %i.cv, 36
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = and i32 %i.cx, 32256
  %i.cz = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.cr, 0
  %or.cond.not16.i.i = select i1 %i.cz, i1 %.not3.i.i.i, i1 false
  %i.da = and i32 %i.cj, 100663296
  %i.db = icmp eq i32 %i.da, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.db, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cg, i64 208
  %i.dd = load i64, ptr %i.dc, align 8
  %sh.diff.i.i = lshr i64 %i.dd, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.de = and i32 %tr.sh.diff.i.i, 29360128
  %i.df = or disjoint i32 %i.ct, %i.cy
  %i.dg = or disjoint i32 %i.df, %i.de
  %i.dh = or disjoint i32 %i.dg, %masksel.i.i
  %i.di = or disjoint i32 %i.dh, %i.cr
  %i.dj = or disjoint i32 %i.di, %spec.store.select.i.i
  %i.dk = or disjoint i32 %i.dj, 56
  %i.dl = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.dm = and i32 %i.dk, %i.dl
  %i.dn = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.do = trunc nuw i64 %i.dn to i32
  %i.dp = or i32 %i.dm, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ce, i64 208
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !795
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ce, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.dr, align 8, !tbaa !795
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1587 ; 9 uses
  %i.du = load i16, ptr %i.dt, align 8
  %i.dv = and i16 %i.du, 511                      ; 2 uses
  %.not = icmp eq i16 %i.dv, 24
  br i1 %.not, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.sroa.0.0.copyload.i.i57 = load i64, ptr %i.dw, align 8, !tbaa !815 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %.sroa.0.0.copyload.i.i58 = load i32, ptr %i.dx, align 8, !tbaa !795
  store i32 0, ptr %4, align 8, !tbaa !1722
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.dy, align 4, !tbaa !1723
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !858
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.eb, align 8, !tbaa !859
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 8, ptr %i.ec, align 4, !tbaa !876
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i8 0, i64 24, i1 false)
  store ptr %i.ce, ptr %i.ee, align 8, !tbaa !1724
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %.sroa.0.0.copyload.i.i57, ptr %i.ef, align 8, !tbaa !815
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 %.sroa.0.0.copyload.i.i58, ptr %i.eg, align 8, !tbaa !795
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i64 %.sroa.0.0.copyload.i.i57) #30
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ei, i8 0, i64 18, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 163
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 164
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.ej, align 2, !tbaa !840
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 166
  store i8 0, ptr %i.em, align 2, !tbaa !1733
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 167
  store i8 0, ptr %i.en, align 1, !tbaa !1835
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #30
  %i.eo = load i24, ptr %i.dt, align 8
  %i.ep = and i24 %i.eo, 1048576
  %i.eq = icmp ne i24 %i.ep, 0
  %i.er = call noundef zeroext i1 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformOverloadExprDeclsEPNS_12OverloadExprEbRNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.dt, i1 noundef zeroext %i.eq, ptr noundef nonnull align 8 dereferenceable(168) %4)
  br i1 %i.er, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.es = load i32, ptr %1, align 8
  %i.et = lshr i32 %i.es, 25
  %i.eu = and i32 %i.et, 63
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i59 = load i32, ptr %i.ev, align 4, !tbaa !795
  %i.ew = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dt) #31
  %i.ex = load i24, ptr %i.dt, align 8
  %i.ey = and i24 %i.ex, 1048576
  %i.ez = icmp ne i24 %i.ey, 0
  %i.fa = and i64 %storemerge, -2
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = and i64 %.sroa.066.0, -2
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26RebuildCXXOperatorCallExprENS_22OverloadedOperatorKindENS_14SourceLocationES4_bRKNS_17UnresolvedSetImplEPNS_4ExprES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.eu, i32 %.sroa.0.0.copyload.i.i59, i32 %i.ew, i1 noundef zeroext %i.ez, ptr noundef nonnull align 1 dereferenceable(1) %i.dz, ptr noundef %i.fb, ptr noundef %i.fd)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sroa.050.2 = phi i64 [ %i.fe, %bb.t ], [ 1, %bb.s ]
  %i.ff = load i8, ptr %i.ek, align 1, !tbaa !1726, !range !96, !noundef !97
  %i.fg = trunc nuw i8 %i.ff to i1
  %.pre93 = load i32, ptr %4, align 8             ; 3 uses
  br i1 %i.fg, label %bb.v, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.v:                                             ; preds = %bb.u
  %i.fh = icmp ne i32 %.pre93, 5
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = icmp ne ptr %i.fj, null
  %or.cond.i.i = select i1 %i.fh, i1 %i.fk, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.w:                                             ; preds = %bb.v
  %i.fl = load ptr, ptr %i.ee, align 8, !tbaa !1724 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 216
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = and i64 %i.fp, 18014398509481984
  %.not.i.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fl, ptr noundef nonnull align 8 dereferenceable(168) %4) #30
  %.pre = load i32, ptr %4, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i: ; preds = %bb.x, %bb.v, %bb.u
  %i.fr = phi i32 [ %.pre, %bb.x ], [ %.pre93, %bb.u ], [ %.pre93, %bb.v ]
  %i.fs = load i8, ptr %i.el, align 4, !tbaa !1727, !range !96, !noundef !97
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = icmp eq i32 %i.fr, 5
  %or.cond86 = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond86, label %bb.y, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

bb.y:                                             ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.fv = load ptr, ptr %i.ee, align 8, !tbaa !1724
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fv, ptr noundef nonnull align 8 dereferenceable(168) %4) #30
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i: ; preds = %bb.w, %bb.y, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.fw = load ptr, ptr %i.ed, align 8, !tbaa !1728 ; 2 uses
  %.not.i60 = icmp eq ptr %i.fw, null
  br i1 %.not.i60, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.fw) #30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  %i.fx = load ptr, ptr %i.dz, align 8, !tbaa !858 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.ea
  br i1 %i.fy, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.fx) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ap

bb.ad:                                            ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.fz, ptr %5, align 8, !tbaa !858
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.ga, align 8, !tbaa !859
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 1, ptr %i.gb, align 4, !tbaa !876
  %.not89 = icmp eq i16 %i.dv, 81
  br i1 %.not89, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gc = call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dt) #30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.051 = phi ptr [ %i.gc, %bb.ae ], [ %i.dt, %bb.ad ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1530 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !2065, !noalias !5461 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !2416, !noalias !5461 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !2028, !noalias !5461 ; 4 uses
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %.loopexit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gm = add i32 %i.gk, -1                       ; 2 uses
  %i.gn = ptrtoint ptr %i.ge to i64
  %i.go = mul i64 %i.gn, -4658895280553007687     ; 2 uses
  %i.gp = lshr i64 %i.go, 31
  %i.gq = xor i64 %i.gp, %i.go
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = and i32 %i.gm, %i.gr                    ; 3 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = lshr i64 %i.gt, 5
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !795, !noalias !5462
  %i.gx = and i32 %i.gs, 31
  %i.gy = lshr i32 %i.gw, %i.gx
  %i.gz = trunc i32 %i.gy to i1
  br i1 %i.gz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ag, %bb.ah
  %i.ha = phi i64 [ %i.hg, %bb.ah ], [ %i.gt, %bb.ag ]
  %.017.i.i.i.i.i = phi i32 [ %i.hf, %bb.ah ], [ %i.gs, %bb.ag ]
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %i.ha ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !855, !noalias !5462
  %i.hd = icmp eq ptr %i.ge, %i.hc
  br i1 %i.hd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.ah, !prof !856

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.he = add nuw i32 %.017.i.i.i.i.i, 1
  %i.hf = and i32 %i.he, %i.gm                    ; 3 uses
  %i.hg = zext i32 %i.hf to i64                   ; 2 uses
  %i.hh = lshr i64 %i.hg, 5
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.hh
end_hunk_4
begin_hunk_5_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE31TransformCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE:bb.a
  %i.cy = load i32, ptr %i.av, align 4, !tbaa !876
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i: ; preds = %bb.p
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.at, i64 noundef 1, i64 noundef 8) #30
  %.pre8.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !859
  %i.da = zext i32 %.pre8.pre.i.i.i.i to i64
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit: ; preds = %bb.p, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i
  %.pre8.i.i5.i.i = phi i64 [ %i.da, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %bb.p ]
  %i.db = load ptr, ptr %2, align 8, !tbaa !858
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.pre8.i.i5.i.i
  store ptr %i.ct, ptr %i.dc, align 1
  %.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !859
  %i.dd = add i32 %.pre.i.i.i.i, 1
  store i32 %i.dd, ptr %i.au, align 8, !tbaa !859
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b.exit, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.k
  %cond = phi i1 [ true, %bb.k ], [ false, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ false, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b.exit ], [ true, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit ]
  br i1 %.sroa.4.0, label %bb.r, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.ba), !inline_history !7
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.q, %bb.r
  br i1 %cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !788
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.df = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.df, ptr %3, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.de, ptr %i.dg, align 8
  %i.dh = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.di = load ptr, ptr %2, align 8, !tbaa !858
  %i.dj = load i32, ptr %i.au, align 8, !tbaa !859
  %i.dk = zext i32 %i.dj to i64
  %i.dl = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #31
  %i.dm = load i32, ptr %1, align 8
  %i.dn = and i32 %i.dm, 2097152
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.dq = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %i.dp, ptr noundef nonnull %i.d, i32 %i.dh, ptr %i.di, i64 %i.dk, i32 %i.dl, i1 noundef zeroext %i.do) #30
  br label %bb.t

bb.t:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.s
  %.sroa.035.3 = phi i64 [ %i.dq, %bb.s ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.dr = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.at
  br i1 %i.ds, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.dr) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.v

bb.v:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.035.5 = phi i64 [ 1, %bb.a ], [ %.sroa.035.3, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.035.5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformCXXBoolLiteralExprEPNS_18CXXBoolLiteralExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE29TransformCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2599
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2602 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2197
  %i.g = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #31
  tail call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i32 %i.g, ptr noundef nonnull %i.c, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2197
  %i.j = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i)
  ret i64 %i.j
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23TransformBinaryOperatorEPNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1587
  %i.c = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 3 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1587
  %i.g = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f, i1 noundef zeroext false) ; 3 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %1, align 8
  %i.j = lshr i32 %i.i, 19                        ; 2 uses
  %i.k = and i32 %i.j, 62
  %i.l = add nsw i32 %i.k, -22
  %i.m = icmp ult i32 %i.l, 10
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.n, align 4, !tbaa !795
  %i.o = and i32 %i.j, 63
  %i.p = and i64 %i.c, -2
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = and i64 %i.g, -2
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.u = tail call i64 @_ZN5clang4Sema10BuildBinOpEPNS_5ScopeENS_14SourceLocationENS_18BinaryOperatorKindEPNS_4ExprES6_b(ptr noundef nonnull align 8 dereferenceable(18640) %i.t, ptr noundef null, i32 %.sroa.0.0.copyload.i, i32 noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, i1 noundef zeroext false), !inline_history !5569
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.v = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(18640) %i.v) #30
  %i.w = load i32, ptr %1, align 8                ; 2 uses
  %i.x = and i32 %i.w, 33554432
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = and i32 %i.w, 511
  %i.z = icmp eq i32 %i.y, 123
  %i.aa = select i1 %i.z, i64 48, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ab, align 4, !tbaa !795
  br label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit

_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.ac = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 216
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = trunc i64 %i.ag to i32                  ; 3 uses
  %i.ai = lshr i32 %i.ah, 23
  %i.aj = and i32 %i.ai, 3                        ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 3
  %spec.store.select.i.i = select i1 %i.ak, i32 2, i32 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.am = load i64, ptr %i.al, align 8
  %i.an = lshr i64 %i.am, 57
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 4                        ; 2 uses
  %i.aq = lshr i32 %i.ah, 19
  %i.ar = and i32 %i.aq, 192
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.at = load i64, ptr %i.as, align 8
  %i.au = lshr i64 %i.at, 36
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = and i32 %i.av, 32256
  %i.ax = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.ap, 0
  %or.cond.not16.i.i = select i1 %i.ax, i1 %.not3.i.i.i, i1 false
  %i.ay = and i32 %i.ah, 100663296
  %i.az = icmp eq i32 %i.ay, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.az, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 208
  %i.bb = load i64, ptr %i.ba, align 8
  %sh.diff.i.i = lshr i64 %i.bb, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.bc = and i32 %tr.sh.diff.i.i, 29360128
  %i.bd = or disjoint i32 %i.ar, %i.aw
  %i.be = or disjoint i32 %i.bd, %i.bc
  %i.bf = or disjoint i32 %i.be, %masksel.i.i
  %i.bg = or disjoint i32 %i.bf, %i.ap
  %i.bh = or disjoint i32 %i.bg, %spec.store.select.i.i
  %i.bi = or disjoint i32 %i.bh, 56
  %i.bj = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.bk = and i32 %i.bi, %i.bj
  %i.bl = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.bm = trunc nuw i64 %i.bl to i32
  %i.bn = or i32 %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !795
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bp, align 8, !tbaa !795
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.bq, align 4, !tbaa !795
  %i.br = load i32, ptr %1, align 8
  %i.bs = lshr i32 %i.br, 19
  %i.bt = and i32 %i.bs, 63
  %i.bu = and i64 %i.c, -2
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = and i64 %i.g, -2
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = call i64 @_ZN5clang4Sema10BuildBinOpEPNS_5ScopeENS_14SourceLocationENS_18BinaryOperatorKindEPNS_4ExprES6_b(ptr noundef nonnull align 8 dereferenceable(18640) %i.ac, ptr noundef null, i32 %.sroa.0.0.copyload.i14, i32 noundef %i.bt, ptr noundef %i.bv, ptr noundef %i.bx, i1 noundef zeroext false), !inline_history !5569
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ %i.u, %bb.d ], [ %i.by, %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit ]
  ret i64 %.sroa.024.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE31TransformCompoundAssignOperatorEPNS_22CompoundAssignOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(18640) %i.a) #30
  %i.b = load i32, ptr %1, align 8                ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 511
  %i.e = icmp eq i32 %i.d, 123
  %i.f = select i1 %i.e, i64 48, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.g, align 4, !tbaa !795
  br label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit

_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.h = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  %i.n = lshr i32 %i.m, 23
  %i.o = and i32 %i.n, 3                          ; 2 uses
  %i.p = icmp eq i32 %i.o, 3
  %spec.store.select.i.i = select i1 %i.p, i32 2, i32 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.r = load i64, ptr %i.q, align 8
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = and i32 %i.t, 4                          ; 2 uses
  %i.v = lshr i32 %i.m, 19
  %i.w = and i32 %i.v, 192
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i64 %i.y, 36
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = and i32 %i.aa, 32256
  %i.ac = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.u, 0
  %or.cond.not16.i.i = select i1 %i.ac, i1 %.not3.i.i.i, i1 false
  %i.ad = and i32 %i.m, 100663296
  %i.ae = icmp eq i32 %i.ad, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.ae, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.ag = load i64, ptr %i.af, align 8
  %sh.diff.i.i = lshr i64 %i.ag, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.ah = and i32 %tr.sh.diff.i.i, 29360128
  %i.ai = or disjoint i32 %i.w, %i.ab
  %i.aj = or disjoint i32 %i.ai, %i.ah
  %i.ak = or disjoint i32 %i.aj, %masksel.i.i
  %i.al = or disjoint i32 %i.ak, %i.u
  %i.am = or disjoint i32 %i.al, %spec.store.select.i.i
  %i.an = or disjoint i32 %i.am, 56
  %i.ao = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.ap = and i32 %i.an, %i.ao
  %i.aq = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.ar = trunc nuw i64 %i.aq to i32
  %i.as = or i32 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  store i32 %i.as, ptr %i.at, align 8, !tbaa !795
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.au, align 8, !tbaa !795
  %i.av = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23TransformBinaryOperatorEPNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1)
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i64 %i.av
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE19TransformAtomicExprEPNS_10AtomicExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !858
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !859
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.d, align 4, !tbaa !876
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2606 ; 3 uses
  %i.g = icmp ugt i32 %i.f, 8
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.b, i64 noundef %i.h, i64 noundef 8) #30
  %.pre = load i32, ptr %i.e, align 8, !tbaa !2606
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.f, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = call noundef zeroext i1 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS4_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.j, i32 noundef %i.i, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 4 ; 3 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !858
  %i.n = load i32, ptr %i.c, align 8, !tbaa !859
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.q = load i32, ptr %i.p, align 4, !tbaa !2607
  %i.r = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.u = call i64 @_ZN5clang4Sema15BuildAtomicExprENS_11SourceRangeES1_NS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEENS_10AtomicExpr8AtomicOpENS0_19AtomicArgumentOrderE(ptr noundef nonnull align 8 dereferenceable(18640) %i.t, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i, i32 %i.s, ptr %i.m, i64 %i.o, i32 noundef %i.q, i32 noundef 1) #30
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.c
  %.sroa.011.0 = phi i64 [ 1, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ], [ %i.u, %bb.c ]
  %i.v = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef %i.v) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i64 %.sroa.011.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE19TransformAsTypeExprEPNS_10AsTypeExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2125
  %i.c = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !788 ; 3 uses
  %i.f = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.f, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.j = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.i, i64 %.sroa.0.0.copyload.i, i32 0) #30, !inline_history !64
  %i.k = tail call noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.j), !inline_history !64 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.k, align 8, !tbaa !788
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.d ], [ %.sroa.0.0.copyload.i, %bb.b ], [ 0, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.m = and i64 %i.c, -2
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.o, align 8, !tbaa !795
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.p, align 4, !tbaa !795
  %i.q = tail call i64 @_ZN5clang4Sema15BuildAsTypeExprEPNS_4ExprENS_8QualTypeENS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %i.l, ptr noundef %i.n, i64 %.sroa.0.0.i, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit
  %.sroa.09.0 = phi i64 [ %i.q, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit ], [ 1, %bb.a ]
  ret i64 %.sroa.09.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformArrayTypeTraitExprEPNS_18ArrayTypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2609
  %i.c = tail call noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 2 uses
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i32 noundef 0, ptr noundef null, i32 noundef 4)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2610
  %i.g = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  tail call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.d)
  br i1 %i.h, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit14

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit14: ; preds = %bb.b
  %i.i = load i24, ptr %1, align 8
  %i.j = lshr i24 %i.i, 19
  %i.k = and i24 %i.j, 3
  %i.l = zext nneg i24 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.m, align 8, !tbaa !795
  %i.n = and i64 %i.g, -2
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.p, align 4, !tbaa !795
  %i.q = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.r = tail call i64 @_ZN5clang4Sema19BuildArrayTypeTraitENS_14ArrayTypeTraitENS_14SourceLocationEPNS_14TypeSourceInfoEPNS_4ExprES2_(ptr noundef nonnull align 8 dereferenceable(18640) %i.q, i32 noundef %i.l, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, ptr noundef %i.o, i32 %.sroa.0.0.copyload.i15) #30
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.b, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit14, %bb.a
  %.sroa.020.1 = phi i64 [ 1, %bb.a ], [ %i.r, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit14 ], [ 1, %bb.b ]
  ret i64 %.sroa.020.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformArraySubscriptExprEPNS_18ArraySubscriptExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1587
  %i.d = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1587
  %i.h = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.g) ; 2 uses
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %i.d, -2
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !1587
  %i.m = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #31
  %i.n = and i64 %i.h, -2
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.p, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8, !tbaa !1514
  %i.q = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.r = call i64 @_ZN5clang4Sema23ActOnArraySubscriptExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_(ptr noundef nonnull align 8 dereferenceable(18640) %i.q, ptr noundef null, ptr noundef %i.k, i32 %i.m, ptr nonnull %i.a, i64 1, i32 %.sroa.0.0.copyload.i), !inline_history !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.014.1 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ %i.r, %bb.c ]
  ret i64 %.sroa.014.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformArraySectionExprEPNS_16ArraySectionExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
end_hunk_5
begin_hunk_6_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformOverloadExprDeclsEPNS_12OverloadExprEbRNS_12LookupResultE:bb.a
  %i.fj = add i32 %.0.i.i.i.i.i, %.010.i.i.i.i    ; 2 uses
  br i1 %i.fg, label %bb.ab, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fk = trunc i64 %storemerge9.i.i.i.i to i32
  %i.fl = lshr i32 %i.fk, 1
  %i.fm = and i32 %i.fl, 3
  switch i32 %i.fm, label %default.unreachable [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i
    i32 3, label %bb.ac
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i.i
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fn = and i64 %storemerge9.i.i.i.i, -8
  %i.fo = inttoptr i64 %i.fn to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.sroa.3.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i.i, align 8, !tbaa !815
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i.i

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.sroa.3.0.i.i.i.i.i = phi i64 [ %.sroa.3.0.copyload.i.i.i.i.i, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.not.i.i.i.i85 = icmp eq i64 %.sroa.3.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i85, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !42

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i.i, %bb.ab, %bb.ab, %.lr.ph.i.i.i.i
  %i.fp = add i32 %i.fj, 4
  %i.fq = zext i32 %i.fp to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i.i

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i.i: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i, %bb.z
  %i.fr = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i ], [ 4, %bb.z ], [ %i.fq, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i ]
  %i.fs = load ptr, ptr %i.ev, align 8, !tbaa !2706
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr
  %.0.copyload.i14.i.i.i = load i32, ptr %i.ft, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getSourceRangeEv.exit

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i.i: ; preds = %bb.z
  %i.fu = load ptr, ptr %i.ev, align 8, !tbaa !2706
  %.0.copyload.i15.i.i.i = load ptr, ptr %i.fu, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.fv = and i64 %i.ex, -8
  %i.fw = inttoptr i64 %i.fv to ptr
  store ptr %i.fw, ptr %4, align 8, !tbaa !2649
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.copyload.i15.i.i.i, ptr %i.fx, align 8, !tbaa !2648
  %i.fy = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30 ; 0 uses
  %i.fz = load ptr, ptr %i.ev, align 8, !tbaa !2706
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.0.copyload.i16.i.i.i = load i32, ptr %i.ga, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZNK5clang22NestedNameSpecifierLoc14getSourceRangeEv.exit

_ZNK5clang22NestedNameSpecifierLoc14getSourceRangeEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i.i, %bb.aa, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i.i, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i.i
  %.sroa.6.0.i.i.i = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i.i ], [ %.0.copyload.i14.i.i.i, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i.i ], [ %.0.copyload.i.i.i.i, %bb.aa ], [ %.0.copyload.i16.i.i.i, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i.i ]
  %.sroa.2.0.insert.ext.i = zext i32 %.sroa.6.0.i.i.i to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ew to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %9, align 8
  %i.gb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.et, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.gc = load i32, ptr %1, align 8               ; 2 uses
  %i.gd = and i32 %i.gc, 524288
  %.not.i.i86 = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i86, label %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit92, label %_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i.i87

_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i.i87: ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getSourceRangeEv.exit
  %i.ge = and i32 %i.gc, 511
  %i.gf = icmp eq i32 %i.ge, 24
  %i.gg = load i32, ptr %i.g, align 4, !tbaa !788
  %i.gh = zext i32 %i.gg to i64
  %.1.i.i.v.v.i.i88 = select i1 %i.gf, i64 64, i64 80
  %.1.i.i.v.i.i89 = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i.i.v.v.i.i88
  %.1.i.i.i.i90 = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i.v.i.i89, i64 %i.gh
  %i.gi = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i90, i64 8
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !795
  %i.gk = icmp ne i32 %i.gj, 0
  %i.gl = zext i1 %i.gk to i8
  br label %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit92

_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit92: ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getSourceRangeEv.exit, %_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i.i87
  %.sroa.0.0.i.i91 = phi i8 [ %i.gl, %_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i.i87 ], [ 0, %_ZNK5clang22NestedNameSpecifierLoc14getSourceRangeEv.exit ]
  store i8 %.sroa.0.0.i.i91, ptr %i.c, align 1, !tbaa !840
  %i.gm = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.gb, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.gn = load i32, ptr %1, align 8               ; 2 uses
  %i.go = and i32 %i.gn, 524288
  %.not.i93 = icmp eq i32 %i.go, 0
  br i1 %.not.i93, label %_ZNK5clang12OverloadExpr21getTemplateKeywordLocEv.exit, label %_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i

_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i: ; preds = %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit92
  %i.gp = and i32 %i.gn, 511
  %i.gq = icmp eq i32 %i.gp, 24
  %i.gr = load i32, ptr %i.g, align 4, !tbaa !788
  %i.gs = zext i32 %i.gr to i64
  %.1.i.i.v.v.i = select i1 %i.gq, i64 64, i64 80
  %.1.i.i.v.i = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i.i.v.v.i
  %.1.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i.v.i, i64 %i.gs
  %i.gt = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 8
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !795
  br label %_ZNK5clang12OverloadExpr21getTemplateKeywordLocEv.exit

_ZNK5clang12OverloadExpr21getTemplateKeywordLocEv.exit: ; preds = %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit92, %_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i
  %.sroa.0.0.i = phi i32 [ %i.gu, %_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i ], [ 0, %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit92 ]
  store i32 %.sroa.0.0.i, ptr %11, align 4
  %i.gv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_14SourceLocationEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.gm, ptr noundef nonnull align 4 dereferenceable(4) %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.gw = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.i77, i64 24
  %.sroa.0.0.copyload.i94 = load i32, ptr %i.gy, align 8, !tbaa !795
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.gx, i32 %.sroa.0.0.copyload.i94, i32 noundef 6577) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %.sroa.0.0.copyload.i.i95 = load i64, ptr %i.es, align 8, !tbaa !815
  store i64 %.sroa.0.0.copyload.i.i95, ptr %13, align 8
  %i.gz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %bb.u, %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit, %bb.v, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit, %_ZNK5clang12OverloadExpr21getTemplateKeywordLocEv.exit, %bb.t
  %.4 = phi i1 [ true, %bb.s ], [ true, %_ZNK5clang12OverloadExpr21getTemplateKeywordLocEv.exit ], [ true, %bb.t ], [ false, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit ], [ false, %bb.v ], [ false, %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit ], [ false, %bb.u ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE21TransformCompoundStmtEPNS_12CompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.clang::FPOptions", align 4  ; 4 uses
  %4 = alloca %"class.clang::FPOptions", align 4  ; 4 uses
  %5 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.2748", align 8 ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 2 uses
  tail call void @_ZN5clang4Sema24ActOnStartOfCompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.a, i1 noundef zeroext false) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.b = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(18640) %i.b) #30
  %i.c = load i16, ptr %1, align 8
  %i.d = and i16 %i.c, 512
  %.not63 = icmp eq i16 %i.d, 0
  br i1 %.not63, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !788
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 4, !tbaa !795 ; 2 uses
  %.sroa.447.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32 ; 2 uses
  %.sroa.447.0.extract.trunc = trunc nuw i64 %.sroa.447.0.extract.shift to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 216 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = lshr i32 %i.o, 23
  %i.q = and i32 %i.p, 3                          ; 2 uses
  %i.r = icmp eq i32 %i.q, 3
  %spec.store.select.i.i = select i1 %i.r, i32 2, i32 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = and i32 %i.v, 4                          ; 2 uses
  %i.x = lshr i32 %i.o, 19
  %i.y = and i32 %i.x, 192
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = lshr i64 %i.aa, 36
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 32256
  %i.ae = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.w, 0
  %or.cond.not16.i.i = select i1 %i.ae, i1 %.not3.i.i.i, i1 false
  %i.af = and i32 %i.o, 100663296
  %i.ag = icmp eq i32 %i.af, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.ag, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 208 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %sh.diff.i.i = lshr i64 %i.ai, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.aj = and i32 %tr.sh.diff.i.i, 29360128
  %i.ak = or disjoint i32 %i.y, %i.ad
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = or disjoint i32 %i.al, %masksel.i.i
  %i.an = or disjoint i32 %i.am, %i.w
  %i.ao = or disjoint i32 %i.an, %spec.store.select.i.i
  %i.ap = or disjoint i32 %i.ao, 56
  %i.aq = xor i32 %.sroa.447.0.extract.trunc, -1
  %i.ar = and i32 %i.ap, %i.aq
  %i.as = and i64 %.sroa.447.0.extract.shift, %.sroa.0.0.copyload.i
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = or i32 %i.ar, %i.at                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %i.au, ptr %3, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store i32 %i.au, ptr %i.av, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.aw = load i64, ptr %i.m, align 8
  %i.ax = trunc i64 %i.aw to i32                  ; 3 uses
  %i.ay = lshr i32 %i.ax, 23
  %i.az = and i32 %i.ay, 3                        ; 2 uses
  %i.ba = icmp eq i32 %i.az, 3
  %spec.store.select.i.i31 = select i1 %i.ba, i32 2, i32 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.s, align 8
  %i.bc = lshr i64 %i.bb, 57
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = and i32 %i.bd, 4                        ; 2 uses
  %i.bf = lshr i32 %i.ax, 19
  %i.bg = and i32 %i.bf, 192
  %i.bh = load i64, ptr %i.z, align 8
  %i.bi = lshr i64 %i.bh, 36
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 32256
  %i.bl = icmp eq i32 %spec.store.select.i.i31, 1
  %.not3.i.i.i32 = icmp ne i32 %i.be, 0
  %or.cond.not16.i.i33 = and i1 %.not3.i.i.i32, %i.bl
  %i.bm = and i32 %i.ax, 100663296
  %i.bn = icmp eq i32 %i.bm, 67108864
  %or.cond15.i.i34 = select i1 %or.cond.not16.i.i33, i1 %i.bn, i1 false
  %masksel.i.i35 = select i1 %or.cond15.i.i34, i32 256, i32 0
  %i.bo = load i64, ptr %i.ah, align 8
  %sh.diff.i.i36 = lshr i64 %i.bo, 23
  %tr.sh.diff.i.i37 = trunc i64 %sh.diff.i.i36 to i32
  %i.bp = and i32 %tr.sh.diff.i.i37, 29360128
  %i.bq = or disjoint i32 %i.bg, %i.bk
  %i.br = or disjoint i32 %i.bq, %i.bp
  %i.bs = or disjoint i32 %i.br, %masksel.i.i35
  %i.bt = or disjoint i32 %i.bs, %i.be
  %i.bu = or disjoint i32 %i.bt, %spec.store.select.i.i31
  %i.bv = or disjoint i32 %i.bu, 56               ; 2 uses
  store i32 %i.bv, ptr %4, align 4, !tbaa !1608
  %i.bw = icmp eq i32 %i.au, %i.bv
  br i1 %i.bw, label %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bx = call i64 @_ZNK5clang9FPOptions14getChangesSlowERKS0_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #30
  br label %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit

_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.insert.insert.i.i = phi i64 [ %i.bx, %bb.c ], [ 0, %bb.b ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 2024
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.by, align 8, !tbaa !795
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bz, ptr %6, align 8, !tbaa !858
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  store i32 0, ptr %i.ca, align 8, !tbaa !859
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 8, ptr %i.cb, align 4, !tbaa !876
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !788 ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %.idx = shl nuw nsw i64 %i.cf, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx ; 2 uses
  %.not65 = icmp eq i32 %i.ce, 0
  br i1 %.not65, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %.068.us = phi i1 [ %.1.ph.us, %bb.j ], [ false, %.lr.ph ] ; 2 uses
  %.03066.us = phi ptr [ %i.df, %bb.j ], [ %i.cc, %.lr.ph ] ; 2 uses
  %i.ch = load ptr, ptr %.03066.us, align 8, !tbaa !1587 ; 3 uses
  %i.ci = load i32, ptr %i.cd, align 4, !tbaa !788 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN5clang12CompoundStmt9body_backEv.exit.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.ck = add i32 %i.ci, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1587
  br label %_ZN5clang12CompoundStmt9body_backEv.exit.us

_ZN5clang12CompoundStmt9body_backEv.exit.us:      ; preds = %bb.e, %.lr.ph.split.us
  %i.co = phi ptr [ %i.cn, %bb.e ], [ null, %.lr.ph.split.us ]
  %i.cp = icmp eq ptr %i.ch, %i.co
  %i.cq = select i1 %i.cp, i32 2, i32 0
  %i.cr = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformStmtEPNS_4StmtENS2_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ch, i32 noundef %i.cq) ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5clang12CompoundStmt9body_backEv.exit.us
  %i.ct = and i64 %i.cr, -2
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  %i.cv = load i32, ptr %i.ca, align 8, !tbaa !859 ; 2 uses
  %i.cw = load i32, ptr %i.cb, align 4, !tbaa !876
  %.not.i.us = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i.us, label %bb.h, label %bb.g, !prof !856

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.cu)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %6, align 8, !tbaa !858
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  store ptr %i.cu, ptr %i.cz, align 1
  %i.da = load i32, ptr %i.ca, align 8, !tbaa !859
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.ca, align 8, !tbaa !859
  br label %bb.j

bb.i:                                             ; preds = %_ZN5clang12CompoundStmt9body_backEv.exit.us
  %i.dc = load i16, ptr %i.ch, align 8
  %i.dd = and i16 %i.dc, 511
  %i.de = icmp eq i16 %i.dd, 255
  br i1 %i.de, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.1.ph.us = phi i1 [ %.068.us, %bb.h ], [ %.068.us, %bb.g ], [ true, %bb.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.03066.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.df, %i.cg
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.068 = phi i1 [ %.1.ph, %bb.o ], [ false, %.lr.ph ] ; 2 uses
  %.03066 = phi ptr [ %i.dv, %bb.o ], [ %i.cc, %.lr.ph ] ; 2 uses
  %i.dg = load ptr, ptr %.03066, align 8, !tbaa !1587 ; 2 uses
  %i.dh = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformStmtEPNS_4StmtENS2_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dg, i32 noundef 0) ; 2 uses
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split
  %i.dj = load i16, ptr %i.dg, align 8
  %i.dk = and i16 %i.dj, 511
  %i.dl = icmp eq i16 %i.dk, 255
  br i1 %i.dl, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %bb.o

bb.l:                                             ; preds = %.lr.ph.split
  %i.dm = and i64 %i.dh, -2
  %i.dn = inttoptr i64 %i.dm to ptr               ; 2 uses
  %i.do = load i32, ptr %i.ca, align 8, !tbaa !859 ; 2 uses
  %i.dp = load i32, ptr %i.cb, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.do, %i.dp
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !856

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.dn)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dq = zext i32 %i.do to i64
  %i.dr = load ptr, ptr %6, align 8, !tbaa !858
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dq
  store ptr %i.dn, ptr %i.ds, align 1
  %i.dt = load i32, ptr %i.ca, align 8, !tbaa !859
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.ca, align 8, !tbaa !859
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  %.1.ph = phi i1 [ %.068, %bb.n ], [ %.068, %bb.m ], [ true, %bb.k ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.03066, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dv, %i.cg
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.o, %bb.j
  %.0.lcssa = phi i1 [ %.1.ph.us, %bb.j ], [ %.1.ph, %bb.o ]
  br i1 %.0.lcssa, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %._crit_edge..critedge_crit_edge

._crit_edge..critedge_crit_edge:                  ; preds = %._crit_edge
  %.pre = load ptr, ptr %6, align 8, !tbaa !858
  %.pre71 = load i32, ptr %i.ca, align 8, !tbaa !859
  %i.dw = zext i32 %.pre71 to i64
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge..critedge_crit_edge, %bb.d
  %i.dx = phi i64 [ %i.dw, %._crit_edge..critedge_crit_edge ], [ 0, %bb.d ]
  %i.dy = phi ptr [ %.pre, %._crit_edge..critedge_crit_edge ], [ %i.bz, %bb.d ]
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i38 = load i32, ptr %i.dz, align 8, !tbaa !795
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i39 = load i32, ptr %i.ea, align 4, !tbaa !795
  %i.eb = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ec = call i64 @_ZN5clang4Sema17ActOnCompoundStmtENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4StmtEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.eb, i32 %.sroa.0.0.copyload.i38, i32 %.sroa.0.0.copyload.i39, ptr %i.dy, i64 %i.dx, i1 noundef zeroext %2) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit: ; preds = %bb.k, %bb.i, %._crit_edge, %.critedge
end_hunk_6
begin_hunk_7_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE30TransformCXXFunctionalCastExprEPNS_21CXXFunctionalCastExprE:bb.a
  %i.l = icmp eq i32 %.sroa.0.0.copyload.i, 0     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8, !tbaa !1514
  %i.m = load i16, ptr %i.j, align 8
  %i.n = and i16 %i.m, 511
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2280 ; 3 uses
  switch i16 %i.n, label %bb.f [
    i16 19, label %bb.d
    i16 106, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !788
  %i.r = zext i32 %i.q to i64
  %i.s = tail call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef nonnull %i.d, i32 %.sroa.0.0.copyload.i, ptr nonnull %i.o, i64 %i.r, i32 %.sroa.0.0.copyload.i13, i1 noundef zeroext %i.l) #30
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprES6_b.exit

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !2553
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.x = tail call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef nonnull %i.d, i32 %.sroa.0.0.copyload.i, ptr nonnull %i.w, i64 %i.v, i32 %.sroa.0.0.copyload.i13, i1 noundef zeroext %i.l) #30
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprES6_b.exit

bb.f:                                             ; preds = %bb.c
  %i.y = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef nonnull %i.d, i32 %.sroa.0.0.copyload.i, ptr nonnull %i.a, i64 1, i32 %.sroa.0.0.copyload.i13, i1 noundef zeroext %i.l) #30
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprES6_b.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprES6_b.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.025.2.i = phi i64 [ %i.y, %bb.f ], [ %i.x, %bb.e ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprES6_b.exit, %bb.b, %bb.a
  %.1 = phi i64 [ 1, %bb.a ], [ %.sroa.025.2.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28RebuildCXXFunctionalCastExprEPNS_14TypeSourceInfoENS_14SourceLocationEPNS_4ExprES6_b.exit ], [ 1, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23TransformCStyleCastExprEPNS_14CStyleCastExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2097
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #30
  %i.e = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d) ; 2 uses
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 8, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.h, align 4, !tbaa !795
  %i.i = and i64 %i.e, -2
  %i.j = inttoptr i64 %i.i to ptr
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.k = tail call i64 @_ZN5clang4Sema19BuildCStyleCastExprENS_14SourceLocationEPNS_14TypeSourceInfoES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, i32 %.sroa.0.0.copyload.i12, ptr noundef %i.j) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i64 [ 1, %bb.a ], [ %i.k, %bb.c ], [ 1, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformBuiltinBitCastExprEPNS_18BuiltinBitCastExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2097
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1930
  %i.f = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.e) ; 2 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 8, !tbaa !795
  %i.i = and i64 %i.f, -2
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.k, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.l = tail call i64 @_ZN5clang4Sema23BuildBuiltinBitCastExprENS_14SourceLocationEPNS_14TypeSourceInfoEPNS_4ExprES1_(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, ptr noundef %i.j, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.08.1 = phi i64 [ 1, %bb.a ], [ %i.l, %bb.c ], [ 1, %bb.b ]
  ret i64 %.sroa.08.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE17TransformCallExprEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 9 uses
  %3 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1587
  %i.d = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !858
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !859
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.h, align 4, !tbaa !876
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %1, align 8
  %i.k = lshr i32 %i.j, 19
  %i.l = and i32 %i.k, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !2083
  %i.q = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n, i32 noundef %i.p, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = and i64 %i.d, -2
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #31
  %.sroa.020.0.extract.trunc = trunc i64 %i.t to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.val16 = load ptr, ptr %0, align 8, !tbaa !2280
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(18640) %.val16) #30
  %i.u = load i32, ptr %1, align 8                ; 2 uses
  %i.v = and i32 %i.u, 2097152
  %.not = icmp eq i32 %i.v, 0
  %.val.i.pre = load ptr, ptr %0, align 8, !tbaa !2280 ; 4 uses
  br i1 %.not, label %bb.d, label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit

_ZNK5clang8CallExpr13getFPFeaturesEv.exit:        ; preds = %bb.c
  %i.w = lshr i32 %i.u, 19
  %i.x = and i32 %i.w, 1
  %i.y = load i32, ptr %i.o, align 8, !tbaa !2083
  %i.z = add nuw nsw i32 %i.x, 1
  %i.aa = add i32 %i.z, %i.y
  %i.ab = shl i32 %i.aa, 3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ac
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ad, align 4, !tbaa !795 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 216
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 216
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = trunc i64 %i.ah to i32                  ; 3 uses
  %i.aj = lshr i32 %i.ai, 23
  %i.ak = and i32 %i.aj, 3                        ; 2 uses
  %i.al = icmp eq i32 %i.ak, 3
  %spec.store.select.i.i = select i1 %i.al, i32 2, i32 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = lshr i64 %i.an, 57
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 4                        ; 2 uses
  %i.ar = lshr i32 %i.ai, 19
  %i.as = and i32 %i.ar, 192
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.au = load i64, ptr %i.at, align 8
  %i.av = lshr i64 %i.au, 36
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = and i32 %i.aw, 32256
  %i.ay = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.aq, 0
  %or.cond.not16.i.i = select i1 %i.ay, i1 %.not3.i.i.i, i1 false
  %i.az = and i32 %i.ai, 100663296
  %i.ba = icmp eq i32 %i.az, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.ba, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  %i.bc = load i64, ptr %i.bb, align 8
  %sh.diff.i.i = lshr i64 %i.bc, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.bd = and i32 %tr.sh.diff.i.i, 29360128
  %i.be = or disjoint i32 %i.as, %i.ax
  %i.bf = or disjoint i32 %i.be, %i.bd
  %i.bg = or disjoint i32 %i.bf, %masksel.i.i
  %i.bh = or disjoint i32 %i.bg, %i.aq
  %i.bi = or disjoint i32 %i.bh, %spec.store.select.i.i
  %i.bj = or disjoint i32 %i.bi, 56
  %i.bk = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.bl = and i32 %i.bj, %i.bk
  %i.bm = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.copyload.i.i
  %i.bn = trunc nuw i64 %i.bm to i32
  %i.bo = or i32 %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 208
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !795
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 2024
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.bq, align 8, !tbaa !795
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit, %bb.c
  %i.br = load ptr, ptr %2, align 8, !tbaa !858
  %i.bs = load i32, ptr %i.g, align 8, !tbaa !859
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i17 = load i32, ptr %i.bu, align 4, !tbaa !795
  %i.bv = call i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i.pre, ptr noundef null, ptr noundef nonnull %i.s, i32 %.sroa.020.0.extract.trunc, ptr %i.br, i64 %i.bt, i32 %.sroa.0.0.copyload.i17, ptr noundef null), !inline_history !77
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.013.0 = phi i64 [ %i.bv, %bb.d ], [ 1, %bb.b ]
  %i.bw = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.f
  br i1 %i.bx, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.bw) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.013.1 = phi i64 [ %.sroa.013.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %bb.a ]
  ret i64 %.sroa.013.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformUserDefinedLiteralEPNS_18UserDefinedLiteralE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE17TransformCallExprEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28TransformCXXOperatorCallExprEPNS_19CXXOperatorCallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 9 uses
  %3 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %4 = alloca %"class.clang::LookupResult", align 8 ; 26 uses
  %5 = alloca %"class.clang::UnresolvedSet.3689", align 8 ; 10 uses
  %i.a = load i32, ptr %1, align 8                ; 4 uses
  %i.b = and i32 %i.a, 2080374784
  %switch = icmp eq i32 %i.b, 1409286144
  br i1 %switch, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = lshr i32 %i.a, 19
  %i.e = and i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1514
  %i.i = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.h) ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.aq, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.i, -2
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #31 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.o = tail call i32 @_ZN5clang4Sema19getLocForEndOfTokenENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(18640) %i.n, i32 %i.m, i32 noundef 0) #30 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %.sroa.079.0 = select i1 %i.p, i32 %i.m, i32 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !858
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !859
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.s, align 4, !tbaa !876
  %i.t = load i32, ptr %1, align 8
  %i.u = lshr i32 %i.t, 19
  %i.v = and i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2083
  %i.ab = add i32 %i.aa, -1
  %i.ac = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.y, i32 noundef %i.ab, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
  br i1 %i.ac, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %1, align 8
  %i.ae = and i32 %i.ad, 2113929216
  %i.af = icmp eq i32 %i.ae, 1442840576
  %i.ag = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !859
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = call i64 @_ZNK5clang19CXXOperatorCallExpr18getSourceRangeImplEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #31
  %.sroa.3.0.extract.shift.i = lshr i64 %i.aj, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32 ; 2 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2280 ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = call i64 @_ZN5clang4Sema23ActOnArraySubscriptExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef null, ptr noundef nonnull %i.l, i32 %.sroa.079.0, ptr %i.ag, i64 %i.ai, i32 %.sroa.3.0.extract.trunc.i), !inline_history !6308
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = call i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef null, ptr noundef nonnull %i.l, i32 %.sroa.079.0, ptr %i.ag, i64 %i.ai, i32 %.sroa.3.0.extract.trunc.i, ptr noundef null), !inline_history !77
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.sroa.050.0 = phi i64 [ %i.al, %bb.f ], [ %i.ak, %bb.e ], [ 1, %bb.c ]
  %i.am = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.q
  br i1 %i.an, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.am) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.aq

bb.i:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !2083
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = and i32 %i.a, 2113929216
  %i.as = icmp eq i32 %i.ar, 369098752
  %or.cond = and i1 %i.as, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = lshr i32 %i.a, 19
  %i.av = and i32 %i.au, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1514 ; 5 uses
  br i1 %or.cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = and i16 %i.az, 511
  switch i16 %i.ba, label %bb.m [
    i16 71, label %bb.k
    i16 24, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.bb = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE34TransformDependentScopeDeclRefExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay, i1 noundef zeroext true, ptr noundef null), !inline_history !78
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.l:                                             ; preds = %bb.j
  %i.bc = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE29TransformUnresolvedLookupExprEPNS_20UnresolvedLookupExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay, i1 noundef zeroext true), !inline_history !78
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.m:                                             ; preds = %bb.j
  %i.bd = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay), !inline_history !78
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.n:                                             ; preds = %bb.i
  %i.be = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ay)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformAddressOfOperandEPNS_4ExprE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformAddressOfOperandEPNS_4ExprE.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.n
  %storemerge = phi i64 [ %i.be, %bb.n ], [ %i.bb, %bb.k ], [ %i.bc, %bb.l ], [ %i.bd, %bb.m ] ; 3 uses
  %i.bf = icmp eq i64 %storemerge, 1
  br i1 %i.bf, label %bb.aq, label %bb.o

bb.o:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformAddressOfOperandEPNS_4ExprE.exit
  %i.bg = load i32, ptr %i.ao, align 8, !tbaa !2083
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %1, align 8
  %i.bj = lshr i32 %i.bi, 19
  %i.bk = and i32 %i.bj, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1514
  %i.bp = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bo, i1 noundef zeroext false) ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.aq, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.070.0 = phi i64 [ %i.bp, %bb.p ], [ 0, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.val57 = load ptr, ptr %0, align 8, !tbaa !2280
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(18640) %.val57) #30
  %i.br = load i32, ptr %1, align 8               ; 2 uses
  %i.bs = and i32 %i.br, 2097152
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = lshr i32 %i.br, 19
  %i.bv = and i32 %i.bu, 1
  %i.bw = load i32, ptr %i.ao, align 8, !tbaa !2083
  %i.bx = add nuw nsw i32 %i.bv, 1
  %i.by = add i32 %i.bx, %i.bw
  %i.bz = shl i32 %i.by, 3
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ca
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cb, align 4, !tbaa !795
  br label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit

_ZNK5clang8CallExpr13getFPFeaturesEv.exit:        ; preds = %bb.q, %bb.r
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val56 = load ptr, ptr %0, align 8, !tbaa !2280 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val56, i64 216
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 216
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = trunc i64 %i.cf to i32                  ; 3 uses
  %i.ch = lshr i32 %i.cg, 23
  %i.ci = and i32 %i.ch, 3                        ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 3
  %spec.store.select.i.i = select i1 %i.cj, i32 2, i32 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = lshr i64 %i.cl, 57
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = and i32 %i.cn, 4                        ; 2 uses
  %i.cp = lshr i32 %i.cg, 19
  %i.cq = and i32 %i.cp, 192
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = lshr i64 %i.cs, 36
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = and i32 %i.cu, 32256
  %i.cw = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.co, 0
  %or.cond.not16.i.i = select i1 %i.cw, i1 %.not3.i.i.i, i1 false
  %i.cx = and i32 %i.cg, 100663296
  %i.cy = icmp eq i32 %i.cx, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.cy, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 208
  %i.da = load i64, ptr %i.cz, align 8
  %sh.diff.i.i = lshr i64 %i.da, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.db = and i32 %tr.sh.diff.i.i, 29360128
  %i.dc = or disjoint i32 %i.cq, %i.cv
  %i.dd = or disjoint i32 %i.dc, %i.db
  %i.de = or disjoint i32 %i.dd, %masksel.i.i
  %i.df = or disjoint i32 %i.de, %i.co
  %i.dg = or disjoint i32 %i.df, %spec.store.select.i.i
  %i.dh = or disjoint i32 %i.dg, 56
  %i.di = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.dj = and i32 %i.dh, %i.di
  %i.dk = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.dl = trunc nuw i64 %i.dk to i32
  %i.dm = or i32 %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %.val56, i64 208
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !795
  %i.do = getelementptr inbounds nuw i8, ptr %.val56, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.do, align 8, !tbaa !795
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1587 ; 9 uses
  %i.dr = load i16, ptr %i.dq, align 8
  %i.ds = and i16 %i.dr, 511                      ; 2 uses
  %.not = icmp eq i16 %i.ds, 24
  br i1 %.not, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.sroa.0.0.copyload.i.i61 = load i64, ptr %i.dt, align 8, !tbaa !815 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %.sroa.0.0.copyload.i.i62 = load i32, ptr %i.du, align 8, !tbaa !795
  store i32 0, ptr %4, align 8, !tbaa !1722
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.dv, align 4, !tbaa !1723
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !858
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.dy, align 8, !tbaa !859
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 8, ptr %i.dz, align 4, !tbaa !876
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false)
  store ptr %.val56, ptr %i.eb, align 8, !tbaa !1724
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %.sroa.0.0.copyload.i.i61, ptr %i.ec, align 8, !tbaa !815
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 %.sroa.0.0.copyload.i.i62, ptr %i.ed, align 8, !tbaa !795
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, i64 %.sroa.0.0.copyload.i.i61) #30
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ef, i8 0, i64 18, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 163
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 164
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.eg, align 2, !tbaa !840
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 166
  store i8 0, ptr %i.ej, align 2, !tbaa !1733
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 167
  store i8 0, ptr %i.ek, align 1, !tbaa !1835
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #30
  %i.el = load i24, ptr %i.dq, align 8
  %i.em = and i24 %i.el, 1048576
  %i.en = icmp ne i24 %i.em, 0
  %i.eo = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformOverloadExprDeclsEPNS_12OverloadExprEbRNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.dq, i1 noundef zeroext %i.en, ptr noundef nonnull align 8 dereferenceable(168) %4)
  br i1 %i.eo, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ep = load i32, ptr %1, align 8
  %i.eq = lshr i32 %i.ep, 25
  %i.er = and i32 %i.eq, 63
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i63 = load i32, ptr %i.es, align 4, !tbaa !795
  %i.et = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq) #31
  %i.eu = load i24, ptr %i.dq, align 8
  %i.ev = and i24 %i.eu, 1048576
  %i.ew = icmp ne i24 %i.ev, 0
  %i.ex = and i64 %storemerge, -2
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = and i64 %.sroa.070.0, -2
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26RebuildCXXOperatorCallExprENS_22OverloadedOperatorKindENS_14SourceLocationES5_bRKNS_17UnresolvedSetImplEPNS_4ExprESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.er, i32 %.sroa.0.0.copyload.i.i63, i32 %i.et, i1 noundef zeroext %i.ew, ptr noundef nonnull align 1 dereferenceable(1) %i.dw, ptr noundef %i.ey, ptr noundef %i.fa)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sroa.050.2 = phi i64 [ %i.fb, %bb.t ], [ 1, %bb.s ]
  %i.fc = load i8, ptr %i.eh, align 1, !tbaa !1726, !range !96, !noundef !97
  %i.fd = trunc nuw i8 %i.fc to i1
  %.pre104 = load i32, ptr %4, align 8            ; 3 uses
  br i1 %i.fd, label %bb.v, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.v:                                             ; preds = %bb.u
  %i.fe = icmp ne i32 %.pre104, 5
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = icmp ne ptr %i.fg, null
  %or.cond.i.i = select i1 %i.fe, i1 %i.fh, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.w:                                             ; preds = %bb.v
  %i.fi = load ptr, ptr %i.eb, align 8, !tbaa !1724 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 216
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = and i64 %i.fm, 18014398509481984
  %.not.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fi, ptr noundef nonnull align 8 dereferenceable(168) %4) #30
  %.pre = load i32, ptr %4, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i: ; preds = %bb.x, %bb.v, %bb.u
  %i.fo = phi i32 [ %.pre, %bb.x ], [ %.pre104, %bb.u ], [ %.pre104, %bb.v ]
  %i.fp = load i8, ptr %i.ei, align 4, !tbaa !1727, !range !96, !noundef !97
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = icmp eq i32 %i.fo, 5
  %or.cond97 = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %or.cond97, label %bb.y, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

bb.y:                                             ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.fs = load ptr, ptr %i.eb, align 8, !tbaa !1724
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fs, ptr noundef nonnull align 8 dereferenceable(168) %4) #30
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i: ; preds = %bb.w, %bb.y, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.ft = load ptr, ptr %i.ea, align 8, !tbaa !1728 ; 2 uses
  %.not.i64 = icmp eq ptr %i.ft, null
  br i1 %.not.i64, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.ft) #30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  %i.fu = load ptr, ptr %i.dw, align 8, !tbaa !858 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.dx
  br i1 %i.fv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.fu) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ap

bb.ad:                                            ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.fw, ptr %5, align 8, !tbaa !858
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.fx, align 8, !tbaa !859
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 1, ptr %i.fy, align 4, !tbaa !876
  %.not100 = icmp eq i16 %i.ds, 81
  br i1 %.not100, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fz = call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dq) #30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.051 = phi ptr [ %i.fz, %bb.ae ], [ %i.dq, %bb.ad ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !1530 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !2065, !noalias !6317 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !2416, !noalias !6317 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !2028, !noalias !6317 ; 4 uses
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %.loopexit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gj = add i32 %i.gh, -1                       ; 2 uses
  %i.gk = ptrtoint ptr %i.gb to i64
  %i.gl = mul i64 %i.gk, -4658895280553007687     ; 2 uses
  %i.gm = lshr i64 %i.gl, 31
  %i.gn = xor i64 %i.gm, %i.gl
  %i.go = trunc i64 %i.gn to i32
  %i.gp = and i32 %i.gj, %i.go                    ; 3 uses
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  %i.gr = lshr i64 %i.gq, 5
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !795, !noalias !6318
  %i.gu = and i32 %i.gp, 31
  %i.gv = lshr i32 %i.gt, %i.gu
  %i.gw = trunc i32 %i.gv to i1
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ag, %bb.ah
  %i.gx = phi i64 [ %i.hd, %bb.ah ], [ %i.gq, %bb.ag ]
  %.017.i.i.i.i.i = phi i32 [ %i.hc, %bb.ah ], [ %i.gp, %bb.ag ]
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.gx ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !855, !noalias !6318
  %i.ha = icmp eq ptr %i.gb, %i.gz
  br i1 %i.ha, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.ah, !prof !856

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hb = add nuw i32 %.017.i.i.i.i.i, 1
  %i.hc = and i32 %i.hb, %i.gj                    ; 3 uses
  %i.hd = zext i32 %i.hc to i64                   ; 2 uses
  %i.he = lshr i64 %i.hd, 5
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.he
end_hunk_7
begin_hunk_8_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE18TransformBlockExprEPNS_9BlockExprE:bb.a
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -784
  %i.et = load i32, ptr %i.es, align 8, !tbaa !2077
  %i.eu = getelementptr inbounds nuw i8, ptr %.val, i64 4504
  store i32 %i.et, ptr %i.eu, align 8, !tbaa !859
  %i.ev = getelementptr inbounds nuw i8, ptr %.val, i64 4488
  store i8 0, ptr %i.ev, align 8, !tbaa !1606
  %i.ew = getelementptr inbounds nuw i8, ptr %.val, i64 4489
  store i8 0, ptr %i.ew, align 1, !tbaa !1607
  %i.ex = getelementptr inbounds nuw i8, ptr %.val, i64 4392
  %i.ey = getelementptr inbounds nuw i8, ptr %.val, i64 4408 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !2078 ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %_ZN5clang4Sema34DiscardCleanupsInEvaluationContextEv.exit39, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fb = shl i32 %i.ez, 2
  %i.fc = getelementptr inbounds nuw i8, ptr %.val, i64 4412
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !2079 ; 3 uses
  %i.fe = icmp ult i32 %i.fb, %i.fd
  %i.ff = icmp ugt i32 %i.fd, 64
  %or.cond.i.i.i.i38 = and i1 %i.fe, %i.ff
  br i1 %or.cond.i.i.i.i38, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ex)
  br label %_ZN5clang4Sema34DiscardCleanupsInEvaluationContextEv.exit39

bb.x:                                             ; preds = %bb.v
  %i.fg = getelementptr inbounds nuw i8, ptr %.val, i64 4400
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !2080
  %i.fi = zext i32 %i.fd to i64
  %i.fj = add nuw nsw i64 %i.fi, 31
  %i.fk = lshr i64 %i.fj, 3
  %i.fl = and i64 %i.fk, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.fh, i8 0, i64 %i.fl, i1 false)
  store i32 0, ptr %i.ey, align 8, !tbaa !2078
  br label %_ZN5clang4Sema34DiscardCleanupsInEvaluationContextEv.exit39

_ZN5clang4Sema34DiscardCleanupsInEvaluationContextEv.exit39: ; preds = %bb.u, %bb.w, %bb.x
  %i.fm = getelementptr inbounds nuw i8, ptr %.val, i64 4424
  store i32 0, ptr %i.fm, align 8, !tbaa !859
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val), !inline_history !2603
  call void @_ZN5clang4Sema14PopDeclContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #30, !inline_history !2603
  call void @_ZN5clang4Sema20PopFunctionScopeInfoEPKNS_4sema21AnalysisBasedWarnings6PolicyEPNS_4DeclENS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2069") align 8 %2, ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef null, ptr noundef null, i64 0) #30, !inline_history !2603
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !906 ; 2 uses
  %.not.i36 = icmp eq ptr %i.fo, null
  br i1 %.not.i36, label %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit37, label %bb.y

bb.y:                                             ; preds = %_ZN5clang4Sema34DiscardCleanupsInEvaluationContextEv.exit39
  call void @_ZNK5clang4Sema26PoppedFunctionScopeDeleterclEPNS_4sema17FunctionScopeInfoE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.fo) #30
  br label %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit37

_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit37: ; preds = %_ZN5clang4Sema34DiscardCleanupsInEvaluationContextEv.exit39, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.aa

bb.z:                                             ; preds = %bb.t
  %i.fp = and i64 %i.ej, -2
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = call i64 @_ZN5clang4Sema18ActOnBlockStmtExprENS_14SourceLocationEPNS_4StmtEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.el, ptr noundef %i.fq, ptr poison)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit37
  %.sroa.030.0 = phi i64 [ 1, %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit37 ], [ %i.fr, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit
  %.sroa.030.1 = phi i64 [ 1, %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit ], [ %.sroa.030.0, %bb.aa ]
  %i.fs = load ptr, ptr %6, align 8, !tbaa !1804  ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ad
  br i1 %i.ft, label %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.fs) #30
  br label %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit

_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.fu = load ptr, ptr %5, align 8, !tbaa !858   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.z
  br i1 %i.fv, label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit
  call void @free(ptr noundef %i.fu) #30
  br label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit: ; preds = %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.fw = load ptr, ptr %4, align 8, !tbaa !858   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.w
  br i1 %i.fx, label %_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit
  call void @free(ptr noundef %i.fw) #30
  br label %_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i64 %.sroa.030.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23TransformBinaryOperatorEPNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1587
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 3 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1587
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f, i1 noundef zeroext false) ; 3 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %1, align 8
  %i.j = lshr i32 %i.i, 19                        ; 2 uses
  %i.k = and i32 %i.j, 62
  %i.l = add nsw i32 %i.k, -22
  %i.m = icmp ult i32 %i.l, 10
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.n, align 4, !tbaa !795
  %i.o = and i32 %i.j, 63
  %i.p = and i64 %i.c, -2
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = and i64 %i.g, -2
  %i.s = inttoptr i64 %i.r to ptr
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2280
  %i.t = tail call i64 @_ZN5clang4Sema10BuildBinOpEPNS_5ScopeENS_14SourceLocationENS_18BinaryOperatorKindEPNS_4ExprES6_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef null, i32 %.sroa.0.0.copyload.i, i32 noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, i1 noundef zeroext false), !inline_history !6425
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %.val16 = load ptr, ptr %0, align 8, !tbaa !2280
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(18640) %.val16) #30
  %i.u = load i32, ptr %1, align 8                ; 2 uses
  %i.v = and i32 %i.u, 33554432
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = and i32 %i.u, 511
  %i.x = icmp eq i32 %i.w, 123
  %i.y = select i1 %i.x, i64 48, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.z, align 4, !tbaa !795
  br label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit

_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val15 = load ptr, ptr %0, align 8, !tbaa !2280 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val15, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 216
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = trunc i64 %i.ad to i32                  ; 3 uses
  %i.af = lshr i32 %i.ae, 23
  %i.ag = and i32 %i.af, 3                        ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 3
  %spec.store.select.i.i = select i1 %i.ah, i32 2, i32 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = lshr i64 %i.aj, 57
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = and i32 %i.al, 4                        ; 2 uses
  %i.an = lshr i32 %i.ae, 19
  %i.ao = and i32 %i.an, 192
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = lshr i64 %i.aq, 36
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = and i32 %i.as, 32256
  %i.au = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.am, 0
  %or.cond.not16.i.i = select i1 %i.au, i1 %.not3.i.i.i, i1 false
  %i.av = and i32 %i.ae, 100663296
  %i.aw = icmp eq i32 %i.av, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.aw, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.ay = load i64, ptr %i.ax, align 8
  %sh.diff.i.i = lshr i64 %i.ay, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.az = and i32 %tr.sh.diff.i.i, 29360128
  %i.ba = or disjoint i32 %i.ao, %i.at
  %i.bb = or disjoint i32 %i.ba, %i.az
  %i.bc = or disjoint i32 %i.bb, %masksel.i.i
  %i.bd = or disjoint i32 %i.bc, %i.am
  %i.be = or disjoint i32 %i.bd, %spec.store.select.i.i
  %i.bf = or disjoint i32 %i.be, 56
  %i.bg = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.bh = and i32 %i.bf, %i.bg
  %i.bi = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.bj = trunc nuw i64 %i.bi to i32
  %i.bk = or i32 %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.val15, i64 208
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !795
  %i.bm = getelementptr inbounds nuw i8, ptr %.val15, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bm, align 8, !tbaa !795
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i17 = load i32, ptr %i.bn, align 4, !tbaa !795
  %i.bo = load i32, ptr %1, align 8
  %i.bp = lshr i32 %i.bo, 19
  %i.bq = and i32 %i.bp, 63
  %i.br = and i64 %i.c, -2
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = and i64 %i.g, -2
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = call i64 @_ZN5clang4Sema10BuildBinOpEPNS_5ScopeENS_14SourceLocationENS_18BinaryOperatorKindEPNS_4ExprES6_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val15, ptr noundef null, i32 %.sroa.0.0.copyload.i17, i32 noundef %i.bq, ptr noundef %i.bs, ptr noundef %i.bu, i1 noundef zeroext false), !inline_history !6425
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, %bb.b, %bb.a
  %.1 = phi i64 [ 1, %bb.a ], [ %i.bv, %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit ], [ %i.t, %bb.d ], [ 1, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE31TransformCompoundAssignOperatorEPNS_22CompoundAssignOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %.val6 = load ptr, ptr %0, align 8, !tbaa !2280
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(18640) %.val6) #30
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 33554432
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 511
  %i.d = icmp eq i32 %i.c, 123
  %i.e = select i1 %i.d, i64 48, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 4, !tbaa !795
  br label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit

_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val5 = load ptr, ptr %0, align 8, !tbaa !2280 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val5, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = load i64, ptr %i.i, align 8
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = lshr i32 %i.k, 23
  %i.m = and i32 %i.l, 3                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 3
  %spec.store.select.i.i = select i1 %i.n, i32 2, i32 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = load i64, ptr %i.o, align 8
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 4                          ; 2 uses
  %i.t = lshr i32 %i.k, 19
  %i.u = and i32 %i.t, 192
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.w = load i64, ptr %i.v, align 8
  %i.x = lshr i64 %i.w, 36
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = and i32 %i.y, 32256
  %i.aa = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.s, 0
  %or.cond.not16.i.i = select i1 %i.aa, i1 %.not3.i.i.i, i1 false
  %i.ab = and i32 %i.k, 100663296
  %i.ac = icmp eq i32 %i.ab, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.ac, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.ae = load i64, ptr %i.ad, align 8
  %sh.diff.i.i = lshr i64 %i.ae, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.af = and i32 %tr.sh.diff.i.i, 29360128
  %i.ag = or disjoint i32 %i.u, %i.z
  %i.ah = or disjoint i32 %i.ag, %i.af
  %i.ai = or disjoint i32 %i.ah, %masksel.i.i
  %i.aj = or disjoint i32 %i.ai, %i.s
  %i.ak = or disjoint i32 %i.aj, %spec.store.select.i.i
  %i.al = or disjoint i32 %i.ak, 56
  %i.am = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.an = and i32 %i.al, %i.am
  %i.ao = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.ap = trunc nuw i64 %i.ao to i32
  %i.aq = or i32 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.val5, i64 208
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !795
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.as, align 8, !tbaa !795
  %i.at = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23TransformBinaryOperatorEPNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1)
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i64 %i.at
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE19TransformAtomicExprEPNS_10AtomicExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !858
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !859
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.d, align 4, !tbaa !876
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2606 ; 3 uses
  %i.g = icmp ugt i32 %i.f, 8
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.b, i64 noundef %i.h, i64 noundef 8) #30
  %.pre = load i32, ptr %i.e, align 8, !tbaa !2606
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.f, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.j, i32 noundef %i.i, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 4 ; 3 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !858
  %i.n = load i32, ptr %i.c, align 8, !tbaa !859
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.q = load i32, ptr %i.p, align 4, !tbaa !2607
  %i.r = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.s = trunc nuw i64 %i.r to i32
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.t = call i64 @_ZN5clang4Sema15BuildAtomicExprENS_11SourceRangeES1_NS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEENS_10AtomicExpr8AtomicOpENS0_19AtomicArgumentOrderE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i, i32 %i.s, ptr %i.m, i64 %i.o, i32 noundef %i.q, i32 noundef 1) #30
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.c
  %.0 = phi i64 [ %i.t, %bb.c ], [ 1, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %i.u = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef %i.u) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i64 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE19TransformAsTypeExprEPNS_10AsTypeExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2125
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !788 ; 3 uses
  %i.f = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.f, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2280
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.i = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.h, i64 %.sroa.0.0.copyload.i, i32 0) #30, !inline_history !73
  %i.j = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i), !inline_history !73 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 8, !tbaa !788
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.d ], [ %.sroa.0.0.copyload.i, %bb.b ], [ 0, %bb.c ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.l = and i64 %i.c, -2
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.n, align 8, !tbaa !795
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.o, align 4, !tbaa !795
  %i.p = tail call i64 @_ZN5clang4Sema15BuildAsTypeExprEPNS_4ExprENS_8QualTypeENS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %i.k, ptr noundef %i.m, i64 %.sroa.0.0.i, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit
  %.sroa.09.0 = phi i64 [ %i.p, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit ], [ 1, %bb.a ]
  ret i64 %.sroa.09.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformArrayTypeTraitExprEPNS_18ArrayTypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2609
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787 ; 2 uses
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i32 noundef 0, ptr noundef null, i32 noundef 4)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2610
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  tail call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.d), !inline_history !7
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %i.i = load i24, ptr %1, align 8
  %i.j = lshr i24 %i.i, 19
  %i.k = and i24 %i.j, 3
  %i.l = zext nneg i24 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.m, align 8, !tbaa !795
  %i.n = and i64 %i.g, -2
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.p, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.q = tail call i64 @_ZN5clang4Sema19BuildArrayTypeTraitENS_14ArrayTypeTraitENS_14SourceLocationEPNS_14TypeSourceInfoEPNS_4ExprES2_(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef %i.l, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, ptr noundef %i.o, i32 %.sroa.0.0.copyload.i15) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.a
  %.2 = phi i64 [ 1, %bb.a ], [ %i.q, %bb.b ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  ret i64 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformArraySubscriptExprEPNS_18ArraySubscriptExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1587
  %i.d = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1587
  %i.h = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.g) ; 2 uses
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %i.d, -2
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !1587
  %i.m = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #31
  %i.n = and i64 %i.h, -2
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.p, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8, !tbaa !1514
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2280
  %i.q = call i64 @_ZN5clang4Sema23ActOnArraySubscriptExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef null, ptr noundef %i.k, i32 %i.m, ptr nonnull %i.a, i64 1, i32 %.sroa.0.0.copyload.i), !inline_history !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i64 [ 1, %bb.a ], [ %i.q, %bb.c ], [ 1, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformArraySectionExprEPNS_16ArraySectionExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
end_hunk_8
begin_hunk_9_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformOverloadExprDeclsEPNS_12OverloadExprEbRNS_12LookupResultE:bb.a
  %i.fg = add i32 %.0.i.i.i.i.i, %.010.i.i.i.i    ; 2 uses
  br i1 %i.fd, label %bb.ab, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fh = trunc i64 %storemerge9.i.i.i.i to i32
  %i.fi = lshr i32 %i.fh, 1
  %i.fj = and i32 %i.fi, 3
  switch i32 %i.fj, label %default.unreachable [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i
    i32 3, label %bb.ac
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i.i
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fk = and i64 %storemerge9.i.i.i.i, -8
  %i.fl = inttoptr i64 %i.fk to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.sroa.3.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i.i, align 8, !tbaa !815
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i.i

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.sroa.3.0.i.i.i.i.i = phi i64 [ %.sroa.3.0.copyload.i.i.i.i.i, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.not.i.i.i.i88 = icmp eq i64 %.sroa.3.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i88, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !42

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i.i, %bb.ab, %bb.ab, %.lr.ph.i.i.i.i
  %i.fm = add i32 %i.fg, 4
  %i.fn = zext i32 %i.fm to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i.i

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i.i: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i, %bb.z
  %i.fo = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i ], [ 4, %bb.z ], [ %i.fn, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i.i ]
  %i.fp = load ptr, ptr %i.es, align 8, !tbaa !2706
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fo
  %.0.copyload.i14.i.i.i = load i32, ptr %i.fq, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getSourceRangeEv.exit

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i.i: ; preds = %bb.z
  %i.fr = load ptr, ptr %i.es, align 8, !tbaa !2706
  %.0.copyload.i15.i.i.i = load ptr, ptr %i.fr, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.fs = and i64 %i.eu, -8
  %i.ft = inttoptr i64 %i.fs to ptr
  store ptr %i.ft, ptr %4, align 8, !tbaa !2649
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.copyload.i15.i.i.i, ptr %i.fu, align 8, !tbaa !2648
  %i.fv = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #30 ; 0 uses
  %i.fw = load ptr, ptr %i.es, align 8, !tbaa !2706
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.0.copyload.i16.i.i.i = load i32, ptr %i.fx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZNK5clang22NestedNameSpecifierLoc14getSourceRangeEv.exit

_ZNK5clang22NestedNameSpecifierLoc14getSourceRangeEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i.i, %bb.aa, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i.i, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i.i
  %.sroa.6.0.i.i.i = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i.i ], [ %.0.copyload.i14.i.i.i, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i.i ], [ %.0.copyload.i.i.i.i, %bb.aa ], [ %.0.copyload.i16.i.i.i, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i.i ]
  %.sroa.2.0.insert.ext.i = zext i32 %.sroa.6.0.i.i.i to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.et to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %9, align 8
  %i.fy = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.eq, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.fz = load i32, ptr %1, align 8               ; 2 uses
  %i.ga = and i32 %i.fz, 524288
  %.not.i.i89 = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i89, label %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit95, label %_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i.i90

_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i.i90: ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getSourceRangeEv.exit
  %i.gb = and i32 %i.fz, 511
  %i.gc = icmp eq i32 %i.gb, 24
  %i.gd = load i32, ptr %i.g, align 4, !tbaa !788
  %i.ge = zext i32 %i.gd to i64
  %.1.i.i.v.v.i.i91 = select i1 %i.gc, i64 64, i64 80
  %.1.i.i.v.i.i92 = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i.i.v.v.i.i91
  %.1.i.i.i.i93 = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i.v.i.i92, i64 %i.ge
  %i.gf = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i93, i64 8
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !795
  %i.gh = icmp ne i32 %i.gg, 0
  %i.gi = zext i1 %i.gh to i8
  br label %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit95

_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit95: ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getSourceRangeEv.exit, %_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i.i90
  %.sroa.0.0.i.i94 = phi i8 [ %i.gi, %_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i.i90 ], [ 0, %_ZNK5clang22NestedNameSpecifierLoc14getSourceRangeEv.exit ]
  store i8 %.sroa.0.0.i.i94, ptr %i.c, align 1, !tbaa !840
  %i.gj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.fy, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.gk = load i32, ptr %1, align 8               ; 2 uses
  %i.gl = and i32 %i.gk, 524288
  %.not.i96 = icmp eq i32 %i.gl, 0
  br i1 %.not.i96, label %_ZNK5clang12OverloadExpr21getTemplateKeywordLocEv.exit, label %_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i

_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i: ; preds = %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit95
  %i.gm = and i32 %i.gk, 511
  %i.gn = icmp eq i32 %i.gm, 24
  %i.go = load i32, ptr %i.g, align 4, !tbaa !788
  %i.gp = zext i32 %i.go to i64
  %.1.i.i.v.v.i = select i1 %i.gn, i64 64, i64 80
  %.1.i.i.v.i = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i.i.v.v.i
  %.1.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i.v.i, i64 %i.gp
  %i.gq = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 8
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !795
  br label %_ZNK5clang12OverloadExpr21getTemplateKeywordLocEv.exit

_ZNK5clang12OverloadExpr21getTemplateKeywordLocEv.exit: ; preds = %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit95, %_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i
  %.sroa.0.0.i = phi i32 [ %i.gr, %_ZNK5clang12OverloadExpr35getTrailingASTTemplateKWAndArgsInfoEv.exit.i ], [ 0, %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit95 ]
  store i32 %.sroa.0.0.i, ptr %11, align 4
  %i.gs = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_14SourceLocationEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.gj, ptr noundef nonnull align 4 dereferenceable(4) %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.gt = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i80, i64 24
  %.sroa.0.0.copyload.i97 = load i32, ptr %i.gu, align 8, !tbaa !795
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.gt, i32 %.sroa.0.0.copyload.i97, i32 noundef 6577) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %.sroa.0.0.copyload.i.i98 = load i64, ptr %i.ep, align 8, !tbaa !815
  store i64 %.sroa.0.0.copyload.i.i98, ptr %13, align 8
  %i.gv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %bb.u, %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit, %bb.v, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit, %_ZNK5clang12OverloadExpr21getTemplateKeywordLocEv.exit, %bb.t
  %.4 = phi i1 [ true, %bb.s ], [ true, %_ZNK5clang12OverloadExpr21getTemplateKeywordLocEv.exit ], [ true, %bb.t ], [ false, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit ], [ false, %bb.v ], [ false, %_ZNK5clang12OverloadExpr18hasTemplateKeywordEv.exit ], [ false, %bb.u ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE21TransformCompoundStmtEPNS_12CompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::FPOptions", align 4  ; 4 uses
  %4 = alloca %"class.clang::FPOptions", align 4  ; 4 uses
  %5 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.2748", align 8 ; 12 uses
  %.val36 = load ptr, ptr %0, align 8, !tbaa !2280 ; 2 uses
  tail call void @_ZN5clang4Sema24ActOnStartOfCompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val36, i1 noundef zeroext false) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %.val35 = load ptr, ptr %0, align 8, !tbaa !2280
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(18640) %.val35) #30
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 512
  %.not67 = icmp eq i16 %i.b, 0
  br i1 %.not67, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val34 = load ptr, ptr %0, align 8, !tbaa !2280 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !788
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 4, !tbaa !795 ; 2 uses
  %.sroa.454.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32 ; 2 uses
  %.sroa.454.0.extract.trunc = trunc nuw i64 %.sroa.454.0.extract.shift to i32
  %i.h = getelementptr inbounds nuw i8, ptr %.val34, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !786, !nonnull !97, !align !787 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 216 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = trunc i64 %i.k to i32                    ; 3 uses
  %i.m = lshr i32 %i.l, 23
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %i.o = icmp eq i32 %i.n, 3
  %spec.store.select.i.i = select i1 %i.o, i32 2, i32 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = and i32 %i.s, 4                          ; 2 uses
  %i.u = lshr i32 %i.l, 19
  %i.v = and i32 %i.u, 192
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i64 %i.x, 36
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = and i32 %i.z, 32256
  %i.ab = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.t, 0
  %or.cond.not16.i.i = select i1 %i.ab, i1 %.not3.i.i.i, i1 false
  %i.ac = and i32 %i.l, 100663296
  %i.ad = icmp eq i32 %i.ac, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.ad, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 208 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %sh.diff.i.i = lshr i64 %i.af, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.ag = and i32 %tr.sh.diff.i.i, 29360128
  %i.ah = or disjoint i32 %i.v, %i.aa
  %i.ai = or disjoint i32 %i.ah, %i.ag
  %i.aj = or disjoint i32 %i.ai, %masksel.i.i
  %i.ak = or disjoint i32 %i.aj, %i.t
  %i.al = or disjoint i32 %i.ak, %spec.store.select.i.i
  %i.am = or disjoint i32 %i.al, 56
  %i.an = xor i32 %.sroa.454.0.extract.trunc, -1
  %i.ao = and i32 %i.am, %i.an
  %i.ap = and i64 %.sroa.454.0.extract.shift, %.sroa.0.0.copyload.i
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = or i32 %i.ao, %i.aq                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %i.ar, ptr %3, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.val34, i64 208
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.at = load i64, ptr %i.j, align 8
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %i.av = lshr i32 %i.au, 23
  %i.aw = and i32 %i.av, 3                        ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 3
  %spec.store.select.i.i38 = select i1 %i.ax, i32 2, i32 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.p, align 8
  %i.az = lshr i64 %i.ay, 57
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = and i32 %i.ba, 4                        ; 2 uses
  %i.bc = lshr i32 %i.au, 19
  %i.bd = and i32 %i.bc, 192
  %i.be = load i64, ptr %i.w, align 8
  %i.bf = lshr i64 %i.be, 36
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 32256
  %i.bi = icmp eq i32 %spec.store.select.i.i38, 1
  %.not3.i.i.i39 = icmp ne i32 %i.bb, 0
  %or.cond.not16.i.i40 = and i1 %.not3.i.i.i39, %i.bi
  %i.bj = and i32 %i.au, 100663296
  %i.bk = icmp eq i32 %i.bj, 67108864
  %or.cond15.i.i41 = select i1 %or.cond.not16.i.i40, i1 %i.bk, i1 false
  %masksel.i.i42 = select i1 %or.cond15.i.i41, i32 256, i32 0
  %i.bl = load i64, ptr %i.ae, align 8
  %sh.diff.i.i43 = lshr i64 %i.bl, 23
  %tr.sh.diff.i.i44 = trunc i64 %sh.diff.i.i43 to i32
  %i.bm = and i32 %tr.sh.diff.i.i44, 29360128
  %i.bn = or disjoint i32 %i.bd, %i.bh
  %i.bo = or disjoint i32 %i.bn, %i.bm
  %i.bp = or disjoint i32 %i.bo, %masksel.i.i42
  %i.bq = or disjoint i32 %i.bp, %i.bb
  %i.br = or disjoint i32 %i.bq, %spec.store.select.i.i38
  %i.bs = or disjoint i32 %i.br, 56               ; 2 uses
  store i32 %i.bs, ptr %4, align 4, !tbaa !1608
  %i.bt = icmp eq i32 %i.ar, %i.bs
  br i1 %i.bt, label %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bu = call i64 @_ZNK5clang9FPOptions14getChangesSlowERKS0_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #30
  br label %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit

_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.insert.insert.i.i = phi i64 [ %i.bu, %bb.c ], [ 0, %bb.b ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.val34, i64 2024
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bv, align 8, !tbaa !795
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bw, ptr %6, align 8, !tbaa !858
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !859
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 8, ptr %i.by, align 4, !tbaa !876
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !788 ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %.idx = shl nuw nsw i64 %i.cc, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx ; 2 uses
  %.not69 = icmp eq i32 %i.cb, 0
  br i1 %.not69, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %.072.us = phi i1 [ %.1.ph.us, %bb.j ], [ false, %.lr.ph ] ; 2 uses
  %.03070.us = phi ptr [ %i.dc, %bb.j ], [ %i.bz, %.lr.ph ] ; 2 uses
  %i.ce = load ptr, ptr %.03070.us, align 8, !tbaa !1587 ; 3 uses
  %i.cf = load i32, ptr %i.ca, align 4, !tbaa !788 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN5clang12CompoundStmt9body_backEv.exit.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.ch = add i32 %i.cf, -1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1587
  br label %_ZN5clang12CompoundStmt9body_backEv.exit.us

_ZN5clang12CompoundStmt9body_backEv.exit.us:      ; preds = %bb.e, %.lr.ph.split.us
  %i.cl = phi ptr [ %i.ck, %bb.e ], [ null, %.lr.ph.split.us ]
  %i.cm = icmp eq ptr %i.ce, %i.cl
  %i.cn = select i1 %i.cm, i32 2, i32 0
  %i.co = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ce, i32 noundef %i.cn) ; 2 uses
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5clang12CompoundStmt9body_backEv.exit.us
  %i.cq = and i64 %i.co, -2
  %i.cr = inttoptr i64 %i.cq to ptr               ; 2 uses
  %i.cs = load i32, ptr %i.bx, align 8, !tbaa !859 ; 2 uses
  %i.ct = load i32, ptr %i.by, align 4, !tbaa !876
  %.not.i.us = icmp ult i32 %i.cs, %i.ct
  br i1 %.not.i.us, label %bb.h, label %bb.g, !prof !856

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.cr)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.cu = zext i32 %i.cs to i64
  %i.cv = load ptr, ptr %6, align 8, !tbaa !858
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cu
  store ptr %i.cr, ptr %i.cw, align 1
  %i.cx = load i32, ptr %i.bx, align 8, !tbaa !859
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.bx, align 8, !tbaa !859
  br label %bb.j

bb.i:                                             ; preds = %_ZN5clang12CompoundStmt9body_backEv.exit.us
  %i.cz = load i16, ptr %i.ce, align 8
  %i.da = and i16 %i.cz, 511
  %i.db = icmp eq i16 %i.da, 255
  br i1 %i.db, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.1.ph.us = phi i1 [ %.072.us, %bb.h ], [ %.072.us, %bb.g ], [ true, %bb.i ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.03070.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.dc, %i.cd
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.072 = phi i1 [ %.1.ph, %bb.o ], [ false, %.lr.ph ] ; 2 uses
  %.03070 = phi ptr [ %i.ds, %bb.o ], [ %i.bz, %.lr.ph ] ; 2 uses
  %i.dd = load ptr, ptr %.03070, align 8, !tbaa !1587 ; 2 uses
  %i.de = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dd, i32 noundef 0) ; 2 uses
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split
  %i.dg = load i16, ptr %i.dd, align 8
  %i.dh = and i16 %i.dg, 511
  %i.di = icmp eq i16 %i.dh, 255
  br i1 %i.di, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %bb.o

bb.l:                                             ; preds = %.lr.ph.split
  %i.dj = and i64 %i.de, -2
  %i.dk = inttoptr i64 %i.dj to ptr               ; 2 uses
  %i.dl = load i32, ptr %i.bx, align 8, !tbaa !859 ; 2 uses
  %i.dm = load i32, ptr %i.by, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.dl, %i.dm
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !856

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.dk)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dn = zext i32 %i.dl to i64
  %i.do = load ptr, ptr %6, align 8, !tbaa !858
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dn
  store ptr %i.dk, ptr %i.dp, align 1
  %i.dq = load i32, ptr %i.bx, align 8, !tbaa !859
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.bx, align 8, !tbaa !859
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  %.1.ph = phi i1 [ %.072, %bb.n ], [ %.072, %bb.m ], [ true, %bb.k ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.03070, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ds, %i.cd
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.o, %bb.j
  %.0.lcssa = phi i1 [ %.1.ph.us, %bb.j ], [ %.1.ph, %bb.o ]
  br i1 %.0.lcssa, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %._crit_edge..critedge_crit_edge

._crit_edge..critedge_crit_edge:                  ; preds = %._crit_edge
  %.pre = load ptr, ptr %6, align 8, !tbaa !858
  %.pre75 = load i32, ptr %i.bx, align 8, !tbaa !859
  %i.dt = zext i32 %.pre75 to i64
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge..critedge_crit_edge, %bb.d
  %i.du = phi i64 [ %i.dt, %._crit_edge..critedge_crit_edge ], [ 0, %bb.d ]
  %i.dv = phi ptr [ %.pre, %._crit_edge..critedge_crit_edge ], [ %i.bw, %bb.d ]
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i45 = load i32, ptr %i.dw, align 8, !tbaa !795
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i46 = load i32, ptr %i.dx, align 4, !tbaa !795
  %.val37 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.dy = call i64 @_ZN5clang4Sema17ActOnCompoundStmtENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4StmtEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val37, i32 %.sroa.0.0.copyload.i45, i32 %.sroa.0.0.copyload.i46, ptr %i.dv, i64 %i.du, i1 noundef zeroext %2) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit: ; preds = %bb.k, %bb.i, %._crit_edge, %.critedge
end_hunk_9
