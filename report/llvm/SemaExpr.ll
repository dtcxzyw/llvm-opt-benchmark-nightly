Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExpr?download=true
inline.NumInlined: 75953
inline.NumDeleted: 20715
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformCXXDefaultInitExprEPNS_18CXXDefaultInitExprE:bb.a
  %.val.i.pre = load ptr, ptr %0, align 8, !tbaa !2407 ; 2 uses
  br i1 %i.ap, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !4408
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 616
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !792
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = ptrtoint ptr %1 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.aw = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #31
  %i.ax = tail call i64 @_ZN5clang4Sema23BuildCXXDefaultInitExprENS_14SourceLocationEPNS_9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i.pre, i32 %i.aw, ptr noundef nonnull %.0.i), !inline_history !4405
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.h, %bb.g
  %.sroa.0.0 = phi i64 [ %i.ax, %bb.h ], [ %i.av, %bb.g ], [ 1, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformCXXDefaultArgExprEPNS_17CXXDefaultArgExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2595 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2065, !noalias !4417 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2416, !noalias !4417 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !2028, !noalias !4417 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !795, !noalias !4418
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !855, !noalias !4418
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !856

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !795, !noalias !4418
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.b, %bb.a
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ak, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.al, %.loopexit.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.am
  br i1 %.not.i, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 3 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = load i32, ptr %1, align 8
  %i.aq = and i32 %i.ap, 524288
  %.not22 = icmp eq i32 %i.aq, 0
  br i1 %.not22, label %bb.f, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1514
  %i.at = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.as) ; 2 uses
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.l, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit._crit_edge

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit._crit_edge: ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !2595
  %i.av = and i64 %i.at, -2
  %i.aw = inttoptr i64 %i.av to ptr
  br label %bb.f

bb.f:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit._crit_edge, %bb.e
  %i.ax = phi ptr [ %.pre, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit._crit_edge ], [ %i.b, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit._crit_edge ], [ null, %bb.e ] ; 2 uses
  %i.ay = icmp eq ptr %.0.i, %i.ax
  %.val.pre = load ptr, ptr %0, align 8, !tbaa !2407 ; 3 uses
  br i1 %i.ay, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr i8, ptr %.val.pre, i64 616
  %.val.val15.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !792
  br label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !4419
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.pre, i64 616
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !792 ; 3 uses
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.be = load i32, ptr %1, align 8
  %i.bf = and i32 %i.be, 524288
  %.not.i17 = icmp eq i32 %i.bf, 0
  br i1 %.not.i17, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit18, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1514
  br label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit18

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit18: ; preds = %bb.h, %bb.i
  %i.bi = phi ptr [ %i.bh, %bb.i ], [ null, %bb.h ]
  %i.bj = icmp eq ptr %i.bi, %.sroa.0.0
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit18
  %i.bk = ptrtoint ptr %1 to i64
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit18, %bb.g
  %.val.val15 = phi ptr [ %.val.val15.pre, %._crit_edge ], [ %i.bc, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit18 ], [ %i.bc, %bb.g ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.bl, align 4, !tbaa !795
  %i.bm = getelementptr i8, ptr %.val.pre, i64 232
  %.val.val = load ptr, ptr %i.bm, align 8, !tbaa !1116
  %i.bn = tail call noundef ptr @_ZN5clang17CXXDefaultArgExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_11ParmVarDeclEPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(23904) %.val.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %.0.i, ptr noundef %.sroa.0.0, ptr noundef %.val.val15) #30
  %i.bo = ptrtoint ptr %i.bn to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %.sroa.021.1 = phi i64 [ 1, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ %i.bo, %bb.k ], [ %i.bk, %bb.j ], [ 1, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ]
  ret i64 %.sroa.021.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE25TransformCXXConstructExprEPNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 9 uses
  %3 = alloca %"class.llvm::MutableArrayRef", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.1861", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2232, !range !96, !noundef !97
  %i.d = trunc nuw i8 %i.c to i1
  store i8 1, ptr %i.b, align 8, !tbaa !2232
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2596
  switch i32 %i.f, label %bb.c [
    i32 1, label %bb.d
    i32 0, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %1, align 8
  %i.h = and i16 %i.g, 511
  %.not.i.i.i = icmp eq i16 %i.h, 118
  %5 = select i1 %.not.i.i.i, i64 56, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %5
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1514
  %i.k = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #30
  br i1 %i.k, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = load i16, ptr %1, align 8
  %i.m = and i16 %i.l, 511
  %.not.i.i.i43 = icmp eq i16 %i.m, 118
  %spec.select.v.i.i.i44 = select i1 %.not.i.i.i43, i64 48, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i44
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1514
  %i.p = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #30
  br i1 %i.p, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %1, align 8                ; 2 uses
  %i.r = and i32 %i.q, 2097152
  %.not69 = icmp eq i32 %i.r, 0
  br i1 %.not69, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.s = and i32 %i.q, 511
  %.not.i.i.i46 = icmp eq i32 %i.s, 118
  %spec.select.v.i.i.i47 = select i1 %.not.i.i.i46, i64 48, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i47
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1514 ; 2 uses
  %.not.i77 = icmp eq ptr %i.u, null
  br i1 %.not.i77, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %.preheader.i.backedge
  %.016.i = phi ptr [ %.016.i.be, %.preheader.i.backedge ], [ %i.u, %bb.f ] ; 6 uses
  %i.v = load i16, ptr %.016.i, align 8
  %i.w = and i16 %i.v, 511
  switch i16 %i.w, label %.loopexit [
    i16 81, label %bb.g
    i16 50, label %bb.h
    i16 63, label %bb.k
  ]

bb.g:                                             ; preds = %.preheader.i
  %i.x = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1930
  br label %.preheader.i.backedge

bb.h:                                             ; preds = %.preheader.i
  %i.z = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8 ; 3 uses
  %i.aa = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %.preheader.i.backedge

bb.j:                                             ; preds = %bb.h
  %i.ad = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2169
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.j, %bb.i, %bb.g
  %.016.i.be = phi ptr [ %i.ac, %bb.i ], [ %i.y, %bb.g ], [ %i.ag, %bb.j ]
  br label %.preheader.i

bb.k:                                             ; preds = %.preheader.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.016.i, i64 4
  %i.ai = load i16, ptr %i.ah, align 4
  %i.aj = and i16 %i.ai, 256
  %.not39.i = icmp eq i16 %i.aj, 0
  br i1 %.not39.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove25RemoveImmediateInvocationES8_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %.016.i), !inline_history !2532
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i, %bb.l, %bb.k
  %i.ak = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %.016.i, i1 noundef zeroext false), !inline_history !2532
  br label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit

bb.m:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.al, align 8, !tbaa !788 ; 2 uses
  %i.am = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.am, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val.i78 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i78, i64 232
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ap = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ao, i64 %.sroa.0.0.copyload.i, i32 0) #30, !inline_history !34
  %i.aq = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ap), !inline_history !34 ; 2 uses
  %.not.i79 = icmp eq ptr %i.aq, null
  br i1 %.not.i79, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.n
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aq, align 8, !tbaa !788 ; 4 uses
  %i.ar = icmp ult i64 %.sroa.0.0.copyload.i.i, 16
  br i1 %i.ar, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2236 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2065, !noalias !4428 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2416, !noalias !4428 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !2028, !noalias !4428 ; 4 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.loopexit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = add i32 %i.az, -1                       ; 2 uses
  %i.bc = ptrtoint ptr %i.at to i64
  %i.bd = mul i64 %i.bc, -4658895280553007687     ; 2 uses
  %i.be = lshr i64 %i.bd, 31
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = and i32 %i.bb, %i.bg                    ; 3 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = lshr i64 %i.bi, 5
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !795, !noalias !4429
  %i.bm = and i32 %i.bh, 31
  %i.bn = lshr i32 %i.bl, %i.bm
  %i.bo = trunc i32 %i.bn to i1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %i.bp = phi i64 [ %i.bv, %bb.q ], [ %i.bi, %bb.p ]
  %.017.i.i.i.i.i = phi i32 [ %i.bu, %bb.q ], [ %i.bh, %bb.p ]
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !855, !noalias !4429
  %i.bs = icmp eq ptr %i.at, %i.br
  br i1 %i.bs, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.q, !prof !856

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bt = add nuw i32 %.017.i.i.i.i.i, 1
  %i.bu = and i32 %i.bt, %i.bb                    ; 3 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = lshr i64 %i.bv, 5
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !795, !noalias !4429
  %i.bz = and i32 %i.bu, 31
  %i.ca = lshr i32 %i.by, %i.bz
  %i.cb = trunc i32 %i.ca to i1
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.q, %bb.p, %bb.o
  %i.cc = zext i32 %i.az to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.cc
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.az to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.cc, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.bq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.cd, %.loopexit.i.i.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.ce
  br i1 %.not.i, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.r
  %.0.i = phi ptr [ %i.cg, %bb.r ], [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 7 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ch, ptr %4, align 8, !tbaa !858
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.ci, align 8, !tbaa !859
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.cj, align 4, !tbaa !876
  %.val = load ptr, ptr %0, align 8, !tbaa !2407  ; 6 uses
  %i.ck = load i32, ptr %1, align 8               ; 2 uses
  %i.cl = and i32 %i.ck, 2097152
  %.not70 = icmp eq i32 %i.cl, 0
  %i.cm = trunc i32 %i.ck to i16                  ; 3 uses
  br i1 %.not70, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !858
  %i.cp = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !859
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [792 x i8], ptr %i.co, i64 %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -792
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !1655
  switch i32 %i.cu, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.u
    i32 3, label %bb.u
    i32 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = and i64 %i.cx, 8192
  %.not.i49 = icmp eq i64 %i.cy, 0
  br i1 %.not.i49, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4)
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.s, %bb.t, %bb.u, %bb.v
  %i.cz = phi i16 [ %i.cm, %bb.t ], [ %i.cm, %bb.u ], [ %.pre, %bb.v ], [ %i.cm, %bb.s ]
  %.sroa.6.0 = phi i1 [ false, %bb.t ], [ false, %bb.u ], [ true, %bb.v ], [ false, %bb.s ] ; 2 uses
  %i.da = and i16 %i.cz, 511
  %.not.i.i = icmp eq i16 %i.da, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !2596
  %i.de = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE14TransformExprsEPKPNS_4ExprEjbRNS6_15SmallVectorImplISK_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.db, i32 noundef %i.dd, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a)
  br i1 %i.de, label %bb.w, label %.critedge38

bb.w:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.x, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.x:                                             ; preds = %bb.w
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val), !inline_history !7
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge38:                                      ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.y, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit50

bb.y:                                             ; preds = %.critedge38
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val), !inline_history !7
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit50

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit50: ; preds = %.critedge38, %bb.y
  %.sroa.0.0.copyload.i51 = load i64, ptr %i.al, align 8, !tbaa !788
  %i.df = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i51
  br i1 %i.df, label %bb.z, label %.critedge

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit50
  %i.dg = load ptr, ptr %i.as, align 8, !tbaa !2236
  %i.dh = icmp ne ptr %.0.i, %i.dg
  %i.di = load i8, ptr %i.a, align 1, !range !96
  %i.dj = trunc nuw i8 %i.di to i1
  %or.cond = select i1 %i.dh, i1 true, i1 %i.dj
  br i1 %or.cond, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.dl = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #31
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.dk, i32 %i.dl, ptr noundef nonnull %.0.i, i1 noundef zeroext true)
  %i.dm = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge:                                        ; preds = %bb.z, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit50
  %i.dn = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #31 ; 2 uses
  %i.do = load i32, ptr %1, align 8               ; 3 uses
  %i.dp = and i32 %i.do, 524288
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = load ptr, ptr %4, align 8, !tbaa !858
  %i.ds = load i32, ptr %i.ci, align 8, !tbaa !859
  %i.dt = zext i32 %i.ds to i64
  %i.du = insertelement <4 x i32> poison, i32 %i.do, i64 0
  %i.dv = shufflevector <4 x i32> %i.du, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dw = and <4 x i32> %i.dv, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.dx = icmp ne <4 x i32> %i.dw, zeroinitializer ; 4 uses
  %i.dy = lshr i32 %i.do, 24
  %i.dz = and i32 %i.dy, 7
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i53 = load i64, ptr %i.ea, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = and i64 %i.ec, 2305843009213693952
  %.not.i54 = icmp eq i64 %i.ed, 0
  br i1 %.not.i54, label %bb.ab, label %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i

