Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplateInstantiate?download=true
inline.NumInlined: 46814
inline.NumDeleted: 15846
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE23TransformCStyleCastExprEPNS_14CStyleCastExprE:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %bb.a
  %.sroa.016.1 = phi i64 [ 1, %bb.a ], [ %i.r, %bb.h ], [ %i.w, %bb.i ], [ 1, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret i64 %.sroa.016.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE27TransformBuiltinBitCastExprEPNS_18BuiltinBitCastExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2077
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2078 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 511
  switch i16 %i.g, label %bb.e [
    i16 122, label %bb.d
    i16 77, label %bb.d
    i16 20, label %bb.d
    i16 24, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.h = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.e), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %i.e to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.d, %bb.e
  %.sroa.011.0 = phi i64 [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 2 uses
  %i.j = icmp eq i64 %.sroa.011.0, 1
  br i1 %i.j, label %bb.f, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %bb.b, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.011.013 = phi i64 [ %.sroa.011.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 8, !tbaa !870
  %i.l = and i64 %.sroa.011.013, -2
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.n, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.o = tail call i64 @_ZN5clang4Sema23BuildBuiltinBitCastExprENS_14SourceLocationEPNS_14TypeSourceInfoEPNS_4ExprES1_(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, ptr noundef %i.m, i32 %.sroa.0.0.copyload.i9) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %bb.a
  %.sroa.08.1 = phi i64 [ 1, %bb.a ], [ %i.o, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread ], [ 1, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret i64 %.sroa.08.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE17TransformCallExprEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.2241", align 8 ; 9 uses
  %3 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1657 ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 511
  switch i16 %i.e, label %bb.d [
    i16 122, label %bb.c
    i16 77, label %bb.c
    i16 20, label %bb.c
    i16 24, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.f = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.c), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.c to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.c, %bb.d
  %.sroa.028.0 = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp eq i64 %.sroa.028.0, 1
  br i1 %i.h, label %bb.k, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %bb.a, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.028.030 = phi i64 [ %.sroa.028.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.j, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.k, align 4, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i32, ptr %1, align 8
  %i.n = lshr i32 %i.m, 19
  %i.o = and i32 %i.n, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !2086
  %i.t = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE14TransformExprsEPKPS5_jbRN4llvm15SmallVectorImplISD_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.q, i32 noundef %i.s, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.t, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %.val = load ptr, ptr %0, align 8, !tbaa !1783  ; 3 uses
  %i.u = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.u, align 4, !tbaa !1084
  %.not = icmp eq i32 %.val.val, 0
  %i.v = and i64 %.sroa.028.030, -2
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  br i1 %.not, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !1657
  %i.y = icmp ne ptr %i.x, %i.w
  %i.z = load i8, ptr %i.a, align 1, !range !70
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %or.cond, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef nonnull %1) #26
  br label %bb.i

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.ac = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #29
  %.sroa.023.0.extract.trunc = trunc i64 %i.ac to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(18640) %.val) #26
  %i.ad = load i32, ptr %1, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 2097152
  %.not31 = icmp eq i32 %i.ae, 0
  %.val18.pre = load ptr, ptr %0, align 8, !tbaa !1783 ; 4 uses
  br i1 %.not31, label %bb.h, label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit

_ZNK5clang8CallExpr13getFPFeaturesEv.exit:        ; preds = %._crit_edge
  %i.af = lshr i32 %i.ad, 19
  %i.ag = and i32 %i.af, 1
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !2086
  %i.ai = add nuw nsw i32 %i.ag, 1
  %i.aj = add i32 %i.ai, %i.ah
  %i.ak = shl i32 %i.aj, 3
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.am, align 4, !tbaa !870 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.an = getelementptr inbounds nuw i8, ptr %.val18.pre, i64 216
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !882, !nonnull !71, !align !787 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 216
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = trunc i64 %i.aq to i32                  ; 3 uses
  %i.as = lshr i32 %i.ar, 23
  %i.at = and i32 %i.as, 3                        ; 2 uses
  %i.au = icmp eq i32 %i.at, 3
  %spec.store.select.i.i = select i1 %i.au, i32 2, i32 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = lshr i64 %i.aw, 57
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = and i32 %i.ay, 4                        ; 2 uses
  %i.ba = lshr i32 %i.ar, 19
  %i.bb = and i32 %i.ba, 192
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = lshr i64 %i.bd, 36
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = and i32 %i.bf, 32256
  %i.bh = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.az, 0
  %or.cond.not16.i.i = select i1 %i.bh, i1 %.not3.i.i.i, i1 false
  %i.bi = and i32 %i.ar, 100663296
  %i.bj = icmp eq i32 %i.bi, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.bj, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 208
  %i.bl = load i64, ptr %i.bk, align 8
  %sh.diff.i.i = lshr i64 %i.bl, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.bm = and i32 %tr.sh.diff.i.i, 29360128
  %i.bn = or disjoint i32 %i.bb, %i.bg
  %i.bo = or disjoint i32 %i.bn, %i.bm
  %i.bp = or disjoint i32 %i.bo, %masksel.i.i
  %i.bq = or disjoint i32 %i.bp, %i.az
  %i.br = or disjoint i32 %i.bq, %spec.store.select.i.i
  %i.bs = or i32 %i.br, 56
  %i.bt = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.bu = and i32 %i.bs, %i.bt
  %i.bv = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.copyload.i.i
  %i.bw = trunc nuw i64 %i.bv to i32
  %i.bx = or i32 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val18.pre, i64 208
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !870
  %i.bz = getelementptr inbounds nuw i8, ptr %.val18.pre, i64 2024
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.bz, align 8, !tbaa !870
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit, %._crit_edge
  %i.ca = load ptr, ptr %2, align 8, !tbaa !54
  %i.cb = load i32, ptr %i.j, align 8, !tbaa !55
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.cd, align 4, !tbaa !870
  %i.ce = call i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %.val18.pre, ptr noundef null, ptr noundef nonnull %i.w, i32 %.sroa.023.0.extract.trunc, ptr %i.ca, i64 %i.cc, i32 %.sroa.0.0.copyload.i20, ptr noundef null) #26
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, %bb.h, %bb.g
  %.sroa.013.0 = phi i64 [ %i.ab, %bb.g ], [ %i.ce, %bb.h ], [ 1, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread ]
  %i.cf = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.i
  br i1 %i.cg, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.cf) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.k

bb.k:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.013.1 = phi i64 [ %.sroa.013.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret i64 %.sroa.013.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE27TransformUserDefinedLiteralEPNS_18UserDefinedLiteralE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE17TransformCallExprEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE28TransformCXXOperatorCallExprEPNS_19CXXOperatorCallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2241", align 8 ; 9 uses
  %3 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %4 = alloca %"class.clang::LookupResult", align 8 ; 26 uses
  %5 = alloca %"class.clang::UnresolvedSet.3369", align 8 ; 10 uses
  %i.a = load i32, ptr %1, align 8                ; 4 uses
  %i.b = and i32 %i.a, 2080374784
  %switch = icmp eq i32 %i.b, 1409286144
  br i1 %switch, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = lshr i32 %i.a, 19
  %i.e = and i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !979  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 511
  switch i16 %i.j, label %bb.e [
    i16 122, label %bb.d
    i16 77, label %bb.d
    i16 20, label %bb.d
    i16 24, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.k = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.h), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.h to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.d, %bb.e
  %.sroa.092.0 = phi i64 [ %i.k, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  %i.m = icmp eq i64 %.sroa.092.0, 1
  br i1 %i.m, label %bb.av, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %bb.b, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.092.095 = phi i64 [ %.sroa.092.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.b ]
  %i.n = and i64 %.sroa.092.095, -2
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #29 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !1783, !nonnull !71, !align !787
  %i.r = tail call i32 @_ZN5clang4Sema19getLocForEndOfTokenENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(18640) %i.q, i32 %i.p, i32 noundef 0) #26 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %.sroa.083.0 = select i1 %i.s, i32 %i.p, i32 %i.r ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.u, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.v, align 4, !tbaa !56
  %i.w = load i32, ptr %1, align 8
  %i.x = lshr i32 %i.w, 19
  %i.y = and i32 %i.x, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !2086
  %i.ae = add i32 %i.ad, -1
  %i.af = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE14TransformExprsEPKPS5_jbRN4llvm15SmallVectorImplISD_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ab, i32 noundef %i.ae, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
  br i1 %i.af, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.ag = load i32, ptr %1, align 8
  %i.ah = and i32 %i.ag, 2113929216
  %i.ai = icmp eq i32 %i.ah, 1442840576
  %i.aj = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ak = load i32, ptr %i.u, align 8, !tbaa !55
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = call i64 @_ZNK5clang19CXXOperatorCallExpr18getSourceRangeImplEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #29
  %.sroa.3.0.extract.shift.i = lshr i64 %i.am, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32 ; 2 uses
  %.val59 = load ptr, ptr %0, align 8, !tbaa !1783 ; 2 uses
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = call i64 @_ZN5clang4Sema23ActOnArraySubscriptExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_(ptr noundef nonnull align 8 dereferenceable(18640) %.val59, ptr noundef null, ptr noundef nonnull %i.o, i32 %.sroa.083.0, ptr %i.aj, i64 %i.al, i32 %.sroa.3.0.extract.trunc.i) #26
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = call i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %.val59, ptr noundef null, ptr noundef nonnull %i.o, i32 %.sroa.083.0, ptr %i.aj, i64 %i.al, i32 %.sroa.3.0.extract.trunc.i, ptr noundef null) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, %bb.h, %bb.g
  %.sroa.050.0 = phi i64 [ %i.ao, %bb.h ], [ %i.an, %bb.g ], [ 1, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread ]
  %i.ap = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.t
  br i1 %i.aq, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.ap) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.av

bb.k:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !2086 ; 2 uses
  %i.at = icmp eq i32 %i.as, 1
  %i.au = and i32 %i.a, 2113929216
  %i.av = icmp eq i32 %i.au, 369098752
  %or.cond = and i1 %i.av, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = lshr i32 %i.a, 19
  %i.ay = and i32 %i.ax, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !979 ; 9 uses
  br i1 %or.cond, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = and i16 %i.bc, 511
  switch i16 %i.bd, label %bb.p [
    i16 71, label %bb.m
    i16 24, label %bb.n
    i16 122, label %bb.o
    i16 77, label %bb.o
    i16 20, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.be = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE34TransformDependentScopeDeclRefExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.bb, i1 noundef zeroext true, ptr noundef null), !inline_history !25
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63

bb.n:                                             ; preds = %bb.l
  %i.bf = tail call fastcc i64 @_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer29TransformUnresolvedLookupExprEPNS_20UnresolvedLookupExprEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.bb)
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63

bb.o:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.bg = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.bb), !inline_history !26
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63

bb.p:                                             ; preds = %bb.l
  %i.bh = ptrtoint ptr %i.bb to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63

bb.q:                                             ; preds = %bb.k
  %.not.i62 = icmp eq ptr %i.bb, null
  br i1 %.not.i62, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = load i16, ptr %i.bb, align 8
  %i.bj = and i16 %i.bi, 511
  switch i16 %i.bj, label %bb.t [
    i16 122, label %bb.s
    i16 77, label %bb.s
    i16 20, label %bb.s
    i16 24, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  %i.bk = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.bb), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63