_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i: ; preds = %.critedge
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 184
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !872
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i, %.critedge
  %.0.i55 = phi ptr [ %.sroa.4.0.copyload.i.i, %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i ], [ %.0.i, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ee, ptr %2, align 8, !tbaa !858
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.ef, align 8, !tbaa !859
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.eg, align 4, !tbaa !876
  %.val21.i = load ptr, ptr %0, align 8, !tbaa !2407
  %i.eh = call noundef zeroext i1 @_ZN5clang4Sema23CompleteConstructorCallEPNS_18CXXConstructorDeclENS_8QualTypeEN4llvm15MutableArrayRefIPNS_4ExprEEENS_14SourceLocationERNS4_15SmallVectorImplIS7_EEbb(ptr noundef nonnull align 8 dereferenceable(18640) %.val21.i, ptr noundef %.0.i55, i64 %.sroa.0.0.copyload.i.i, ptr %i.dr, i64 %i.dt, i32 %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext false) #30
  br i1 %i.eh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ei = load ptr, ptr %2, align 8, !tbaa !858
  store ptr %i.ei, ptr %3, align 8, !tbaa !1736
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ek = load i32, ptr %i.ef, align 8, !tbaa !859
  %i.el = zext i32 %i.ek to i64
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !1737
  %i.em = extractelement <4 x i1> %i.dx, i64 0
  %i.en = extractelement <4 x i1> %i.dx, i64 1
  %i.eo = extractelement <4 x i1> %i.dx, i64 2
  %i.ep = extractelement <4 x i1> %i.dx, i64 3
  %i.eq = call i64 @_ZN5clang4Sema21BuildCXXConstructExprENS_14SourceLocationENS_8QualTypeEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %i.dn, i64 %.sroa.0.0.copyload.i.i, ptr noundef nonnull %.0.i, i1 noundef zeroext %i.dq, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %3, i1 noundef zeroext %i.ep, i1 noundef zeroext %i.eo, i1 noundef zeroext %i.en, i1 noundef zeroext %i.em, i32 noundef %i.dz, i64 %.sroa.0.0.copyload.i53) #30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.020.0.i = phi i64 [ %i.eq, %bb.ac ], [ 1, %bb.ab ]
  %i.er = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ee
  br i1 %i.es, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbNS6_15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.er) #30
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbNS6_15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbNS6_15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.x, %bb.w, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbNS6_15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, %bb.aa
  %.sroa.066.0 = phi i64 [ %i.dm, %bb.aa ], [ %.sroa.020.0.i, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbNS6_15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit ], [ 1, %bb.w ], [ 1, %bb.x ]
  %i.et = load ptr, ptr %4, align 8, !tbaa !858   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.ch
  br i1 %i.eu, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  call void @free(ptr noundef %i.et) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit

_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove20TransformInitializerEPNS_4ExprEb.exit: ; preds = %bb.n, %bb.m, %.loopexit, %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %.sroa.066.2 = phi i64 [ 1, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ %.sroa.066.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit ], [ %i.ak, %.loopexit ], [ 0, %bb.f ], [ 1, %bb.m ], [ 1, %bb.n ]
  ret i64 %.sroa.066.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE31TransformCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2598
  %i.d = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformTypeWithDeducedTSTEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2236 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2065, !noalias !4438 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2416, !noalias !4438 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2028, !noalias !4438 ; 4 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %i.l, -1                         ; 2 uses
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = mul i64 %i.o, -4658895280553007687       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.n, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !795, !noalias !4439
  %i.y = and i32 %i.t, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.ah, %bb.d ], [ %i.u, %bb.c ]
  %.017.i.i.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.t, %bb.c ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !855, !noalias !4439
  %i.ae = icmp eq ptr %i.f, %i.ad
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.d, !prof !856

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ag = and i32 %i.af, %i.n                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !795, !noalias !4439
  %i.al = and i32 %i.ag, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.ao = zext i32 %i.l to i64                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ao
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.l to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ao, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ac, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ap, %.loopexit.i.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.aq
  br i1 %.not.i, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.e
  %.0.i = phi ptr [ %i.as, %bb.e ], [ %i.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 3 uses
  %.not38 = icmp eq ptr %.0.i, null
  br i1 %.not38, label %bb.y, label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !858
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.au, align 8, !tbaa !859
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.av, align 4, !tbaa !876
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !2596 ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 8
  br i1 %i.ay, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.az = zext i32 %i.ax to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.at, i64 noundef %i.az, i64 noundef 8) #30
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %.val = load ptr, ptr %0, align 8, !tbaa !2407  ; 5 uses
  %i.ba = load i32, ptr %1, align 8               ; 2 uses
  %i.bb = and i32 %i.ba, 2097152
  %.not53 = icmp eq i32 %i.bb, 0
  %i.bc = trunc i32 %i.ba to i16                  ; 3 uses
  br i1 %.not53, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !858
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !859
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [792 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -792
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !1655
  switch i32 %i.bk, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.i
    i32 3, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 8192
  %.not.i40 = icmp eq i64 %i.bo, 0
  br i1 %.not.i40, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4)
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.h, %bb.i, %bb.j
  %i.bp = phi i16 [ %i.bc, %bb.h ], [ %i.bc, %bb.i ], [ %.pre, %bb.j ], [ %i.bc, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %.sroa.4.0 = phi i1 [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ false, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %i.bq = and i16 %i.bp, 511
  %.not.i.i = icmp eq i16 %i.bq, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i
  %i.bs = load i32, ptr %i.aw, align 8, !tbaa !2596
  %i.bt = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE14TransformExprsEPKPNS_4ExprEjbRNS6_15SmallVectorImplISK_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.br, i32 noundef %i.bs, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.bt, label %bb.q, label %bb.k

bb.k:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.bu = load i32, ptr %1, align 8
  %i.bv = and i32 %i.bu, 6291456
  %or.cond52.not = icmp eq i32 %i.bv, 2097152
  br i1 %or.cond52.not, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bw = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #31
  %i.bx = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.by = load i32, ptr %i.au, align 8, !tbaa !859 ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #31
  %i.cb = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787 ; 2 uses
  %.not23.i = icmp eq i32 %i.by, 0
  br i1 %.not23.i, label %_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %bb.l ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1514 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.0.0.copyload.i13.i = load i64, ptr %i.ce, align 8, !tbaa !788
  %i.cf = and i64 %.sroa.0.0.copyload.i13.i, -16
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !791
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 16
  %.not.i.i62 = icmp eq i8 %i.cj, 13
  %i.ck = load i32, ptr %i.ci, align 16
  %i.cl = and i32 %i.ck, 534773760
  %i.cm = icmp samesign ugt i32 %i.cl, 270008320
  %spec.select.i.i63 = select i1 %.not.i.i62, i1 %i.cm, i1 false
  br i1 %spec.select.i.i63, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph.i
  %i.cn = call i64 @_ZN5clang4Sema20CheckPlaceholderExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cb, ptr noundef nonnull %i.cd), !inline_history !37 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = and i64 %i.cn, -2
  %i.cq = inttoptr i64 %i.cp to ptr
  store ptr %i.cq, ptr %i.cc, align 8, !tbaa !1514
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i64 = icmp eq i64 %indvars.iv.next.i, %i.bz
  br i1 %.not.i64, label %_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b.exit, label %.lr.ph.i, !llvm.loop !18

_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b.exit: ; preds = %bb.o, %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 232 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ct = call noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(23904) %i.cs, i32 noundef 8) #30, !inline_history !37 ; 4 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !1116, !nonnull !97, !align !787
  call void @_ZN5clang12InitListExprC1ERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_b(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr noundef nonnull align 8 dereferenceable(23904) %i.cu, i32 %i.bw, ptr %i.bx, i64 %i.bz, i32 %i.ca, i1 noundef zeroext true) #30, !inline_history !37
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 18896
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cw, align 8, !tbaa !788
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.cx, align 8, !tbaa !788
  %.not55 = icmp eq ptr %i.ct, inttoptr (i64 1 to ptr)
  br i1 %.not55, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b.exit
  store i32 0, ptr %i.au, align 8, !tbaa !859
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

bb.q:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit, %_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b.exit, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.k
  %cond = phi i1 [ true, %bb.k ], [ false, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ false, %_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b.exit ], [ true, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit ]
  br i1 %.sroa.4.0, label %bb.r, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val), !inline_history !7
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.q, %bb.r
  br i1 %cond, label %bb.s, label %bb.w

bb.s:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !2598
  %i.df = icmp eq ptr %i.d, %i.de
  br i1 %i.df, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !2236
  %i.dh = icmp ne ptr %.0.i, %i.dg
  %i.di = load i8, ptr %i.a, align 1, !range !96
  %i.dj = trunc nuw i8 %i.di to i1
  %or.cond = select i1 %i.dh, i1 true, i1 %i.dj
  br i1 %or.cond, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dk = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.dl = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #31
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.dk, i32 %i.dl, ptr noundef nonnull %.0.i, i1 noundef zeroext true)
  %i.dm = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.dn = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.dm, ptr noundef nonnull %1) #30
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !788
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dp = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.dp, ptr %3, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.do, ptr %i.dq, align 8
  %i.dr = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ds = load ptr, ptr %2, align 8, !tbaa !858
  %i.dt = load i32, ptr %i.au, align 8, !tbaa !859
  %i.du = zext i32 %i.dt to i64
  %i.dv = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #31
  %i.dw = load i32, ptr %1, align 8
  %i.dx = and i32 %i.dw, 2097152
  %i.dy = icmp ne i32 %i.dx, 0
  %.val39 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.dz = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, ptr noundef nonnull %i.d, i32 %i.dr, ptr %i.ds, i64 %i.du, i32 %i.dv, i1 noundef zeroext %i.dy) #30
  br label %bb.w

bb.w:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.v, %bb.u
  %.sroa.035.3 = phi i64 [ %i.dz, %bb.v ], [ %i.dn, %bb.u ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.ea = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.at
  br i1 %i.eb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef %i.ea) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.y

bb.y:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.035.5 = phi i64 [ 1, %bb.a ], [ %.sroa.035.3, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.035.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformCXXBoolLiteralExprEPNS_18CXXBoolLiteralExprE(ptr noundef %0) unnamed_addr #24 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE29TransformCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2599
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2602 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2197
  %i.g = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #31
  tail call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i32 %i.g, ptr noundef nonnull %i.c, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2197
  %i.j = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i)
  ret i64 %i.j
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE18TransformBlockExprEPNS_9BlockExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.2069", align 8 ; 5 uses
  %3 = alloca %"class.std::unique_ptr.2069", align 8 ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.2638", align 8 ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.499", align 8 ; 9 uses
  %6 = alloca %"class.clang::Sema::ExtParameterInfoBuilder", align 8 ; 12 uses
end_hunk_0
begin_hunk_1_@_ZZL31RemoveNestedImmediateInvocationRN5clang4SemaERNS0_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS5_21PointerLikeTypeTraitsIS8_EENS5_18PointerIntPairInfoIS8_Lj1ESA_EEEEEEN13ComplexRemove25RemoveImmediateInvocationES8_:bb.a
._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre52.i.i.i = ptrtoint ptr %scevgep.i.i to i64
  %.pre55.i.i.i = sub i64 %.pre52.i.i.i, %i.g
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi56.i.i.i = phi i64 [ %.pre55.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.h, %bb.a ]
  %i.ae = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.af = ashr exact i64 %.pre-phi56.i.i.i, 3
  switch i64 %i.af, label %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.thread [
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = getelementptr i8, ptr %i.ae, i64 -8     ; 2 uses
  %.val6.val.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !788, !noalias !4840
  %i.ah = and i64 %.val6.val.i.i.i, -8
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = icmp eq ptr %1, %i.ai
  br i1 %i.aj, label %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %i.ak = phi ptr [ %i.ae, %._crit_edge.i.i.i ], [ %i.ag, %bb.f ] ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -8     ; 2 uses
  %.val4.val.i.i.i = load i64, ptr %i.al, align 8, !tbaa !788, !noalias !4840
  %i.am = and i64 %.val4.val.i.i.i, -8
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = icmp eq ptr %1, %i.an
  br i1 %i.ao, label %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %i.ap = phi ptr [ %i.ae, %._crit_edge.i.i.i ], [ %i.al, %bb.g ] ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  %.val2.val.i.i.i = load i64, ptr %i.aq, align 8, !tbaa !788, !noalias !4840
  %i.ar = and i64 %.val2.val.i.i.i, -8
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = icmp eq ptr %1, %i.as
  %spec.select.i.i = select i1 %i.at, ptr %i.ap, ptr %i.e
  br label %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit

_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.au = getelementptr i8, ptr %i.l, i64 -24
  br label %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit

_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.loopexit.split.loop.exit27: ; preds = %bb.c
  %i.av = getelementptr i8, ptr %i.l, i64 -16
  br label %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit

_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.loopexit.split.loop.exit29: ; preds = %bb.b
  %i.aw = getelementptr i8, ptr %i.l, i64 -8
  br label %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit

_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.loopexit.split.loop.exit, %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.loopexit.split.loop.exit27, %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.loopexit.split.loop.exit29, %bb.f, %bb.g, %bb.h
  %.sink.i.i.i = phi ptr [ %spec.select.i.i, %bb.h ], [ %i.ak, %bb.g ], [ %i.ae, %bb.f ], [ %i.aw, %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.loopexit.split.loop.exit29 ], [ %i.av, %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.loopexit.split.loop.exit27 ], [ %i.au, %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.loopexit.split.loop.exit ], [ %i.l, %.lr.ph.i.i.i ] ; 2 uses
  %i.ax = icmp eq ptr %.sink.i.i.i, %i.e
  br i1 %i.ax, label %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.thread, label %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread.sink.split

_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 10944 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 10960
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !95, !range !96, !noundef !97
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.i, label %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit

bb.i:                                             ; preds = %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.thread
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !98 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 10956
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !99 ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %.idx.i.i = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i
  %.not17.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not17.i.i, label %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread, label %.lr.ph.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i.i, label %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %.01218.i.i = phi ptr [ %i.bi, %bb.j ], [ %i.bd, %bb.i ] ; 2 uses
  %i.bj = load ptr, ptr %.01218.i.i, align 8, !tbaa !100
  %.not15.i.i = icmp eq ptr %i.bj, %1
  br i1 %.not15.i.i, label %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread.sink.split, label %bb.j

_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit: ; preds = %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit.thread
  %i.bk = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.az, ptr noundef %1) #30
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread, label %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit._ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread11_crit_edge

_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit._ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread11_crit_edge: ; preds = %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !2227
  br label %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread.sink.split

_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread.sink.split: ; preds = %.lr.ph.i.i, %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit, %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit._ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread11_crit_edge
  %.sink36 = phi ptr [ %.sink.i.i.i, %_ZSt7find_ifISt16reverse_iteratorIPN4llvm14PointerIntPairIPN5clang12ConstantExprELj1EjNS1_21PointerLikeTypeTraitsIS5_EENS1_18PointerIntPairInfoIS5_Lj1ES7_EEEEEZZL31RemoveNestedImmediateInvocationRNS3_4SemaERNSD_33ExpressionEvaluationContextRecordESC_EN13ComplexRemove25RemoveImmediateInvocationES5_EUlSA_E_ET_SJ_SJ_T0_.exit ], [ %.pre, %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit._ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread11_crit_edge ], [ %i.b, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds i8, ptr %.sink36, i64 -8 ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %i.bl, align 8
  %i.bm = or i64 %.0.copyload.i.i.i, 4
  store i64 %i.bm, ptr %i.bl, align 8
  br label %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread

_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread: ; preds = %bb.j, %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit.thread.sink.split, %bb.i, %_ZNK4llvm15SmallPtrSetImplIPN5clang12ConstantExprEE8containsEPKS2_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.1861", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %.not129 = icmp eq ptr %1, null
  br i1 %.not129, label %.loopexit, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.a, %tailrecurse.backedge
  %.tr117130 = phi ptr [ %.tr117.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 3 uses
  %i.b = load i16, ptr %.tr117130, align 8        ; 2 uses
  %i.c = and i16 %i.b, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.c, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph132
  %i.d = getelementptr inbounds nuw i8, ptr %.tr117130, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2234 ; 2 uses
  %.pre = load i16, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph132
  %i.f = phi i16 [ %i.b, %.lr.ph132 ], [ %.pre, %bb.b ] ; 2 uses
  %.097 = phi ptr [ %.tr117130, %.lr.ph132 ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = and i16 %i.f, 511
  %.not105 = icmp eq i16 %i.g, 129
  br i1 %.not105, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.097, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1587
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2167 ; 2 uses
  %.pre142 = load i16, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i16 [ %i.f, %bb.c ], [ %.pre142, %bb.d ]
  %.1 = phi ptr [ %.097, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = and i16 %i.l, 511
  %.not107 = icmp eq i16 %i.m, 50
  br i1 %.not107, label %bb.f, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 3 uses
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.h:                                             ; preds = %bb.f
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2169
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit: ; preds = %bb.h, %bb.g, %bb.e
  %.2 = phi ptr [ %.1, %bb.e ], [ %i.q, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %i.v = load i16, ptr %.2, align 8               ; 2 uses
  %i.w = and i16 %i.v, 511
  %.not109127 = icmp eq i16 %i.w, 120
  br i1 %.not109127, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit, %.lr.ph
  %.3128 = phi ptr [ %i.y, %.lr.ph ], [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.3128, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2197 ; 3 uses
  %i.z = load i16, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i16 %i.z, 511
  %.not109 = icmp eq i16 %i.aa, 120
  br i1 %.not109, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit
  %i.ab = phi i16 [ %i.v, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.z, %.lr.ph ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.ac = and i16 %i.ab, 511
  %.not111 = icmp eq i16 %i.ac, 81
  br i1 %.not111, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ad = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.3.lcssa) #30 ; 2 uses
  %.pre143 = load i16, ptr %i.ad, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ae = phi i16 [ %i.ab, %._crit_edge ], [ %.pre143, %bb.i ] ; 2 uses
  %.5 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %i.ad, %bb.i ] ; 13 uses
  %i.af = and i16 %i.ae, 511                      ; 3 uses
  %i.ag = icmp eq i16 %i.af, 101
  br i1 %i.ag, label %tailrecurse.backedge, label %bb.k

tailrecurse.backedge:                             ; preds = %bb.j, %bb.u
  %.sink = phi i64 [ %spec.select.v.i.i.i, %bb.u ], [ 16, %bb.j ]
  %4 = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink
  %.tr117.be = load ptr, ptr %4, align 8, !tbaa !100 ; 2 uses
  %.not = icmp eq ptr %.tr117.be, null
  br i1 %.not, label %.loopexit, label %.lr.ph132

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i16 %i.af, -119
  %spec.select.i.i.i.i.i.i.i.i59 = icmp ult i16 %i.ah, -2 ; 2 uses
  br i1 %2, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %spec.select.i.i.i.i.i.i.i.i59, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i32, ptr %.5, align 8              ; 2 uses
  %i.aj = and i32 %i.ai, 2097152
  %.not112 = icmp eq i32 %i.aj, 0
  %i.ak = trunc i32 %i.ai to i16
  br i1 %.not112, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.am = phi i16 [ %i.ak, %bb.m ], [ %i.ae, %bb.k ]
  switch i16 %i.af, label %bb.r [
    i16 102, label %bb.p
    i16 56, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.an = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.5) #31 ; 2 uses
  %.sroa.075.0.extract.trunc = trunc i64 %i.an to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.an, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.val53 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ao = getelementptr i8, ptr %.val53, i64 232
  %.val53.val = load ptr, ptr %i.ao, align 8, !tbaa !1116
  %i.ap = tail call noundef ptr @_ZN5clang13ParenListExpr6CreateERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_(ptr noundef nonnull align 8 dereferenceable(23904) %.val53.val, i32 %.sroa.075.0.extract.trunc, ptr null, i64 0, i32 %.sroa.4.0.extract.trunc) #30
  %i.aq = ptrtoint ptr %i.ap to i64
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %.val52 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ar = getelementptr i8, ptr %.val52, i64 232
  %.val52.val = load ptr, ptr %i.ar, align 8, !tbaa !1116
  %i.as = tail call noundef ptr @_ZN5clang13ParenListExpr6CreateERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_(ptr noundef nonnull align 8 dereferenceable(23904) %.val52.val, i32 0, ptr null, i64 0, i32 0) #30
  %i.at = ptrtoint ptr %i.as to i64
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %i.au = and i16 %i.am, 511
  %i.av = icmp eq i16 %i.au, 118
  %or.cond = or i1 %spec.select.i.i.i.i.i.i.i.i59, %i.av
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.ax = load i32, ptr %.5, align 8              ; 3 uses
  %i.ay = and i32 %i.ax, 4194304
  %.not115 = icmp eq i32 %i.ay, 0
  br i1 %.not115, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = and i32 %i.ax, 511
  %.not.i.i.i = icmp eq i32 %i.az, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  br label %tailrecurse.backedge

bb.v:                                             ; preds = %bb.t
  %.val50 = load ptr, ptr %0, align 8, !tbaa !2407 ; 8 uses
  %i.ba = and i32 %i.ax, 2097152
  %.not156 = icmp eq i32 %i.ba, 0
  br i1 %.not156, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %.val50, i64 4592
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !858
  %i.bd = getelementptr inbounds nuw i8, ptr %.val50, i64 4600
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !859
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [792 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -792
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1655
  switch i32 %i.bi, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.x
    i32 3, label %bb.x
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %.val50, i64 216
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = and i64 %i.bl, 8192
  %.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val50, i32 noundef 1, ptr noundef null, i32 noundef 4)
  %.val49.pre = load ptr, ptr %0, align 8, !tbaa !2407
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.val49 = phi ptr [ %.val50, %bb.w ], [ %.val50, %bb.x ], [ %.val49.pre, %bb.y ], [ %.val50, %bb.v ] ; 2 uses
  %.sroa.4.0 = phi i1 [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ false, %bb.v ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.val49, i64 4592
  %i.bo = getelementptr inbounds nuw i8, ptr %.val49, i64 4600
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !859
  %i.bq = zext i32 %i.bp to i64
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !858
  %i.bs = getelementptr [792 x i8], ptr %i.br, i64 %i.bq ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -831
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !2060, !range !96, !noundef !97
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 -39
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !2060
  %i.bw = getelementptr i8, ptr %i.bs, i64 -829
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !2054, !range !96, !noundef !97
  %i.by = getelementptr inbounds i8, ptr %i.bs, i64 -37
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !2054
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bz, ptr %3, align 8, !tbaa !858
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.ca, align 8, !tbaa !859
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.cb, align 4, !tbaa !876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  %i.cc = load i16, ptr %.5, align 8
  %i.cd = and i16 %i.cc, 511
  %.not.i.i = icmp eq i16 %i.cd, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %.5, i64 %spec.select.v.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !2596
  %i.ch = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE14TransformExprsEPKPNS_4ExprEjbRNS6_15SmallVectorImplISK_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ce, i32 noundef %i.cg, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  br i1 %i.ch, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.ci = load i32, ptr %.5, align 8
  %i.cj = and i32 %i.ci, 2097152
  %.not116 = icmp eq i32 %i.cj, 0
  br i1 %.not116, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #31
  %i.cl = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.cm = load i32, ptr %i.ca, align 8, !tbaa !859 ; 2 uses
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = call i32 @_ZNK5clang16CXXConstructExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #31
  %i.cp = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787 ; 2 uses
  %.not23.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not23.i.i, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE15RebuildInitListENS_14SourceLocationENS6_15MutableArrayRefIPNS_4ExprEEESJ_b.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %bb.ad
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ad ], [ 0, %bb.aa ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i.i ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1514 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.cs, align 8, !tbaa !788
  %i.ct = and i64 %.sroa.0.0.copyload.i13.i.i, -16
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load ptr, ptr %i.cu, align 16, !tbaa !791
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 16
  %.not.i.i.i153 = icmp eq i8 %i.cx, 13
  %i.cy = load i32, ptr %i.cw, align 16
  %i.cz = and i32 %i.cy, 534773760
  %i.da = icmp samesign ugt i32 %i.cz, 270008320
  %spec.select.i.i.i154 = select i1 %.not.i.i.i153, i1 %i.da, i1 false
  br i1 %spec.select.i.i.i154, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.db = call i64 @_ZN5clang4Sema20CheckPlaceholderExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cp, ptr noundef nonnull %i.cr), !inline_history !4841 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dd = and i64 %i.db, -2
  %i.de = inttoptr i64 %i.dd to ptr
  store ptr %i.de, ptr %i.cq, align 8, !tbaa !1514
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i155 = icmp eq i64 %indvars.iv.next.i.i, %i.cn
  br i1 %.not.i.i155, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE15RebuildInitListENS_14SourceLocationENS6_15MutableArrayRefIPNS_4ExprEEESJ_b.exit, label %.lr.ph.i.i, !llvm.loop !18

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE15RebuildInitListENS_14SourceLocationENS6_15MutableArrayRefIPNS_4ExprEEESJ_b.exit: ; preds = %bb.ad, %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 232 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.dh = call noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(23904) %i.dg, i32 noundef 8) #30, !inline_history !4841 ; 3 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !1116, !nonnull !97, !align !787
  call void @_ZN5clang12InitListExprC1ERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_b(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, ptr noundef nonnull align 8 dereferenceable(23904) %i.di, i32 %i.ck, ptr %i.cl, i64 %i.cn, i32 %i.co, i1 noundef zeroext true) #30, !inline_history !4841
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 18896
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dk, align 8, !tbaa !788
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.dl, align 8, !tbaa !788
  %i.dm = ptrtoint ptr %i.dh to i64
  br label %bb.ag

bb.ae:                                            ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %.5, i64 24
  %.sroa.0.0.copyload.i64 = load i64, ptr %i.dn, align 8, !tbaa !795 ; 2 uses
  %.sroa.067.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i64 to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i64, 32 ; 2 uses
  %i.do = icmp eq i32 %.sroa.067.0.extract.trunc, 0
  %i.dp = icmp eq i64 %.sroa.5.0.extract.shift, 0
  %.not2.i = or i1 %i.do, %i.dp
  br i1 %.not2.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.dq = load ptr, ptr %3, align 8, !tbaa !858
  %i.dr = load i32, ptr %i.ca, align 8, !tbaa !859
  %i.ds = zext i32 %i.dr to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.dt = getelementptr i8, ptr %.val51, i64 232
  %.val51.val = load ptr, ptr %i.dt, align 8, !tbaa !1116
  %i.du = call noundef ptr @_ZN5clang13ParenListExpr6CreateERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_(ptr noundef nonnull align 8 dereferenceable(23904) %.val51.val, i32 %.sroa.067.0.extract.trunc, ptr %i.dq, i64 %i.ds, i32 %.sroa.5.0.extract.trunc) #30
  %i.dv = ptrtoint ptr %i.du to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE15RebuildInitListENS_14SourceLocationENS6_15MutableArrayRefIPNS_4ExprEEESJ_b.exit
  %.sroa.096.1 = phi i64 [ 1, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ %i.dm, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE15RebuildInitListENS_14SourceLocationENS6_15MutableArrayRefIPNS_4ExprEEESJ_b.exit ], [ %i.dv, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.dw = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bz
  br i1 %i.dx, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.dw) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.sroa.4.0, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val50), !inline_history !7
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.ai, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.a, %bb.n, %bb.q, %bb.s, %bb.p
  %.sroa.096.3 = phi i64 [ %i.al, %bb.n ], [ %i.aq, %bb.p ], [ %i.at, %bb.q ], [ %i.aw, %bb.s ], [ %.sroa.096.1, %bb.ai ], [ 0, %bb.a ], [ %.sroa.096.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 0, %tailrecurse.backedge ]
  ret i64 %.sroa.096.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE14TransformExprsEPKPNS_4ExprEjbRNS6_15SmallVectorImplISK_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.2597", align 8 ; 8 uses
  %.not157 = icmp eq i32 %2, 0
  br i1 %.not157, label %.critedge88, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp ne ptr %5, null                     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.g = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit104
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit104 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1514 ; 4 uses
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %bb.e, label %.critedge88

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %5, align 1, !tbaa !840
  br label %.critedge88

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1514 ; 3 uses
  %i.m = load i16, ptr %i.l, align 8              ; 2 uses
  %i.n = and i16 %i.m, 511
  %.not149 = icmp eq i16 %i.n, 22
  br i1 %.not149, label %bb.g, label %.preheader

.thread:                                          ; preds = %bb.b
  %i.o = load i16, ptr %i.i, align 8
  %i.p = and i16 %i.o, 511
  %.not149172 = icmp eq i16 %i.p, 22
  br i1 %.not149172, label %bb.g, label %.thread138.thread

bb.g:                                             ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.i, %.thread ], [ %i.l, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2475 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.d, ptr %6, align 8, !tbaa !858
  store i32 0, ptr %i.e, align 8, !tbaa !859
  store i32 2, ptr %i.f, align 4, !tbaa !876
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksEPNS_4ExprERN4llvm15SmallVectorImplISt4pairINS3_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6) #30
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !2476
  %.val89 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.v = getelementptr inbounds nuw i8, ptr %.val89, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.v, align 4, !tbaa !795
  store i32 0, ptr %i.v, align 4, !tbaa !795
  %i.w = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.s) ; 2 uses
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = and i64 %i.w, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %.sroa.0.0.copyload.i94 = load i32, ptr %i.y, align 8, !tbaa !795
  %.val93 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ab = call i64 @_ZN5clang4Sema18CheckPackExpansionEPNS_4ExprENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val93, ptr noundef %i.aa, i32 %.sroa.0.0.copyload.i94, i32 %i.u) #30 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.a, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %5, align 1, !tbaa !840
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = and i64 %i.ab, -2
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load i32, ptr %i.b, align 8, !tbaa !859 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS2_14SourceLocationENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_:bb.a
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS2_14SourceLocationENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !795
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS2_14SourceLocationENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !5318

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS2_14SourceLocationENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1756
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !795
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !795
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !795
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !795
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !5319

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS2_14SourceLocationENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS5_14SourceLocationENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !5320

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS5_14SourceLocationENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2050
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS5_14SourceLocationENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS5_14SourceLocationENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS5_14SourceLocationENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS5_14SourceLocationENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !3282
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !3282
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPN5clang11ParmVarDeclENS1_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS5_14SourceLocationENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #30
  store i32 0, ptr %i.d, align 4, !tbaa !2050
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN5clang11ParmVarDeclENS1_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPN5clang11ParmVarDeclENS1_14SourceLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS5_14SourceLocationENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvvEE11callback_fnIZN5clang4Sema22CheckCXXDefaultArgExprENS4_14SourceLocationEPNS4_12FunctionDeclEPNS4_11ParmVarDeclEPNS4_4ExprEbE3$_0EEvl"(i64 noundef %0) #0 align 2 {
bb.a:
  %1 = alloca %"class.(anonymous namespace)::EvaluatedExprMarker", align 8 ; 7 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2053 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !tbaa !5322
  %.val1.val = load ptr, ptr %.val1, align 8, !tbaa !1514
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1116, !nonnull !97, !align !787
  store ptr %i.d, ptr %1, align 8, !tbaa !2056
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.val, ptr %i.e, align 8, !tbaa !1535
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.f, align 8, !tbaa !2355
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_119EvaluatedExprMarkerEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %.val1.val) #36, !inline_history !5321
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvvEE11callback_fnIZN5clang4Sema22BuildCXXDefaultArgExprENS4_14SourceLocationEPNS4_12FunctionDeclEPNS4_11ParmVarDeclEPNS4_4ExprEE3$_0EEvl"(i64 noundef %0) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5325, !nonnull !97, !align !787
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !5326, !nonnull !97, !align !787
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1756
  %i.g = tail call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.f) #30, !inline_history !5323
  %i.h = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef %i.g, i1 noundef zeroext false), !inline_history !5323
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !5327, !nonnull !97, !align !787
  store i64 %i.h, ptr %i.i, align 8, !tbaa !815
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.1861", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %.not122 = icmp eq ptr %1, null
  br i1 %.not122, label %.loopexit, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.a, %tailrecurse.backedge
  %.tr110123 = phi ptr [ %.tr110.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 3 uses
  %i.b = load i16, ptr %.tr110123, align 8        ; 2 uses
  %i.c = and i16 %i.b, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.c, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph125
  %i.d = getelementptr inbounds nuw i8, ptr %.tr110123, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2234 ; 2 uses
  %.pre = load i16, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph125
  %i.f = phi i16 [ %i.b, %.lr.ph125 ], [ %.pre, %bb.b ] ; 2 uses
  %.090 = phi ptr [ %.tr110123, %.lr.ph125 ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = and i16 %i.f, 511
  %.not98 = icmp eq i16 %i.g, 129
  br i1 %.not98, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.090, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1587
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2167 ; 2 uses
  %.pre135 = load i16, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i16 [ %i.f, %bb.c ], [ %.pre135, %bb.d ]
  %.1 = phi ptr [ %.090, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = and i16 %i.l, 511
  %.not100 = icmp eq i16 %i.m, 50
  br i1 %.not100, label %bb.f, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 3 uses
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.h:                                             ; preds = %bb.f
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2169
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit: ; preds = %bb.h, %bb.g, %bb.e
  %.2 = phi ptr [ %.1, %bb.e ], [ %i.q, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %i.v = load i16, ptr %.2, align 8               ; 2 uses
  %i.w = and i16 %i.v, 511
  %.not102120 = icmp eq i16 %i.w, 120
  br i1 %.not102120, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit, %.lr.ph
  %.3121 = phi ptr [ %i.y, %.lr.ph ], [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.3121, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2197 ; 3 uses
  %i.z = load i16, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i16 %i.z, 511
  %.not102 = icmp eq i16 %i.aa, 120
  br i1 %.not102, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit
  %i.ab = phi i16 [ %i.v, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.z, %.lr.ph ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.ac = and i16 %i.ab, 511
  %.not104 = icmp eq i16 %i.ac, 81
  br i1 %.not104, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ad = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.3.lcssa) #30 ; 2 uses
  %.pre136 = load i16, ptr %i.ad, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ae = phi i16 [ %i.ab, %._crit_edge ], [ %.pre136, %bb.i ] ; 2 uses
  %.5 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %i.ad, %bb.i ] ; 13 uses
  %i.af = and i16 %i.ae, 511                      ; 3 uses
  %i.ag = icmp eq i16 %i.af, 101
  br i1 %i.ag, label %tailrecurse.backedge, label %bb.k

tailrecurse.backedge:                             ; preds = %bb.j, %bb.u
  %.sink = phi i64 [ %spec.select.v.i.i.i, %bb.u ], [ 16, %bb.j ]
  %4 = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink
  %.tr110.be = load ptr, ptr %4, align 8, !tbaa !100 ; 2 uses
  %.not = icmp eq ptr %.tr110.be, null
  br i1 %.not, label %.loopexit, label %.lr.ph125

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i16 %i.af, -119
  %spec.select.i.i.i.i.i.i.i.i52 = icmp ult i16 %i.ah, -2 ; 2 uses
  br i1 %2, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %spec.select.i.i.i.i.i.i.i.i52, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i32, ptr %.5, align 8              ; 2 uses
  %i.aj = and i32 %i.ai, 2097152
  %.not105 = icmp eq i32 %i.aj, 0
  %i.ak = trunc i32 %i.ai to i16
  br i1 %.not105, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.am = phi i16 [ %i.ak, %bb.m ], [ %i.ae, %bb.k ]
  switch i16 %i.af, label %bb.r [
    i16 102, label %bb.p
    i16 56, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.an = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.5) #31 ; 2 uses
  %.sroa.068.0.extract.trunc = trunc i64 %i.an to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.an, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.ao = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 232
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ar = tail call noundef ptr @_ZN5clang13ParenListExpr6CreateERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_(ptr noundef nonnull align 8 dereferenceable(23904) %i.aq, i32 %.sroa.068.0.extract.trunc, ptr null, i64 0, i32 %.sroa.4.0.extract.trunc) #30
  %i.as = ptrtoint ptr %i.ar to i64
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.aw = tail call noundef ptr @_ZN5clang13ParenListExpr6CreateERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_(ptr noundef nonnull align 8 dereferenceable(23904) %i.av, i32 0, ptr null, i64 0, i32 0) #30
  %i.ax = ptrtoint ptr %i.aw to i64
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %i.ay = and i16 %i.am, 511
  %i.az = icmp eq i16 %i.ay, 118
  %or.cond = or i1 %spec.select.i.i.i.i.i.i.i.i52, %i.az
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ba = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.bb = load i32, ptr %.5, align 8              ; 3 uses
  %i.bc = and i32 %i.bb, 4194304
  %.not108 = icmp eq i32 %i.bc, 0
  br i1 %.not108, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = and i32 %i.bb, 511
  %.not.i.i.i = icmp eq i32 %i.bd, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  br label %tailrecurse.backedge

bb.v:                                             ; preds = %bb.t
  %i.be = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 8 uses
  %i.bf = and i32 %i.bb, 2097152
  %.not149 = icmp eq i32 %i.bf, 0
  br i1 %.not149, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4592
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !858
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4600
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !859
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [792 x i8], ptr %i.bh, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -792
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !1655
  switch i32 %i.bn, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.x
    i32 3, label %bb.x
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 216
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = and i64 %i.bq, 8192
  %.not.i = icmp eq i64 %i.br, 0
  br i1 %.not.i, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.be, i32 noundef 1, ptr noundef null, i32 noundef 4)
  %.pre164 = load ptr, ptr %0, align 8, !tbaa !3284
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %i.bs = phi ptr [ %i.be, %bb.w ], [ %i.be, %bb.x ], [ %.pre164, %bb.y ], [ %i.be, %bb.v ] ; 2 uses
  %.sroa.4.0 = phi i1 [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ false, %bb.v ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4592
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4600
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !859
  %i.bw = zext i32 %i.bv to i64
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !858
  %i.by = getelementptr [792 x i8], ptr %i.bx, i64 %i.bw ; 4 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -831
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !2060, !range !96, !noundef !97
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 -39
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !2060
  %i.cc = getelementptr i8, ptr %i.by, i64 -829
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !2054, !range !96, !noundef !97
  %i.ce = getelementptr inbounds i8, ptr %i.by, i64 -37
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !2054
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.cf, ptr %3, align 8, !tbaa !858
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.cg, align 8, !tbaa !859
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.ch, align 4, !tbaa !876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  %i.ci = load i16, ptr %.5, align 8
  %i.cj = and i16 %i.ci, 511
  %.not.i.i = icmp eq i16 %i.cj, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %.5, i64 %spec.select.v.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !2596
  %i.cn = call noundef zeroext i1 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS4_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ck, i32 noundef %i.cm, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  br i1 %i.cn, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.co = load i32, ptr %.5, align 8
  %i.cp = and i32 %i.co, 2097152
  %.not109 = icmp eq i32 %i.cp, 0
  br i1 %.not109, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #31
  %i.cr = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.cs = load i32, ptr %i.cg, align 8, !tbaa !859 ; 2 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = call i32 @_ZNK5clang16CXXConstructExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #31
  %i.cv = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 2 uses
  %.not23.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not23.i.i, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %bb.ad
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ad ], [ 0, %bb.aa ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.i.i ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1514 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.cy, align 8, !tbaa !788
  %i.cz = and i64 %.sroa.0.0.copyload.i13.i.i, -16
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load ptr, ptr %i.da, align 16, !tbaa !791
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 16
  %.not.i.i.i146 = icmp eq i8 %i.dd, 13
  %i.de = load i32, ptr %i.dc, align 16
  %i.df = and i32 %i.de, 534773760
  %i.dg = icmp samesign ugt i32 %i.df, 270008320
  %spec.select.i.i.i147 = select i1 %.not.i.i.i146, i1 %i.dg, i1 false
  br i1 %spec.select.i.i.i147, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.dh = call i64 @_ZN5clang4Sema20CheckPlaceholderExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cv, ptr noundef nonnull %i.cx), !inline_history !62 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = and i64 %i.dh, -2
  %i.dk = inttoptr i64 %i.dj to ptr
  store ptr %i.dk, ptr %i.cw, align 8, !tbaa !1514
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i148 = icmp eq i64 %indvars.iv.next.i.i, %i.ct
  br i1 %.not.i.i148, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b.exit, label %.lr.ph.i.i, !llvm.loop !18

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b.exit: ; preds = %bb.ad, %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cv, i64 232 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.dn = call noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(23904) %i.dm, i32 noundef 8) #30, !inline_history !62 ; 3 uses
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !1116, !nonnull !97, !align !787
  call void @_ZN5clang12InitListExprC1ERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_b(ptr noundef nonnull align 8 dereferenceable(64) %i.dn, ptr noundef nonnull align 8 dereferenceable(23904) %i.do, i32 %i.cq, ptr %i.cr, i64 %i.ct, i32 %i.cu, i1 noundef zeroext true) #30, !inline_history !62
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 18896
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dq, align 8, !tbaa !788
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.dr, align 8, !tbaa !788
  %i.ds = ptrtoint ptr %i.dn to i64
  br label %bb.ag

bb.ae:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %.5, i64 24
  %.sroa.0.0.copyload.i57 = load i64, ptr %i.dt, align 8, !tbaa !795 ; 2 uses
  %.sroa.060.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i57 to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i57, 32 ; 2 uses
  %i.du = icmp eq i32 %.sroa.060.0.extract.trunc, 0
  %i.dv = icmp eq i64 %.sroa.5.0.extract.shift, 0
  %.not2.i = or i1 %i.du, %i.dv
  br i1 %.not2.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.dw = load ptr, ptr %3, align 8, !tbaa !858
  %i.dx = load i32, ptr %i.cg, align 8, !tbaa !859
  %i.dy = zext i32 %i.dx to i64
  %i.dz = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 232
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ec = call noundef ptr @_ZN5clang13ParenListExpr6CreateERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_(ptr noundef nonnull align 8 dereferenceable(23904) %i.eb, i32 %.sroa.060.0.extract.trunc, ptr %i.dw, i64 %i.dy, i32 %.sroa.5.0.extract.trunc) #30
  %i.ed = ptrtoint ptr %i.ec to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b.exit
  %.sroa.089.1 = phi i64 [ 1, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ %i.ds, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b.exit ], [ %i.ed, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ee = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.cf
  br i1 %i.ef, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.ee) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.sroa.4.0, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.be), !inline_history !7
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.ai, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.a, %bb.n, %bb.q, %bb.s, %bb.p
  %.sroa.089.3 = phi i64 [ %i.al, %bb.n ], [ %i.as, %bb.p ], [ %i.ax, %bb.q ], [ %i.ba, %bb.s ], [ %.sroa.089.1, %bb.ai ], [ 0, %bb.a ], [ %.sroa.089.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 0, %tailrecurse.backedge ]
  ret i64 %.sroa.089.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.ee, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 511
  switch i16 %i.b, label %bb.ed [
    i16 133, label %bb.ec
    i16 132, label %bb.eb
    i16 131, label %bb.ea
    i16 3, label %bb.c
    i16 4, label %bb.d
    i16 5, label %bb.e
    i16 6, label %bb.f
    i16 7, label %bb.g
    i16 8, label %bb.h
    i16 9, label %bb.i
    i16 10, label %bb.j
    i16 11, label %bb.k
    i16 12, label %bb.l
    i16 13, label %bb.m
    i16 14, label %bb.n
    i16 15, label %bb.o
    i16 16, label %bb.p
    i16 17, label %bb.q
    i16 18, label %bb.r
    i16 19, label %bb.s
    i16 20, label %bb.t
    i16 21, label %bb.u
    i16 22, label %bb.v
    i16 23, label %bb.w
    i16 24, label %bb.x
    i16 25, label %bb.y
    i16 26, label %bb.z
    i16 27, label %bb.aa
    i16 28, label %bb.ab
    i16 29, label %bb.ac
    i16 30, label %bb.ad
    i16 31, label %bb.ae
    i16 32, label %bb.af
    i16 33, label %bb.ag
    i16 34, label %bb.ah
    i16 35, label %bb.ai
    i16 36, label %bb.aj
    i16 37, label %bb.ak
    i16 38, label %bb.al
    i16 39, label %bb.am
    i16 40, label %bb.an
    i16 41, label %bb.ao
    i16 42, label %bb.ap
    i16 43, label %bb.aq
    i16 44, label %bb.ar
    i16 45, label %bb.as
    i16 46, label %bb.at
    i16 47, label %bb.au
    i16 48, label %bb.av
    i16 49, label %bb.aw
    i16 50, label %bb.ax
    i16 51, label %bb.ay
    i16 52, label %bb.az
    i16 53, label %bb.ba
    i16 54, label %bb.bb
    i16 55, label %bb.bc
    i16 56, label %bb.bd
    i16 57, label %bb.be
    i16 58, label %bb.bf
    i16 59, label %bb.bg
    i16 60, label %bb.bh
    i16 61, label %bb.bi
    i16 62, label %bb.bj
    i16 63, label %bb.bk
    i16 64, label %bb.bl
    i16 65, label %bb.bm
    i16 66, label %bb.bn
    i16 67, label %bb.bo
    i16 68, label %bb.bp
    i16 69, label %bb.bq
    i16 70, label %bb.br
    i16 71, label %bb.bs
    i16 72, label %bb.bt
    i16 73, label %bb.bu
    i16 74, label %bb.bv
    i16 75, label %bb.bw
    i16 76, label %bb.bx
    i16 77, label %bb.by
end_hunk_2
begin_hunk_3_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformCXXDefaultInitExprEPNS_18CXXDefaultInitExprE:bb.a
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !795, !noalias !5538
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !855, !noalias !5538
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !856

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !795, !noalias !5538
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.b, %bb.a
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ak, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.al, %.loopexit.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.am
  br i1 %.not.i, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #31
  %i.aq = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ar = tail call i64 @_ZN5clang4Sema23BuildCXXDefaultInitExprENS_14SourceLocationEPNS_9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %i.aq, i32 %i.ap, ptr noundef nonnull %.0.i), !inline_history !5536
  br label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.sroa.0.0 = phi i64 [ 1, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ %i.ar, %bb.e ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformCXXDefaultArgExprEPNS_17CXXDefaultArgExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2595 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2065, !noalias !5547 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2416, !noalias !5547 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !2028, !noalias !5547 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !795, !noalias !5548
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !855, !noalias !5548
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !856

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !795, !noalias !5548
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.b, %bb.a
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ak, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.al, %.loopexit.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.am
  br i1 %.not.i, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = load i32, ptr %1, align 8
  %i.aq = and i32 %i.ap, 524288
  %.not21 = icmp eq i32 %i.aq, 0
  br i1 %.not21, label %bb.f, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1514
  %i.at = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.as) ; 2 uses
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit
  %.sroa.0.0 = phi i64 [ %i.at, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ], [ 0, %bb.e ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.av, align 4, !tbaa !795
  %i.aw = and i64 %.sroa.0.0, -2
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 616
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !792
  %i.bd = tail call noundef ptr @_ZN5clang17CXXDefaultArgExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_11ParmVarDeclEPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ba, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %.0.i, ptr noundef %i.ax, ptr noundef %i.bc) #30
  %i.be = ptrtoint ptr %i.bd to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %.sroa.020.1 = phi i64 [ 1, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 1, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ], [ %i.be, %bb.f ]
  ret i64 %.sroa.020.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformCXXConstructExprEPNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 9 uses
  %3 = alloca %"class.llvm::MutableArrayRef", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.llvm::SmallVector.1861", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !2596
  switch i32 %i.c, label %bb.b [
    i32 1, label %bb.c
    i32 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 8
  %i.e = and i16 %i.d, 511
  %.not.i.i.i = icmp eq i16 %i.e, 118
  %5 = select i1 %.not.i.i.i, i64 56, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %5
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1514
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #30
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = load i16, ptr %1, align 8
  %i.j = and i16 %i.i, 511
  %.not.i.i.i39 = icmp eq i16 %i.j, 118
  %spec.select.v.i.i.i40 = select i1 %.not.i.i.i39, i64 48, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1514
  %i.m = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %1, align 8                ; 2 uses
  %i.o = and i32 %i.n, 2097152
  %.not66 = icmp eq i32 %i.o, 0
  br i1 %.not66, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %i.n, 511
  %.not.i.i.i42 = icmp eq i32 %i.p, 118
  %spec.select.v.i.i.i43 = select i1 %.not.i.i.i42, i64 48, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i43
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1514
  %i.s = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.r, i1 noundef zeroext false)
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit.thread

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !788 ; 2 uses
  %i.u = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.u, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 232
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.y = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.x, i64 %.sroa.0.0.copyload.i, i32 0) #30, !inline_history !64
  %i.z = tail call noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.y), !inline_history !64 ; 2 uses
  %.not.i74 = icmp eq ptr %i.z, null
  br i1 %.not.i74, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit.thread, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.z, align 8, !tbaa !788 ; 3 uses
  %i.aa = icmp ult i64 %.sroa.0.0.copyload.i.i, 16
  br i1 %i.aa, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2236 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2065, !noalias !5557 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2416, !noalias !5557 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !2028, !noalias !5557 ; 4 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add i32 %i.ai, -1                       ; 2 uses
  %i.al = ptrtoint ptr %i.ac to i64
  %i.am = mul i64 %i.al, -4658895280553007687     ; 2 uses
  %i.an = lshr i64 %i.am, 31
  %i.ao = xor i64 %i.an, %i.am
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ak, %i.ap                    ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !795, !noalias !5558
  %i.av = and i32 %i.aq, 31
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %i.ay = phi i64 [ %i.be, %bb.j ], [ %i.ar, %bb.i ]
  %.017.i.i.i.i.i = phi i32 [ %i.bd, %bb.j ], [ %i.aq, %bb.i ]
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !855, !noalias !5558
  %i.bb = icmp eq ptr %i.ac, %i.ba
  br i1 %i.bb, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.j, !prof !856

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bc = add nuw i32 %.017.i.i.i.i.i, 1
  %i.bd = and i32 %i.bc, %i.ak                    ; 3 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = lshr i64 %i.be, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !795, !noalias !5558
  %i.bi = and i32 %i.bd, 31
  %i.bj = lshr i32 %i.bh, %i.bi
  %i.bk = trunc i32 %i.bj to i1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.j, %bb.i, %bb.h
  %i.bl = zext i32 %i.ai to i64                   ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.bl
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ai to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.bl, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.az, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.bm, %.loopexit.i.i.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.bn
  br i1 %.not.i, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.k
  %.0.i = phi ptr [ %i.bp, %bb.k ], [ %i.ac, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 5 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bq, ptr %4, align 8, !tbaa !858
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.br, align 8, !tbaa !859
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.bs, align 4, !tbaa !876
  %i.bt = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 6 uses
  %i.bu = load i32, ptr %1, align 8               ; 2 uses
  %i.bv = and i32 %i.bu, 2097152
  %.not67 = icmp eq i32 %i.bv, 0
  %i.bw = trunc i32 %i.bu to i16                  ; 3 uses
  br i1 %.not67, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 4592
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !858
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 4600
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !859
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [792 x i8], ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -792
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !1655
  switch i32 %i.ce, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.n
    i32 3, label %bb.n
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 216
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = and i64 %i.ch, 8192
  %.not.i45 = icmp eq i64 %i.ci, 0
  br i1 %.not.i45, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.bt, i32 noundef 1, ptr noundef null, i32 noundef 4)
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.cj = phi i16 [ %i.bw, %bb.m ], [ %i.bw, %bb.n ], [ %.pre, %bb.o ], [ %i.bw, %bb.l ]
  %.sroa.6.0 = phi i1 [ false, %bb.m ], [ false, %bb.n ], [ true, %bb.o ], [ false, %bb.l ] ; 2 uses
  %i.ck = and i16 %i.cj, 511
  %.not.i.i = icmp eq i16 %i.ck, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i
  %i.cm = load i32, ptr %i.b, align 8, !tbaa !2596
  %i.cn = call noundef zeroext i1 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS4_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.cl, i32 noundef %i.cm, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a)
  br i1 %i.cn, label %bb.p, label %.critedge38

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.q, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.bt), !inline_history !7
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge38:                                      ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.critedge38
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.bt), !inline_history !7
  br label %.critedge