bb.t:                                             ; preds = %bb.r
  %i.bl = ptrtoint ptr %i.bb to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.t, %bb.s
  %storemerge = phi i64 [ %i.bl, %bb.t ], [ %i.bk, %bb.s ], [ %i.be, %bb.m ], [ %i.bf, %bb.n ], [ %i.bg, %bb.o ], [ %i.bh, %bb.p ] ; 2 uses
  %i.bm = icmp eq i64 %storemerge, 1
  br i1 %i.bm, label %bb.av, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63._ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63.thread_crit_edge

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63._ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63.thread_crit_edge: ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63
  %.pre = load i32, ptr %i.ar, align 8, !tbaa !2086
  %i.bn = and i64 %storemerge, -2
  %i.bo = inttoptr i64 %i.bn to ptr
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63.thread: ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63._ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63.thread_crit_edge, %bb.q
  %i.bp = phi i32 [ %.pre, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63._ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63.thread_crit_edge ], [ %i.as, %bb.q ]
  %storemerge97 = phi ptr [ %i.bo, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63._ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63.thread_crit_edge ], [ null, %bb.q ] ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 2
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63.thread
  %i.br = load i32, ptr %1, align 8
  %i.bs = lshr i32 %i.br, 19
  %i.bt = and i32 %i.bs, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !979
  %i.by = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE20TransformInitializerEPS5_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bx, i1 noundef zeroext false) ; 2 uses
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.av, label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63.thread
  %.sroa.074.0 = phi i64 [ %i.by, %bb.u ], [ 0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit63.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.val57 = load ptr, ptr %0, align 8, !tbaa !1783
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(18640) %.val57) #26
  %i.ca = load i32, ptr %1, align 8               ; 2 uses
  %i.cb = and i32 %i.ca, 2097152
  %.not.i64 = icmp eq i32 %i.cb, 0
  br i1 %.not.i64, label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cd = lshr i32 %i.ca, 19
  %i.ce = and i32 %i.cd, 1
  %i.cf = load i32, ptr %i.ar, align 8, !tbaa !2086
  %i.cg = add nuw nsw i32 %i.ce, 1
  %i.ch = add i32 %i.cg, %i.cf
  %i.ci = shl i32 %i.ch, 3
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cj
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ck, align 4, !tbaa !870
  br label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit

_ZNK5clang8CallExpr13getFPFeaturesEv.exit:        ; preds = %bb.v, %bb.w
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val56 = load ptr, ptr %0, align 8, !tbaa !1783 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val56, i64 216
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !882, !nonnull !71, !align !787 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 216
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = trunc i64 %i.co to i32                  ; 3 uses
  %i.cq = lshr i32 %i.cp, 23
  %i.cr = and i32 %i.cq, 3                        ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 3
  %spec.store.select.i.i = select i1 %i.cs, i32 2, i32 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 96
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = lshr i64 %i.cu, 57
  %i.cw = trunc nuw nsw i64 %i.cv to i32
  %i.cx = and i32 %i.cw, 4                        ; 2 uses
  %i.cy = lshr i32 %i.cp, 19
  %i.cz = and i32 %i.cy, 192
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = lshr i64 %i.db, 36
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = and i32 %i.dd, 32256
  %i.df = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.cx, 0
  %or.cond.not16.i.i = select i1 %i.df, i1 %.not3.i.i.i, i1 false
  %i.dg = and i32 %i.cp, 100663296
  %i.dh = icmp eq i32 %i.dg, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.dh, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 208
  %i.dj = load i64, ptr %i.di, align 8
  %sh.diff.i.i = lshr i64 %i.dj, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.dk = and i32 %tr.sh.diff.i.i, 29360128
  %i.dl = or disjoint i32 %i.cz, %i.de
  %i.dm = or disjoint i32 %i.dl, %i.dk
  %i.dn = or disjoint i32 %i.dm, %masksel.i.i
  %i.do = or disjoint i32 %i.dn, %i.cx
  %i.dp = or disjoint i32 %i.do, %spec.store.select.i.i
  %i.dq = or i32 %i.dp, 56
  %i.dr = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.ds = and i32 %i.dq, %i.dr
  %i.dt = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.du = trunc nuw i64 %i.dt to i32
  %i.dv = or i32 %i.ds, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %.val56, i64 208
  store i32 %i.dv, ptr %i.dw, align 8, !tbaa !870
  %i.dx = getelementptr inbounds nuw i8, ptr %.val56, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.dx, align 8, !tbaa !870
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1657 ; 9 uses
  %i.ea = load i16, ptr %i.dz, align 8
  %i.eb = and i16 %i.ea, 511                      ; 2 uses
  %.not = icmp eq i16 %i.eb, 24
  br i1 %.not, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.sroa.0.0.copyload.i.i65 = load i64, ptr %i.ec, align 8, !tbaa !75 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.ed, align 8, !tbaa !870
  store i32 0, ptr %4, align 8, !tbaa !1878
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.ee, align 4, !tbaa !1879
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !54
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.eh, align 8, !tbaa !55
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 8, ptr %i.ei, align 4, !tbaa !56
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i8 0, i64 24, i1 false)
  store ptr %.val56, ptr %i.ek, align 8, !tbaa !1880
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %.sroa.0.0.copyload.i.i65, ptr %i.el, align 8, !tbaa !75
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 %.sroa.0.0.copyload.i.i66, ptr %i.em, align 8, !tbaa !870
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.en, i64 %.sroa.0.0.copyload.i.i65) #26
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.eo, i8 0, i64 18, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 163
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 164
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.ep, align 2, !tbaa !1004
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 166
  store i8 0, ptr %i.es, align 2, !tbaa !1881
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 167
  store i8 0, ptr %i.et, align 1, !tbaa !1882
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #26
  %i.eu = load i24, ptr %i.dz, align 8
  %i.ev = and i24 %i.eu, 1048576
  %i.ew = icmp ne i24 %i.ev, 0
  %i.ex = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE26TransformOverloadExprDeclsEPNS_12OverloadExprEbRNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.dz, i1 noundef zeroext %i.ew, ptr noundef nonnull align 8 dereferenceable(168) %4)
  br i1 %i.ex, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ey = load i32, ptr %1, align 8
  %i.ez = lshr i32 %i.ey, 25
  %i.fa = and i32 %i.ez, 63
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i67 = load i32, ptr %i.fb, align 4, !tbaa !870
  %i.fc = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dz) #29
  %i.fd = load i24, ptr %i.dz, align 8
  %i.fe = and i24 %i.fd, 1048576
  %i.ff = icmp ne i24 %i.fe, 0
  %i.fg = and i64 %.sroa.074.0, -2
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE26RebuildCXXOperatorCallExprENS_22OverloadedOperatorKindENS_14SourceLocationESE_bRKNS_17UnresolvedSetImplEPS5_SI_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.fa, i32 %.sroa.0.0.copyload.i.i67, i32 %i.fc, i1 noundef zeroext %i.ff, ptr noundef nonnull align 1 dereferenceable(1) %i.ef, ptr noundef %storemerge97, ptr noundef %i.fh)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sroa.050.2 = phi i64 [ %i.fi, %bb.y ], [ 1, %bb.x ]
  %i.fj = load i8, ptr %i.eq, align 1, !tbaa !1886, !range !70, !noundef !71
  %i.fk = trunc nuw i8 %i.fj to i1
  %.pre108 = load i32, ptr %4, align 8            ; 3 uses
  br i1 %i.fk, label %bb.aa, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.fl = icmp ne i32 %.pre108, 5
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = icmp ne ptr %i.fn, null
  %or.cond.i.i = select i1 %i.fl, i1 %i.fo, i1 false
  br i1 %or.cond.i.i, label %bb.ab, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.fp = load ptr, ptr %i.ek, align 8, !tbaa !1880 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 216
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !882, !nonnull !71, !align !787
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = and i64 %i.ft, 18014398509481984
  %.not.i.i = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fp, ptr noundef nonnull align 8 dereferenceable(168) %4) #26
  %.pre107 = load i32, ptr %4, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i: ; preds = %bb.ac, %bb.aa, %bb.z
  %i.fv = phi i32 [ %.pre107, %bb.ac ], [ %.pre108, %bb.z ], [ %.pre108, %bb.aa ]
  %i.fw = load i8, ptr %i.er, align 4, !tbaa !1887, !range !70, !noundef !71
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = icmp eq i32 %i.fv, 5
  %or.cond100 = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %or.cond100, label %bb.ad, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

bb.ad:                                            ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.fz = load ptr, ptr %i.ek, align 8, !tbaa !1880
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fz, ptr noundef nonnull align 8 dereferenceable(168) %4) #26
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i: ; preds = %bb.ab, %bb.ad, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.ga = load ptr, ptr %i.ej, align 8, !tbaa !1888 ; 2 uses
  %.not.i68 = icmp eq ptr %i.ga, null
  br i1 %.not.i68, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.ga) #26
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  %i.gb = load ptr, ptr %i.ef, align 8, !tbaa !54 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.eg
  br i1 %i.gc, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.gb) #26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.au

bb.ai:                                            ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.gd, ptr %5, align 8, !tbaa !54
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.ge, align 8, !tbaa !55
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 1, ptr %i.gf, align 4, !tbaa !56
  %.not103 = icmp eq i16 %i.eb, 81
  br i1 %.not103, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gg = call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dz) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.051 = phi ptr [ %i.gg, %bb.aj ], [ %i.dz, %bb.ai ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !2067 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1797, !noalias !3341 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !1798, !noalias !3341 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !1009, !noalias !3341 ; 4 uses
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %.loopexit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gq = add i32 %i.go, -1                       ; 2 uses
  %i.gr = ptrtoint ptr %i.gi to i64
  %i.gs = mul i64 %i.gr, -4658895280553007687     ; 2 uses
  %i.gt = lshr i64 %i.gs, 31
  %i.gu = xor i64 %i.gt, %i.gs
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = and i32 %i.gq, %i.gv                    ; 3 uses
  %i.gx = zext i32 %i.gw to i64                   ; 2 uses
  %i.gy = lshr i64 %i.gx, 5
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !870, !noalias !3342
  %i.hb = and i32 %i.gw, 31
  %i.hc = lshr i32 %i.ha, %i.hb
  %i.hd = trunc i32 %i.hc to i1
  br i1 %i.hd, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !923

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.al, %bb.am
  %i.he = phi i64 [ %i.hk, %bb.am ], [ %i.gx, %bb.al ]
  %.017.i.i.i.i.i = phi i32 [ %i.hj, %bb.am ], [ %i.gw, %bb.al ]
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.he ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !983, !noalias !3342
  %i.hh = icmp eq ptr %i.gi, %i.hg
  br i1 %i.hh, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.am, !prof !79

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hi = add nuw i32 %.017.i.i.i.i.i, 1
  %i.hj = and i32 %i.hi, %i.gq                    ; 3 uses
  %i.hk = zext i32 %i.hj to i64                   ; 2 uses
  %i.hl = lshr i64 %i.hk, 5
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !870, !noalias !3342
  %i.ho = and i32 %i.hj, 31
end_hunk_0
begin_hunk_1_@_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE18TransformBlockExprEPNS_9BlockExprE:bb.a
  %i.dl = call i64 @_ZN5clang4Sema18ActOnBlockStmtExprENS_14SourceLocationEPNS_4StmtEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.di, ptr noundef %i.dk, ptr noundef null) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.030.0 = phi i64 [ 1, %bb.q ], [ %i.dl, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.e
  %.sroa.030.1 = phi i64 [ 1, %bb.e ], [ %.sroa.030.0, %bb.s ]
  %i.dm = load ptr, ptr %4, align 8, !tbaa !934   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ad
  br i1 %i.dn, label %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.dm) #26
  br label %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit

_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.do = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.z
  br i1 %i.dp, label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit
  call void @free(ptr noundef %i.do) #26
  br label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit: ; preds = %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.dq = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.w
  br i1 %i.dr, label %_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit
  call void @free(ptr noundef %i.dq) #26
  br label %_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i64 %.sroa.030.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer23TransformBinaryOperatorEPNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = lshr i32 %i.a, 19
  %i.c = and i32 %i.b, 63
  %.off = add nsw i32 %i.c, -19
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1657 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 511
  switch i16 %i.g, label %bb.e [
    i16 122, label %bb.d
    i16 77, label %bb.d
    i16 20, label %bb.d
    i16 24, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.h = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.e), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %i.e to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.020.0 = phi i64 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ 0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1657 ; 4 uses
  %.not.i12 = icmp eq ptr %i.k, null
  br i1 %.not.i12, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit13, label %bb.f

bb.f:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, 511
  switch i16 %i.m, label %bb.h [
    i16 122, label %bb.g
    i16 77, label %bb.g
    i16 20, label %bb.g
    i16 24, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.n = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.k), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit13

bb.h:                                             ; preds = %bb.f
  %i.o = ptrtoint ptr %i.k to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit13

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit13: ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %bb.g, %bb.h
  %.sroa.021.0 = phi i64 [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ 0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.p = and i64 %.sroa.020.0, -2
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !1657
  %i.s = icmp eq ptr %i.r, %i.q
  %i.t = and i64 %.sroa.021.0, -2
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  br i1 %i.s, label %bb.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit13._crit_edge

bb.i:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit13
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !1657
  %i.w = icmp eq ptr %i.v, %i.u
  br i1 %i.w, label %bb.j, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit13._crit_edge

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit13._crit_edge: ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit13, %bb.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !1783, !nonnull !71, !align !787
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !786, !nonnull !71, !align !787 ; 2 uses
  %i.aa = load i32, ptr %1, align 8
  %i.ab = lshr i32 %i.aa, 19
  %i.ac = and i32 %i.ab, 63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 18904
  %.sroa.0.0.copyload.i = load i64, ptr %i.ad, align 8, !tbaa !105
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.ae, align 4, !tbaa !870
  %i.af = tail call noundef ptr @_ZN5clang14BinaryOperator6CreateERKNS_10ASTContextEPNS_4ExprES5_NS_18BinaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationENS_17FPOptionsOverrideE(ptr noundef nonnull align 8 dereferenceable(23904) %i.z, ptr noundef %i.q, ptr noundef %i.u, i32 noundef %i.ac, i64 %.sroa.0.0.copyload.i, i32 noundef 0, i32 noundef 0, i32 %.sroa.0.0.copyload.i14, i64 0) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit13._crit_edge
  %.sroa.019.1.in = phi ptr [ %i.af, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit13._crit_edge ], [ %1, %bb.a ], [ %1, %bb.i ]
  %.sroa.019.1 = ptrtoint ptr %.sroa.019.1.in to i64
  ret i64 %.sroa.019.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE31TransformCompoundAssignOperatorEPNS_22CompoundAssignOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %.val6 = load ptr, ptr %0, align 8, !tbaa !1783
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(18640) %.val6) #26
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 33554432
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 511
  %i.d = icmp eq i32 %i.c, 123
  %i.e = select i1 %i.d, i64 48, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 4, !tbaa !870
  br label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit

_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val5 = load ptr, ptr %0, align 8, !tbaa !1783 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val5, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !882, !nonnull !71, !align !787 ; 4 uses
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
  %i.al = or i32 %i.ak, 56
  %i.am = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.an = and i32 %i.al, %i.am
  %i.ao = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.ap = trunc nuw i64 %i.ao to i32
  %i.aq = or i32 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.val5, i64 208
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !870
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.as, align 8, !tbaa !870
  %i.at = call fastcc i64 @_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer23TransformBinaryOperatorEPNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1)
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i64 %i.at
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE19TransformAtomicExprEPNS_10AtomicExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.2241", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.d, align 4, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2150 ; 3 uses
  %i.g = icmp ugt i32 %i.f, 8
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.b, i64 noundef %i.h, i64 noundef 8) #26
  %.pre = load i32, ptr %i.e, align 8, !tbaa !2150
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.f, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE14TransformExprsEPKPS5_jbRN4llvm15SmallVectorImplISD_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.j, i32 noundef %i.i, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %.val = load ptr, ptr %0, align 8, !tbaa !1783  ; 2 uses
  %i.l = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.l, align 4, !tbaa !1084
  %i.m = icmp ne i32 %.val.val, 0
  %i.n = load i8, ptr %i.a, align 1, !range !70
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %1 to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 4 ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !54
  %i.s = load i32, ptr %i.c, align 8, !tbaa !55
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.v = load i32, ptr %i.u, align 4, !tbaa !2151
  %i.w = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = call i64 @_ZN5clang4Sema15BuildAtomicExprENS_11SourceRangeES1_NS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEENS_10AtomicExpr8AtomicOpENS0_19AtomicArgumentOrderE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i, i32 %i.x, ptr %i.r, i64 %i.t, i32 noundef %i.v, i32 noundef 1) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.e, %bb.d
  %.sroa.012.0 = phi i64 [ %i.p, %bb.d ], [ %i.y, %bb.e ], [ 1, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %i.z = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.z) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.sroa.012.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE19TransformAsTypeExprEPNS_10AsTypeExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2153 ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 511
  switch i16 %i.d, label %bb.d [
    i16 122, label %bb.c
    i16 77, label %bb.c
    i16 20, label %bb.c
    i16 24, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.e = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.b), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.b to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.c, %bb.d
  %.sroa.013.0 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq i64 %.sroa.013.0, 1
  br i1 %i.g, label %bb.g, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %bb.a, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.013.015 = phi i64 [ %.sroa.013.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !105 ; 3 uses
  %i.i = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.i, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit, label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1783
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !786, !nonnull !71, !align !787
  %i.l = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.k, i64 %.sroa.0.0.copyload.i, i32 0) #26, !inline_history !27
  %i.m = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l), !inline_history !27 ; 2 uses
  %.not.i16 = icmp eq ptr %i.m, null
  br i1 %.not.i16, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !tbaa !105
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit: ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, %bb.e, %bb.f
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.f ], [ %.sroa.0.0.copyload.i, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread ], [ 0, %bb.e ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !1783, !nonnull !71, !align !787
  %i.o = and i64 %.sroa.013.015, -2
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.q, align 8, !tbaa !870
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.r, align 4, !tbaa !870
  %i.s = tail call i64 @_ZN5clang4Sema15BuildAsTypeExprEPNS_4ExprENS_8QualTypeENS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %i.n, ptr noundef %i.p, i64 %.sroa.0.0.i, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit
  %.sroa.09.0 = phi i64 [ %i.s, %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit ], [ 1, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret i64 %.sroa.09.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE27TransformArrayTypeTraitExprEPNS_18ArrayTypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2155
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !1783  ; 4 uses
  %i.d = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.d, align 4, !tbaa !1084
  %.not25 = icmp eq i32 %.val.val, 0
  br i1 %.not25, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !2155
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %1 to i64
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 0, ptr noundef null, i32 noundef 4) #26
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2156 ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit15, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 511
  switch i16 %i.k, label %bb.h [
    i16 122, label %bb.g
    i16 77, label %bb.g
    i16 20, label %bb.g
    i16 24, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
end_hunk_1
begin_hunk_2_@_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE26TransformTemplateArgumentsIPKNS_19TemplateArgumentLocEEEbT_SH_RNS_24TemplateArgumentListInfoEb:bb.a
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.y, label %_ZNSt14_Optional_baseIN5clang13TreeTransformIZNS0_4Sema29SubstConceptTemplateArgumentsEPKNS0_25ConceptSpecializationExprEPKNS0_4ExprERKNS0_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE22ForgetSubstitutionRAIIELb0ELb0EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.h, align 8, !tbaa !2187
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.n, ptr %4, align 8, !tbaa !54
  store i32 0, ptr %i.o, align 8, !tbaa !55
  store i32 4, ptr %i.p, align 4, !tbaa !56
  %i.cg = load i32, ptr %i.q, align 8, !tbaa !55
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5clang30MultiLevelTemplateArgumentListC2EOS0_.exit.thread.i.i.i.i.i, label %_ZN5clang30MultiLevelTemplateArgumentListC2EOS0_.exit.i.i.i.i.i

_ZN5clang30MultiLevelTemplateArgumentListC2EOS0_.exit.thread.i.i.i.i.i: ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.r, ptr noundef nonnull align 8 dereferenceable(6) %i.s, i64 6, i1 false)
  br label %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit.i.i.i.i.i

_ZN5clang30MultiLevelTemplateArgumentListC2EOS0_.exit.i.i.i.i.i: ; preds = %bb.y
  %i.ch = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(118) %4, ptr noundef nonnull align 8 dereferenceable(118) %i.m) ; 0 uses
  %.pre.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !54 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.r, ptr noundef nonnull align 8 dereferenceable(6) %i.s, i64 6, i1 false)
  %i.ci = icmp eq ptr %.pre.i.i.i.i.i, %i.n
  br i1 %i.ci, label %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN5clang30MultiLevelTemplateArgumentListC2EOS0_.exit.i.i.i.i.i
  call void @free(ptr noundef %.pre.i.i.i.i.i) #26
  br label %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit.i.i.i.i.i

_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit.i.i.i.i.i: ; preds = %bb.z, %_ZN5clang30MultiLevelTemplateArgumentListC2EOS0_.exit.i.i.i.i.i, %_ZN5clang30MultiLevelTemplateArgumentListC2EOS0_.exit.thread.i.i.i.i.i
  %i.cj = load ptr, ptr %i.m, align 8, !tbaa !54  ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.t
  br i1 %i.ck, label %_ZNSt22_Optional_payload_baseIN5clang13TreeTransformIZNS0_4Sema29SubstConceptTemplateArgumentsEPKNS0_25ConceptSpecializationExprEPKNS0_4ExprERKNS0_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE22ForgetSubstitutionRAIIEE10_M_destroyEv.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit.i.i.i.i.i
  call void @free(ptr noundef %i.cj) #26
  br label %_ZNSt22_Optional_payload_baseIN5clang13TreeTransformIZNS0_4Sema29SubstConceptTemplateArgumentsEPKNS0_25ConceptSpecializationExprEPKNS0_4ExprERKNS0_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE22ForgetSubstitutionRAIIEE10_M_destroyEv.exit.i.i.i

_ZNSt22_Optional_payload_baseIN5clang13TreeTransformIZNS0_4Sema29SubstConceptTemplateArgumentsEPKNS0_25ConceptSpecializationExprEPKNS0_4ExprERKNS0_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE22ForgetSubstitutionRAIIEE10_M_destroyEv.exit.i.i.i: ; preds = %bb.aa, %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNSt14_Optional_baseIN5clang13TreeTransformIZNS0_4Sema29SubstConceptTemplateArgumentsEPKNS0_25ConceptSpecializationExprEPKNS0_4ExprERKNS0_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE22ForgetSubstitutionRAIIELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang13TreeTransformIZNS0_4Sema29SubstConceptTemplateArgumentsEPKNS0_25ConceptSpecializationExprEPKNS0_4ExprERKNS0_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE22ForgetSubstitutionRAIIELb0ELb0EED2Ev.exit: ; preds = %bb.x, %_ZNSt22_Optional_payload_baseIN5clang13TreeTransformIZNS0_4Sema29SubstConceptTemplateArgumentsEPKNS0_25ConceptSpecializationExprEPKNS0_4ExprERKNS0_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE22ForgetSubstitutionRAIIEE10_M_destroyEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit

_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit: ; preds = %bb.j, %bb.i, %bb.f, %_ZNSt14_Optional_baseIN5clang13TreeTransformIZNS0_4Sema29SubstConceptTemplateArgumentsEPKNS0_25ConceptSpecializationExprEPKNS0_4ExprERKNS0_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE22ForgetSubstitutionRAIIELb0ELb0EED2Ev.exit
  %.542 = phi i32 [ 1, %bb.f ], [ %.441, %_ZNSt14_Optional_baseIN5clang13TreeTransformIZNS0_4Sema29SubstConceptTemplateArgumentsEPKNS0_25ConceptSpecializationExprEPKNS0_4ExprERKNS0_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE22ForgetSubstitutionRAIIELb0ELb0EED2Ev.exit ], [ 3, %bb.i ], [ 3, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit59

bb.ab:                                            ; preds = %bb.e
  %i.cl = call noundef zeroext i1 @_ZNK5clang16TemplateArgument35isConceptOrConceptTemplateParameterEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #26, !inline_history !30
  br i1 %i.cl, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer25TransformTemplateArgumentERKNS_19TemplateArgumentLocERSB_b.exit57, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer25TransformTemplateArgumentERKNS_19TemplateArgumentLocERSB_b.exit57.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer25TransformTemplateArgumentERKNS_19TemplateArgumentLocERSB_b.exit57.thread: ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  br label %bb.ac

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer25TransformTemplateArgumentERKNS_19TemplateArgumentLocERSB_b.exit57: ; preds = %bb.ab
  %i.cm = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE25TransformTemplateArgumentERKNS_19TemplateArgumentLocERSD_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false), !inline_history !30
  br i1 %i.cm, label %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit59.thread77, label %bb.ac

_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit59.thread77: ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer25TransformTemplateArgumentERKNS_19TemplateArgumentLocERSB_b.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.thread79

bb.ac:                                            ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer25TransformTemplateArgumentERKNS_19TemplateArgumentLocERSB_b.exit57.thread, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer25TransformTemplateArgumentERKNS_19TemplateArgumentLocERSB_b.exit57
  %i.cn = load i32, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.co = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i.i58 = icmp ult i32 %i.cn, %i.co
  br i1 %.not.i.i58, label %bb.ae, label %bb.ad, !prof !79

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang19TemplateArgumentLocELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(280) %3, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit59.thread

bb.ae:                                            ; preds = %bb.ac
  %i.cp = zext i32 %i.cn to i64
  %i.cq = load ptr, ptr %3, align 8, !tbaa !54
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.cs = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.b, align 8, !tbaa !55
  br label %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit59.thread

_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit59.thread: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.af

_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit59: ; preds = %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit, %_ZN5clang24TemplateArgumentListInfoD2Ev.exit
  %.643 = phi i32 [ %., %_ZN5clang24TemplateArgumentListInfoD2Ev.exit ], [ %.542, %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %cond = icmp eq i32 %.643, 3
  br i1 %cond, label %bb.af, label %.thread79

bb.af:                                            ; preds = %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit59, %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit59.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %.03586, i64 32 ; 2 uses
  %.not.not = icmp eq ptr %i.cu, %2
  br i1 %.not.not, label %.thread79, label %bb.b

.thread79:                                        ; preds = %bb.af, %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit59, %bb.a, %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit59.thread77
  %.not82 = phi i1 [ true, %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit59.thread77 ], [ false, %bb.a ], [ true, %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit59 ], [ false, %bb.af ]
  ret i1 %.not82
}

declare i64 @_ZN5clang4Sema12BuildUnaryOpEPNS_5ScopeENS_14SourceLocationENS_17UnaryOperatorKindEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i32 noundef, i64) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14ActOnParenExprENS_14SourceLocationES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_4ExprENS_14SourceLocationENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i32 noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14BuildTypeTraitENS_9TypeTraitENS_14SourceLocationEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEES2_(ptr noundef nonnull align 8 dereferenceable(18640), i32 noundef, i32, ptr, i64, i32) local_unnamed_addr #2

declare void @_ZNK5clang32SubstNonTypeTemplateParmPackExpr15getArgumentPackEv(ptr dead_on_unwind writable sret(%"class.clang::TemplateArgument") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang32SubstNonTypeTemplateParmPackExpr16getParameterPackEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema33BuildSubstNonTypeTemplateParmExprEPNS_4DeclEjNS_8QualTypeENS_14SourceLocationENS_16TemplateArgumentENS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32 noundef, i64, i32, ptr noundef byval(%"class.clang::TemplateArgument") align 8, i32, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN5clang4Expr23IgnoreImplicitAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN5clang28getReplacedTemplateParameterEPNS_4DeclEj(ptr dead_on_unwind writable sret(%"class.std::tuple.2148") align 8, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema21CheckTemplateArgumentEPNS_9NamedDeclENS_8QualTypeEPNS_4ExprERNS_16TemplateArgumentES7_bNS0_25CheckTemplateArgumentKindE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i64, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN5clang4Sema18ActOnStartStmtExprEv(ptr noundef nonnull align 8 dereferenceable(18640)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE21TransformCompoundStmtEPNS_12CompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::FPOptions", align 4  ; 4 uses
  %4 = alloca %"class.clang::FPOptions", align 4  ; 4 uses
  %5 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.2164", align 8 ; 12 uses
  %.val34 = load ptr, ptr %0, align 8, !tbaa !1783 ; 2 uses
  tail call void @_ZN5clang4Sema24ActOnStartOfCompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val34, i1 noundef zeroext false) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %.val33 = load ptr, ptr %0, align 8, !tbaa !1783
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(18640) %.val33) #26
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 512
  %.not68 = icmp eq i16 %i.b, 0
  br i1 %.not68, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val32 = load ptr, ptr %0, align 8, !tbaa !1783 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !105
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 4, !tbaa !870 ; 2 uses
  %.sroa.452.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32 ; 2 uses
  %.sroa.452.0.extract.trunc = trunc nuw i64 %.sroa.452.0.extract.shift to i32
  %i.h = getelementptr inbounds nuw i8, ptr %.val32, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !882, !nonnull !71, !align !787 ; 4 uses
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
  %i.am = or i32 %i.al, 56
  %i.an = xor i32 %.sroa.452.0.extract.trunc, -1
  %i.ao = and i32 %i.am, %i.an
  %i.ap = and i64 %.sroa.452.0.extract.shift, %.sroa.0.0.copyload.i
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = or i32 %i.ao, %i.aq                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %i.ar, ptr %3, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.val32, i64 208
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !870
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.at = load i64, ptr %i.j, align 8
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %i.av = lshr i32 %i.au, 23
  %i.aw = and i32 %i.av, 3                        ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 3
  %spec.store.select.i.i36 = select i1 %i.ax, i32 2, i32 %i.aw ; 2 uses
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
  %i.bi = icmp eq i32 %spec.store.select.i.i36, 1
  %.not3.i.i.i37 = icmp ne i32 %i.bb, 0
  %or.cond.not16.i.i38 = and i1 %.not3.i.i.i37, %i.bi
  %i.bj = and i32 %i.au, 100663296
  %i.bk = icmp eq i32 %i.bj, 67108864
  %or.cond15.i.i39 = select i1 %or.cond.not16.i.i38, i1 %i.bk, i1 false
  %masksel.i.i40 = select i1 %or.cond15.i.i39, i32 256, i32 0
  %i.bl = load i64, ptr %i.ae, align 8
  %sh.diff.i.i41 = lshr i64 %i.bl, 23
  %tr.sh.diff.i.i42 = trunc i64 %sh.diff.i.i41 to i32
  %i.bm = and i32 %tr.sh.diff.i.i42, 29360128
  %i.bn = or disjoint i32 %i.bd, %i.bh
  %i.bo = or disjoint i32 %i.bn, %i.bm
  %i.bp = or disjoint i32 %i.bo, %masksel.i.i40
  %i.bq = or disjoint i32 %i.bp, %i.bb
  %i.br = or disjoint i32 %i.bq, %spec.store.select.i.i36
  %i.bs = or disjoint i32 %i.br, 56               ; 2 uses
  store i32 %i.bs, ptr %4, align 4, !tbaa !2270
  %i.bt = icmp eq i32 %i.ar, %i.bs
  br i1 %i.bt, label %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bu = call i64 @_ZNK5clang9FPOptions14getChangesSlowERKS0_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #26
  br label %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit

_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.insert.insert.i.i = phi i64 [ %i.bu, %bb.c ], [ 0, %bb.b ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.val32, i64 2024
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bv, align 8, !tbaa !870
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.bw, ptr %6, align 8, !tbaa !54
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !55
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 8, ptr %i.by, align 4, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !105 ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %.idx = shl nuw nsw i64 %i.cc, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx ; 2 uses
  %.not71 = icmp eq i32 %i.cb, 0
  br i1 %.not71, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %.074.us = phi i1 [ %.1.ph.us, %bb.j ], [ false, %.lr.ph ] ; 2 uses
  %.02573.us = phi i8 [ %.126.ph.us, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %.03072.us = phi ptr [ %i.df, %bb.j ], [ %i.bz, %.lr.ph ] ; 2 uses
  %i.ce = load ptr, ptr %.03072.us, align 8, !tbaa !1657 ; 4 uses
  %i.cf = load i32, ptr %i.ca, align 4, !tbaa !105 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN5clang12CompoundStmt9body_backEv.exit.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.ch = add i32 %i.cf, -1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1657
  br label %_ZN5clang12CompoundStmt9body_backEv.exit.us

_ZN5clang12CompoundStmt9body_backEv.exit.us:      ; preds = %bb.e, %.lr.ph.split.us
  %i.cl = phi ptr [ %i.ck, %bb.e ], [ null, %.lr.ph.split.us ]
  %i.cm = icmp eq ptr %i.ce, %i.cl
  %i.cn = select i1 %i.cm, i32 2, i32 0
  %i.co = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformStmtEPNS_4StmtENSC_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ce, i32 noundef %i.cn) ; 2 uses
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5clang12CompoundStmt9body_backEv.exit.us
  %i.cq = trunc nuw i8 %.02573.us to i1
  %i.cr = and i64 %i.co, -2
  %i.cs = inttoptr i64 %i.cr to ptr               ; 3 uses
  %i.ct = icmp ne ptr %i.ce, %i.cs
  %narrow.us = select i1 %i.cq, i1 true, i1 %i.ct
  %i.cu = zext i1 %narrow.us to i8                ; 2 uses
  %i.cv = load i32, ptr %i.bx, align 8, !tbaa !55 ; 2 uses
  %i.cw = load i32, ptr %i.by, align 4, !tbaa !56
  %.not.i.us = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i.us, label %bb.h, label %bb.g, !prof !79

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.cs)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %6, align 8, !tbaa !54
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  store ptr %i.cs, ptr %i.cz, align 1
  %i.da = load i32, ptr %i.bx, align 8, !tbaa !55
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.bx, align 8, !tbaa !55
  br label %bb.j

bb.i:                                             ; preds = %_ZN5clang12CompoundStmt9body_backEv.exit.us
  %i.dc = load i16, ptr %i.ce, align 8
  %i.dd = and i16 %i.dc, 511
  %i.de = icmp eq i16 %i.dd, 255
  br i1 %i.de, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.126.ph.us = phi i8 [ %i.cu, %bb.h ], [ %i.cu, %bb.g ], [ %.02573.us, %bb.i ] ; 2 uses
  %.1.ph.us = phi i1 [ %.074.us, %bb.h ], [ %.074.us, %bb.g ], [ true, %bb.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.03072.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.df, %i.cd
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.074 = phi i1 [ %.1.ph, %bb.o ], [ false, %.lr.ph ] ; 2 uses
  %.02573 = phi i8 [ %.126.ph, %bb.o ], [ 0, %.lr.ph ] ; 2 uses
  %.03072 = phi ptr [ %i.dy, %bb.o ], [ %i.bz, %.lr.ph ] ; 2 uses
  %i.dg = load ptr, ptr %.03072, align 8, !tbaa !1657 ; 3 uses
  %i.dh = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformStmtEPNS_4StmtENSC_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dg, i32 noundef 0) ; 2 uses
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
  %i.dq = or i8 %.02573, %i.dp                    ; 2 uses
  %i.dr = load i32, ptr %i.bx, align 8, !tbaa !55 ; 2 uses
  %i.ds = load i32, ptr %i.by, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.dr, %i.ds
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !79

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.dn)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dt = zext i32 %i.dr to i64
  %i.du = load ptr, ptr %6, align 8, !tbaa !54
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  store ptr %i.dn, ptr %i.dv, align 1
  %i.dw = load i32, ptr %i.bx, align 8, !tbaa !55
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.bx, align 8, !tbaa !55
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  %.126.ph = phi i8 [ %i.dq, %bb.n ], [ %i.dq, %bb.m ], [ %.02573, %bb.k ] ; 2 uses
  %.1.ph = phi i1 [ %.074, %bb.n ], [ %.074, %bb.m ], [ true, %bb.k ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.03072, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dy, %i.cd
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.o, %bb.j
  %.025.lcssa = phi i8 [ %.126.ph.us, %bb.j ], [ %.126.ph, %bb.o ]
  %.0.lcssa = phi i1 [ %.1.ph.us, %bb.j ], [ %.1.ph, %bb.o ]
  br i1 %.0.lcssa, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %.025.lcssa88 = phi i8 [ %.025.lcssa, %._crit_edge ], [ 0, %bb.d ]
  %.val = load ptr, ptr %0, align 8, !tbaa !1783  ; 2 uses
  %i.dz = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.dz, align 4, !tbaa !1084
  %i.ea = icmp ne i32 %.val.val, 0
end_hunk_2
begin_hunk_3_@_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE23TransformCStyleCastExprEPNS_14CStyleCastExprE
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE23TransformCStyleCastExprEPNS_14CStyleCastExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2077
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  %i.e = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d) ; 3 uses
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8, !tbaa !1017  ; 2 uses
  %i.g = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.g, align 4, !tbaa !1084
  %.not17 = icmp eq i32 %.val.val, 0
  br i1 %.not17, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !2077
  %i.i = icmp eq ptr %i.c, %i.h
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = and i64 %i.e, -2
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2078
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %1 to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.p, align 8, !tbaa !870
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.q, align 4, !tbaa !870
  %i.r = and i64 %i.e, -2
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call i64 @_ZN5clang4Sema19BuildCStyleCastExprENS_14SourceLocationEPNS_14TypeSourceInfoES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, i32 %.sroa.0.0.copyload.i13, ptr noundef %i.s) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %bb.a
  %.sroa.016.1 = phi i64 [ 1, %bb.a ], [ %i.o, %bb.f ], [ %i.t, %bb.g ], [ 1, %bb.b ]
  ret i64 %.sroa.016.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE27TransformBuiltinBitCastExprEPNS_18BuiltinBitCastExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2077
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2078
  %i.f = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.e) ; 2 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 8, !tbaa !870
  %i.i = and i64 %i.f, -2
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.k, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.l = tail call i64 @_ZN5clang4Sema23BuildBuiltinBitCastExprENS_14SourceLocationEPNS_14TypeSourceInfoEPNS_4ExprES1_(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, ptr noundef %i.j, i32 %.sroa.0.0.copyload.i9) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.08.1 = phi i64 [ 1, %bb.a ], [ %i.l, %bb.c ], [ 1, %bb.b ]
  ret i64 %.sroa.08.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE17TransformCallExprEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.2241", align 8 ; 9 uses
  %3 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1657
  %i.d = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.h, align 4, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %1, align 8
  %i.k = lshr i32 %i.j, 19
  %i.l = and i32 %i.k, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !2086
  %i.q = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n, i32 noundef %i.p, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.q, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val17 = load ptr, ptr %0, align 8, !tbaa !1017 ; 3 uses
  %i.r = getelementptr i8, ptr %.val17, i64 13800
  %.val17.val = load i32, ptr %i.r, align 4, !tbaa !1084
  %.not = icmp eq i32 %.val17.val, 0
  %i.s = and i64 %i.d, -2
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  br i1 %.not, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1657
  %i.v = icmp ne ptr %i.u, %i.t
  %i.w = load i8, ptr %i.a, align 1, !range !70
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond = select i1 %i.v, i1 true, i1 %i.x
  br i1 %or.cond, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val17, ptr noundef nonnull %1) #26
  br label %bb.g

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.z = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #29
  %.sroa.022.0.extract.trunc = trunc i64 %i.z to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(18640) %.val17) #26
  %i.aa = load i32, ptr %1, align 8               ; 2 uses
  %i.ab = and i32 %i.aa, 2097152
  %.not27 = icmp eq i32 %i.ab, 0
  %.val18.pre = load ptr, ptr %0, align 8, !tbaa !1017 ; 4 uses
  br i1 %.not27, label %bb.f, label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit

_ZNK5clang8CallExpr13getFPFeaturesEv.exit:        ; preds = %._crit_edge
  %i.ac = lshr i32 %i.aa, 19
  %i.ad = and i32 %i.ac, 1
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !2086
  %i.af = add nuw nsw i32 %i.ad, 1
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = shl i32 %i.ag, 3
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aj, align 4, !tbaa !870 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.val18.pre, i64 216
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !882, !nonnull !71, !align !787 ; 4 uses
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
  %i.bp = or i32 %i.bo, 56
  %i.bq = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.br = and i32 %i.bp, %i.bq
  %i.bs = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.copyload.i.i
  %i.bt = trunc nuw i64 %i.bs to i32
  %i.bu = or i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.val18.pre, i64 208
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !870
  %i.bw = getelementptr inbounds nuw i8, ptr %.val18.pre, i64 2024
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.bw, align 8, !tbaa !870
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit, %._crit_edge
  %i.bx = load ptr, ptr %2, align 8, !tbaa !54
  %i.by = load i32, ptr %i.g, align 8, !tbaa !55
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.ca, align 4, !tbaa !870
  %i.cb = call i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %.val18.pre, ptr noundef null, ptr noundef nonnull %i.t, i32 %.sroa.022.0.extract.trunc, ptr %i.bx, i64 %i.bz, i32 %.sroa.0.0.copyload.i19, ptr noundef null) #26
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e
  %.sroa.013.0 = phi i64 [ %i.y, %bb.e ], [ %i.cb, %bb.f ], [ 1, %bb.b ]
  %i.cc = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.f
  br i1 %i.cd, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.cc) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.013.1 = phi i64 [ %.sroa.013.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %bb.a ]
  ret i64 %.sroa.013.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE27TransformUserDefinedLiteralEPNS_18UserDefinedLiteralE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE17TransformCallExprEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE28TransformCXXOperatorCallExprEPNS_19CXXOperatorCallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2241", align 8 ; 9 uses
  %3 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %4 = alloca %"class.clang::LookupResult", align 8 ; 26 uses
  %5 = alloca %"class.clang::UnresolvedSet.3369", align 8 ; 10 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !979
  %i.i = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.h) ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.an, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.i, -2
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #29 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1017, !nonnull !71, !align !787
  %i.o = tail call i32 @_ZN5clang4Sema19getLocForEndOfTokenENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(18640) %i.n, i32 %i.m, i32 noundef 0) #26 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %.sroa.079.0 = select i1 %i.p, i32 %i.m, i32 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.s, align 4, !tbaa !56
  %i.t = load i32, ptr %1, align 8
  %i.u = lshr i32 %i.t, 19
  %i.v = and i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2086
  %i.ab = add i32 %i.aa, -1
  %i.ac = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.y, i32 noundef %i.ab, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
  br i1 %i.ac, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %1, align 8
  %i.ae = and i32 %i.ad, 2113929216
  %i.af = icmp eq i32 %i.ae, 1442840576
  %i.ag = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !55
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = call i64 @_ZNK5clang19CXXOperatorCallExpr18getSourceRangeImplEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #29
  %.sroa.3.0.extract.shift.i = lshr i64 %i.aj, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32 ; 2 uses
  %.val59 = load ptr, ptr %0, align 8, !tbaa !1017 ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = call i64 @_ZN5clang4Sema23ActOnArraySubscriptExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_(ptr noundef nonnull align 8 dereferenceable(18640) %.val59, ptr noundef null, ptr noundef nonnull %i.l, i32 %.sroa.079.0, ptr %i.ag, i64 %i.ai, i32 %.sroa.3.0.extract.trunc.i) #26
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = call i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %.val59, ptr noundef null, ptr noundef nonnull %i.l, i32 %.sroa.079.0, ptr %i.ag, i64 %i.ai, i32 %.sroa.3.0.extract.trunc.i, ptr noundef null) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.sroa.050.0 = phi i64 [ %i.al, %bb.f ], [ %i.ak, %bb.e ], [ 1, %bb.c ]
  %i.am = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.q
  br i1 %i.an, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.am) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.an

bb.i:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !2086
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = and i32 %i.a, 2113929216
  %i.as = icmp eq i32 %i.ar, 369098752
  %or.cond = and i1 %i.as, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = lshr i32 %i.a, 19
  %i.av = and i32 %i.au, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !979 ; 5 uses
  br i1 %or.cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = and i16 %i.az, 511
  switch i16 %i.ba, label %bb.m [
    i16 71, label %bb.k
    i16 24, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.bb = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE34TransformDependentScopeDeclRefExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay, i1 noundef zeroext true, ptr noundef null), !inline_history !17
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.l:                                             ; preds = %bb.j
  %i.bc = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE29TransformUnresolvedLookupExprEPNS_20UnresolvedLookupExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay, i1 noundef zeroext true), !inline_history !17
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.m:                                             ; preds = %bb.j
  %i.bd = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay), !inline_history !17
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.n:                                             ; preds = %bb.i
  %i.be = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ay)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE25TransformAddressOfOperandEPNS_4ExprE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE25TransformAddressOfOperandEPNS_4ExprE.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.n
  %storemerge = phi i64 [ %i.be, %bb.n ], [ %i.bb, %bb.k ], [ %i.bc, %bb.l ], [ %i.bd, %bb.m ] ; 3 uses
  %i.bf = icmp eq i64 %storemerge, 1
  br i1 %i.bf, label %bb.an, label %bb.o