.critedge:                                        ; preds = %.critedge38, %bb.r
  %i.co = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #31 ; 2 uses
  %i.cp = load i32, ptr %1, align 8               ; 3 uses
  %i.cq = and i32 %i.cp, 524288
  %i.cr = icmp ne i32 %i.cq, 0
  %i.cs = load ptr, ptr %4, align 8, !tbaa !858
  %i.ct = load i32, ptr %i.br, align 8, !tbaa !859
  %i.cu = zext i32 %i.ct to i64
  %i.cv = insertelement <4 x i32> poison, i32 %i.cp, i64 0
  %i.cw = shufflevector <4 x i32> %i.cv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cx = and <4 x i32> %i.cw, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.cy = icmp ne <4 x i32> %i.cx, zeroinitializer ; 4 uses
  %i.cz = lshr i32 %i.cp, 24
  %i.da = and i32 %i.cz, 7
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i49 = load i64, ptr %i.db, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = and i64 %i.dd, 2305843009213693952
  %.not.i50 = icmp eq i64 %i.de, 0
  br i1 %.not.i50, label %bb.s, label %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i

_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i: ; preds = %.critedge
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 184
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !872
  br label %bb.s

bb.s:                                             ; preds = %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i, %.critedge
  %.0.i51 = phi ptr [ %.sroa.4.0.copyload.i.i, %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i ], [ %.0.i, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.df, ptr %2, align 8, !tbaa !858
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.dg, align 8, !tbaa !859
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.dh, align 4, !tbaa !876
  %i.di = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.dj = call noundef zeroext i1 @_ZN5clang4Sema23CompleteConstructorCallEPNS_18CXXConstructorDeclENS_8QualTypeEN4llvm15MutableArrayRefIPNS_4ExprEEENS_14SourceLocationERNS4_15SmallVectorImplIS7_EEbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.di, ptr noundef %.0.i51, i64 %.sroa.0.0.copyload.i.i, ptr %i.cs, i64 %i.cu, i32 %i.co, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext false) #30
  br i1 %i.dj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dk = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.dl = load ptr, ptr %2, align 8, !tbaa !858
  store ptr %i.dl, ptr %3, align 8, !tbaa !1736
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dn = load i32, ptr %i.dg, align 8, !tbaa !859
  %i.do = zext i32 %i.dn to i64
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !1737
  %i.dp = extractelement <4 x i1> %i.cy, i64 0
  %i.dq = extractelement <4 x i1> %i.cy, i64 1
  %i.dr = extractelement <4 x i1> %i.cy, i64 2
  %i.ds = extractelement <4 x i1> %i.cy, i64 3
  %i.dt = call i64 @_ZN5clang4Sema21BuildCXXConstructExprENS_14SourceLocationENS_8QualTypeEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.dk, i32 %i.co, i64 %.sroa.0.0.copyload.i.i, ptr noundef nonnull %.0.i, i1 noundef zeroext %i.cr, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %3, i1 noundef zeroext %i.ds, i1 noundef zeroext %i.dr, i1 noundef zeroext %i.dq, i1 noundef zeroext %i.dp, i32 noundef %i.da, i64 %.sroa.0.0.copyload.i49) #30
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.020.0.i = phi i64 [ %i.dt, %bb.t ], [ 1, %bb.s ]
  %i.du = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.df
  br i1 %i.dv, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.du) #30
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.q, %bb.p, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit
  %.sroa.062.0 = phi i64 [ 1, %bb.q ], [ %.sroa.020.0.i, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit ], [ 1, %bb.p ]
  %i.dw = load ptr, ptr %4, align 8, !tbaa !858   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bq
  br i1 %i.dx, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  call void @free(ptr noundef %i.dw) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit.thread

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit.thread: ; preds = %bb.g, %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.sroa.062.2 = phi i64 [ %i.s, %bb.e ], [ %.sroa.062.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformTypeENS_8QualTypeE.exit ], [ 1, %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i64 %.sroa.062.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE31TransformCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2598
  %i.d = tail call noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformTypeWithDeducedTSTEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2236 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2065, !noalias !5567 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2416, !noalias !5567 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2028, !noalias !5567 ; 4 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %i.l, -1                         ; 2 uses
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = mul i64 %i.o, -4658895280553007687       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.n, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !795, !noalias !5568
  %i.y = and i32 %i.t, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.ah, %bb.d ], [ %i.u, %bb.c ]
  %.017.i.i.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.t, %bb.c ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !855, !noalias !5568
  %i.ae = icmp eq ptr %i.f, %i.ad
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.d, !prof !856

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ag = and i32 %i.af, %i.n                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !795, !noalias !5568
  %i.al = and i32 %i.ag, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.ao = zext i32 %i.l to i64                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ao
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.l to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ao, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ac, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ap, %.loopexit.i.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.aq
  br i1 %.not.i, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.e
  %.0.i = phi ptr [ %i.as, %bb.e ], [ %i.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ]
  %.not38 = icmp eq ptr %.0.i, null
  br i1 %.not38, label %bb.v, label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !858
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.au, align 8, !tbaa !859
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.av, align 4, !tbaa !876
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !2596 ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 8
  br i1 %i.ay, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.az = zext i32 %i.ax to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.at, i64 noundef %i.az, i64 noundef 8) #30
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %i.ba = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 5 uses
  %i.bb = load i32, ptr %1, align 8               ; 2 uses
  %i.bc = and i32 %i.bb, 2097152
  %.not48 = icmp eq i32 %i.bc, 0
  %i.bd = trunc i32 %i.bb to i16                  ; 3 uses
  br i1 %.not48, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4592
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !858
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 4600
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !859
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [792 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -792
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1655
  switch i32 %i.bl, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.i
    i32 3, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 216
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = and i64 %i.bo, 8192
  %.not.i39 = icmp eq i64 %i.bp, 0
  br i1 %.not.i39, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ba, i32 noundef 1, ptr noundef null, i32 noundef 4)
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.h, %bb.i, %bb.j
  %i.bq = phi i16 [ %i.bd, %bb.h ], [ %i.bd, %bb.i ], [ %.pre, %bb.j ], [ %i.bd, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %.sroa.4.0 = phi i1 [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ false, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %i.br = and i16 %i.bq, 511
  %.not.i.i = icmp eq i16 %i.br, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i
  %i.bt = load i32, ptr %i.aw, align 8, !tbaa !2596
  %i.bu = call noundef zeroext i1 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS4_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.bs, i32 noundef %i.bt, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.bu, label %bb.q, label %bb.k

bb.k:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.bv = load i32, ptr %1, align 8
  %i.bw = and i32 %i.bv, 6291456
  %or.cond.not = icmp eq i32 %i.bw, 2097152
  br i1 %or.cond.not, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bx = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #31
  %i.by = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.bz = load i32, ptr %i.au, align 8, !tbaa !859 ; 2 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #31
  %i.cc = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 2 uses
  %.not23.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not23.i.i, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.o
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.o ], [ 0, %bb.l ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i.i ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1514 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.cf, align 8, !tbaa !788
  %i.cg = and i64 %.sroa.0.0.copyload.i13.i.i, -16
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load ptr, ptr %i.ch, align 16, !tbaa !791
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 16
  %.not.i.i.i = icmp eq i8 %i.ck, 13
  %i.cl = load i32, ptr %i.cj, align 16
  %i.cm = and i32 %i.cl, 534773760
  %i.cn = icmp samesign ugt i32 %i.cm, 270008320
  %spec.select.i.i.i = select i1 %.not.i.i.i, i1 %i.cn, i1 false
  br i1 %spec.select.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.co = call i64 @_ZN5clang4Sema20CheckPlaceholderExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cc, ptr noundef nonnull %i.ce), !inline_history !62 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = and i64 %i.co, -2
  %i.cr = inttoptr i64 %i.cq to ptr
  store ptr %i.cr, ptr %i.cd, align 8, !tbaa !1514
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i40 = icmp eq i64 %indvars.iv.next.i.i, %i.ca
  br i1 %.not.i.i40, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b.exit, label %.lr.ph.i.i, !llvm.loop !18

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b.exit: ; preds = %bb.o, %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 232 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cu = call noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(23904) %i.ct, i32 noundef 8) #30, !inline_history !62 ; 4 uses
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !1116, !nonnull !97, !align !787
  call void @_ZN5clang12InitListExprC1ERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_b(ptr noundef nonnull align 8 dereferenceable(64) %i.cu, ptr noundef nonnull align 8 dereferenceable(23904) %i.cv, i32 %i.bx, ptr %i.by, i64 %i.ca, i32 %i.cb, i1 noundef zeroext true) #30, !inline_history !62
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 18896
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cx, align 8, !tbaa !788
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.cy, align 8, !tbaa !788
  %.not50 = icmp eq ptr %i.cu, inttoptr (i64 1 to ptr)
  br i1 %.not50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b.exit
  store i32 0, ptr %i.au, align 8, !tbaa !859
  %i.cz = load i32, ptr %i.av, align 4, !tbaa !876
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i: ; preds = %bb.p
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.at, i64 noundef 1, i64 noundef 8) #30
  %.pre8.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !859
  %i.db = zext i32 %.pre8.pre.i.i.i.i to i64
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit: ; preds = %bb.p, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i
  %.pre8.i.i5.i.i = phi i64 [ %i.db, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %bb.p ]
  %i.dc = load ptr, ptr %2, align 8, !tbaa !858
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.pre8.i.i5.i.i
  store ptr %i.cu, ptr %i.dd, align 1
  %.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !859
  %i.de = add i32 %.pre.i.i.i.i, 1
  store i32 %i.de, ptr %i.au, align 8, !tbaa !859
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
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dg = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.dg, ptr %3, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.df, ptr %i.dh, align 8
  %i.di = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.dj = load ptr, ptr %2, align 8, !tbaa !858
  %i.dk = load i32, ptr %i.au, align 8, !tbaa !859
  %i.dl = zext i32 %i.dk to i64
  %i.dm = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #31
  %i.dn = load i32, ptr %1, align 8
  %i.do = and i32 %i.dn, 2097152
  %i.dp = icmp ne i32 %i.do, 0
  %i.dq = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.dr = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %i.dq, ptr noundef nonnull %i.d, i32 %i.di, ptr %i.dj, i64 %i.dl, i32 %i.dm, i1 noundef zeroext %i.dp) #30
  br label %bb.t

bb.t:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.s
  %.sroa.035.3 = phi i64 [ %i.dr, %bb.s ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.ds = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.at
  br i1 %i.dt, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.ds) #30
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
end_hunk_3
begin_hunk_4_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformCXXDefaultInitExprEPNS_18CXXDefaultInitExprE:bb.a
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !795, !noalias !6394
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !855, !noalias !6394
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !856

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !795, !noalias !6394
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.b, %bb.a
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ak, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.al, %.loopexit.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.am
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #31
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2280
  %i.aq = tail call i64 @_ZN5clang4Sema23BuildCXXDefaultInitExprENS_14SourceLocationEPNS_9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %i.ap, ptr noundef nonnull %.0.i), !inline_history !6392
  br label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.0 = phi i64 [ %i.aq, %bb.e ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformCXXDefaultArgExprEPNS_17CXXDefaultArgExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2595 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2065, !noalias !6403 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2416, !noalias !6403 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !2028, !noalias !6403 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !795, !noalias !6404
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !855, !noalias !6404
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !856

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !795, !noalias !6404
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.b, %bb.a
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ak, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.al, %.loopexit.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.am
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = load i32, ptr %1, align 8
  %i.aq = and i32 %i.ap, 524288
  %.not18 = icmp eq i32 %i.aq, 0
  br i1 %.not18, label %bb.f, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1514
  %i.at = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.as) ; 2 uses
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %i.at, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ], [ 0, %bb.e ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.av, align 4, !tbaa !795
  %i.aw = and i64 %.sroa.0.0, -2
  %i.ax = inttoptr i64 %i.aw to ptr
  %.val = load ptr, ptr %0, align 8, !tbaa !2280  ; 2 uses
  %i.ay = getelementptr i8, ptr %.val, i64 232
  %.val.val = load ptr, ptr %i.ay, align 8, !tbaa !1116
  %i.az = getelementptr i8, ptr %.val, i64 616
  %.val.val15 = load ptr, ptr %i.az, align 8, !tbaa !792
  %i.ba = tail call noundef ptr @_ZN5clang17CXXDefaultArgExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_11ParmVarDeclEPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(23904) %.val.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %.0.i, ptr noundef %i.ax, ptr noundef %.val.val15) #30
  %i.bb = ptrtoint ptr %i.ba to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %.1 = phi i64 [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ %i.bb, %bb.f ], [ 1, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformCXXConstructExprEPNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 9 uses
  %3 = alloca %"class.llvm::MutableArrayRef", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.llvm::SmallVector.1861", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !2596
  switch i32 %i.c, label %bb.b [
    i32 1, label %bb.c
    i32 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 8
  %i.e = and i16 %i.d, 511
  %.not.i.i.i = icmp eq i16 %i.e, 118
  %5 = select i1 %.not.i.i.i, i64 56, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %5
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1514
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #30
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = load i16, ptr %1, align 8
  %i.j = and i16 %i.i, 511
  %.not.i.i.i42 = icmp eq i16 %i.j, 118
  %spec.select.v.i.i.i43 = select i1 %.not.i.i.i42, i64 48, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i43
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1514
  %i.m = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %1, align 8                ; 2 uses
  %i.o = and i32 %i.n, 2097152
  %.not59 = icmp eq i32 %i.o, 0
  br i1 %.not59, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %i.n, 511
  %.not.i.i.i45 = icmp eq i32 %i.p, 118
  %spec.select.v.i.i.i46 = select i1 %.not.i.i.i45, i64 48, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i46
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1514
  %i.s = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.r, i1 noundef zeroext false)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !788 ; 2 uses
  %i.u = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.u, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i67 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i67, i64 232
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.x = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.w, i64 %.sroa.0.0.copyload.i, i32 0) #30, !inline_history !73
  %i.y = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.x), !inline_history !73 ; 2 uses
  %.not.i68 = icmp eq ptr %i.y, null
  br i1 %.not.i68, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8, !tbaa !788 ; 3 uses
  %i.z = icmp ult i64 %.sroa.0.0.copyload.i.i, 16
  br i1 %i.z, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2236 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2065, !noalias !6413 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2416, !noalias !6413 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !2028, !noalias !6413 ; 4 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i32 %i.ah, -1                       ; 2 uses
  %i.ak = ptrtoint ptr %i.ab to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.aj, %i.ao                    ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !795, !noalias !6414
  %i.au = and i32 %i.ap, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %i.ax = phi i64 [ %i.bd, %bb.j ], [ %i.aq, %bb.i ]
  %.017.i.i.i.i.i = phi i32 [ %i.bc, %bb.j ], [ %i.ap, %bb.i ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !855, !noalias !6414
  %i.ba = icmp eq ptr %i.ab, %i.az
  br i1 %i.ba, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.j, !prof !856

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = add nuw i32 %.017.i.i.i.i.i, 1
  %i.bc = and i32 %i.bb, %i.aj                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !795, !noalias !6414
  %i.bh = and i32 %i.bc, 31
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = trunc i32 %i.bi to i1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.j, %bb.i, %bb.h
  %i.bk = zext i32 %i.ah to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.bk
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ah to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.bk, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ay, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.bl, %.loopexit.i.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.bm
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.k
  %.0.i = phi ptr [ %i.bo, %bb.k ], [ %i.ab, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 5 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bp, ptr %4, align 8, !tbaa !858
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !859
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.br, align 4, !tbaa !876
  %.val = load ptr, ptr %0, align 8, !tbaa !2280  ; 5 uses
  %i.bs = load i32, ptr %1, align 8               ; 2 uses
  %i.bt = and i32 %i.bs, 2097152
  %.not60 = icmp eq i32 %i.bt, 0
  %i.bu = trunc i32 %i.bs to i16                  ; 3 uses
  br i1 %.not60, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !858
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !859
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [792 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -792
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1655
  switch i32 %i.cc, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.n
    i32 3, label %bb.n
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = and i64 %i.cf, 8192
  %.not.i48 = icmp eq i64 %i.cg, 0
  br i1 %.not.i48, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4)
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.ch = phi i16 [ %i.bu, %bb.m ], [ %i.bu, %bb.n ], [ %.pre, %bb.o ], [ %i.bu, %bb.l ]
  %.sroa.4.0 = phi i1 [ false, %bb.m ], [ false, %bb.n ], [ true, %bb.o ], [ false, %bb.l ]
  %i.ci = and i16 %i.ch, 511
  %.not.i.i = icmp eq i16 %i.ci, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i
  %i.ck = load i32, ptr %i.b, align 8, !tbaa !2596
  %i.cl = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.cj, i32 noundef %i.ck, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a)
  br i1 %.sroa.4.0, label %bb.p, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val), !inline_history !7
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.p
  br i1 %i.cl, label %bb.u, label %.critedge