bb.o:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE25TransformAddressOfOperandEPNS_4ExprE.exit
  %i.bg = load i32, ptr %i.ao, align 8, !tbaa !2086
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %1, align 8
  %i.bj = lshr i32 %i.bi, 19
  %i.bk = and i32 %i.bj, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !979
  %i.bp = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bo, i1 noundef zeroext false) ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.an, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.070.0 = phi i64 [ %i.bp, %bb.p ], [ 0, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.val57 = load ptr, ptr %0, align 8, !tbaa !1017
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(18640) %.val57) #26
  %i.br = load i32, ptr %1, align 8               ; 2 uses
  %i.bs = and i32 %i.br, 2097152
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = lshr i32 %i.br, 19
  %i.bv = and i32 %i.bu, 1
  %i.bw = load i32, ptr %i.ao, align 8, !tbaa !2086
  %i.bx = add nuw nsw i32 %i.bv, 1
  %i.by = add i32 %i.bx, %i.bw
  %i.bz = shl i32 %i.by, 3
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ca
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cb, align 4, !tbaa !870
  br label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit

_ZNK5clang8CallExpr13getFPFeaturesEv.exit:        ; preds = %bb.q, %bb.r
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val56 = load ptr, ptr %0, align 8, !tbaa !1017 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val56, i64 216
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !882, !nonnull !71, !align !787 ; 4 uses
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
  %i.dh = or i32 %i.dg, 56
  %i.di = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.dj = and i32 %i.dh, %i.di
  %i.dk = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.dl = trunc nuw i64 %i.dk to i32
  %i.dm = or i32 %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %.val56, i64 208
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !870
  %i.do = getelementptr inbounds nuw i8, ptr %.val56, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.do, align 8, !tbaa !870
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1657 ; 9 uses
  %i.dr = load i16, ptr %i.dq, align 8
  %i.ds = and i16 %i.dr, 511                      ; 2 uses
  %.not = icmp eq i16 %i.ds, 24
  br i1 %.not, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.sroa.0.0.copyload.i.i62 = load i64, ptr %i.dt, align 8, !tbaa !75 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %.sroa.0.0.copyload.i.i63 = load i32, ptr %i.du, align 8, !tbaa !870
  store i32 0, ptr %4, align 8, !tbaa !1878
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.dv, align 4, !tbaa !1879
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !54
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.dy, align 8, !tbaa !55
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 8, ptr %i.dz, align 4, !tbaa !56
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false)
  store ptr %.val56, ptr %i.eb, align 8, !tbaa !1880
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %.sroa.0.0.copyload.i.i62, ptr %i.ec, align 8, !tbaa !75
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 %.sroa.0.0.copyload.i.i63, ptr %i.ed, align 8, !tbaa !870
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, i64 %.sroa.0.0.copyload.i.i62) #26
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ef, i8 0, i64 18, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 163
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 164
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.eg, align 2, !tbaa !1004
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 166
  store i8 0, ptr %i.ej, align 2, !tbaa !1881
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 167
  store i8 0, ptr %i.ek, align 1, !tbaa !1882
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #26
  %i.el = load i24, ptr %i.dq, align 8
  %i.em = and i24 %i.el, 1048576
  %i.en = icmp ne i24 %i.em, 0
  %i.eo = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE26TransformOverloadExprDeclsEPNS_12OverloadExprEbRNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.dq, i1 noundef zeroext %i.en, ptr noundef nonnull align 8 dereferenceable(168) %4)
  br i1 %i.eo, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ep = load i32, ptr %1, align 8
  %i.eq = lshr i32 %i.ep, 25
  %i.er = and i32 %i.eq, 63
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i64 = load i32, ptr %i.es, align 4, !tbaa !870
  %i.et = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq) #29
  %i.eu = load i24, ptr %i.dq, align 8
  %i.ev = and i24 %i.eu, 1048576
  %i.ew = icmp ne i24 %i.ev, 0
  %i.ex = and i64 %storemerge, -2
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = and i64 %.sroa.070.0, -2
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE26RebuildCXXOperatorCallExprENS_22OverloadedOperatorKindENS_14SourceLocationES5_bRKNS_17UnresolvedSetImplEPNS_4ExprESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.er, i32 %.sroa.0.0.copyload.i.i64, i32 %i.et, i1 noundef zeroext %i.ew, ptr noundef nonnull align 1 dereferenceable(1) %i.dw, ptr noundef %i.ey, ptr noundef %i.fa)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sroa.050.2 = phi i64 [ %i.fb, %bb.t ], [ 1, %bb.s ]
  %i.fc = load i8, ptr %i.eh, align 1, !tbaa !1886, !range !70, !noundef !71
  %i.fd = trunc nuw i8 %i.fc to i1
  %.pre95 = load i32, ptr %4, align 8             ; 3 uses
  br i1 %i.fd, label %bb.v, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.v:                                             ; preds = %bb.u
  %i.fe = icmp ne i32 %.pre95, 5
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = icmp ne ptr %i.fg, null
  %or.cond.i.i = select i1 %i.fe, i1 %i.fh, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.w:                                             ; preds = %bb.v
  %i.fi = load ptr, ptr %i.eb, align 8, !tbaa !1880 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 216
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !882, !nonnull !71, !align !787
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = and i64 %i.fm, 18014398509481984
  %.not.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fi, ptr noundef nonnull align 8 dereferenceable(168) %4) #26
  %.pre = load i32, ptr %4, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i: ; preds = %bb.x, %bb.v, %bb.u
  %i.fo = phi i32 [ %.pre, %bb.x ], [ %.pre95, %bb.u ], [ %.pre95, %bb.v ]
  %i.fp = load i8, ptr %i.ei, align 4, !tbaa !1887, !range !70, !noundef !71
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = icmp eq i32 %i.fo, 5
  %or.cond90 = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %or.cond90, label %bb.y, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

bb.y:                                             ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.fs = load ptr, ptr %i.eb, align 8, !tbaa !1880
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fs, ptr noundef nonnull align 8 dereferenceable(168) %4) #26
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i: ; preds = %bb.w, %bb.y, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.ft = load ptr, ptr %i.ea, align 8, !tbaa !1888 ; 2 uses
  %.not.i65 = icmp eq ptr %i.ft, null
  br i1 %.not.i65, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.ft) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  %i.fu = load ptr, ptr %i.dw, align 8, !tbaa !54 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.dx
  br i1 %i.fv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.fu) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.am

bb.ad:                                            ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.fw, ptr %5, align 8, !tbaa !54
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.fx, align 8, !tbaa !55
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 1, ptr %i.fy, align 4, !tbaa !56
  %.not93 = icmp eq i16 %i.ds, 81
  br i1 %.not93, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fz = call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dq) #26
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.051 = phi ptr [ %i.fz, %bb.ae ], [ %i.dq, %bb.ad ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !2067 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.gc, align 8, !tbaa !870
  %i.gd = call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.gb) ; 3 uses
  %.not54 = icmp eq ptr %i.gd, null
  br i1 %.not54, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 28
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = and i32 %i.gf, 124
  %i.gh = icmp eq i32 %i.gg, 36
  br i1 %i.gh, label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gi = ptrtoint ptr %i.gd to i64
  %i.gj = or i64 %i.gi, 3                         ; 2 uses
  %i.gk = load i32, ptr %i.fx, align 8, !tbaa !55 ; 2 uses
  %i.gl = load i32, ptr %i.fy, align 4, !tbaa !56
  %.not.i.i.i = icmp ult i32 %i.gk, %i.gl
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai, !prof !79

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.gj)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclE.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gm = zext i32 %i.gk to i64
  %i.gn = load ptr, ptr %5, align 8, !tbaa !54
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gm
  store i64 %i.gj, ptr %i.go, align 1
  %i.gp = load i32, ptr %i.fx, align 8, !tbaa !55
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr %i.fx, align 8, !tbaa !55
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclE.exit: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.gr = load i32, ptr %1, align 8
  %i.gs = lshr i32 %i.gr, 25
  %i.gt = and i32 %i.gs, 63
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 20
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_120TemplateInstantiator18TransformBlockExprEPN5clang9BlockExprE:bb.a
  %.not5.i.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.s = zext i32 %i.r to i64
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.b
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !1039
  %i.u = load ptr, ptr %2, align 8, !tbaa !1088, !nonnull !71, !align !787
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12576
  store ptr %i.t, ptr %i.v, align 8, !tbaa !1028
  store i8 1, ptr %i.k, align 8, !tbaa !1040
  br label %_ZN5clang23LocalInstantiationScope4ExitEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1090 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !54  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj4EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.aa) #26
  br label %_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj4EED2Ev.exit.i.i: ; preds = %bb.d, %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 48) #27
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj4EED2Ev.exit.i.i, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.s
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !10

_ZN5clang23LocalInstantiationScope4ExitEv.exit.i: ; preds = %._crit_edge.i.i, %bb.a
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !54  ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.e
  br i1 %i.ae, label %_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5clang23LocalInstantiationScope4ExitEv.exit.i
  call void @free(ptr noundef %i.ad) #26
  br label %_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i: ; preds = %bb.f, %_ZN5clang23LocalInstantiationScope4ExitEv.exit.i
  %i.af = load i32, ptr %i.b, align 8
  %i.ag = and i32 %i.af, 1
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.g, label %_ZN5clang23LocalInstantiationScopeD2Ev.exit

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !105 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN5clang23LocalInstantiationScopeD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !105
  %i.am = zext i32 %i.ai to i64                   ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = add nuw nsw i64 %i.am, 31
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = and i64 %i.ap, 1073741820
  %i.ar = add nuw nsw i64 %i.aq, %i.an
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.al, i64 noundef %i.ar, i64 noundef 8) #26
  br label %_ZN5clang23LocalInstantiationScopeD2Ev.exit

_ZN5clang23LocalInstantiationScopeD2Ev.exit:      ; preds = %_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i64 %i.o
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE23TransformBinaryOperatorEPNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1657
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1657
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f, i1 noundef zeroext false) ; 4 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val17 = load ptr, ptr %0, align 8, !tbaa !1017 ; 3 uses
  %i.i = getelementptr i8, ptr %.val17, i64 13800
  %.val17.val = load i32, ptr %i.i, align 4, !tbaa !1084
  %.not = icmp eq i32 %.val17.val, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %i.c, -2
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !1657
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = and i64 %i.g, -2
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !1657
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = ptrtoint ptr %1 to i64
  br label %bb.k

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.s = load i32, ptr %1, align 8
  %i.t = lshr i32 %i.s, 19                        ; 2 uses
  %i.u = and i32 %i.t, 62
  %i.v = add nsw i32 %i.u, -22
  %i.w = icmp ult i32 %i.v, 10
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.x, align 4, !tbaa !870
  %i.y = and i32 %i.t, 63
  %i.z = and i64 %i.c, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = and i64 %i.g, -2
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = tail call i64 @_ZN5clang4Sema10BuildBinOpEPNS_5ScopeENS_14SourceLocationENS_18BinaryOperatorKindEPNS_4ExprES6_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val17, ptr noundef null, i32 %.sroa.0.0.copyload.i, i32 noundef %i.y, ptr noundef %i.aa, ptr noundef %i.ac, i1 noundef zeroext false) #26
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(18640) %.val17) #26
  %i.ae = load i32, ptr %1, align 8               ; 2 uses
  %i.af = and i32 %i.ae, 33554432
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = and i32 %i.ae, 511
  %i.ah = icmp eq i32 %i.ag, 123
  %i.ai = select i1 %i.ah, i64 48, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aj, align 4, !tbaa !870
  br label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit

_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit: ; preds = %bb.i, %bb.j
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val15 = load ptr, ptr %0, align 8, !tbaa !1017 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val15, i64 216
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !882, !nonnull !71, !align !787 ; 4 uses
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
  %i.bp = or i32 %i.bo, 56
  %i.bq = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.br = and i32 %i.bp, %i.bq
  %i.bs = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.bt = trunc nuw i64 %i.bs to i32
  %i.bu = or i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.val15, i64 208
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !870
  %i.bw = getelementptr inbounds nuw i8, ptr %.val15, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bw, align 8, !tbaa !870
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.bx, align 4, !tbaa !870
  %i.by = load i32, ptr %1, align 8
  %i.bz = lshr i32 %i.by, 19
  %i.ca = and i32 %i.bz, 63
  %i.cb = and i64 %i.c, -2
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = and i64 %i.g, -2
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = call i64 @_ZN5clang4Sema10BuildBinOpEPNS_5ScopeENS_14SourceLocationENS_18BinaryOperatorKindEPNS_4ExprES6_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val15, ptr noundef null, i32 %.sroa.0.0.copyload.i20, i32 noundef %i.ca, ptr noundef %i.cc, ptr noundef %i.ce, i1 noundef zeroext false) #26
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.h, %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, %bb.b, %bb.a
  %.sroa.030.1 = phi i64 [ 1, %bb.a ], [ %i.r, %bb.f ], [ %i.ad, %bb.h ], [ %i.cf, %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit ], [ 1, %bb.b ]
  ret i64 %.sroa.030.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE31TransformCompoundAssignOperatorEPNS_22CompoundAssignOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %.val6 = load ptr, ptr %0, align 8, !tbaa !1017
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(18640) %.val6) #26
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 33554432
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 511
  %i.d = icmp eq i32 %i.c, 123
  %i.e = select i1 %i.d, i64 48, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 4, !tbaa !870
  br label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit

_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val5 = load ptr, ptr %0, align 8, !tbaa !1017 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val5, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !882, !nonnull !71, !align !787 ; 4 uses
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
  %i.al = or i32 %i.ak, 56
  %i.am = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.an = and i32 %i.al, %i.am
  %i.ao = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.ap = trunc nuw i64 %i.ao to i32
  %i.aq = or i32 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.val5, i64 208
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !870
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.as, align 8, !tbaa !870
  %i.at = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE23TransformBinaryOperatorEPNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1)
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i64 %i.at
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE19TransformAtomicExprEPNS_10AtomicExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.2241", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.d, align 4, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2150 ; 3 uses
  %i.g = icmp ugt i32 %i.f, 8
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.b, i64 noundef %i.h, i64 noundef 8) #26
  %.pre = load i32, ptr %i.e, align 8, !tbaa !2150
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.f, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.j, i32 noundef %i.i, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %.val = load ptr, ptr %0, align 8, !tbaa !1017  ; 2 uses
  %i.l = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.l, align 4, !tbaa !1084
  %i.m = icmp ne i32 %.val.val, 0
  %i.n = load i8, ptr %i.a, align 1, !range !70
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %1 to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 4 ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !54
  %i.s = load i32, ptr %i.c, align 8, !tbaa !55
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.v = load i32, ptr %i.u, align 4, !tbaa !2151
  %i.w = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = call i64 @_ZN5clang4Sema15BuildAtomicExprENS_11SourceRangeES1_NS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEENS_10AtomicExpr8AtomicOpENS0_19AtomicArgumentOrderE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i, i32 %i.x, ptr %i.r, i64 %i.t, i32 noundef %i.v, i32 noundef 1) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.e, %bb.d
  %.sroa.012.0 = phi i64 [ %i.p, %bb.d ], [ %i.y, %bb.e ], [ 1, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %i.z = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.z) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.sroa.012.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE19TransformAsTypeExprEPNS_10AsTypeExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2153
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !105 ; 6 uses
  %.val9.i = load ptr, ptr %0, align 8            ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 40
  %.val10.i = load i32, ptr %i.f, align 8         ; 2 uses
  %i.g = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.g, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %.sroa.0.0.copyload.i, -16
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !824
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %i.l = load i16, ptr %i.k, align 1
  %i.m = and i16 %i.l, 11
  %or.cond6.not.i.i = icmp eq i16 %i.m, 0
  br i1 %or.cond6.not.i.i, label %bb.d, label %_ZN12_GLOBAL__N_120TemplateInstantiator18AlreadyTransformedEN5clang8QualTypeE.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5clang4Sema32MarkDeclarationsReferencedInTypeENS_14SourceLocationENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val9.i, i32 %.val10.i, i64 %.sroa.0.0.copyload.i) #26, !inline_history !1027
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit

_ZN12_GLOBAL__N_120TemplateInstantiator18AlreadyTransformedEN5clang8QualTypeE.exit.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.val9.i, i64 232
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !786, !nonnull !71, !align !787
  %i.p = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.o, i64 %.sroa.0.0.copyload.i, i32 %.val10.i) #26, !inline_history !1027
  %i.q = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.p), !inline_history !1027 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_120TemplateInstantiator18AlreadyTransformedEN5clang8QualTypeE.exit.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.q, align 8, !tbaa !105
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.b, %bb.d, %_ZN12_GLOBAL__N_120TemplateInstantiator18AlreadyTransformedEN5clang8QualTypeE.exit.i, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.e ], [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload.i, %bb.d ], [ 0, %_ZN12_GLOBAL__N_120TemplateInstantiator18AlreadyTransformedEN5clang8QualTypeE.exit.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !1017, !nonnull !71, !align !787
  %i.s = and i64 %i.c, -2
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.u, align 8, !tbaa !870
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.v, align 4, !tbaa !870
  %i.w = tail call i64 @_ZN5clang4Sema15BuildAsTypeExprEPNS_4ExprENS_8QualTypeENS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %i.r, ptr noundef %i.t, i64 %.sroa.0.0.i, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit
  %.sroa.09.0 = phi i64 [ %i.w, %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit ], [ 1, %bb.a ]
  ret i64 %.sroa.09.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE27TransformArrayTypeTraitExprEPNS_18ArrayTypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2155
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !1017  ; 3 uses
  %i.d = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.d, align 4, !tbaa !1084
  %.not22 = icmp eq i32 %.val.val, 0
  br i1 %.not22, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !2155
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 0, ptr noundef null, i32 noundef 4) #26
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2156
  %i.j = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i) ; 2 uses
  %i.k = icmp eq i64 %i.j, 1
  tail call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #26
  br i1 %i.k, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit15

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit15: ; preds = %bb.e
  %i.l = load i24, ptr %1, align 8
  %i.m = lshr i24 %i.l, 19
  %i.n = and i24 %i.m, 3
  %i.o = zext nneg i24 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.p, align 8, !tbaa !870
  %i.q = and i64 %i.j, -2
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.s, align 4, !tbaa !870
  %.val14 = load ptr, ptr %0, align 8, !tbaa !1017
  %i.t = tail call i64 @_ZN5clang4Sema19BuildArrayTypeTraitENS_14ArrayTypeTraitENS_14SourceLocationEPNS_14TypeSourceInfoEPNS_4ExprES2_(ptr noundef nonnull align 8 dereferenceable(18640) %.val14, i32 noundef %i.o, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, ptr noundef %i.r, i32 %.sroa.0.0.copyload.i16) #26
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.e, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit15, %bb.a, %bb.d
end_hunk_4
begin_hunk_5_@_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE34ForgetPartiallySubstitutedPackRAIIC2ERS2_:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !873, !noalias !4141
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.sroa.2.0.insert.ext.i16.i.i ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !noalias !4141 ; 2 uses
  %i.ax = and i64 %i.aw, 2147483647
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit.i
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4141
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !105, !noalias !4141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false), !noalias !4141
  br label %_ZN12_GLOBAL__N_120TemplateInstantiator30ForgetPartiallySubstitutedPackEv.exit

_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit.thread.i: ; preds = %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit.i, %bb.h, %_ZN5clang16getDepthAndIndexEPKNS_9NamedDeclE.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 58
  store i8 1, ptr %i.ay, align 2, !tbaa !1025, !noalias !4141
  br label %_ZN12_GLOBAL__N_120TemplateInstantiator30ForgetPartiallySubstitutedPackEv.exit

_ZN12_GLOBAL__N_120TemplateInstantiator30ForgetPartiallySubstitutedPackEv.exit: ; preds = %bb.c, %bb.d, %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit.thread.i, %bb.i
  %.sroa.8.0 = phi ptr [ %.sroa.7.0.copyload.i, %bb.i ], [ undef, %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit.thread.i ], [ undef, %bb.d ], [ undef, %bb.c ]
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload.i, %bb.i ], [ 0, %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit.thread.i ], [ 0, %bb.d ], [ 0, %bb.c ]
  %.sroa.0.0 = phi i64 [ %i.aw, %bb.i ], [ 0, %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit.thread.i ], [ 0, %bb.d ], [ 0, %bb.c ]
  store i64 %.sroa.0.0, ptr %i.a, align 8
  store i64 %.sroa.6.0, ptr %i.d, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE34ForgetPartiallySubstitutedPackRAIID2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2775, !nonnull !71, !align !787 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.sroa.0.0.copyload = load i64, ptr %i.b, align 8 ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.0.0.copyload10 = load <2 x ptr>, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %i.c = getelementptr i8, ptr %i.a, i64 32
  %.val1 = load ptr, ptr %i.c, align 8            ; 3 uses
  %i.d = and i64 %.sroa.0.sroa.0.0.copyload, 2147483647
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN12_GLOBAL__N_120TemplateInstantiator32RememberPartiallySubstitutedPackEN5clang16TemplateArgumentE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 12576
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1028
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.01729.i.i = phi ptr [ %i.g, %bb.b ], [ %i.n, %bb.e ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01729.i.i, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1042 ; 6 uses
  %.not25.i.i = icmp eq ptr %i.i, null
  br i1 %.not25.i.i, label %bb.d, label %_ZNK5clang23LocalInstantiationScope27getPartiallySubstitutedPackEPPKNS_16TemplateArgumentEPj.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.01729.i.i, i64 121
  %i.k = load i8, ptr %i.j, align 1, !tbaa !1041, !range !70, !noundef !71
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %_ZN12_GLOBAL__N_120TemplateInstantiator32RememberPartiallySubstitutedPackEN5clang16TemplateArgumentE.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.01729.i.i, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1039 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.n, null
  br i1 %.not24.i.i, label %_ZN12_GLOBAL__N_120TemplateInstantiator32RememberPartiallySubstitutedPackEN5clang16TemplateArgumentE.exit, label %bb.c, !llvm.loop !16

_ZNK5clang23LocalInstantiationScope27getPartiallySubstitutedPackEPPKNS_16TemplateArgumentEPj.exit.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 127
  switch i32 %i.q, label %bb.h [
    i32 68, label %bb.f
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %_ZNK5clang23LocalInstantiationScope27getPartiallySubstitutedPackEPPKNS_16TemplateArgumentEPj.exit.i
  %i.r = tail call noundef i32 @_ZNK5clang20TemplateTypeParmDecl8getDepthEv(ptr noundef nonnull align 8 dereferenceable(80) %i.i) #26
  %i.s = tail call noundef i32 @_ZNK5clang20TemplateTypeParmDecl8getIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %i.i) #26
  br label %_ZN5clang16getDepthAndIndexEPKNS_9NamedDeclE.exit.i

bb.g:                                             ; preds = %_ZNK5clang23LocalInstantiationScope27getPartiallySubstitutedPackEPPKNS_16TemplateArgumentEPj.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = and i32 %i.u, 1048575
  %i.w = lshr i32 %i.u, 20
  br label %_ZN5clang16getDepthAndIndexEPKNS_9NamedDeclE.exit.i

bb.h:                                             ; preds = %_ZNK5clang23LocalInstantiationScope27getPartiallySubstitutedPackEPPKNS_16TemplateArgumentEPj.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = and i32 %i.y, 1048575
  %i.aa = lshr i32 %i.y, 20
  br label %_ZN5clang16getDepthAndIndexEPKNS_9NamedDeclE.exit.i

_ZN5clang16getDepthAndIndexEPKNS_9NamedDeclE.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.sink35.i.i = phi i32 [ %i.w, %bb.g ], [ %i.s, %bb.f ], [ %i.aa, %bb.h ]
  %.sink.i.i = phi i32 [ %i.v, %bb.g ], [ %i.r, %bb.f ], [ %i.z, %bb.h ]
  %.sroa.2.0.insert.ext.i16.i.i = zext i32 %.sink35.i.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1, i64 112
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !65
  %i.af = xor i32 %.sink.i.i, -1
  %i.ag = add i32 %i.ac, %i.af
  %i.ah = add i32 %i.ag, %i.ae
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load ptr, ptr %.val1, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !873
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %.sroa.2.0.insert.ext.i16.i.i ; 2 uses
  store i64 %.sroa.0.sroa.0.0.copyload, ptr %i.an, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store <2 x ptr> %.sroa.5.sroa.0.0.copyload10, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_ZN12_GLOBAL__N_120TemplateInstantiator32RememberPartiallySubstitutedPackEN5clang16TemplateArgumentE.exit

_ZN12_GLOBAL__N_120TemplateInstantiator32RememberPartiallySubstitutedPackEN5clang16TemplateArgumentE.exit: ; preds = %bb.d, %bb.e, %bb.a, %_ZN5clang16getDepthAndIndexEPKNS_9NamedDeclE.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !1556, !nonnull !71, !align !787
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 13800
  %i.as = load i32, ptr %i.ap, align 8, !tbaa !870
  store i32 %i.as, ptr %i.ar, align 8, !tbaa !870
  ret void
}