.critedge:                                        ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %i.cm = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #31 ; 2 uses
  %i.cn = load i32, ptr %1, align 8               ; 3 uses
  %i.co = and i32 %i.cn, 524288
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = load ptr, ptr %4, align 8, !tbaa !858
  %i.cr = load i32, ptr %i.bq, align 8, !tbaa !859
  %i.cs = zext i32 %i.cr to i64
  %i.ct = insertelement <4 x i32> poison, i32 %i.cn, i64 0
  %i.cu = shufflevector <4 x i32> %i.ct, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cv = and <4 x i32> %i.cu, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.cw = icmp ne <4 x i32> %i.cv, zeroinitializer ; 4 uses
  %i.cx = lshr i32 %i.cn, 24
  %i.cy = and i32 %i.cx, 7
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i49 = load i64, ptr %i.cz, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = and i64 %i.db, 2305843009213693952
  %.not.i50 = icmp eq i64 %i.dc, 0
  br i1 %.not.i50, label %bb.q, label %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i

_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i: ; preds = %.critedge
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 184
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !872
  br label %bb.q

bb.q:                                             ; preds = %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i, %.critedge
  %.0.i51 = phi ptr [ %.sroa.4.0.copyload.i.i, %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i ], [ %.0.i, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.dd, ptr %2, align 8, !tbaa !858
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.de, align 8, !tbaa !859
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.df, align 4, !tbaa !876
  %.val21.i = load ptr, ptr %0, align 8, !tbaa !2280
  %i.dg = call noundef zeroext i1 @_ZN5clang4Sema23CompleteConstructorCallEPNS_18CXXConstructorDeclENS_8QualTypeEN4llvm15MutableArrayRefIPNS_4ExprEEENS_14SourceLocationERNS4_15SmallVectorImplIS7_EEbb(ptr noundef nonnull align 8 dereferenceable(18640) %.val21.i, ptr noundef %.0.i51, i64 %.sroa.0.0.copyload.i.i, ptr %i.cq, i64 %i.cs, i32 %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext false) #30
  br i1 %i.dg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2280
  %i.dh = load ptr, ptr %2, align 8, !tbaa !858
  store ptr %i.dh, ptr %3, align 8, !tbaa !1736
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dj = load i32, ptr %i.de, align 8, !tbaa !859
  %i.dk = zext i32 %i.dj to i64
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !1737
  %i.dl = extractelement <4 x i1> %i.cw, i64 0
  %i.dm = extractelement <4 x i1> %i.cw, i64 1
  %i.dn = extractelement <4 x i1> %i.cw, i64 2
  %i.do = extractelement <4 x i1> %i.cw, i64 3
  %i.dp = call i64 @_ZN5clang4Sema21BuildCXXConstructExprENS_14SourceLocationENS_8QualTypeEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %i.cm, i64 %.sroa.0.0.copyload.i.i, ptr noundef nonnull %.0.i, i1 noundef zeroext %i.cp, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %3, i1 noundef zeroext %i.do, i1 noundef zeroext %i.dn, i1 noundef zeroext %i.dm, i1 noundef zeroext %i.dl, i32 noundef %i.cy, i64 %.sroa.0.0.copyload.i49) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.020.0.i = phi i64 [ %i.dp, %bb.r ], [ 1, %bb.q ]
  %i.dq = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dd
  br i1 %i.dr, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.dq) #30
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.u

bb.u:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit
  %.1 = phi i64 [ %.sroa.020.0.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.ds = load ptr, ptr %4, align 8, !tbaa !858   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.bp
  br i1 %i.dt, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.ds) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread: ; preds = %bb.g, %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.4 = phi i64 [ %i.s, %bb.e ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit ], [ %.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i64 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE31TransformCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %2 = alloca %"class.llvm::SmallVector.1861", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2598
  %i.d = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformTypeWithDeducedTSTEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2236 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2065, !noalias !6423 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2416, !noalias !6423 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2028, !noalias !6423 ; 4 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %i.l, -1                         ; 2 uses
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = mul i64 %i.o, -4658895280553007687       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.n, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !795, !noalias !6424
  %i.y = and i32 %i.t, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.ah, %bb.d ], [ %i.u, %bb.c ]
  %.017.i.i.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.t, %bb.c ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !855, !noalias !6424
  %i.ae = icmp eq ptr %i.f, %i.ad
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.d, !prof !856

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ag = and i32 %i.af, %i.n                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !795, !noalias !6424
  %i.al = and i32 %i.ag, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.ao = zext i32 %i.l to i64                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ao
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.l to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ao, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ac, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ap, %.loopexit.i.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.aq
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.e
  %.0.i = phi ptr [ %i.as, %bb.e ], [ %i.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ]
  %.not38 = icmp eq ptr %.0.i, null
  br i1 %.not38, label %bb.v, label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !858
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.au, align 8, !tbaa !859
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.av, align 4, !tbaa !876
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !2596 ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 8
  br i1 %i.ay, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.az = zext i32 %i.ax to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.at, i64 noundef %i.az, i64 noundef 8) #30
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %.val = load ptr, ptr %0, align 8, !tbaa !2280  ; 5 uses
  %i.ba = load i32, ptr %1, align 8               ; 2 uses
  %i.bb = and i32 %i.ba, 2097152
  %.not52 = icmp eq i32 %i.bb, 0
  %i.bc = trunc i32 %i.ba to i16                  ; 3 uses
  br i1 %.not52, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !858
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !859
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [792 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -792
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !1655
  switch i32 %i.bk, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.i
    i32 3, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 8192
  %.not.i40 = icmp eq i64 %i.bo, 0
  br i1 %.not.i40, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4)
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.h, %bb.i, %bb.j
  %i.bp = phi i16 [ %i.bc, %bb.h ], [ %i.bc, %bb.i ], [ %.pre, %bb.j ], [ %i.bc, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %.sroa.4.0 = phi i1 [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ false, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %i.bq = and i16 %i.bp, 511
  %.not.i.i = icmp eq i16 %i.bq, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i
  %i.bs = load i32, ptr %i.aw, align 8, !tbaa !2596
  %i.bt = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.br, i32 noundef %i.bs, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.bt, label %bb.q, label %bb.k

bb.k:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.bu = load i32, ptr %1, align 8
  %i.bv = and i32 %i.bu, 6291456
  %or.cond.not = icmp eq i32 %i.bv, 2097152
  br i1 %or.cond.not, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bw = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #31
  %i.bx = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.by = load i32, ptr %i.au, align 8, !tbaa !859 ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #31
  %i.cb = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787 ; 2 uses
  %.not23.i = icmp eq i32 %i.by, 0
  br i1 %.not23.i, label %_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %bb.l ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1514 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.0.0.copyload.i13.i = load i64, ptr %i.ce, align 8, !tbaa !788
  %i.cf = and i64 %.sroa.0.0.copyload.i13.i, -16
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !791
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 16
  %.not.i.i61 = icmp eq i8 %i.cj, 13
  %i.ck = load i32, ptr %i.ci, align 16
  %i.cl = and i32 %i.ck, 534773760
  %i.cm = icmp samesign ugt i32 %i.cl, 270008320
  %spec.select.i.i62 = select i1 %.not.i.i61, i1 %i.cm, i1 false
  br i1 %spec.select.i.i62, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph.i
  %i.cn = call i64 @_ZN5clang4Sema20CheckPlaceholderExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cb, ptr noundef nonnull %i.cd), !inline_history !75 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = and i64 %i.cn, -2
  %i.cq = inttoptr i64 %i.cp to ptr
  store ptr %i.cq, ptr %i.cc, align 8, !tbaa !1514
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i63 = icmp eq i64 %indvars.iv.next.i, %i.bz
  br i1 %.not.i63, label %_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b.exit, label %.lr.ph.i, !llvm.loop !18

_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b.exit: ; preds = %bb.o, %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 232 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ct = call noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(23904) %i.cs, i32 noundef 8) #30, !inline_history !75 ; 4 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !1116, !nonnull !97, !align !787
  call void @_ZN5clang12InitListExprC1ERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_b(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr noundef nonnull align 8 dereferenceable(23904) %i.cu, i32 %i.bw, ptr %i.bx, i64 %i.bz, i32 %i.ca, i1 noundef zeroext true) #30, !inline_history !75
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 18896
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cw, align 8, !tbaa !788
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.cx, align 8, !tbaa !788
  %.not54 = icmp eq ptr %i.ct, inttoptr (i64 1 to ptr)
  br i1 %.not54, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b.exit
  store i32 0, ptr %i.au, align 8, !tbaa !859
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

bb.q:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit, %_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b.exit, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.k
  %cond = phi i1 [ true, %bb.k ], [ false, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ false, %_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b.exit ], [ true, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit ]
  br i1 %.sroa.4.0, label %bb.r, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val), !inline_history !7
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
  %.val39 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.dp = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, ptr noundef nonnull %i.d, i32 %i.dh, ptr %i.di, i64 %i.dk, i32 %i.dl, i1 noundef zeroext %i.do) #30
  br label %bb.t

bb.t:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.s
  %.sroa.035.3 = phi i64 [ %i.dp, %bb.s ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.dq = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.at
  br i1 %i.dr, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.dq) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.v

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.035.5 = phi i64 [ 1, %bb.a ], [ %.sroa.035.3, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.035.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformCXXBoolLiteralExprEPNS_18CXXBoolLiteralExprE(ptr noundef %0) unnamed_addr #24 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE29TransformCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2599
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2602 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2197
  %i.g = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #31
  tail call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i32 %i.g, ptr noundef nonnull %i.c, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2197
  %i.j = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i)
  ret i64 %i.j
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE18TransformBlockExprEPNS_9BlockExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.2069", align 8 ; 5 uses
  %3 = alloca %"class.std::unique_ptr.2069", align 8 ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.2638", align 8 ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.499", align 8 ; 9 uses
  %6 = alloca %"class.clang::Sema::ExtParameterInfoBuilder", align 8 ; 12 uses
  %7 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2092 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.d = tail call i32 @_ZNK5clang9BlockExpr16getCaretLocationEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #30
  tail call void @_ZN5clang4Sema15ActOnBlockStartENS_14SourceLocationEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.c, i32 %i.d, ptr noundef null)
  %i.e = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.f = tail call noundef ptr @_ZN5clang4Sema11getCurBlockEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.e) #30 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1560 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2016
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 8192
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, -8193
  %i.o = or disjoint i16 %i.n, %i.k
  store i16 %i.o, ptr %i.l, align 8
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !2016
  %i.q = load i16, ptr %i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE18TransformConditionENS_14SourceLocationEPNS_7VarDeclEPNS_4ExprENS_4Sema13ConditionKindE:bb.a
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !854

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %bb.e
  %i.x = phi i64 [ %i.ad, %bb.e ], [ %i.q, %bb.d ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.e ], [ %i.p, %bb.d ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !855, !noalias !6775
  %i.aa = icmp eq ptr %3, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i, label %bb.e, !prof !856

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !795, !noalias !6775
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !857

.loopexit.i.i.i.i:                                ; preds = %bb.e, %bb.d, %bb.c
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i ], [ %i.ak, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i ], [ %i.al, %.loopexit.i.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi.i.i
  %.not.i.i = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.am
  br i1 %.not.i.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE19TransformDefinitionENS_14SourceLocationEPNS_4DeclE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE19TransformDefinitionENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE19TransformDefinitionENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i, %bb.f
  %.0.i.i = phi ptr [ %i.ao, %bb.f ], [ %3, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i ] ; 2 uses
  %.not17 = icmp eq ptr %.0.i.i, null
  br i1 %.not17, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE19TransformDefinitionENS_14SourceLocationEPNS_4DeclE.exit
  store ptr null, ptr %0, align 8, !tbaa !2360, !alias.scope !6776
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ap, align 8, !tbaa !1532, !alias.scope !6776
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.aq, align 8, !tbaa !2361, !alias.scope !6776
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.ar, align 2, !tbaa !2208, !alias.scope !6776
  br label %bb.n

bb.h:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE19TransformDefinitionENS_14SourceLocationEPNS_4DeclE.exit
  %.val18 = load ptr, ptr %1, align 8, !tbaa !2280
  tail call void @_ZN5clang4Sema22ActOnConditionVariableEPNS_4DeclENS_14SourceLocationENS0_13ConditionKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::Sema::ConditionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18640) %.val18, ptr noundef nonnull %.0.i.i, i32 %2, i32 noundef %5) #30
  br label %bb.n