declare noundef i32 @_ZNK5clang20TemplateTypeParmDecl8getDepthEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef i32 @_ZNK5clang20TemplateTypeParmDecl8getIndexEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE21TransformCompoundStmtEPNS_12CompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::FPOptions", align 4  ; 4 uses
  %4 = alloca %"class.clang::FPOptions", align 4  ; 4 uses
  %5 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.2164", align 8 ; 12 uses
  %.val33 = load ptr, ptr %0, align 8, !tbaa !1017 ; 2 uses
  tail call void @_ZN5clang4Sema24ActOnStartOfCompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val33, i1 noundef zeroext false) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %.val32 = load ptr, ptr %0, align 8, !tbaa !1017
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(18640) %.val32) #26
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 512
  %.not68 = icmp eq i16 %i.b, 0
  br i1 %.not68, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val31 = load ptr, ptr %0, align 8, !tbaa !1017 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !105
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 4, !tbaa !870 ; 2 uses
  %.sroa.452.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32 ; 2 uses
  %.sroa.452.0.extract.trunc = trunc nuw i64 %.sroa.452.0.extract.shift to i32
  %i.h = getelementptr inbounds nuw i8, ptr %.val31, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !882, !nonnull !71, !align !787 ; 4 uses
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
  %i.am = or i32 %i.al, 56
  %i.an = xor i32 %.sroa.452.0.extract.trunc, -1
  %i.ao = and i32 %i.am, %i.an
  %i.ap = and i64 %.sroa.452.0.extract.shift, %.sroa.0.0.copyload.i
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = or i32 %i.ao, %i.aq                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %i.ar, ptr %3, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.val31, i64 208
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !870
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.at = load i64, ptr %i.j, align 8
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %i.av = lshr i32 %i.au, 23
  %i.aw = and i32 %i.av, 3                        ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 3
  %spec.store.select.i.i36 = select i1 %i.ax, i32 2, i32 %i.aw ; 2 uses
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
  %i.bi = icmp eq i32 %spec.store.select.i.i36, 1
  %.not3.i.i.i37 = icmp ne i32 %i.bb, 0
  %or.cond.not16.i.i38 = and i1 %.not3.i.i.i37, %i.bi
  %i.bj = and i32 %i.au, 100663296
  %i.bk = icmp eq i32 %i.bj, 67108864
  %or.cond15.i.i39 = select i1 %or.cond.not16.i.i38, i1 %i.bk, i1 false
  %masksel.i.i40 = select i1 %or.cond15.i.i39, i32 256, i32 0
  %i.bl = load i64, ptr %i.ae, align 8
  %sh.diff.i.i41 = lshr i64 %i.bl, 23
  %tr.sh.diff.i.i42 = trunc i64 %sh.diff.i.i41 to i32
  %i.bm = and i32 %tr.sh.diff.i.i42, 29360128
  %i.bn = or disjoint i32 %i.bd, %i.bh
  %i.bo = or disjoint i32 %i.bn, %i.bm
  %i.bp = or disjoint i32 %i.bo, %masksel.i.i40
  %i.bq = or disjoint i32 %i.bp, %i.bb
  %i.br = or disjoint i32 %i.bq, %spec.store.select.i.i36
  %i.bs = or disjoint i32 %i.br, 56               ; 2 uses
  store i32 %i.bs, ptr %4, align 4, !tbaa !2270
  %i.bt = icmp eq i32 %i.ar, %i.bs
  br i1 %i.bt, label %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bu = call i64 @_ZNK5clang9FPOptions14getChangesSlowERKS0_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #26
  br label %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit

_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.insert.insert.i.i = phi i64 [ %i.bu, %bb.c ], [ 0, %bb.b ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.val31, i64 2024
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bv, align 8, !tbaa !870
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.bw, ptr %6, align 8, !tbaa !54
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !55
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 8, ptr %i.by, align 4, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !105 ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %.idx = shl nuw nsw i64 %i.cc, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx ; 2 uses
  %.not71 = icmp eq i32 %i.cb, 0
  br i1 %.not71, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %.074.us = phi i1 [ %.1.ph.us, %bb.j ], [ false, %.lr.ph ] ; 2 uses
  %.02573.us = phi i8 [ %.126.ph.us, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %.03072.us = phi ptr [ %i.df, %bb.j ], [ %i.bz, %.lr.ph ] ; 2 uses
  %i.ce = load ptr, ptr %.03072.us, align 8, !tbaa !1657 ; 4 uses
  %i.cf = load i32, ptr %i.ca, align 4, !tbaa !105 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN5clang12CompoundStmt9body_backEv.exit.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.ch = add i32 %i.cf, -1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1657
  br label %_ZN5clang12CompoundStmt9body_backEv.exit.us

_ZN5clang12CompoundStmt9body_backEv.exit.us:      ; preds = %bb.e, %.lr.ph.split.us
  %i.cl = phi ptr [ %i.ck, %bb.e ], [ null, %.lr.ph.split.us ]
  %i.cm = icmp eq ptr %i.ce, %i.cl
  %i.cn = select i1 %i.cm, i32 2, i32 0
  %i.co = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ce, i32 noundef %i.cn) ; 2 uses
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5clang12CompoundStmt9body_backEv.exit.us
  %i.cq = trunc nuw i8 %.02573.us to i1
  %i.cr = and i64 %i.co, -2
  %i.cs = inttoptr i64 %i.cr to ptr               ; 3 uses
  %i.ct = icmp ne ptr %i.ce, %i.cs
  %narrow.us = select i1 %i.cq, i1 true, i1 %i.ct
  %i.cu = zext i1 %narrow.us to i8                ; 2 uses
  %i.cv = load i32, ptr %i.bx, align 8, !tbaa !55 ; 2 uses
  %i.cw = load i32, ptr %i.by, align 4, !tbaa !56
  %.not.i.us = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i.us, label %bb.h, label %bb.g, !prof !79

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.cs)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %6, align 8, !tbaa !54
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  store ptr %i.cs, ptr %i.cz, align 1
  %i.da = load i32, ptr %i.bx, align 8, !tbaa !55
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.bx, align 8, !tbaa !55
  br label %bb.j

bb.i:                                             ; preds = %_ZN5clang12CompoundStmt9body_backEv.exit.us
  %i.dc = load i16, ptr %i.ce, align 8
  %i.dd = and i16 %i.dc, 511
  %i.de = icmp eq i16 %i.dd, 255
  br i1 %i.de, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.126.ph.us = phi i8 [ %i.cu, %bb.h ], [ %i.cu, %bb.g ], [ %.02573.us, %bb.i ] ; 2 uses
  %.1.ph.us = phi i1 [ %.074.us, %bb.h ], [ %.074.us, %bb.g ], [ true, %bb.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.03072.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.df, %i.cd
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.074 = phi i1 [ %.1.ph, %bb.o ], [ false, %.lr.ph ] ; 2 uses
  %.02573 = phi i8 [ %.126.ph, %bb.o ], [ 0, %.lr.ph ] ; 2 uses
  %.03072 = phi ptr [ %i.dy, %bb.o ], [ %i.bz, %.lr.ph ] ; 2 uses
  %i.dg = load ptr, ptr %.03072, align 8, !tbaa !1657 ; 3 uses
  %i.dh = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dg, i32 noundef 0) ; 2 uses
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
  %i.dq = or i8 %.02573, %i.dp                    ; 2 uses
  %i.dr = load i32, ptr %i.bx, align 8, !tbaa !55 ; 2 uses
  %i.ds = load i32, ptr %i.by, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.dr, %i.ds
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !79

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.dn)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dt = zext i32 %i.dr to i64
  %i.du = load ptr, ptr %6, align 8, !tbaa !54
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  store ptr %i.dn, ptr %i.dv, align 1
  %i.dw = load i32, ptr %i.bx, align 8, !tbaa !55
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.bx, align 8, !tbaa !55
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  %.126.ph = phi i8 [ %i.dq, %bb.n ], [ %i.dq, %bb.m ], [ %.02573, %bb.k ] ; 2 uses
  %.1.ph = phi i1 [ %.074, %bb.n ], [ %.074, %bb.m ], [ true, %bb.k ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.03072, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dy, %i.cd
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.o, %bb.j
  %.025.lcssa = phi i8 [ %.126.ph.us, %bb.j ], [ %.126.ph, %bb.o ]
  %.0.lcssa = phi i1 [ %.1.ph.us, %bb.j ], [ %.1.ph, %bb.o ]
  br i1 %.0.lcssa, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %.025.lcssa88 = phi i8 [ %.025.lcssa, %._crit_edge ], [ 0, %bb.d ]
  %.val34 = load ptr, ptr %0, align 8, !tbaa !1017 ; 2 uses
  %i.dz = getelementptr i8, ptr %.val34, i64 13800
  %.val34.val = load i32, ptr %i.dz, align 4, !tbaa !1084
  %i.ea = icmp ne i32 %.val34.val, 0
end_hunk_5