bb.i:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS1_27ExpressionEvaluationContextEPNS_4DeclENS1_33ExpressionEvaluationContextRecord14ExpressionKindEb.exit
  %.not16 = icmp eq ptr %4, null
  br i1 %.not16, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %4) ; 2 uses
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %0, align 8, !tbaa !2360, !alias.scope !6777
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.au, align 8, !tbaa !1532, !alias.scope !6777
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.av, align 8, !tbaa !2361, !alias.scope !6777
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.aw, align 2, !tbaa !2208, !alias.scope !6777
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %.val = load ptr, ptr %1, align 8, !tbaa !2280
  %i.ax = and i64 %i.as, -2
  %i.ay = inttoptr i64 %i.ax to ptr
  tail call void @_ZN5clang4Sema14ActOnConditionEPNS_5ScopeENS_14SourceLocationEPNS_4ExprENS0_13ConditionKindEb(ptr dead_on_unwind nonnull writable sret(%"class.clang::Sema::ConditionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr poison, i32 %2, ptr noundef %i.ay, i32 noundef %5, i1 noundef zeroext true)
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.az, align 2, !tbaa !2208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %0, i8 0, i64 17, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.g, %bb.h, %bb.m
  br i1 %i.b, label %bb.o, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.a), !inline_history !7
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.n, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.1861", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %.not129 = icmp eq ptr %1, null
  br i1 %.not129, label %.loopexit, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.a, %tailrecurse.backedge
  %.tr117130 = phi ptr [ %.tr117.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 3 uses
  %i.b = load i16, ptr %.tr117130, align 8        ; 2 uses
  %i.c = and i16 %i.b, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.c, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph132
  %i.d = getelementptr inbounds nuw i8, ptr %.tr117130, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2234 ; 2 uses
  %.pre = load i16, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph132
  %i.f = phi i16 [ %i.b, %.lr.ph132 ], [ %.pre, %bb.b ] ; 2 uses
  %.097 = phi ptr [ %.tr117130, %.lr.ph132 ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = and i16 %i.f, 511
  %.not105 = icmp eq i16 %i.g, 129
  br i1 %.not105, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.097, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1587
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2167 ; 2 uses
  %.pre142 = load i16, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i16 [ %i.f, %bb.c ], [ %.pre142, %bb.d ]
  %.1 = phi ptr [ %.097, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = and i16 %i.l, 511
  %.not107 = icmp eq i16 %i.m, 50
  br i1 %.not107, label %bb.f, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 3 uses
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.h:                                             ; preds = %bb.f
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2169
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit: ; preds = %bb.h, %bb.g, %bb.e
  %.2 = phi ptr [ %.1, %bb.e ], [ %i.q, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %i.v = load i16, ptr %.2, align 8               ; 2 uses
  %i.w = and i16 %i.v, 511
  %.not109127 = icmp eq i16 %i.w, 120
  br i1 %.not109127, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit, %.lr.ph
  %.3128 = phi ptr [ %i.y, %.lr.ph ], [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.3128, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2197 ; 3 uses
  %i.z = load i16, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i16 %i.z, 511
  %.not109 = icmp eq i16 %i.aa, 120
  br i1 %.not109, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit
  %i.ab = phi i16 [ %i.v, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.z, %.lr.ph ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.ac = and i16 %i.ab, 511
  %.not111 = icmp eq i16 %i.ac, 81
  br i1 %.not111, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ad = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.3.lcssa) #30 ; 2 uses
  %.pre143 = load i16, ptr %i.ad, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ae = phi i16 [ %i.ab, %._crit_edge ], [ %.pre143, %bb.i ] ; 2 uses
  %.5 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %i.ad, %bb.i ] ; 13 uses
  %i.af = and i16 %i.ae, 511                      ; 3 uses
  %i.ag = icmp eq i16 %i.af, 101
  br i1 %i.ag, label %tailrecurse.backedge, label %bb.k

tailrecurse.backedge:                             ; preds = %bb.j, %bb.u
  %.sink = phi i64 [ %spec.select.v.i.i.i, %bb.u ], [ 16, %bb.j ]
  %4 = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink
  %.tr117.be = load ptr, ptr %4, align 8, !tbaa !100 ; 2 uses
  %.not = icmp eq ptr %.tr117.be, null
  br i1 %.not, label %.loopexit, label %.lr.ph132

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i16 %i.af, -119
  %spec.select.i.i.i.i.i.i.i.i59 = icmp ult i16 %i.ah, -2 ; 2 uses
  br i1 %2, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %spec.select.i.i.i.i.i.i.i.i59, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i32, ptr %.5, align 8              ; 2 uses
  %i.aj = and i32 %i.ai, 2097152
  %.not112 = icmp eq i32 %i.aj, 0
  %i.ak = trunc i32 %i.ai to i16
  br i1 %.not112, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.am = phi i16 [ %i.ak, %bb.m ], [ %i.ae, %bb.k ]
  switch i16 %i.af, label %bb.r [
    i16 102, label %bb.p
    i16 56, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.an = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.5) #31 ; 2 uses
  %.sroa.075.0.extract.trunc = trunc i64 %i.an to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.an, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.val53 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ao = getelementptr i8, ptr %.val53, i64 232
  %.val53.val = load ptr, ptr %i.ao, align 8, !tbaa !1116
  %i.ap = tail call noundef ptr @_ZN5clang13ParenListExpr6CreateERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_(ptr noundef nonnull align 8 dereferenceable(23904) %.val53.val, i32 %.sroa.075.0.extract.trunc, ptr null, i64 0, i32 %.sroa.4.0.extract.trunc) #30
  %i.aq = ptrtoint ptr %i.ap to i64
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %.val52 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ar = getelementptr i8, ptr %.val52, i64 232
  %.val52.val = load ptr, ptr %i.ar, align 8, !tbaa !1116
  %i.as = tail call noundef ptr @_ZN5clang13ParenListExpr6CreateERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_(ptr noundef nonnull align 8 dereferenceable(23904) %.val52.val, i32 0, ptr null, i64 0, i32 0) #30
  %i.at = ptrtoint ptr %i.as to i64
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %i.au = and i16 %i.am, 511
  %i.av = icmp eq i16 %i.au, 118
  %or.cond = or i1 %spec.select.i.i.i.i.i.i.i.i59, %i.av
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.ax = load i32, ptr %.5, align 8              ; 3 uses
  %i.ay = and i32 %i.ax, 4194304
  %.not115 = icmp eq i32 %i.ay, 0
  br i1 %.not115, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = and i32 %i.ax, 511
  %.not.i.i.i = icmp eq i32 %i.az, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  br label %tailrecurse.backedge

bb.v:                                             ; preds = %bb.t
  %.val50 = load ptr, ptr %0, align 8, !tbaa !2280 ; 8 uses
  %i.ba = and i32 %i.ax, 2097152
  %.not156 = icmp eq i32 %i.ba, 0
  br i1 %.not156, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %.val50, i64 4592
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !858
  %i.bd = getelementptr inbounds nuw i8, ptr %.val50, i64 4600
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !859
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [792 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -792
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1655
  switch i32 %i.bi, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.x
    i32 3, label %bb.x
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %.val50, i64 216
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = and i64 %i.bl, 8192
  %.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val50, i32 noundef 1, ptr noundef null, i32 noundef 4)
  %.val49.pre = load ptr, ptr %0, align 8, !tbaa !2280
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.val49 = phi ptr [ %.val50, %bb.w ], [ %.val50, %bb.x ], [ %.val49.pre, %bb.y ], [ %.val50, %bb.v ] ; 2 uses
  %.sroa.4.0 = phi i1 [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ false, %bb.v ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.val49, i64 4592
  %i.bo = getelementptr inbounds nuw i8, ptr %.val49, i64 4600
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !859
  %i.bq = zext i32 %i.bp to i64
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !858
  %i.bs = getelementptr [792 x i8], ptr %i.br, i64 %i.bq ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -831
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !2060, !range !96, !noundef !97
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 -39
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !2060
  %i.bw = getelementptr i8, ptr %i.bs, i64 -829
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !2054, !range !96, !noundef !97
  %i.by = getelementptr inbounds i8, ptr %i.bs, i64 -37
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !2054
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bz, ptr %3, align 8, !tbaa !858
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.ca, align 8, !tbaa !859
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.cb, align 4, !tbaa !876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !840
  %i.cc = load i16, ptr %.5, align 8
  %i.cd = and i16 %i.cc, 511
  %.not.i.i = icmp eq i16 %i.cd, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %.5, i64 %spec.select.v.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !2596
  %i.ch = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ce, i32 noundef %i.cg, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  br i1 %i.ch, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.ci = load i32, ptr %.5, align 8
  %i.cj = and i32 %i.ci, 2097152
  %.not116 = icmp eq i32 %i.cj, 0
  br i1 %.not116, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #31
  %i.cl = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.cm = load i32, ptr %i.ca, align 8, !tbaa !859 ; 2 uses
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = call i32 @_ZNK5clang16CXXConstructExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #31
  %i.cp = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787 ; 2 uses
  %.not23.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not23.i.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES4_b.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %bb.ad
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ad ], [ 0, %bb.aa ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i.i ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1514 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.cs, align 8, !tbaa !788
  %i.ct = and i64 %.sroa.0.0.copyload.i13.i.i, -16
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load ptr, ptr %i.cu, align 16, !tbaa !791
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 16
  %.not.i.i.i153 = icmp eq i8 %i.cx, 13
  %i.cy = load i32, ptr %i.cw, align 16
  %i.cz = and i32 %i.cy, 534773760
  %i.da = icmp samesign ugt i32 %i.cz, 270008320
  %spec.select.i.i.i154 = select i1 %.not.i.i.i153, i1 %i.da, i1 false
  br i1 %spec.select.i.i.i154, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.db = call i64 @_ZN5clang4Sema20CheckPlaceholderExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cp, ptr noundef nonnull %i.cr), !inline_history !6778 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dd = and i64 %i.db, -2
  %i.de = inttoptr i64 %i.dd to ptr
  store ptr %i.de, ptr %i.cq, align 8, !tbaa !1514
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i155 = icmp eq i64 %indvars.iv.next.i.i, %i.cn
  br i1 %.not.i.i155, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES4_b.exit, label %.lr.ph.i.i, !llvm.loop !18

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES4_b.exit: ; preds = %bb.ad, %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 232 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.dh = call noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(23904) %i.dg, i32 noundef 8) #30, !inline_history !6778 ; 3 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !1116, !nonnull !97, !align !787
  call void @_ZN5clang12InitListExprC1ERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_b(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, ptr noundef nonnull align 8 dereferenceable(23904) %i.di, i32 %i.ck, ptr %i.cl, i64 %i.cn, i32 %i.co, i1 noundef zeroext true) #30, !inline_history !6778
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 18896
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dk, align 8, !tbaa !788
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.dl, align 8, !tbaa !788
  %i.dm = ptrtoint ptr %i.dh to i64
  br label %bb.ag

bb.ae:                                            ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %.5, i64 24
  %.sroa.0.0.copyload.i64 = load i64, ptr %i.dn, align 8, !tbaa !795 ; 2 uses
  %.sroa.067.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i64 to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i64, 32 ; 2 uses
  %i.do = icmp eq i32 %.sroa.067.0.extract.trunc, 0
  %i.dp = icmp eq i64 %.sroa.5.0.extract.shift, 0
  %.not2.i = or i1 %i.do, %i.dp
  br i1 %.not2.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.dq = load ptr, ptr %3, align 8, !tbaa !858
  %i.dr = load i32, ptr %i.ca, align 8, !tbaa !859
  %i.ds = zext i32 %i.dr to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.dt = getelementptr i8, ptr %.val51, i64 232
  %.val51.val = load ptr, ptr %i.dt, align 8, !tbaa !1116
  %i.du = call noundef ptr @_ZN5clang13ParenListExpr6CreateERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_(ptr noundef nonnull align 8 dereferenceable(23904) %.val51.val, i32 %.sroa.067.0.extract.trunc, ptr %i.dq, i64 %i.ds, i32 %.sroa.5.0.extract.trunc) #30
  %i.dv = ptrtoint ptr %i.du to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES4_b.exit
  %.sroa.096.1 = phi i64 [ 1, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ %i.dm, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE15RebuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES4_b.exit ], [ %i.dv, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.dw = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bz
  br i1 %i.dx, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.dw) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.sroa.4.0, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val50), !inline_history !7
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.ai, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.a, %bb.n, %bb.q, %bb.s, %bb.p
  %.sroa.096.3 = phi i64 [ %i.al, %bb.n ], [ %i.aq, %bb.p ], [ %i.at, %bb.q ], [ %i.aw, %bb.s ], [ %.sroa.096.1, %bb.ai ], [ 0, %bb.a ], [ %.sroa.096.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 0, %tailrecurse.backedge ]
  ret i64 %.sroa.096.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.2597", align 8 ; 8 uses
  %.not141 = icmp eq i32 %2, 0
  br i1 %.not141, label %.critedge88, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp ne ptr %5, null                     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.g = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1514 ; 4 uses
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %bb.e, label %.critedge88

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %5, align 1, !tbaa !840
  br label %.critedge88

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1514 ; 3 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  %.not140 = icmp eq i16 %i.n, 22
  br i1 %.not140, label %bb.g, label %.thread136

.thread:                                          ; preds = %bb.b
  %i.o = load i16, ptr %i.i, align 8
  %i.p = and i16 %i.o, 511
  %.not140156 = icmp eq i16 %i.p, 22
  br i1 %.not140156, label %bb.g, label %.thread136.thread

bb.g:                                             ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.i, %.thread ], [ %i.l, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2475 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.d, ptr %6, align 8, !tbaa !858
  store i32 0, ptr %i.e, align 8, !tbaa !859
  store i32 2, ptr %i.f, align 4, !tbaa !876
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksEPNS_4ExprERN4llvm15SmallVectorImplISt4pairINS3_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6) #30
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !2476
  %.val89 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.v = getelementptr inbounds nuw i8, ptr %.val89, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.v, align 4, !tbaa !795
  store i32 0, ptr %i.v, align 4, !tbaa !795
  %i.w = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.s) ; 2 uses
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = and i64 %i.w, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %.sroa.0.0.copyload.i94 = load i32, ptr %i.y, align 8, !tbaa !795
  %.val93 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ab = call i64 @_ZN5clang4Sema18CheckPackExpansionEPNS_4ExprENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val93, ptr noundef %i.aa, i32 %.sroa.0.0.copyload.i94, i32 %i.u) #30 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.a, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %5, align 1, !tbaa !840
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = and i64 %i.ab, -2
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load i32, ptr %i.b, align 8, !tbaa !859 ; 2 uses
end_hunk_5
