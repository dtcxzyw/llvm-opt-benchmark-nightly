Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplateInstantiate?download=true
inline.NumInlined: 46814
inline.NumDeleted: 15846
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE30TransformOMPFirstprivateClauseEPNS_21OMPFirstprivateClauseE:bb.a
  %.not.i25 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i25, label %bb.g, label %bb.f, !prof !79

bb.f:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.s)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %2, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store ptr %i.s, ptr %i.x, align 1
  %i.y = load i32, ptr %i.b, align 8, !tbaa !55
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.02035, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !54
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ad = zext i32 %i.ac to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ae, align 4, !tbaa !870
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.af, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.ag = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ag, align 8, !tbaa !1938
  %i.ah = call noundef ptr @_ZN5clang10SemaOpenMP29ActOnOpenMPFirstprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ab, i64 %i.ad, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i26, i32 %.sroa.0.0.copyload.i27) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %.critedge24
  %.3 = phi ptr [ %i.ah, %.critedge24 ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.ai = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ai) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE23TransformOMPFlushClauseEPNS_14OMPFlushClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2620 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2620
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not34 = icmp eq i32 %i.h, 0
  br i1 %.not34, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02035 = phi ptr [ %i.aa, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02035, align 8, !tbaa !979 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  switch i16 %i.n, label %bb.e [
    i16 122, label %bb.d
    i16 77, label %bb.d
    i16 20, label %bb.d
    i16 24, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.l), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.d, %bb.e
  %.sroa.031.0 = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %.sroa.031.0, 1
  br i1 %i.q, label %.critedge, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %.lr.ph, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.031.033 = phi i64 [ %.sroa.031.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %.lr.ph ]
  %i.r = and i64 %.sroa.031.033, -2
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i25 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i25, label %bb.g, label %bb.f, !prof !79

bb.f:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.s)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %2, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store ptr %i.s, ptr %i.x, align 1
  %i.y = load i32, ptr %i.b, align 8, !tbaa !55
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.02035, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !54
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ad = zext i32 %i.ac to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ae, align 4, !tbaa !870
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.af, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.ag = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ag, align 8, !tbaa !1938
  %i.ah = call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPFlushClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ab, i64 %i.ad, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i26, i32 %.sroa.0.0.copyload.i27) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %.critedge24
  %.3 = phi ptr [ %i.ah, %.critedge24 ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.ai = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ai) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE22TransformOMPFromClauseEPNS_13OMPFromClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.2641", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !870
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !870
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !870
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !870
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !870
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2622 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !979  ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, 511
  switch i16 %i.p, label %bb.d [
    i16 122, label %bb.c
    i16 77, label %bb.c
    i16 20, label %bb.c
    i16 24, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.n), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %i.n to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.c, %bb.d
  %.sroa.059.0 = phi i64 [ %i.q, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = icmp eq i64 %.sroa.059.0, 1
  br i1 %i.s, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %i.t = and i64 %.sroa.059.0, -2
  %i.u = inttoptr i64 %i.t to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !2622
  %.pre103 = load i32, ptr %i.g, align 4, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.v = phi i32 [ %.pre103, %bb.e ], [ 16, %bb.a ]
  %i.w = phi i32 [ %.pre, %bb.e ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.u, %bb.e ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i64 0, ptr %9, align 8, !tbaa !949
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.x, align 8, !tbaa !1118
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.z, ptr %10, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.ab, align 4, !tbaa !56
  %i.ac = icmp ugt i32 %i.w, %i.v
  br i1 %i.ac, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = zext i32 %i.w to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.ad, i64 noundef 8) #26
  %.pre104 = load i32, ptr %i.i, align 4, !tbaa !2622
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %i.ae = phi i32 [ %i.w, %bb.f ], [ %.pre104, %bb.g ] ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %.idx = shl nuw nsw i64 %i.af, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i2589 = icmp eq i32 %i.ae, 0
  br i1 %.not.i2589, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit50
  %.058.i90 = phi ptr [ %i.aw, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit50 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ah = load ptr, ptr %.058.i90, align 8, !tbaa !979 ; 4 uses
  %.not.i51 = icmp eq ptr %i.ah, null
  br i1 %.not.i51, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ai = load i16, ptr %i.ah, align 8
  %i.aj = and i16 %i.ai, 511
  switch i16 %i.aj, label %bb.j [
    i16 122, label %bb.i
    i16 77, label %bb.i
    i16 20, label %bb.i
    i16 24, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.ak = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.ah), !inline_history !3939
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52

bb.j:                                             ; preds = %bb.h
  %i.al = ptrtoint ptr %i.ah to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52: ; preds = %bb.i, %bb.j
  %.sroa.078.0 = phi i64 [ %i.ak, %bb.i ], [ %i.al, %bb.j ] ; 2 uses
  %i.am = icmp eq i64 %.sroa.078.0, 1
  br i1 %i.am, label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52.thread: ; preds = %.lr.ph, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52
  %.sroa.078.080 = phi i64 [ %.sroa.078.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52 ], [ 0, %.lr.ph ]
  %i.an = and i64 %.sroa.078.080, -2
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = load i32, ptr %i.f, align 8, !tbaa !55  ; 2 uses
  %i.aq = load i32, ptr %i.g, align 4, !tbaa !56
  %.not.i49 = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i49, label %bb.l, label %bb.k, !prof !79

bb.k:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ao)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit50

bb.l:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52.thread
  %i.ar = zext i32 %i.ap to i64
  %i.as = load ptr, ptr %7, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  store ptr %i.ao, ptr %i.at, align 1
  %i.au = load i32, ptr %i.f, align 8, !tbaa !55
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.f, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit50

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit50: ; preds = %bb.k, %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.058.i90, i64 8 ; 2 uses
  %.not.i25 = icmp eq ptr %i.aw, %i.ag
  br i1 %.not.i25, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit50, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i44 = load i64, ptr %i.ax, align 8, !tbaa !75 ; 2 uses
  %.not83 = icmp eq i64 %.sroa.0.0.copyload.i44, 0
  br i1 %.not83, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i46 = load ptr, ptr %.sroa.2.0..sroa_idx.i45, align 8, !tbaa !955
  %i.ay = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i44, ptr %.sroa.2.0.copyload.i46, i64 0, ptr noundef null), !inline_history !3940 ; 2 uses
  %i.az = extractvalue { i64, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.ay, 1
  %.not84 = icmp eq i64 %i.az, 0
  br i1 %.not84, label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.ba, %bb.m ], [ null, %._crit_edge ]
  %.sroa.072.0 = phi i64 [ %i.az, %bb.m ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.072.0, ptr %.sroa.6.0) #26, !inline_history !3940
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !1119
  %.sroa.0.0.copyload.i40 = load i64, ptr %9, align 8, !tbaa !75
  %.not85 = icmp eq i64 %.sroa.0.0.copyload.i40, 0
  br i1 %.not85, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call fastcc void @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !3940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1119
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.sroa.0.0.copyload.i39 = load i64, ptr %9, align 8, !tbaa !75
  %.not86 = icmp eq i64 %.sroa.0.0.copyload.i39, 0
  br i1 %.not86, label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = load i32, ptr %i.i, align 8, !tbaa !2622 ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %.idx100 = shl nuw nsw i64 %i.bd, 3
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx100 ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.bd
  %.not63.i96 = icmp eq i32 %i.bc, 0
  br i1 %.not63.i96, label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph99, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i97 = phi ptr [ %11, %.lr.ph99 ], [ %i.eu, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.bk = load ptr, ptr %.061.i97, align 8, !tbaa !979 ; 4 uses
  %.not64.i = icmp eq ptr %i.bk, null
  br i1 %.not64.i, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.be, ptr %5, align 8, !tbaa !54
  store i32 0, ptr %i.bf, align 8, !tbaa !55
  store i32 8, ptr %i.bg, align 4, !tbaa !56
  %i.bl = load i16, ptr %i.bk, align 8
  %i.bm = and i16 %i.bl, 511
  %i.bn = icmp eq i16 %i.bm, 24
  %.1.v.i.i.i.i = select i1 %i.bn, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !105 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %.idx101 = shl nuw nsw i64 %i.bq, 3
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx101
  %.not8791 = icmp eq i32 %i.bp, 0
  br i1 %.not8791, label %._crit_edge95, label %.lr.ph94

._crit_edge95:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.r
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !1783
  %i.bs = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !786, !nonnull !71, !align !787 ; 2 uses
  %i.bu = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bt) #26, !inline_history !3940 ; 2 uses
  %i.bv = extractvalue { i64, ptr } %i.bu, 0
  %i.bw = extractvalue { i64, ptr } %i.bu, 1
  %i.bx = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.by = load i32, ptr %i.bf, align 8, !tbaa !55
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bt, ptr noundef null, i64 %i.bv, ptr %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.cb, i64 %i.cc, i1 noundef zeroext false, i1 noundef zeroext false) #26, !inline_history !3940 ; 2 uses
  %i.ce = load i32, ptr %i.aa, align 8, !tbaa !55 ; 2 uses
  %i.cf = load i32, ptr %i.ab, align 4, !tbaa !56
  %.not.i33 = icmp ult i32 %i.ce, %i.cf
  br i1 %.not.i33, label %bb.t, label %bb.s, !prof !79

bb.s:                                             ; preds = %._crit_edge95
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.cd)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit34

bb.t:                                             ; preds = %._crit_edge95
  %i.cg = zext i32 %i.ce to i64
  %i.ch = load ptr, ptr %10, align 8, !tbaa !54
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  store ptr %i.cd, ptr %i.ci, align 1
  %i.cj = load i32, ptr %i.aa, align 8, !tbaa !55
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.aa, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit34

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit34: ; preds = %bb.s, %bb.t
  %i.cl = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.be
  br i1 %i.cm, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit34
  call void @free(ptr noundef %i.cl) #26
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit34, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph94:                                         ; preds = %bb.r, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.061.092 = phi ptr [ %i.em, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.r ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.061.092, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.061.092, align 8
  %i.cn = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.cp = load ptr, ptr %i.bh, align 8, !tbaa !1797, !noalias !3949 ; 3 uses
  %i.cq = load ptr, ptr %i.bi, align 8, !tbaa !1798, !noalias !3949 ; 2 uses
  %i.cr = load i32, ptr %i.bj, align 4, !tbaa !1009, !noalias !3949 ; 4 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.loopexit.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph94
  %i.ct = add i32 %i.cr, -1                       ; 2 uses
  %i.cu = mul i64 %i.cn, -4658895280553007687     ; 2 uses
  %i.cv = lshr i64 %i.cu, 31
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = and i32 %i.ct, %i.cx                    ; 3 uses
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = lshr i64 %i.cz, 5
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !870, !noalias !3950
  %i.dd = and i32 %i.cy, 31
  %i.de = lshr i32 %i.dc, %i.dd
  %i.df = trunc i32 %i.de to i1
  br i1 %i.df, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !923

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.v, %bb.w
  %i.dg = phi i64 [ %i.dm, %bb.w ], [ %i.cz, %bb.v ]
  %.017.i.i.i.i.i = phi i32 [ %i.dl, %bb.w ], [ %i.cy, %bb.v ]
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.dg ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !983, !noalias !3950
  %i.dj = icmp eq ptr %i.di, %i.co
  br i1 %i.dj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.w, !prof !79

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dk = add nuw i32 %.017.i.i.i.i.i, 1
  %i.dl = and i32 %i.dk, %i.ct                    ; 3 uses
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = lshr i64 %i.dm, 5
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !870, !noalias !3950
  %i.dq = and i32 %i.dl, 31
  %i.dr = lshr i32 %i.dp, %i.dq
  %i.ds = trunc i32 %i.dr to i1
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !924

.loopexit.i.i.i:                                  ; preds = %bb.w, %bb.v, %.lr.ph94
  %i.dt = zext i32 %i.cr to i64                   ; 2 uses
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.dt
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cr to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dt, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.dh, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.du, %.loopexit.i.i.i ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %.pre-phi.i
  %.not.i32 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dv
  br i1 %.not.i32, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1800
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.x
  %.0.i = phi ptr [ %i.dx, %bb.x ], [ %i.co, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = lshr i32 %i.dz, 13
  %i.eb = and i32 %i.ea, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = ptrtoint ptr %.0.i to i64
  %i.ee = or i64 %i.ec, %i.ed                     ; 2 uses
  %i.ef = load i32, ptr %i.bf, align 8, !tbaa !55 ; 2 uses
  %i.eg = load i32, ptr %i.bg, align 4, !tbaa !56
  %.not.i.i31 = icmp ult i32 %i.ef, %i.eg
  br i1 %.not.i.i31, label %bb.z, label %bb.y, !prof !79

bb.y:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.ee)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.z:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eh = zext i32 %i.ef to i64
  %i.ei = load ptr, ptr %5, align 8, !tbaa !54
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eh
  store i64 %i.ee, ptr %i.ej, align 1
  %i.ek = load i32, ptr %i.bf, align 8, !tbaa !55
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.bf, align 8, !tbaa !55
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.y, %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.061.092, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.em, %i.br
  br i1 %.not87, label %._crit_edge95, label %.lr.ph94

bb.aa:                                            ; preds = %bb.q
  %i.en = load i32, ptr %i.aa, align 8, !tbaa !55 ; 2 uses
  %i.eo = load i32, ptr %i.ab, align 4, !tbaa !56
  %.not.i30 = icmp ult i32 %i.en, %i.eo
  br i1 %.not.i30, label %bb.ac, label %bb.ab, !prof !79

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ep = zext i32 %i.en to i64
  %i.eq = load ptr, ptr %10, align 8, !tbaa !54
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ep
  store ptr null, ptr %i.er, align 1
  %i.es = load i32, ptr %i.aa, align 8, !tbaa !55
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.aa, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.ac, %bb.ab, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %.061.i97, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eu, %12
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit, label %bb.q

_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.ex, align 8, !tbaa !870
  %i.ey = load ptr, ptr %7, align 8, !tbaa !54
  %i.ez = load i32, ptr %i.f, align 8, !tbaa !55
  %i.fa = zext i32 %i.ez to i64
  %i.fb = load ptr, ptr %10, align 8, !tbaa !54
  %i.fc = load i32, ptr %i.aa, align 8, !tbaa !55
  %i.fd = zext i32 %i.fc to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.fe = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.fe, align 8, !tbaa !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.fb, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.fd, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.ey, ptr %3, align 8
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fa, ptr %.sroa.256.0..sroa_idx, align 8
  %i.ff = call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPFromClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull %i.ev, i64 3, ptr nonnull %i.ew, i64 3, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 %.sroa.0.0.copyload.i28, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread: ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52, %bb.o, %bb.m, %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit
  %.1 = phi ptr [ %i.ff, %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit ], [ null, %bb.o ], [ null, %bb.m ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52 ]
  %i.fg = load ptr, ptr %10, align 8, !tbaa !54   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.z
  br i1 %i.fh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread
  call void @free(ptr noundef %i.fg) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !1733
  %.not.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1734
  call void @free(ptr noundef %i.fl) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.fm = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.e
  br i1 %i.fn, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit29, label %bb.af

bb.af:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fm) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit29

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit29: ; preds = %.critedge, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE22TransformOMPFullClauseEPNS_13OMPFullClauseE(ptr nofree readonly captures(none) %.0.val, ptr nofree noundef readonly captures(ret: address, provenance) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %.0.val, i64 13800
  %.val.val = load i32, ptr %i.a, align 4, !tbaa !1084
  %.not = icmp eq i32 %.val.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 4, !tbaa !870
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i7 = load i32, ptr %i.b, align 4, !tbaa !870
  %i.c = getelementptr i8, ptr %.0.val, i64 832
  %.val6.val = load ptr, ptr %i.c, align 8, !tbaa !1938
  %i.d = tail call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPFullClauseENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(552) %.val6.val, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i7) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE27TransformOMPGrainsizeClauseEPNS_18OMPGrainsizeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2625 ; 4 uses
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
  %.sroa.015.0 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq i64 %.sroa.015.0, 1
  br i1 %i.g, label %bb.e, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %bb.a, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.015.017 = phi i64 [ %.sroa.015.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2626
  %i.j = and i64 %.sroa.015.017, -2
  %i.k = inttoptr i64 %i.j to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.l, align 4, !tbaa !870
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.m, align 4, !tbaa !870
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.n, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.o = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.o, align 8, !tbaa !1938
  %i.p = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPGrainsizeClauseENS_29OpenMPGrainsizeClauseModifierEPNS_4ExprENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.i, ptr noundef %i.k, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i11, i32 %.sroa.0.0.copyload.i12, i32 %.sroa.0.0.copyload.i13) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %.0 = phi ptr [ %i.p, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE31TransformOMPHasDeviceAddrClauseEPNS_22OMPHasDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2628 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2628
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not34 = icmp eq i32 %i.h, 0
  br i1 %.not34, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02035 = phi ptr [ %i.aa, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02035, align 8, !tbaa !979 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  switch i16 %i.n, label %bb.e [
    i16 122, label %bb.d
    i16 77, label %bb.d
    i16 20, label %bb.d
    i16 24, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.l), !inline_history !1653
end_hunk_0
begin_hunk_1_@_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE23TransformOMPHoldsClauseEPNS_14OMPHoldsClauseE:bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.j, align 4, !tbaa !870
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.k, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.l = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.l, align 8, !tbaa !1938
  %i.m = tail call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPHoldsClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.i, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %.0 = phi ptr [ %i.m, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE20TransformOMPIfClauseEPNS_11OMPIfClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2634 ; 4 uses
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
  %.sroa.018.0 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq i64 %.sroa.018.0, 1
  br i1 %i.g, label %bb.e, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %bb.a, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.018.020 = phi i64 [ %.sroa.018.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2635
  %i.j = and i64 %.sroa.018.020, -2
  %i.k = inttoptr i64 %i.j to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.l, align 4, !tbaa !870
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.m, align 8, !tbaa !870
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.n, align 8, !tbaa !870
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.o, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.p = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.p, align 8, !tbaa !1938
  %i.q = tail call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPIfClauseEN4llvm3omp9DirectiveEPNS_4ExprENS_14SourceLocationES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.i, ptr noundef %i.k, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i13, i32 %.sroa.0.0.copyload.i14, i32 %.sroa.0.0.copyload.i15, i32 %.sroa.0.0.copyload.i16) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %.0 = phi ptr [ %i.q, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE29TransformOMPInReductionClauseEPNS_20OMPInReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.2641", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2637 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2637
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not96 = icmp eq i32 %i.h, 0
  br i1 %.not96, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04697 = phi ptr [ %i.aa, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04697, align 8, !tbaa !979 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  switch i16 %i.n, label %bb.e [
    i16 122, label %bb.d
    i16 77, label %bb.d
    i16 20, label %bb.d
    i16 24, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.l), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.d, %bb.e
  %.sroa.089.0 = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %.sroa.089.0, 1
  br i1 %i.q, label %.critedge, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %.lr.ph, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.089.091 = phi i64 [ %.sroa.089.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %.lr.ph ]
  %i.r = and i64 %.sroa.089.091, -2
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i55 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i55, label %bb.g, label %bb.f, !prof !79

bb.f:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.s)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %3, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store ptr %i.s, ptr %i.x, align 1
  %i.y = load i32, ptr %i.b, align 8, !tbaa !55
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.04697, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !955
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !tbaa.struct !1119
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !75
  %.not92 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not92, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call fastcc void @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1119
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.sroa.0.0.copyload.i59 = load i64, ptr %5, align 8, !tbaa !75
  %.not93 = icmp eq i64 %.sroa.0.0.copyload.i59, 0
  br i1 %.not93, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.af, align 4, !tbaa !56
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !2637 ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 5 uses
  %.idx106.a = shl nuw nsw i64 %i.ah, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx106.a
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ah
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ah ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ah
  %.not51101 = icmp eq i32 %i.ag, 0
  br i1 %.not51101, label %._crit_edge105, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.k

._crit_edge105.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72
  %.pre109 = load ptr, ptr %7, align 8, !tbaa !54
  %.pre110 = load i32, ptr %i.ae, align 8, !tbaa !55
  %i.ap = zext i32 %.pre110 to i64
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge105.loopexit, %bb.i
  %i.aq = phi i64 [ %i.ap, %._crit_edge105.loopexit ], [ 0, %bb.i ]
  %i.ar = phi ptr [ %.pre109, %._crit_edge105.loopexit ], [ %i.ad, %bb.i ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !54
  %i.at = load i32, ptr %i.b, align 8, !tbaa !55
  %i.au = zext i32 %i.at to i64
  %.sroa.0.0.copyload.i62 = load i32, ptr %1, align 8, !tbaa !870
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.av, align 4, !tbaa !870
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.aw, align 8, !tbaa !870
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i65 = load i32, ptr %i.ax, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.ay = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ay, align 8, !tbaa !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ar, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aq, ptr %.sroa.2.0..sroa_idx, align 8
  %i.az = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPInReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.as, i64 %i.au, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, i32 %.sroa.0.0.copyload.i65, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ba = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ad
  br i1 %i.bb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge105
  call void @free(ptr noundef %i.ba) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge105, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.k:                                             ; preds = %.lr.ph104, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72
  %.049102 = phi ptr [ %11, %.lr.ph104 ], [ %i.en, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72 ] ; 2 uses
  %i.bc = load ptr, ptr %.049102, align 8, !tbaa !979 ; 4 uses
  %.not52 = icmp eq ptr %i.bc, null
  br i1 %.not52, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.aj, ptr %8, align 8, !tbaa !54
  store i32 0, ptr %i.ak, align 8, !tbaa !55
  store i32 8, ptr %i.al, align 4, !tbaa !56
  %i.bd = load i16, ptr %i.bc, align 8
  %i.be = and i16 %i.bd, 511
  %i.bf = icmp eq i16 %i.be, 24
  %.1.v.i.i.i.i = select i1 %i.bf, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !105 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %.idx107 = shl nuw nsw i64 %i.bi, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx107
  %.not9498 = icmp eq i32 %i.bh, 0
  br i1 %.not9498, label %._crit_edge, label %.lr.ph100

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.l
  %i.bk = load ptr, ptr %0, align 8, !tbaa !1783, !nonnull !71, !align !787
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 232
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !786, !nonnull !71, !align !787 ; 2 uses
  %i.bn = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bm) #26 ; 2 uses
  %i.bo = extractvalue { i64, ptr } %i.bn, 0
  %i.bp = extractvalue { i64, ptr } %i.bn, 1
  %i.bq = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.br = load i32, ptr %i.ak, align 8, !tbaa !55
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bm, ptr noundef null, i64 %i.bo, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bu, i64 %i.bv, i1 noundef zeroext false, i1 noundef zeroext false) #26 ; 2 uses
  %i.bx = load i32, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %i.by = load i32, ptr %i.af, align 4, !tbaa !56
  %.not.i68 = icmp ult i32 %i.bx, %i.by
  br i1 %.not.i68, label %bb.n, label %bb.m, !prof !79

bb.m:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bw)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit69

bb.n:                                             ; preds = %._crit_edge
  %i.bz = zext i32 %i.bx to i64
  %i.ca = load ptr, ptr %7, align 8, !tbaa !54
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store ptr %i.bw, ptr %i.cb, align 1
  %i.cc = load i32, ptr %i.ae, align 8, !tbaa !55
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ae, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit69

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit69: ; preds = %bb.m, %bb.n
  %i.ce = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.aj
  br i1 %i.cf, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit69
  call void @free(ptr noundef %i.ce) #26
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit69, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72

.lr.ph100:                                        ; preds = %bb.l, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.078.099 = phi ptr [ %i.ef, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.l ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.078.099, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.078.099, align 8
  %i.cg = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = load ptr, ptr %i.am, align 8, !tbaa !1797, !noalias !3959 ; 3 uses
  %i.cj = load ptr, ptr %i.an, align 8, !tbaa !1798, !noalias !3959 ; 2 uses
  %i.ck = load i32, ptr %i.ao, align 4, !tbaa !1009, !noalias !3959 ; 4 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.loopexit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph100
  %i.cm = add i32 %i.ck, -1                       ; 2 uses
  %i.cn = mul i64 %i.cg, -4658895280553007687     ; 2 uses
  %i.co = lshr i64 %i.cn, 31
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.cm, %i.cq                    ; 3 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 5
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !870, !noalias !3960
  %i.cw = and i32 %i.cr, 31
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc i32 %i.cx to i1
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !923

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %i.cz = phi i64 [ %i.df, %bb.q ], [ %i.cs, %bb.p ]
  %.017.i.i.i.i.i = phi i32 [ %i.de, %bb.q ], [ %i.cr, %bb.p ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cz ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !983, !noalias !3960
  %i.dc = icmp eq ptr %i.db, %i.ch
  br i1 %i.dc, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.q, !prof !79

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dd = add nuw i32 %.017.i.i.i.i.i, 1
  %i.de = and i32 %i.dd, %i.cm                    ; 3 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = lshr i64 %i.df, 5
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !870, !noalias !3960
  %i.dj = and i32 %i.de, 31
  %i.dk = lshr i32 %i.di, %i.dj
  %i.dl = trunc i32 %i.dk to i1
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !924

.loopexit.i.i.i:                                  ; preds = %bb.q, %bb.p, %.lr.ph100
  %i.dm = zext i32 %i.ck to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.dm
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ck to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dm, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.da, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %.pre-phi.i
  %.not.i70 = icmp eq ptr %.lcssa.sink.i.i.i, %i.do
  br i1 %.not.i70, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1800
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.r
  %.0.i = phi ptr [ %i.dq, %bb.r ], [ %i.ch, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = lshr i32 %i.ds, 13
  %i.du = and i32 %i.dt, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = ptrtoint ptr %.0.i to i64
  %i.dx = or i64 %i.dv, %i.dw                     ; 2 uses
  %i.dy = load i32, ptr %i.ak, align 8, !tbaa !55 ; 2 uses
  %i.dz = load i32, ptr %i.al, align 4, !tbaa !56
  %.not.i.i = icmp ult i32 %i.dy, %i.dz
  br i1 %.not.i.i, label %bb.t, label %bb.s, !prof !79

bb.s:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dx)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.t:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ea = zext i32 %i.dy to i64
  %i.eb = load ptr, ptr %8, align 8, !tbaa !54
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  store i64 %i.dx, ptr %i.ec, align 1
  %i.ed = load i32, ptr %i.ak, align 8, !tbaa !55
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ak, align 8, !tbaa !55
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.s, %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.078.099, i64 8 ; 2 uses
  %.not94 = icmp eq ptr %i.ef, %i.bj
  br i1 %.not94, label %._crit_edge, label %.lr.ph100

bb.u:                                             ; preds = %bb.k
  %i.eg = load i32, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %i.eh = load i32, ptr %i.af, align 4, !tbaa !56
  %.not.i71 = icmp ult i32 %i.eg, %i.eh
  br i1 %.not.i71, label %bb.w, label %bb.v, !prof !79

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72

bb.w:                                             ; preds = %bb.u
  %i.ei = zext i32 %i.eg to i64
  %i.ej = load ptr, ptr %7, align 8, !tbaa !54
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei
  store ptr null, ptr %i.ek, align 1
  %i.el = load i32, ptr %i.ae, align 8, !tbaa !55
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.ae, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72: ; preds = %bb.w, %bb.v, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.049102, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.en, %12
  br i1 %.not51, label %._crit_edge105.loopexit, label %bb.k

bb.x:                                             ; preds = %bb.h, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.az, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !1733
  %.not.i.i73 = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i73, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1734
  call void @free(ptr noundef %i.er) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.es = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.a
  br i1 %i.et, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit74, label %bb.z

bb.z:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.es) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit74

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit74: ; preds = %.critedge, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE27TransformOMPInclusiveClauseEPNS_18OMPInclusiveClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2639 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2639
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not34 = icmp eq i32 %i.h, 0
  br i1 %.not34, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02035 = phi ptr [ %i.aa, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02035, align 8, !tbaa !979 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  switch i16 %i.n, label %bb.e [
    i16 122, label %bb.d
    i16 77, label %bb.d
    i16 20, label %bb.d
    i16 24, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.l), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.d, %bb.e
  %.sroa.031.0 = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %.sroa.031.0, 1
  br i1 %i.q, label %.critedge, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %.lr.ph, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.031.033 = phi i64 [ %.sroa.031.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %.lr.ph ]
  %i.r = and i64 %.sroa.031.033, -2
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i25 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i25, label %bb.g, label %bb.f, !prof !79

bb.f:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.s)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %2, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store ptr %i.s, ptr %i.x, align 1
  %i.y = load i32, ptr %i.b, align 8, !tbaa !55
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.02035, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !54
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ad = zext i32 %i.ac to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ae, align 4, !tbaa !870
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.af, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.ag = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ag, align 8, !tbaa !1938
  %i.ah = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPInclusiveClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ab, i64 %i.ad, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i26, i32 %.sroa.0.0.copyload.i27) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %.critedge24
  %.3 = phi ptr [ %i.ah, %.critedge24 ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.ai = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ai) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE22TransformOMPInitClauseEPNS_13OMPInitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"struct.clang::OMPInteropInfo", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %"class.llvm::SmallVector.1338", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !979  ; 4 uses
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
  %.sroa.084.0 = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp eq i64 %.sroa.084.0, 1
  br i1 %i.h, label %bb.w, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %bb.a, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.084.088 = phi i64 [ %.sroa.084.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !2642, !range !70, !noundef !71
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.l = load i8, ptr %i.k, align 1, !tbaa !2643, !range !70, !noundef !71
  store i8 %i.j, ptr %2, align 8, !tbaa !2650
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !2651
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.n, align 2, !tbaa !2652
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE29TransformOMPLastprivateClauseEPNS_20OMPLastprivateClauseE:bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2659
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not41 = icmp eq i32 %i.h, 0
  br i1 %.not41, label %.critedge29, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02542 = phi ptr [ %i.aa, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02542, align 8, !tbaa !979 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  switch i16 %i.n, label %bb.e [
    i16 122, label %bb.d
    i16 77, label %bb.d
    i16 20, label %bb.d
    i16 24, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.l), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.d, %bb.e
  %.sroa.038.0 = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %.sroa.038.0, 1
  br i1 %i.q, label %.critedge, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %.lr.ph, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.038.040 = phi i64 [ %.sroa.038.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %.lr.ph ]
  %i.r = and i64 %.sroa.038.040, -2
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i30 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i30, label %bb.g, label %bb.f, !prof !79

bb.f:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.s)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %2, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store ptr %i.s, ptr %i.x, align 1
  %i.y = load i32, ptr %i.b, align 8, !tbaa !55
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.02542, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.k
  br i1 %.not, label %.critedge29, label %.lr.ph

.critedge29:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !54
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !2663
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.ag, align 4, !tbaa !870
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.ah, align 8, !tbaa !870
  %.sroa.0.0.copyload.i32 = load i32, ptr %1, align 8, !tbaa !870
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.ai, align 4, !tbaa !870
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i34 = load i32, ptr %i.aj, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.ak = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ak, align 8, !tbaa !1938
  %i.al = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPLastprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_25OpenMPLastprivateModifierENS_14SourceLocationES7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ab, i64 %i.ad, i32 noundef %i.af, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i31, i32 %.sroa.0.0.copyload.i32, i32 %.sroa.0.0.copyload.i33, i32 %.sroa.0.0.copyload.i34) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %.critedge29
  %.3 = phi ptr [ %i.al, %.critedge29 ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.am = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.am) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE24TransformOMPLinearClauseEPNS_15OMPLinearClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2665 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2665
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not52 = icmp eq i32 %i.h, 0
  br i1 %.not52, label %.critedge32, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02853 = phi ptr [ %i.aa, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02853, align 8, !tbaa !979 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  switch i16 %i.n, label %bb.e [
    i16 122, label %bb.d
    i16 77, label %bb.d
    i16 20, label %bb.d
    i16 24, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.l), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.d, %bb.e
  %.sroa.046.0 = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %.sroa.046.0, 1
  br i1 %i.q, label %.critedge, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %.lr.ph, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.046.049 = phi i64 [ %.sroa.046.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %.lr.ph ]
  %i.r = and i64 %.sroa.046.049, -2
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i33 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i33, label %bb.g, label %bb.f, !prof !79

bb.f:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.s)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %2, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store ptr %i.s, ptr %i.x, align 1
  %i.y = load i32, ptr %i.b, align 8, !tbaa !55
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.02853, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.k
  br i1 %.not, label %.critedge32.loopexit, label %.lr.ph

.critedge32.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.pre54 = load i32, ptr %i.d, align 4, !tbaa !2665
  %i.ab = zext i32 %.pre54 to i64
  br label %.critedge32

.critedge32:                                      ; preds = %.critedge32.loopexit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ac = phi i64 [ %i.ab, %.critedge32.loopexit ], [ 0, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 5 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ac
  %4 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ac
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ac
  %6 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ac
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !979 ; 4 uses
  %.not.i34 = icmp eq ptr %i.ae, null
  br i1 %.not.i34, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit35.thread, label %bb.h

bb.h:                                             ; preds = %.critedge32
  %i.af = load i16, ptr %i.ae, align 8
  %i.ag = and i16 %i.af, 511
  switch i16 %i.ag, label %bb.j [
    i16 122, label %bb.i
    i16 77, label %bb.i
    i16 20, label %bb.i
    i16 24, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.ah = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.ae), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit35

bb.j:                                             ; preds = %bb.h
  %i.ai = ptrtoint ptr %i.ae to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit35

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit35: ; preds = %bb.i, %bb.j
  %.sroa.047.0 = phi i64 [ %i.ah, %bb.i ], [ %i.ai, %bb.j ] ; 2 uses
  %i.aj = icmp eq i64 %.sroa.047.0, 1
  br i1 %i.aj, label %.critedge, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit35.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit35.thread: ; preds = %.critedge32, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit35
  %.sroa.047.051 = phi i64 [ %.sroa.047.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit35 ], [ 0, %.critedge32 ]
  %i.ak = load ptr, ptr %2, align 8, !tbaa !54
  %i.al = load i32, ptr %i.b, align 8, !tbaa !55
  %i.am = zext i32 %i.al to i64
  %i.an = and i64 %.sroa.047.051, -2
  %i.ao = inttoptr i64 %i.an to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i36 = load i32, ptr %i.ap, align 4, !tbaa !870
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !2668
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.as, align 4, !tbaa !870
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i38 = load i32, ptr %i.at, align 8, !tbaa !870
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i39 = load i32, ptr %i.au, align 4, !tbaa !870
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i40 = load i32, ptr %i.av, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.aw = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.aw, align 8, !tbaa !1938
  %i.ax = call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPLinearClauseEN4llvm8ArrayRefIPNS_4ExprEEES4_NS_14SourceLocationES6_NS_22OpenMPLinearClauseKindES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ak, i64 %i.am, ptr noundef %i.ao, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i36, i32 noundef %i.ar, i32 %.sroa.0.0.copyload.i37, i32 %.sroa.0.0.copyload.i38, i32 %.sroa.0.0.copyload.i39, i32 %.sroa.0.0.copyload.i40) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit35.thread, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit35
  %.4 = phi ptr [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit35 ], [ %i.ax, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit35.thread ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.ay = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.a
  br i1 %i.az, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ay) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE27TransformOMPLoopRangeClauseEPNS_18OMPLoopRangeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1657 ; 4 uses
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
  %.sroa.030.0 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq i64 %.sroa.030.0, 1
  br i1 %i.g, label %bb.j, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %bb.a, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.030.033 = phi i64 [ %.sroa.030.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1657 ; 4 uses
  %.not.i21 = icmp eq ptr %i.i, null
  br i1 %.not.i21, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22.thread, label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 511
  switch i16 %i.k, label %bb.g [
    i16 122, label %bb.f
    i16 77, label %bb.f
    i16 20, label %bb.f
    i16 24, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.l = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.i), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22

bb.g:                                             ; preds = %bb.e
  %i.m = ptrtoint ptr %i.i to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22: ; preds = %bb.f, %bb.g
  %.sroa.031.0 = phi i64 [ %i.l, %bb.f ], [ %i.m, %bb.g ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.031.0, 1
  br i1 %i.n, label %bb.j, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22.thread: ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22
  %.sroa.031.035 = phi i64 [ %.sroa.031.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22 ], [ 0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread ]
  %i.o = and i64 %.sroa.030.033, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = and i64 %.sroa.031.035, -2
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !1657
  %.not = icmp eq ptr %i.s, %i.p
  br i1 %.not, label %bb.h, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22.thread..critedge_crit_edge

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22.thread..critedge_crit_edge: ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22.thread
  %.val20.pre = load ptr, ptr %0, align 8, !tbaa !1783
  br label %.critedge

bb.h:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22.thread
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !1657
  %.not36 = icmp eq ptr %i.t, %i.r
  %.val20.pre38 = load ptr, ptr %0, align 8, !tbaa !1783 ; 3 uses
  br i1 %.not36, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %.val20.pre38, i64 13800
  %.val.val = load i32, ptr %i.u, align 4, !tbaa !1084
  %.not37 = icmp eq i32 %.val.val, 0
  br i1 %.not37, label %bb.j, label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22.thread..critedge_crit_edge, %bb.i, %bb.h
  %.val20 = phi ptr [ %.val20.pre, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22.thread..critedge_crit_edge ], [ %.val20.pre38, %bb.i ], [ %.val20.pre38, %bb.h ]
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.v, align 4, !tbaa !870
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.w, align 8, !tbaa !870
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.x, align 4, !tbaa !870
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.y, align 4, !tbaa !870
  %i.z = getelementptr i8, ptr %.val20, i64 832
  %.val20.val = load ptr, ptr %i.z, align 8, !tbaa !1938
  %i.aa = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPLoopRangeClauseEPNS_4ExprES2_NS_14SourceLocationES3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val20.val, ptr noundef %i.p, ptr noundef %i.r, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i23, i32 %.sroa.0.0.copyload.i24, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22, %bb.i, %.critedge, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.2 = phi ptr [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit22 ], [ %i.aa, %.critedge ], [ %1, %bb.i ]
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE21TransformOMPMapClauseEPNS_12OMPMapClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %6 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %7 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %8 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %9 = alloca %"class.clang::CXXScopeSpec", align 8 ; 10 uses
  %10 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %11 = alloca %"class.llvm::SmallVector.2641", align 8 ; 12 uses
  %12 = alloca %"class.clang::CXXScopeSpec", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.a, align 4, !tbaa !870
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.b, align 4, !tbaa !870
  store i32 %.sroa.0.0.copyload.i, ptr %7, align 4, !tbaa !870
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.0.0.copyload.i27, ptr %i.c, align 4, !tbaa !870
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.0.0.copyload.i28, ptr %i.d, align 4, !tbaa !870
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2670 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !979  ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, 511
  switch i16 %i.p, label %bb.d [
    i16 122, label %bb.c
    i16 77, label %bb.c
    i16 20, label %bb.c
    i16 24, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.n), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %i.n to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.c, %bb.d
  %.sroa.066.0 = phi i64 [ %i.q, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = icmp eq i64 %.sroa.066.0, 1
  br i1 %i.s, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %i.t = and i64 %.sroa.066.0, -2
  %i.u = inttoptr i64 %i.t to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !2670
  %.pre110 = load i32, ptr %i.g, align 4, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.v = phi i32 [ %.pre110, %bb.e ], [ 16, %bb.a ]
  %i.w = phi i32 [ %.pre, %bb.e ], [ %i.j, %bb.a ] ; 3 uses
  %.124 = phi ptr [ %i.u, %bb.e ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 0, ptr %10, align 8, !tbaa !949
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.x, align 8, !tbaa !1118
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.z, ptr %11, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  store i32 16, ptr %i.ab, align 4, !tbaa !56
  %i.ac = icmp ugt i32 %i.w, %i.v
  br i1 %i.ac, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = zext i32 %i.w to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.e, i64 noundef %i.ad, i64 noundef 8) #26
  %.pre111 = load i32, ptr %i.i, align 4, !tbaa !2670
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %i.ae = phi i32 [ %i.w, %bb.f ], [ %.pre111, %bb.g ] ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %.idx = shl nuw nsw i64 %i.af, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i2996 = icmp eq i32 %i.ae, 0
  br i1 %.not.i2996, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit57
  %.058.i97 = phi ptr [ %i.aw, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit57 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ah = load ptr, ptr %.058.i97, align 8, !tbaa !979 ; 4 uses
  %.not.i58 = icmp eq ptr %i.ah, null
  br i1 %.not.i58, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit59.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ai = load i16, ptr %i.ah, align 8
  %i.aj = and i16 %i.ai, 511
  switch i16 %i.aj, label %bb.j [
    i16 122, label %bb.i
    i16 77, label %bb.i
    i16 20, label %bb.i
    i16 24, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.ak = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.ah), !inline_history !3977
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit59

bb.j:                                             ; preds = %bb.h
  %i.al = ptrtoint ptr %i.ah to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit59

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit59: ; preds = %bb.i, %bb.j
  %.sroa.085.0 = phi i64 [ %i.ak, %bb.i ], [ %i.al, %bb.j ] ; 2 uses
  %i.am = icmp eq i64 %.sroa.085.0, 1
  br i1 %i.am, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit59.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit59.thread: ; preds = %.lr.ph, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit59
  %.sroa.085.087 = phi i64 [ %.sroa.085.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit59 ], [ 0, %.lr.ph ]
  %i.an = and i64 %.sroa.085.087, -2
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = load i32, ptr %i.f, align 8, !tbaa !55  ; 2 uses
  %i.aq = load i32, ptr %i.g, align 4, !tbaa !56
  %.not.i56 = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i56, label %bb.l, label %bb.k, !prof !79

bb.k:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit59.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.ao)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit57

bb.l:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit59.thread
  %i.ar = zext i32 %i.ap to i64
  %i.as = load ptr, ptr %8, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  store ptr %i.ao, ptr %i.at, align 1
  %i.au = load i32, ptr %i.f, align 8, !tbaa !55
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.f, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit57

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit57: ; preds = %bb.k, %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.058.i97, i64 8 ; 2 uses
  %.not.i29 = icmp eq ptr %i.aw, %i.ag
  br i1 %.not.i29, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit57, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i51 = load i64, ptr %i.ax, align 8, !tbaa !75 ; 2 uses
  %.not90 = icmp eq i64 %.sroa.0.0.copyload.i51, 0
  br i1 %.not90, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i53 = load ptr, ptr %.sroa.2.0..sroa_idx.i52, align 8, !tbaa !955
  %i.ay = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i51, ptr %.sroa.2.0.copyload.i53, i64 0, ptr noundef null), !inline_history !3978 ; 2 uses
  %i.az = extractvalue { i64, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.ay, 1
  %.not91 = icmp eq i64 %i.az, 0
  br i1 %.not91, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.ba, %bb.m ], [ null, %._crit_edge ]
  %.sroa.079.0 = phi i64 [ %i.az, %bb.m ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 %.sroa.079.0, ptr %.sroa.6.0) #26, !inline_history !3978
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !1119
  %.sroa.0.0.copyload.i47 = load i64, ptr %10, align 8, !tbaa !75
  %.not92 = icmp eq i64 %.sroa.0.0.copyload.i47, 0
  br i1 %.not92, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call fastcc void @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !3978
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1119
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.sroa.0.0.copyload.i46 = load i64, ptr %10, align 8, !tbaa !75
  %.not93 = icmp eq i64 %.sroa.0.0.copyload.i46, 0
  br i1 %.not93, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = load i32, ptr %i.i, align 8, !tbaa !2670 ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %.idx107 = shl nuw nsw i64 %i.bd, 3
  %13 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx107 ; 2 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.bd
  %.not63.i103 = icmp eq i32 %i.bc, 0
  br i1 %.not63.i103, label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph106, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i104 = phi ptr [ %13, %.lr.ph106 ], [ %i.eu, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.bk = load ptr, ptr %.061.i104, align 8, !tbaa !979 ; 4 uses
  %.not64.i = icmp eq ptr %i.bk, null
  br i1 %.not64.i, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %i.be, ptr %6, align 8, !tbaa !54
  store i32 0, ptr %i.bf, align 8, !tbaa !55
  store i32 8, ptr %i.bg, align 4, !tbaa !56
  %i.bl = load i16, ptr %i.bk, align 8
  %i.bm = and i16 %i.bl, 511
  %i.bn = icmp eq i16 %i.bm, 24
  %.1.v.i.i.i.i = select i1 %i.bn, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !105 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %.idx108 = shl nuw nsw i64 %i.bq, 3
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx108
  %.not9498 = icmp eq i32 %i.bp, 0
  br i1 %.not9498, label %._crit_edge102, label %.lr.ph101

._crit_edge102:                                   ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.r
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !1783
  %i.bs = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !786, !nonnull !71, !align !787 ; 2 uses
  %i.bu = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(23904) %i.bt) #26, !inline_history !3978 ; 2 uses
  %i.bv = extractvalue { i64, ptr } %i.bu, 0
  %i.bw = extractvalue { i64, ptr } %i.bu, 1
  %i.bx = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.by = load i32, ptr %i.bf, align 8, !tbaa !55
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bt, ptr noundef null, i64 %i.bv, ptr %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext true, i64 %i.cb, i64 %i.cc, i1 noundef zeroext false, i1 noundef zeroext false) #26, !inline_history !3978 ; 2 uses
  %i.ce = load i32, ptr %i.aa, align 8, !tbaa !55 ; 2 uses
  %i.cf = load i32, ptr %i.ab, align 4, !tbaa !56
  %.not.i40 = icmp ult i32 %i.ce, %i.cf
  br i1 %.not.i40, label %bb.t, label %bb.s, !prof !79

bb.s:                                             ; preds = %._crit_edge102
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %i.cd)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit41

bb.t:                                             ; preds = %._crit_edge102
  %i.cg = zext i32 %i.ce to i64
  %i.ch = load ptr, ptr %11, align 8, !tbaa !54
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  store ptr %i.cd, ptr %i.ci, align 1
  %i.cj = load i32, ptr %i.aa, align 8, !tbaa !55
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.aa, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit41

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit41: ; preds = %bb.s, %bb.t
  %i.cl = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.be
  br i1 %i.cm, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit41
  call void @free(ptr noundef %i.cl) #26
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit41, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph101:                                        ; preds = %bb.r, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.068.099 = phi ptr [ %i.em, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.r ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.068.099, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.068.099, align 8
  %i.cn = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.cp = load ptr, ptr %i.bh, align 8, !tbaa !1797, !noalias !3987 ; 3 uses
  %i.cq = load ptr, ptr %i.bi, align 8, !tbaa !1798, !noalias !3987 ; 2 uses
  %i.cr = load i32, ptr %i.bj, align 4, !tbaa !1009, !noalias !3987 ; 4 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.loopexit.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph101
  %i.ct = add i32 %i.cr, -1                       ; 2 uses
  %i.cu = mul i64 %i.cn, -4658895280553007687     ; 2 uses
  %i.cv = lshr i64 %i.cu, 31
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = and i32 %i.ct, %i.cx                    ; 3 uses
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = lshr i64 %i.cz, 5
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !870, !noalias !3988
  %i.dd = and i32 %i.cy, 31
  %i.de = lshr i32 %i.dc, %i.dd
  %i.df = trunc i32 %i.de to i1
  br i1 %i.df, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !923

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.v, %bb.w
  %i.dg = phi i64 [ %i.dm, %bb.w ], [ %i.cz, %bb.v ]
  %.017.i.i.i.i.i = phi i32 [ %i.dl, %bb.w ], [ %i.cy, %bb.v ]
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.dg ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !983, !noalias !3988
  %i.dj = icmp eq ptr %i.di, %i.co
  br i1 %i.dj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.w, !prof !79

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dk = add nuw i32 %.017.i.i.i.i.i, 1
  %i.dl = and i32 %i.dk, %i.ct                    ; 3 uses
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = lshr i64 %i.dm, 5
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !870, !noalias !3988
  %i.dq = and i32 %i.dl, 31
  %i.dr = lshr i32 %i.dp, %i.dq
  %i.ds = trunc i32 %i.dr to i1
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !924

.loopexit.i.i.i:                                  ; preds = %bb.w, %bb.v, %.lr.ph101
  %i.dt = zext i32 %i.cr to i64                   ; 2 uses
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.dt
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cr to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dt, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.dh, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.du, %.loopexit.i.i.i ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %.pre-phi.i
  %.not.i39 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dv
  br i1 %.not.i39, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1800
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.x
  %.0.i = phi ptr [ %i.dx, %bb.x ], [ %i.co, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = lshr i32 %i.dz, 13
  %i.eb = and i32 %i.ea, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = ptrtoint ptr %.0.i to i64
  %i.ee = or i64 %i.ec, %i.ed                     ; 2 uses
  %i.ef = load i32, ptr %i.bf, align 8, !tbaa !55 ; 2 uses
  %i.eg = load i32, ptr %i.bg, align 4, !tbaa !56
  %.not.i.i38 = icmp ult i32 %i.ef, %i.eg
  br i1 %.not.i.i38, label %bb.z, label %bb.y, !prof !79

bb.y:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %i.ee)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.z:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eh = zext i32 %i.ef to i64
  %i.ei = load ptr, ptr %6, align 8, !tbaa !54
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eh
  store i64 %i.ee, ptr %i.ej, align 1
  %i.ek = load i32, ptr %i.bf, align 8, !tbaa !55
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.bf, align 8, !tbaa !55
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.y, %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.068.099, i64 8 ; 2 uses
  %.not94 = icmp eq ptr %i.em, %i.br
  br i1 %.not94, label %._crit_edge102, label %.lr.ph101

bb.aa:                                            ; preds = %bb.q
  %i.en = load i32, ptr %i.aa, align 8, !tbaa !55 ; 2 uses
  %i.eo = load i32, ptr %i.ab, align 4, !tbaa !56
  %.not.i37 = icmp ult i32 %i.en, %i.eo
  br i1 %.not.i37, label %bb.ac, label %bb.ab, !prof !79

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ep = zext i32 %i.en to i64
  %i.eq = load ptr, ptr %11, align 8, !tbaa !54
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ep
  store ptr null, ptr %i.er, align 1
  %i.es = load i32, ptr %i.aa, align 8, !tbaa !55
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.aa, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.ac, %bb.ab, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %.061.i104, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eu, %14
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit, label %bb.q

_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ex = load i64, ptr %9, align 8, !tbaa !870
  store i64 %i.ex, ptr %12, align 8, !tbaa !870
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN5clang29NestedNameSpecifierLocBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %i.ez) #26
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i64 16, i1 false), !tbaa.struct !2672
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !2676
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ff = load i8, ptr %i.fe, align 4, !tbaa !2677, !range !70, !noundef !71
  %i.fg = trunc nuw i8 %i.ff to i1
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.fh, align 8, !tbaa !870
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 148
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.fi, align 4, !tbaa !870
  %i.fj = load ptr, ptr %8, align 8, !tbaa !54
  %i.fk = load i32, ptr %i.f, align 8, !tbaa !55
  %i.fl = zext i32 %i.fk to i64
  %i.fm = load ptr, ptr %11, align 8, !tbaa !54
  %i.fn = load i32, ptr %i.aa, align 8, !tbaa !55
  %i.fo = zext i32 %i.fn to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.fp = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.fp, align 8, !tbaa !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.fm, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.fo, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.fj, ptr %3, align 8
  %.sroa.263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fl, ptr %.sroa.263.0..sroa_idx, align 8
  %i.fq = call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPMapClauseEPNS_4ExprEN4llvm8ArrayRefINS_21OpenMPMapModifierKindEEENS4_INS_14SourceLocationEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbS7_S7_NS4_IS2_EERKNS_15OMPVarListLocTyEbSE_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %.124, ptr nonnull %i.ev, i64 7, ptr nonnull %i.ew, i64 7, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.fd, i1 noundef zeroext %i.fg, i32 %.sroa.0.0.copyload.i32, i32 %.sroa.0.0.copyload.i33, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %7, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %2) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 28
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !1733
  %.not.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !1734
  call void @free(ptr noundef %i.fu) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit59, %bb.o, %bb.m, %bb.ad, %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit
  %.1 = phi ptr [ %i.fq, %bb.ad ], [ %i.fq, %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit ], [ null, %bb.o ], [ null, %bb.m ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit59 ]
  %i.fv = load ptr, ptr %11, align 8, !tbaa !54   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.z
  br i1 %i.fw, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit
  call void @free(ptr noundef %i.fv) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !1733
  %.not.i.i34 = icmp eq i32 %i.fy, 0
  br i1 %.not.i.i34, label %_ZN5clang12CXXScopeSpecD2Ev.exit35, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !1734
  call void @free(ptr noundef %i.ga) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit35

_ZN5clang12CXXScopeSpecD2Ev.exit35:               ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZN5clang12CXXScopeSpecD2Ev.exit35
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit35 ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.gb = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.e
  br i1 %i.gc, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit36, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.gb) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit36

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit36: ; preds = %.critedge, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE25TransformOMPMessageClauseEPNS_16OMPMessageClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2679 ; 4 uses
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
  %.sroa.011.0 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq i64 %.sroa.011.0, 1
  br i1 %i.g, label %bb.e, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %bb.a, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.011.013 = phi i64 [ %.sroa.011.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.a ]
  %i.h = and i64 %.sroa.011.013, -2
  %i.i = inttoptr i64 %i.h to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.j, align 4, !tbaa !870
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.k, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.l = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.l, align 8, !tbaa !1938
  %i.m = tail call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPMessageClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.i, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %.0 = phi ptr [ %i.m, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE24TransformOMPNowaitClauseEPNS_15OMPNowaitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2681 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

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
  %.sroa.015.0 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq i64 %.sroa.015.0, 1
  br i1 %i.g, label %bb.e, label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.sroa.015.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.h = and i64 %.sroa.0.0, -2
  %i.i = inttoptr i64 %i.h to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.j, align 4, !tbaa !870
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.k, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.l = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.l, align 8, !tbaa !1938
  %i.m = tail call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPNowaitClauseENS_14SourceLocationES1_S1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i13, i32 %.sroa.0.0.copyload.i12, ptr noundef %i.i) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %.critedge
  %.1 = phi ptr [ %i.m, %.critedge ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret ptr %.1
end_hunk_2
begin_hunk_3_@_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE25TransformOMPPrivateClauseEPNS_16OMPPrivateClauseE:bb.a
  %.sroa.031.033 = phi i64 [ %.sroa.031.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %.lr.ph ]
  %i.r = and i64 %.sroa.031.033, -2
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i25 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i25, label %bb.g, label %bb.f, !prof !79

bb.f:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.s)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %2, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store ptr %i.s, ptr %i.x, align 1
  %i.y = load i32, ptr %i.b, align 8, !tbaa !55
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.02035, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !54
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ad = zext i32 %i.ac to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ae, align 4, !tbaa !870
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.af, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.ag = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ag, align 8, !tbaa !1938
  %i.ah = call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPPrivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ab, i64 %i.ad, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i26, i32 %.sroa.0.0.copyload.i27) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %.critedge24
  %.3 = phi ptr [ %i.ah, %.critedge24 ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.ai = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ai) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE26TransformOMPProcBindClauseEPNS_17OMPProcBindClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2721
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !870
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !870
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !870
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !870
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPProcBindClauseEN4llvm3omp12ProcBindKindENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #26
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE27TransformOMPReductionClauseEPNS_18OMPReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.2641", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2723 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2723
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not101 = icmp eq i32 %i.h, 0
  br i1 %.not101, label %.critedge58, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.050102 = phi ptr [ %i.aa, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.050102, align 8, !tbaa !979 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  switch i16 %i.n, label %bb.e [
    i16 122, label %bb.d
    i16 77, label %bb.d
    i16 20, label %bb.d
    i16 24, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.l), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.d, %bb.e
  %.sroa.094.0 = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %.sroa.094.0, 1
  br i1 %i.q, label %.critedge, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %.lr.ph, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.094.096 = phi i64 [ %.sroa.094.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %.lr.ph ]
  %i.r = and i64 %.sroa.094.096, -2
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i59 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i59, label %bb.g, label %bb.f, !prof !79

bb.f:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.s)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %3, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store ptr %i.s, ptr %i.x, align 1
  %i.y = load i32, ptr %i.b, align 8, !tbaa !55
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.050102, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.k
  br i1 %.not, label %.critedge58, label %.lr.ph

.critedge58:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !955
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !tbaa.struct !1119
  %.sroa.0.0.copyload.i62 = load i64, ptr %5, align 8, !tbaa !75
  %.not97 = icmp eq i64 %.sroa.0.0.copyload.i62, 0
  br i1 %.not97, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call fastcc void @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1119
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.sroa.0.0.copyload.i63 = load i64, ptr %5, align 8, !tbaa !75
  %.not98 = icmp eq i64 %.sroa.0.0.copyload.i63, 0
  br i1 %.not98, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.af, align 4, !tbaa !56
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !2723 ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 5 uses
  %.idx111.a = shl nuw nsw i64 %i.ah, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx111.a
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ah
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ah ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ah
  %.not55106 = icmp eq i32 %i.ag, 0
  br i1 %.not55106, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.k

._crit_edge110.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit77
  %.pre114 = load ptr, ptr %7, align 8, !tbaa !54
  %.pre115 = load i32, ptr %i.ae, align 8, !tbaa !55
  %i.ap = zext i32 %.pre115 to i64
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %._crit_edge110.loopexit, %bb.i
  %i.aq = phi i64 [ %i.ap, %._crit_edge110.loopexit ], [ 0, %bb.i ]
  %i.ar = phi ptr [ %.pre114, %._crit_edge110.loopexit ], [ %i.ad, %bb.i ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !54
  %i.at = load i32, ptr %i.b, align 8, !tbaa !55
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = load i64, ptr %i.av, align 8
  %.sroa.0.0.copyload.i66 = load i32, ptr %1, align 8, !tbaa !870
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i67 = load i32, ptr %i.ax, align 4, !tbaa !870
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i68 = load i32, ptr %i.ay, align 8, !tbaa !870
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i69 = load i32, ptr %i.az, align 4, !tbaa !870
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i70 = load i32, ptr %i.ba, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.bb = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.bb, align 8, !tbaa !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ar, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aq, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bc = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS0_19OpenMPVarListDataTy30OpenMPReductionClauseModifiersENS_14SourceLocationES8_S8_S8_S8_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.as, i64 %i.au, i64 %i.aw, i32 %.sroa.0.0.copyload.i66, i32 %.sroa.0.0.copyload.i67, i32 %.sroa.0.0.copyload.i68, i32 %.sroa.0.0.copyload.i69, i32 %.sroa.0.0.copyload.i70, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bd = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ad
  br i1 %i.be, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge110
  call void @free(ptr noundef %i.bd) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge110, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.k:                                             ; preds = %.lr.ph109, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit77
  %.053107 = phi ptr [ %11, %.lr.ph109 ], [ %i.eq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit77 ] ; 2 uses
  %i.bf = load ptr, ptr %.053107, align 8, !tbaa !979 ; 4 uses
  %.not56 = icmp eq ptr %i.bf, null
  br i1 %.not56, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.aj, ptr %8, align 8, !tbaa !54
  store i32 0, ptr %i.ak, align 8, !tbaa !55
  store i32 8, ptr %i.al, align 4, !tbaa !56
  %i.bg = load i16, ptr %i.bf, align 8
  %i.bh = and i16 %i.bg, 511
  %i.bi = icmp eq i16 %i.bh, 24
  %.1.v.i.i.i.i = select i1 %i.bi, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !105 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %.idx112 = shl nuw nsw i64 %i.bl, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx112
  %.not99103 = icmp eq i32 %i.bk, 0
  br i1 %.not99103, label %._crit_edge, label %.lr.ph105

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.l
  %i.bn = load ptr, ptr %0, align 8, !tbaa !1783, !nonnull !71, !align !787
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 232
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !786, !nonnull !71, !align !787 ; 2 uses
  %i.bq = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bp) #26 ; 2 uses
  %i.br = extractvalue { i64, ptr } %i.bq, 0
  %i.bs = extractvalue { i64, ptr } %i.bq, 1
  %i.bt = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.bu = load i32, ptr %i.ak, align 8, !tbaa !55
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bp, ptr noundef null, i64 %i.br, ptr %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bx, i64 %i.by, i1 noundef zeroext false, i1 noundef zeroext false) #26 ; 2 uses
  %i.ca = load i32, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %i.cb = load i32, ptr %i.af, align 4, !tbaa !56
  %.not.i73 = icmp ult i32 %i.ca, %i.cb
  br i1 %.not.i73, label %bb.n, label %bb.m, !prof !79

bb.m:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bz)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit74

bb.n:                                             ; preds = %._crit_edge
  %i.cc = zext i32 %i.ca to i64
  %i.cd = load ptr, ptr %7, align 8, !tbaa !54
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  store ptr %i.bz, ptr %i.ce, align 1
  %i.cf = load i32, ptr %i.ae, align 8, !tbaa !55
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ae, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit74

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit74: ; preds = %bb.m, %bb.n
  %i.ch = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.aj
  br i1 %i.ci, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit74
  call void @free(ptr noundef %i.ch) #26
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit74, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit77

.lr.ph105:                                        ; preds = %bb.l, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.083.0104 = phi ptr [ %i.ei, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.l ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.083.0104, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.083.0104, align 8
  %i.cj = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ck = inttoptr i64 %i.cj to ptr               ; 2 uses
  %i.cl = load ptr, ptr %i.am, align 8, !tbaa !1797, !noalias !3997 ; 3 uses
  %i.cm = load ptr, ptr %i.an, align 8, !tbaa !1798, !noalias !3997 ; 2 uses
  %i.cn = load i32, ptr %i.ao, align 4, !tbaa !1009, !noalias !3997 ; 4 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %.loopexit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph105
  %i.cp = add i32 %i.cn, -1                       ; 2 uses
  %i.cq = mul i64 %i.cj, -4658895280553007687     ; 2 uses
  %i.cr = lshr i64 %i.cq, 31
  %i.cs = xor i64 %i.cr, %i.cq
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = and i32 %i.cp, %i.ct                    ; 3 uses
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = lshr i64 %i.cv, 5
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !870, !noalias !3998
  %i.cz = and i32 %i.cu, 31
  %i.da = lshr i32 %i.cy, %i.cz
  %i.db = trunc i32 %i.da to i1
  br i1 %i.db, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !923

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %i.dc = phi i64 [ %i.di, %bb.q ], [ %i.cv, %bb.p ]
  %.017.i.i.i.i.i = phi i32 [ %i.dh, %bb.q ], [ %i.cu, %bb.p ]
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.dc ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !983, !noalias !3998
  %i.df = icmp eq ptr %i.de, %i.ck
  br i1 %i.df, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.q, !prof !79

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dg = add nuw i32 %.017.i.i.i.i.i, 1
  %i.dh = and i32 %i.dg, %i.cp                    ; 3 uses
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = lshr i64 %i.di, 5
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !870, !noalias !3998
  %i.dm = and i32 %i.dh, 31
  %i.dn = lshr i32 %i.dl, %i.dm
  %i.do = trunc i32 %i.dn to i1
  br i1 %i.do, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !924

.loopexit.i.i.i:                                  ; preds = %bb.q, %bb.p, %.lr.ph105
  %i.dp = zext i32 %i.cn to i64                   ; 2 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.dp
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cn to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dp, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.dd, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dq, %.loopexit.i.i.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.pre-phi.i
  %.not.i75 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dr
  br i1 %.not.i75, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1800
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.r
  %.0.i = phi ptr [ %i.dt, %bb.r ], [ %i.ck, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = lshr i32 %i.dv, 13
  %i.dx = and i32 %i.dw, 3
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = ptrtoint ptr %.0.i to i64
  %i.ea = or i64 %i.dy, %i.dz                     ; 2 uses
  %i.eb = load i32, ptr %i.ak, align 8, !tbaa !55 ; 2 uses
  %i.ec = load i32, ptr %i.al, align 4, !tbaa !56
  %.not.i.i = icmp ult i32 %i.eb, %i.ec
  br i1 %.not.i.i, label %bb.t, label %bb.s, !prof !79

bb.s:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.ea)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.t:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ed = zext i32 %i.eb to i64
  %i.ee = load ptr, ptr %8, align 8, !tbaa !54
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ed
  store i64 %i.ea, ptr %i.ef, align 1
  %i.eg = load i32, ptr %i.ak, align 8, !tbaa !55
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ak, align 8, !tbaa !55
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.s, %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.083.0104, i64 8 ; 2 uses
  %.not99 = icmp eq ptr %i.ei, %i.bm
  br i1 %.not99, label %._crit_edge, label %.lr.ph105

bb.u:                                             ; preds = %bb.k
  %i.ej = load i32, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %i.ek = load i32, ptr %i.af, align 4, !tbaa !56
  %.not.i76 = icmp ult i32 %i.ej, %i.ek
  br i1 %.not.i76, label %bb.w, label %bb.v, !prof !79

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit77

bb.w:                                             ; preds = %bb.u
  %i.el = zext i32 %i.ej to i64
  %i.em = load ptr, ptr %7, align 8, !tbaa !54
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el
  store ptr null, ptr %i.en, align 1
  %i.eo = load i32, ptr %i.ae, align 8, !tbaa !55
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %i.ae, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit77

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit77: ; preds = %bb.w, %bb.v, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %.053107, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.eq, %12
  br i1 %.not55, label %._crit_edge110.loopexit, label %bb.k

bb.x:                                             ; preds = %bb.h, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.bc, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.es = load i32, ptr %i.er, align 4, !tbaa !1733
  %.not.i.i78 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i78, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1734
  call void @free(ptr noundef %i.eu) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.ev = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.a
  br i1 %i.ew, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit79, label %bb.z

bb.z:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ev) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit79

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit79: ; preds = %.critedge, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE25TransformOMPSafelenClauseEPNS_16OMPSafelenClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2725 ; 4 uses
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
  %.sroa.011.0 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq i64 %.sroa.011.0, 1
  br i1 %i.g, label %bb.e, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %bb.a, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.011.013 = phi i64 [ %.sroa.011.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.a ]
  %i.h = and i64 %.sroa.011.013, -2
  %i.i = inttoptr i64 %i.h to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.j, align 4, !tbaa !870
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.k, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.l = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.l, align 8, !tbaa !1938
  %i.m = tail call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPSafelenClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.i, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %.0 = phi ptr [ %i.m, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE26TransformOMPScheduleClauseEPNS_17OMPScheduleClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2728 ; 4 uses
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
  %.sroa.026.0 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq i64 %.sroa.026.0, 1
  br i1 %i.g, label %bb.e, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %bb.a, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.026.028 = phi i64 [ %.sroa.026.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2730
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2730
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2731
  %i.n = and i64 %.sroa.026.028, -2
  %i.o = inttoptr i64 %i.n to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.p, align 4, !tbaa !870
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.q, align 4, !tbaa !870
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.r, align 8, !tbaa !870
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.s, align 4, !tbaa !870
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.t, align 8, !tbaa !870
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.u, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.v = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.v, align 8, !tbaa !1938
  %i.w = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPScheduleClauseENS_28OpenMPScheduleClauseModifierES1_NS_24OpenMPScheduleClauseKindEPNS_4ExprENS_14SourceLocationES5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, ptr noundef %i.o, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i19, i32 %.sroa.0.0.copyload.i20, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23, i32 %.sroa.0.0.copyload.i24) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %.0 = phi ptr [ %i.w, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE26TransformOMPSeverityClauseEPNS_17OMPSeverityClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2734
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !870
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !870
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !870
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !870
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPSeverityClauseENS_24OpenMPSeverityClauseKindENS_14SourceLocationES2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #26
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE24TransformOMPSharedClauseEPNS_15OMPSharedClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2736 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2736
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not34 = icmp eq i32 %i.h, 0
  br i1 %.not34, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02035 = phi ptr [ %i.aa, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE23TransformOMPSizesClauseEPNS_14OMPSizesClauseE:bb.a
  %i.y = and i64 %.sroa.046.0, -2
  %i.z = inttoptr i64 %i.y to ptr                 ; 3 uses
  %.not34 = icmp ne ptr %i.l, %i.z
  %spec.select = select i1 %.not34, i1 true, i1 %.02357 ; 2 uses
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i37 = icmp ult i32 %i.aa, %i.ab
  br i1 %.not.i37, label %bb.k, label %bb.j, !prof !79

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.z)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %2, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  store ptr %i.z, ptr %i.ae, align 1
  %i.af = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.b, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.d, %bb.j, %bb.k
  %.326.ph = phi i1 [ %spec.select, %bb.k ], [ %spec.select, %bb.j ], [ %.02357, %bb.d ], [ %.02357, %bb.e ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03156, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l
  br i1 %.326.ph, label %._crit_edge._crit_edge, label %.critedge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.val35.pre = load ptr, ptr %0, align 8, !tbaa !1783
  br label %bb.m

.critedge:                                        ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %._crit_edge
  %.val = load ptr, ptr %0, align 8, !tbaa !1783  ; 2 uses
  %i.ai = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.ai, align 4, !tbaa !1084
  %.not53 = icmp eq i32 %.val.val, 0
  br i1 %.not53, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge._crit_edge, %.critedge
  %.val35 = phi ptr [ %.val35.pre, %._crit_edge._crit_edge ], [ %.val, %.critedge ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !54
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !55
  %i.al = zext i32 %i.ak to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i39 = load i32, ptr %i.am, align 4, !tbaa !870
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i40 = load i32, ptr %i.an, align 4, !tbaa !870
  %i.ao = getelementptr i8, ptr %.val35, i64 832
  %.val35.val = load ptr, ptr %i.ao, align 8, !tbaa !1938
  %i.ap = call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPSizesClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val35.val, ptr %i.aj, i64 %i.al, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i39, i32 %.sroa.0.0.copyload.i40) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %.critedge, %bb.m
  %.4 = phi ptr [ %i.ap, %bb.m ], [ %1, %.critedge ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.aq = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.aq) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE31TransformOMPTaskReductionClauseEPNS_22OMPTaskReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.2641", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2742 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2742
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not96 = icmp eq i32 %i.h, 0
  br i1 %.not96, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04697 = phi ptr [ %i.aa, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04697, align 8, !tbaa !979 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  switch i16 %i.n, label %bb.e [
    i16 122, label %bb.d
    i16 77, label %bb.d
    i16 20, label %bb.d
    i16 24, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.l), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.d, %bb.e
  %.sroa.089.0 = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %.sroa.089.0, 1
  br i1 %i.q, label %.critedge, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %.lr.ph, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.089.091 = phi i64 [ %.sroa.089.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %.lr.ph ]
  %i.r = and i64 %.sroa.089.091, -2
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i55 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i55, label %bb.g, label %bb.f, !prof !79

bb.f:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.s)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %3, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store ptr %i.s, ptr %i.x, align 1
  %i.y = load i32, ptr %i.b, align 8, !tbaa !55
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.04697, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !955
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !tbaa.struct !1119
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !75
  %.not92 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not92, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call fastcc void @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1119
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.sroa.0.0.copyload.i59 = load i64, ptr %5, align 8, !tbaa !75
  %.not93 = icmp eq i64 %.sroa.0.0.copyload.i59, 0
  br i1 %.not93, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.af, align 4, !tbaa !56
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !2742 ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 5 uses
  %.idx106.a = shl nuw nsw i64 %i.ah, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx106.a
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ah
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ah ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ah
  %.not51101 = icmp eq i32 %i.ag, 0
  br i1 %.not51101, label %._crit_edge105, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.k

._crit_edge105.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72
  %.pre109 = load ptr, ptr %7, align 8, !tbaa !54
  %.pre110 = load i32, ptr %i.ae, align 8, !tbaa !55
  %i.ap = zext i32 %.pre110 to i64
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge105.loopexit, %bb.i
  %i.aq = phi i64 [ %i.ap, %._crit_edge105.loopexit ], [ 0, %bb.i ]
  %i.ar = phi ptr [ %.pre109, %._crit_edge105.loopexit ], [ %i.ad, %bb.i ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !54
  %i.at = load i32, ptr %i.b, align 8, !tbaa !55
  %i.au = zext i32 %i.at to i64
  %.sroa.0.0.copyload.i62 = load i32, ptr %1, align 8, !tbaa !870
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.av, align 4, !tbaa !870
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.aw, align 8, !tbaa !870
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i65 = load i32, ptr %i.ax, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.ay = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ay, align 8, !tbaa !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ar, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aq, ptr %.sroa.2.0..sroa_idx, align 8
  %i.az = call noundef ptr @_ZN5clang10SemaOpenMP30ActOnOpenMPTaskReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.as, i64 %i.au, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, i32 %.sroa.0.0.copyload.i65, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ba = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ad
  br i1 %i.bb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge105
  call void @free(ptr noundef %i.ba) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge105, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.k:                                             ; preds = %.lr.ph104, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72
  %.049102 = phi ptr [ %11, %.lr.ph104 ], [ %i.en, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72 ] ; 2 uses
  %i.bc = load ptr, ptr %.049102, align 8, !tbaa !979 ; 4 uses
  %.not52 = icmp eq ptr %i.bc, null
  br i1 %.not52, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.aj, ptr %8, align 8, !tbaa !54
  store i32 0, ptr %i.ak, align 8, !tbaa !55
  store i32 8, ptr %i.al, align 4, !tbaa !56
  %i.bd = load i16, ptr %i.bc, align 8
  %i.be = and i16 %i.bd, 511
  %i.bf = icmp eq i16 %i.be, 24
  %.1.v.i.i.i.i = select i1 %i.bf, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !105 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %.idx107 = shl nuw nsw i64 %i.bi, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx107
  %.not9498 = icmp eq i32 %i.bh, 0
  br i1 %.not9498, label %._crit_edge, label %.lr.ph100

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.l
  %i.bk = load ptr, ptr %0, align 8, !tbaa !1783, !nonnull !71, !align !787
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 232
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !786, !nonnull !71, !align !787 ; 2 uses
  %i.bn = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bm) #26 ; 2 uses
  %i.bo = extractvalue { i64, ptr } %i.bn, 0
  %i.bp = extractvalue { i64, ptr } %i.bn, 1
  %i.bq = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.br = load i32, ptr %i.ak, align 8, !tbaa !55
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bm, ptr noundef null, i64 %i.bo, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bu, i64 %i.bv, i1 noundef zeroext false, i1 noundef zeroext false) #26 ; 2 uses
  %i.bx = load i32, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %i.by = load i32, ptr %i.af, align 4, !tbaa !56
  %.not.i68 = icmp ult i32 %i.bx, %i.by
  br i1 %.not.i68, label %bb.n, label %bb.m, !prof !79

bb.m:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bw)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit69

bb.n:                                             ; preds = %._crit_edge
  %i.bz = zext i32 %i.bx to i64
  %i.ca = load ptr, ptr %7, align 8, !tbaa !54
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store ptr %i.bw, ptr %i.cb, align 1
  %i.cc = load i32, ptr %i.ae, align 8, !tbaa !55
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ae, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit69

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit69: ; preds = %bb.m, %bb.n
  %i.ce = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.aj
  br i1 %i.cf, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit69
  call void @free(ptr noundef %i.ce) #26
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit69, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72

.lr.ph100:                                        ; preds = %bb.l, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.078.099 = phi ptr [ %i.ef, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.l ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.078.099, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.078.099, align 8
  %i.cg = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = load ptr, ptr %i.am, align 8, !tbaa !1797, !noalias !4007 ; 3 uses
  %i.cj = load ptr, ptr %i.an, align 8, !tbaa !1798, !noalias !4007 ; 2 uses
  %i.ck = load i32, ptr %i.ao, align 4, !tbaa !1009, !noalias !4007 ; 4 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.loopexit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph100
  %i.cm = add i32 %i.ck, -1                       ; 2 uses
  %i.cn = mul i64 %i.cg, -4658895280553007687     ; 2 uses
  %i.co = lshr i64 %i.cn, 31
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.cm, %i.cq                    ; 3 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 5
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !870, !noalias !4008
  %i.cw = and i32 %i.cr, 31
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc i32 %i.cx to i1
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !923

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %i.cz = phi i64 [ %i.df, %bb.q ], [ %i.cs, %bb.p ]
  %.017.i.i.i.i.i = phi i32 [ %i.de, %bb.q ], [ %i.cr, %bb.p ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cz ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !983, !noalias !4008
  %i.dc = icmp eq ptr %i.db, %i.ch
  br i1 %i.dc, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.q, !prof !79

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dd = add nuw i32 %.017.i.i.i.i.i, 1
  %i.de = and i32 %i.dd, %i.cm                    ; 3 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = lshr i64 %i.df, 5
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !870, !noalias !4008
  %i.dj = and i32 %i.de, 31
  %i.dk = lshr i32 %i.di, %i.dj
  %i.dl = trunc i32 %i.dk to i1
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !924

.loopexit.i.i.i:                                  ; preds = %bb.q, %bb.p, %.lr.ph100
  %i.dm = zext i32 %i.ck to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.dm
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ck to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dm, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.da, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %.pre-phi.i
  %.not.i70 = icmp eq ptr %.lcssa.sink.i.i.i, %i.do
  br i1 %.not.i70, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1800
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.r
  %.0.i = phi ptr [ %i.dq, %bb.r ], [ %i.ch, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = lshr i32 %i.ds, 13
  %i.du = and i32 %i.dt, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = ptrtoint ptr %.0.i to i64
  %i.dx = or i64 %i.dv, %i.dw                     ; 2 uses
  %i.dy = load i32, ptr %i.ak, align 8, !tbaa !55 ; 2 uses
  %i.dz = load i32, ptr %i.al, align 4, !tbaa !56
  %.not.i.i = icmp ult i32 %i.dy, %i.dz
  br i1 %.not.i.i, label %bb.t, label %bb.s, !prof !79

bb.s:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dx)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.t:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ea = zext i32 %i.dy to i64
  %i.eb = load ptr, ptr %8, align 8, !tbaa !54
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  store i64 %i.dx, ptr %i.ec, align 1
  %i.ed = load i32, ptr %i.ak, align 8, !tbaa !55
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ak, align 8, !tbaa !55
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.s, %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.078.099, i64 8 ; 2 uses
  %.not94 = icmp eq ptr %i.ef, %i.bj
  br i1 %.not94, label %._crit_edge, label %.lr.ph100

bb.u:                                             ; preds = %bb.k
  %i.eg = load i32, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %i.eh = load i32, ptr %i.af, align 4, !tbaa !56
  %.not.i71 = icmp ult i32 %i.eg, %i.eh
  br i1 %.not.i71, label %bb.w, label %bb.v, !prof !79

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72

bb.w:                                             ; preds = %bb.u
  %i.ei = zext i32 %i.eg to i64
  %i.ej = load ptr, ptr %7, align 8, !tbaa !54
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei
  store ptr null, ptr %i.ek, align 1
  %i.el = load i32, ptr %i.ae, align 8, !tbaa !55
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.ae, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit72: ; preds = %bb.w, %bb.v, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.049102, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.en, %12
  br i1 %.not51, label %._crit_edge105.loopexit, label %bb.k

bb.x:                                             ; preds = %bb.h, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.az, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !1733
  %.not.i.i73 = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i73, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1734
  call void @free(ptr noundef %i.er) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.es = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.a
  br i1 %i.et, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit74, label %bb.z

bb.z:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.es) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit74

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit74: ; preds = %.critedge, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE29TransformOMPThreadLimitClauseEPNS_20OMPThreadLimitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2831", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 3, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2744 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2744
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not34 = icmp eq i32 %i.h, 0
  br i1 %.not34, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02035 = phi ptr [ %i.aa, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02035, align 8, !tbaa !979 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  switch i16 %i.n, label %bb.e [
    i16 122, label %bb.d
    i16 77, label %bb.d
    i16 20, label %bb.d
    i16 24, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.l), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.d, %bb.e
  %.sroa.031.0 = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %.sroa.031.0, 1
  br i1 %i.q, label %.critedge, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %.lr.ph, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.031.033 = phi i64 [ %.sroa.031.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %.lr.ph ]
  %i.r = and i64 %.sroa.031.033, -2
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i25 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i25, label %bb.g, label %bb.f, !prof !79

bb.f:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.s)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %2, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store ptr %i.s, ptr %i.x, align 1
  %i.y = load i32, ptr %i.b, align 8, !tbaa !55
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.02035, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !54
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ad = zext i32 %i.ac to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ae, align 4, !tbaa !870
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.af, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.ag = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ag, align 8, !tbaa !1938
  %i.ah = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPThreadLimitClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ab, i64 %i.ad, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i26, i32 %.sroa.0.0.copyload.i27) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %.critedge24
  %.3 = phi ptr [ %i.ah, %.critedge24 ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.ai = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ai) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit: ; preds = %.critedge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE20TransformOMPToClauseEPNS_11OMPToClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.2641", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !870
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !870
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !870
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !870
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !870
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2746 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !979  ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, 511
  switch i16 %i.p, label %bb.d [
    i16 122, label %bb.c
    i16 77, label %bb.c
    i16 20, label %bb.c
    i16 24, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.n), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %i.n to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.c, %bb.d
  %.sroa.059.0 = phi i64 [ %i.q, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = icmp eq i64 %.sroa.059.0, 1
  br i1 %i.s, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %i.t = and i64 %.sroa.059.0, -2
  %i.u = inttoptr i64 %i.t to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !2746
  %.pre103 = load i32, ptr %i.g, align 4, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.v = phi i32 [ %.pre103, %bb.e ], [ 16, %bb.a ]
  %i.w = phi i32 [ %.pre, %bb.e ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.u, %bb.e ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i64 0, ptr %9, align 8, !tbaa !949
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.x, align 8, !tbaa !1118
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.z, ptr %10, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.ab, align 4, !tbaa !56
  %i.ac = icmp ugt i32 %i.w, %i.v
  br i1 %i.ac, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = zext i32 %i.w to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.ad, i64 noundef 8) #26
  %.pre104 = load i32, ptr %i.i, align 4, !tbaa !2746
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %i.ae = phi i32 [ %i.w, %bb.f ], [ %.pre104, %bb.g ] ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %.idx = shl nuw nsw i64 %i.af, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i2589 = icmp eq i32 %i.ae, 0
  br i1 %.not.i2589, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit50
  %.058.i90 = phi ptr [ %i.aw, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit50 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ah = load ptr, ptr %.058.i90, align 8, !tbaa !979 ; 4 uses
  %.not.i51 = icmp eq ptr %i.ah, null
  br i1 %.not.i51, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ai = load i16, ptr %i.ah, align 8
  %i.aj = and i16 %i.ai, 511
  switch i16 %i.aj, label %bb.j [
    i16 122, label %bb.i
    i16 77, label %bb.i
    i16 20, label %bb.i
    i16 24, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.ak = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.ah), !inline_history !4009
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52

bb.j:                                             ; preds = %bb.h
  %i.al = ptrtoint ptr %i.ah to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52: ; preds = %bb.i, %bb.j
  %.sroa.078.0 = phi i64 [ %i.ak, %bb.i ], [ %i.al, %bb.j ] ; 2 uses
  %i.am = icmp eq i64 %.sroa.078.0, 1
  br i1 %i.am, label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52.thread: ; preds = %.lr.ph, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52
  %.sroa.078.080 = phi i64 [ %.sroa.078.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52 ], [ 0, %.lr.ph ]
  %i.an = and i64 %.sroa.078.080, -2
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = load i32, ptr %i.f, align 8, !tbaa !55  ; 2 uses
  %i.aq = load i32, ptr %i.g, align 4, !tbaa !56
  %.not.i49 = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i49, label %bb.l, label %bb.k, !prof !79

bb.k:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ao)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit50

bb.l:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52.thread
  %i.ar = zext i32 %i.ap to i64
  %i.as = load ptr, ptr %7, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  store ptr %i.ao, ptr %i.at, align 1
  %i.au = load i32, ptr %i.f, align 8, !tbaa !55
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.f, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit50

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit50: ; preds = %bb.k, %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.058.i90, i64 8 ; 2 uses
  %.not.i25 = icmp eq ptr %i.aw, %i.ag
  br i1 %.not.i25, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit50, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i44 = load i64, ptr %i.ax, align 8, !tbaa !75 ; 2 uses
  %.not83 = icmp eq i64 %.sroa.0.0.copyload.i44, 0
  br i1 %.not83, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i46 = load ptr, ptr %.sroa.2.0..sroa_idx.i45, align 8, !tbaa !955
  %i.ay = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i44, ptr %.sroa.2.0.copyload.i46, i64 0, ptr noundef null), !inline_history !4010 ; 2 uses
  %i.az = extractvalue { i64, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.ay, 1
  %.not84 = icmp eq i64 %i.az, 0
  br i1 %.not84, label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.ba, %bb.m ], [ null, %._crit_edge ]
  %.sroa.072.0 = phi i64 [ %i.az, %bb.m ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.072.0, ptr %.sroa.6.0) #26, !inline_history !4010
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !1119
  %.sroa.0.0.copyload.i40 = load i64, ptr %9, align 8, !tbaa !75
  %.not85 = icmp eq i64 %.sroa.0.0.copyload.i40, 0
  br i1 %.not85, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call fastcc void @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !4010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1119
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.sroa.0.0.copyload.i39 = load i64, ptr %9, align 8, !tbaa !75
  %.not86 = icmp eq i64 %.sroa.0.0.copyload.i39, 0
  br i1 %.not86, label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = load i32, ptr %i.i, align 8, !tbaa !2746 ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %.idx100 = shl nuw nsw i64 %i.bd, 3
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx100 ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.bd
  %.not63.i96 = icmp eq i32 %i.bc, 0
  br i1 %.not63.i96, label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph99, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i97 = phi ptr [ %11, %.lr.ph99 ], [ %i.eu, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.bk = load ptr, ptr %.061.i97, align 8, !tbaa !979 ; 4 uses
  %.not64.i = icmp eq ptr %i.bk, null
  br i1 %.not64.i, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.be, ptr %5, align 8, !tbaa !54
  store i32 0, ptr %i.bf, align 8, !tbaa !55
  store i32 8, ptr %i.bg, align 4, !tbaa !56
  %i.bl = load i16, ptr %i.bk, align 8
  %i.bm = and i16 %i.bl, 511
  %i.bn = icmp eq i16 %i.bm, 24
  %.1.v.i.i.i.i = select i1 %i.bn, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !105 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %.idx101 = shl nuw nsw i64 %i.bq, 3
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx101
  %.not8791 = icmp eq i32 %i.bp, 0
  br i1 %.not8791, label %._crit_edge95, label %.lr.ph94

._crit_edge95:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.r
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !1783
  %i.bs = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !786, !nonnull !71, !align !787 ; 2 uses
  %i.bu = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bt) #26, !inline_history !4010 ; 2 uses
  %i.bv = extractvalue { i64, ptr } %i.bu, 0
  %i.bw = extractvalue { i64, ptr } %i.bu, 1
  %i.bx = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.by = load i32, ptr %i.bf, align 8, !tbaa !55
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bt, ptr noundef null, i64 %i.bv, ptr %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.cb, i64 %i.cc, i1 noundef zeroext false, i1 noundef zeroext false) #26, !inline_history !4010 ; 2 uses
  %i.ce = load i32, ptr %i.aa, align 8, !tbaa !55 ; 2 uses
  %i.cf = load i32, ptr %i.ab, align 4, !tbaa !56
  %.not.i33 = icmp ult i32 %i.ce, %i.cf
  br i1 %.not.i33, label %bb.t, label %bb.s, !prof !79

bb.s:                                             ; preds = %._crit_edge95
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.cd)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit34

bb.t:                                             ; preds = %._crit_edge95
  %i.cg = zext i32 %i.ce to i64
  %i.ch = load ptr, ptr %10, align 8, !tbaa !54
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  store ptr %i.cd, ptr %i.ci, align 1
  %i.cj = load i32, ptr %i.aa, align 8, !tbaa !55
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.aa, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit34

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit34: ; preds = %bb.s, %bb.t
  %i.cl = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.be
  br i1 %i.cm, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit34
  call void @free(ptr noundef %i.cl) #26
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit34, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph94:                                         ; preds = %bb.r, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.061.092 = phi ptr [ %i.em, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.r ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.061.092, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.061.092, align 8
  %i.cn = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.cp = load ptr, ptr %i.bh, align 8, !tbaa !1797, !noalias !4019 ; 3 uses
  %i.cq = load ptr, ptr %i.bi, align 8, !tbaa !1798, !noalias !4019 ; 2 uses
  %i.cr = load i32, ptr %i.bj, align 4, !tbaa !1009, !noalias !4019 ; 4 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.loopexit.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph94
  %i.ct = add i32 %i.cr, -1                       ; 2 uses
  %i.cu = mul i64 %i.cn, -4658895280553007687     ; 2 uses
  %i.cv = lshr i64 %i.cu, 31
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = and i32 %i.ct, %i.cx                    ; 3 uses
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = lshr i64 %i.cz, 5
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !870, !noalias !4020
  %i.dd = and i32 %i.cy, 31
  %i.de = lshr i32 %i.dc, %i.dd
  %i.df = trunc i32 %i.de to i1
  br i1 %i.df, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !923

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.v, %bb.w
  %i.dg = phi i64 [ %i.dm, %bb.w ], [ %i.cz, %bb.v ]
  %.017.i.i.i.i.i = phi i32 [ %i.dl, %bb.w ], [ %i.cy, %bb.v ]
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.dg ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !983, !noalias !4020
  %i.dj = icmp eq ptr %i.di, %i.co
  br i1 %i.dj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.w, !prof !79

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dk = add nuw i32 %.017.i.i.i.i.i, 1
  %i.dl = and i32 %i.dk, %i.ct                    ; 3 uses
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = lshr i64 %i.dm, 5
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !870, !noalias !4020
  %i.dq = and i32 %i.dl, 31
  %i.dr = lshr i32 %i.dp, %i.dq
  %i.ds = trunc i32 %i.dr to i1
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !924

.loopexit.i.i.i:                                  ; preds = %bb.w, %bb.v, %.lr.ph94
  %i.dt = zext i32 %i.cr to i64                   ; 2 uses
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.dt
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cr to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dt, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.dh, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.du, %.loopexit.i.i.i ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %.pre-phi.i
  %.not.i32 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dv
  br i1 %.not.i32, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1800
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.x
  %.0.i = phi ptr [ %i.dx, %bb.x ], [ %i.co, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = lshr i32 %i.dz, 13
  %i.eb = and i32 %i.ea, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = ptrtoint ptr %.0.i to i64
  %i.ee = or i64 %i.ec, %i.ed                     ; 2 uses
  %i.ef = load i32, ptr %i.bf, align 8, !tbaa !55 ; 2 uses
  %i.eg = load i32, ptr %i.bg, align 4, !tbaa !56
  %.not.i.i31 = icmp ult i32 %i.ef, %i.eg
  br i1 %.not.i.i31, label %bb.z, label %bb.y, !prof !79

bb.y:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.ee)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.z:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eh = zext i32 %i.ef to i64
  %i.ei = load ptr, ptr %5, align 8, !tbaa !54
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eh
  store i64 %i.ee, ptr %i.ej, align 1
  %i.ek = load i32, ptr %i.bf, align 8, !tbaa !55
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.bf, align 8, !tbaa !55
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.y, %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.061.092, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.em, %i.br
  br i1 %.not87, label %._crit_edge95, label %.lr.ph94

bb.aa:                                            ; preds = %bb.q
  %i.en = load i32, ptr %i.aa, align 8, !tbaa !55 ; 2 uses
  %i.eo = load i32, ptr %i.ab, align 4, !tbaa !56
  %.not.i30 = icmp ult i32 %i.en, %i.eo
  br i1 %.not.i30, label %bb.ac, label %bb.ab, !prof !79

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ep = zext i32 %i.en to i64
  %i.eq = load ptr, ptr %10, align 8, !tbaa !54
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ep
  store ptr null, ptr %i.er, align 1
  %i.es = load i32, ptr %i.aa, align 8, !tbaa !55
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.aa, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.ac, %bb.ab, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %.061.i97, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eu, %12
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit, label %bb.q

_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.ex, align 8, !tbaa !870
  %i.ey = load ptr, ptr %7, align 8, !tbaa !54
  %i.ez = load i32, ptr %i.f, align 8, !tbaa !55
  %i.fa = zext i32 %i.ez to i64
  %i.fb = load ptr, ptr %10, align 8, !tbaa !54
  %i.fc = load i32, ptr %i.aa, align 8, !tbaa !55
  %i.fd = zext i32 %i.fc to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.fe = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.fe, align 8, !tbaa !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.fb, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.fd, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.ey, ptr %3, align 8
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fa, ptr %.sroa.256.0..sroa_idx, align 8
  %i.ff = call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPToClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull %i.ev, i64 3, ptr nonnull %i.ew, i64 3, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 %.sroa.0.0.copyload.i28, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread: ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52, %bb.o, %bb.m, %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit
  %.1 = phi ptr [ %i.ff, %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit ], [ null, %bb.o ], [ null, %bb.m ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit52 ]
  %i.fg = load ptr, ptr %10, align 8, !tbaa !54   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.z
  br i1 %i.fh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread
  call void @free(ptr noundef %i.fg) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPS5_EERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESP_.exit.thread, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !1733
  %.not.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1734
  call void @free(ptr noundef %i.fl) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  %i.fm = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.e
  br i1 %i.fn, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit29, label %bb.af

bb.af:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fm) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit29

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit29: ; preds = %.critedge, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE29TransformOMPTransparentClauseEPNS_20OMPTransparentClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2749 ; 4 uses
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
  %.sroa.012.0 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq i64 %.sroa.012.0, 1
  br i1 %i.g, label %bb.e, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %bb.a, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.012.014 = phi i64 [ %.sroa.012.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.a ]
  %i.h = and i64 %.sroa.012.014, -2
  %i.i = inttoptr i64 %i.h to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.j, align 4, !tbaa !870
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.k, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.l = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.l, align 8, !tbaa !1938
  %i.m = tail call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPTransparentClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.i, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %.0 = phi ptr [ %i.m, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE21TransformOMPUseClauseEPNS_12OMPUseClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2751 ; 4 uses
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
  %.sroa.014.0 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq i64 %.sroa.014.0, 1
  br i1 %i.g, label %bb.e, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %bb.a, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.sroa.014.016 = phi i64 [ %.sroa.014.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.a ]
  %i.h = and i64 %.sroa.014.016, -2
  %i.i = inttoptr i64 %i.h to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.j, align 4, !tbaa !870
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.k, align 8, !tbaa !870
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.l, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1783
  %i.m = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.m, align 8, !tbaa !1938
  %i.n = tail call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPUseClauseEPNS_4ExprENS_14SourceLocationES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.i, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11, i32 %.sroa.0.0.copyload.i12) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %.0 = phi ptr [ %i.n, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread ], [ null, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE31TransformOMPUseDeviceAddrClauseEPNS_22OMPUseDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2753 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2753
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

end_hunk_4
begin_hunk_5_@_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE30TransformOMPFirstprivateClauseEPNS_21OMPFirstprivateClauseE:bb.a
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !979
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !54
  %i.z = load i32, ptr %i.b, align 8, !tbaa !55
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !870
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !1938
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP29ActOnOpenMPFirstprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #26
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE23TransformOMPFlushClauseEPNS_14OMPFlushClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2620 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2620
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !979
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !54
  %i.z = load i32, ptr %i.b, align 8, !tbaa !55
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !870
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !1938
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPFlushClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #26
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE22TransformOMPFromClauseEPNS_13OMPFromClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.2641", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !870
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !870
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !870
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !870
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !870
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2622 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !979  ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !2622
  %.pre93 = load i32, ptr %i.g, align 4, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre93, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i64 0, ptr %9, align 8, !tbaa !949
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !1118
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !56
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #26
  %.pre94 = load i32, ptr %i.i, align 4, !tbaa !2622
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre94, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i80 = icmp eq i32 %i.ab, 0
  br i1 %.not.i80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit48
  %.058.i81 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit48 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i81, align 8, !tbaa !979
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !4452 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !55  ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !56
  %.not.i47 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i47, label %bb.h, label %bb.g, !prof !79

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit48

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %7, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !55
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit48

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit48: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i81, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit48, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i42 = load i64, ptr %i.ar, align 8, !tbaa !75 ; 2 uses
  %.not75 = icmp eq i64 %.sroa.0.0.copyload.i42, 0
  br i1 %.not75, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i43, align 8, !tbaa !955
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i42, ptr %.sroa.2.0.copyload.i44, i64 0, ptr noundef null), !inline_history !4452 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not76 = icmp eq i64 %i.at, 0
  br i1 %.not76, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.067.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.067.0, ptr %.sroa.6.0) #26, !inline_history !4452
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1119
  %.sroa.0.0.copyload.i38 = load i64, ptr %9, align 8, !tbaa !75
  %.not77 = icmp eq i64 %.sroa.0.0.copyload.i38, 0
  br i1 %.not77, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !4452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1119
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.sroa.0.0.copyload.i37 = load i64, ptr %9, align 8, !tbaa !75
  %.not78 = icmp eq i64 %.sroa.0.0.copyload.i37, 0
  br i1 %.not78, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !2622 ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx91 = shl nuw nsw i64 %i.ax, 3
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx91 ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ax
  %.not63.i87 = icmp eq i32 %i.aw, 0
  br i1 %.not63.i87, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph90, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i88 = phi ptr [ %11, %.lr.ph90 ], [ %i.de, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.bb = load ptr, ptr %.061.i88, align 8, !tbaa !979 ; 5 uses
  %.not64.i = icmp eq ptr %i.bb, null
  br i1 %.not64.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.ay, ptr %5, align 8, !tbaa !54
  store i32 0, ptr %i.az, align 8, !tbaa !55
  store i32 8, ptr %i.ba, align 4, !tbaa !56
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = and i16 %i.bc, 511
  %i.be = icmp eq i16 %i.bd, 24
  %.1.v.i.i.i.i = select i1 %i.be, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !105 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %.idx92 = shl nuw nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx92
  %.not7982 = icmp eq i32 %i.bg, 0
  br i1 %.not7982, label %._crit_edge86, label %.lr.ph85

._crit_edge86:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !1017
  %i.bj = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !786, !nonnull !71, !align !787 ; 2 uses
  %i.bl = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bk) #26, !inline_history !4452 ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1
  %i.bo = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.bp = load i32, ptr %i.az, align 8, !tbaa !55
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bk, ptr noundef null, i64 %i.bm, ptr %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.bs, i64 %i.bt, i1 noundef zeroext false, i1 noundef zeroext false) #26, !inline_history !4452 ; 2 uses
  %i.bv = load i32, ptr %i.x, align 8, !tbaa !55  ; 2 uses
  %i.bw = load i32, ptr %i.y, align 4, !tbaa !56
  %.not.i31 = icmp ult i32 %i.bv, %i.bw
  br i1 %.not.i31, label %bb.p, label %bb.o, !prof !79

bb.o:                                             ; preds = %._crit_edge86
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit32

bb.p:                                             ; preds = %._crit_edge86
  %i.bx = zext i32 %i.bv to i64
  %i.by = load ptr, ptr %10, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  store ptr %i.bu, ptr %i.bz, align 1
  %i.ca = load i32, ptr %i.x, align 8, !tbaa !55
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.x, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit32

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit32: ; preds = %bb.o, %bb.p
  %i.cc = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ay
  br i1 %i.cd, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit32
  call void @free(ptr noundef %i.cc) #26
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit32, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph85:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.056.083 = phi ptr [ %i.cw, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.056.083, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.056.083, align 8
  %i.ce = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #29, !inline_history !4452
  %i.ch = call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %i.cg, ptr noundef %i.cf), !inline_history !4452 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = lshr i32 %i.cj, 13
  %i.cl = and i32 %i.ck, 3
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = ptrtoint ptr %i.ch to i64
  %i.co = or i64 %i.cm, %i.cn                     ; 2 uses
  %i.cp = load i32, ptr %i.az, align 8, !tbaa !55 ; 2 uses
  %i.cq = load i32, ptr %i.ba, align 4, !tbaa !56
  %.not.i.i30 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not.i.i30, label %bb.s, label %bb.r, !prof !79

bb.r:                                             ; preds = %.lr.ph85
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.co)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.s:                                             ; preds = %.lr.ph85
  %i.cr = zext i32 %i.cp to i64
  %i.cs = load ptr, ptr %5, align 8, !tbaa !54
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cr
  store i64 %i.co, ptr %i.ct, align 1
  %i.cu = load i32, ptr %i.az, align 8, !tbaa !55
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.az, align 8, !tbaa !55
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.r, %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.056.083, i64 8 ; 2 uses
  %.not79 = icmp eq ptr %i.cw, %i.bi
  br i1 %.not79, label %._crit_edge86, label %.lr.ph85

bb.t:                                             ; preds = %bb.m
  %i.cx = load i32, ptr %i.x, align 8, !tbaa !55  ; 2 uses
  %i.cy = load i32, ptr %i.y, align 4, !tbaa !56
  %.not.i29 = icmp ult i32 %i.cx, %i.cy
  br i1 %.not.i29, label %bb.v, label %bb.u, !prof !79

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.v:                                             ; preds = %bb.t
  %i.cz = zext i32 %i.cx to i64
  %i.da = load ptr, ptr %10, align 8, !tbaa !54
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  store ptr null, ptr %i.db, align 1
  %i.dc = load i32, ptr %i.x, align 8, !tbaa !55
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.x, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.v, %bb.u, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.de = getelementptr inbounds nuw i8, ptr %.061.i88, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.de, %12
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.dh, align 8, !tbaa !870
  %i.di = load ptr, ptr %7, align 8, !tbaa !54
  %i.dj = load i32, ptr %i.f, align 8, !tbaa !55
  %i.dk = zext i32 %i.dj to i64
  %i.dl = load ptr, ptr %10, align 8, !tbaa !54
  %i.dm = load i32, ptr %i.x, align 8, !tbaa !55
  %i.dn = zext i32 %i.dm to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.do = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.do, align 8, !tbaa !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.dl, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.dn, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.di, ptr %3, align 8
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.dk, ptr %.sroa.252.0..sroa_idx, align 8
  %i.dp = call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPFromClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull %i.df, i64 3, ptr nonnull %i.dg, i64 3, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 %.sroa.0.0.copyload.i27, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread: ; preds = %.lr.ph, %bb.k, %bb.i, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.dp, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.dq = load ptr, ptr %10, align 8, !tbaa !54   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.w
  br i1 %i.dr, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread
  call void @free(ptr noundef %i.dq) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !1733
  %.not.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1734
  call void @free(ptr noundef %i.dv) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %bb.b ]
  %i.dw = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.e
  br i1 %i.dx, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28, label %bb.y

bb.y:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.dw) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28: ; preds = %.critedge, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE22TransformOMPFullClauseEPNS_13OMPFullClauseE(ptr nofree readonly captures(none) %.0.val, ptr nofree noundef readonly captures(ret: address, provenance) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %.0.val, i64 13800
  %.val.val = load i32, ptr %i.a, align 4, !tbaa !1084
  %.not = icmp eq i32 %.val.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 4, !tbaa !870
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i7 = load i32, ptr %i.b, align 4, !tbaa !870
  %i.c = getelementptr i8, ptr %.0.val, i64 832
  %.val6.val = load ptr, ptr %i.c, align 8, !tbaa !1938
  %i.d = tail call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPFullClauseENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(552) %.val6.val, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i7) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE27TransformOMPGrainsizeClauseEPNS_18OMPGrainsizeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2625
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2626
  %i.g = and i64 %i.c, -2
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.i, align 4, !tbaa !870
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.j, align 4, !tbaa !870
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.k, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.l = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.l, align 8, !tbaa !1938
  %i.m = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPGrainsizeClauseENS_29OpenMPGrainsizeClauseModifierEPNS_4ExprENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i11, i32 %.sroa.0.0.copyload.i12, i32 %.sroa.0.0.copyload.i13) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE31TransformOMPHasDeviceAddrClauseEPNS_22OMPHasDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2628 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2628
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !979
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.y, align 4, !tbaa !870
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.z, align 4, !tbaa !870
end_hunk_5
begin_hunk_6_@_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE31TransformOMPHasDeviceAddrClauseEPNS_22OMPHasDeviceAddrClauseE:bb.a

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE22TransformOMPHintClauseEPNS_13OMPHintClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2630
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !870
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !1938
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPHintClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE23TransformOMPHoldsClauseEPNS_14OMPHoldsClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2632
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !870
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !1938
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPHoldsClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE20TransformOMPIfClauseEPNS_11OMPIfClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2634
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !2635
  %i.g = and i64 %i.c, -2
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.i, align 4, !tbaa !870
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.j, align 8, !tbaa !870
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.k, align 8, !tbaa !870
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.l, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.m = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.m, align 8, !tbaa !1938
  %i.n = tail call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPIfClauseEN4llvm3omp9DirectiveEPNS_4ExprENS_14SourceLocationES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i13, i32 %.sroa.0.0.copyload.i14, i32 %.sroa.0.0.copyload.i15, i32 %.sroa.0.0.copyload.i16) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE29TransformOMPInReductionClauseEPNS_20OMPInReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.2641", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2637 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2637
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not90 = icmp eq i32 %i.h, 0
  br i1 %.not90, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04691 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04691, align 8, !tbaa !979
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04691, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !955
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1119
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !75
  %.not87 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not87, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1119
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !75
  %.not88 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not88, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !56
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !2637 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 5 uses
  %.idx100.a = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx100.a
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ae
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ae ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ae
  %.not5195 = icmp eq i32 %i.ad, 0
  br i1 %.not5195, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  br label %bb.i

._crit_edge99.loopexit:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70
  %.pre102 = load ptr, ptr %7, align 8, !tbaa !54
  %.pre103 = load i32, ptr %i.ab, align 8, !tbaa !55
  %i.aj = zext i32 %.pre103 to i64
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %._crit_edge99.loopexit, %bb.g
  %i.ak = phi i64 [ %i.aj, %._crit_edge99.loopexit ], [ 0, %bb.g ]
  %i.al = phi ptr [ %.pre102, %._crit_edge99.loopexit ], [ %i.aa, %bb.g ]
  %i.am = load ptr, ptr %3, align 8, !tbaa !54
  %i.an = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ao = zext i32 %i.an to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !870
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.ap, align 4, !tbaa !870
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.aq, align 8, !tbaa !870
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.ar, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.as = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.as, align 8, !tbaa !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.al, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ak, ptr %.sroa.2.0..sroa_idx, align 8
  %i.at = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPInReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.am, i64 %i.ao, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.au = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aa
  br i1 %i.av, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge99
  call void @free(ptr noundef %i.au) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge99, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.s

bb.i:                                             ; preds = %.lr.ph98, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70
  %.04996 = phi ptr [ %11, %.lr.ph98 ], [ %i.da, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70 ] ; 2 uses
  %i.aw = load ptr, ptr %.04996, align 8, !tbaa !979 ; 5 uses
  %.not52 = icmp eq ptr %i.aw, null
  br i1 %.not52, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.ag, ptr %8, align 8, !tbaa !54
  store i32 0, ptr %i.ah, align 8, !tbaa !55
  store i32 8, ptr %i.ai, align 4, !tbaa !56
  %i.ax = load i16, ptr %i.aw, align 8
  %i.ay = and i16 %i.ax, 511
  %i.az = icmp eq i16 %i.ay, 24
  %.1.v.i.i.i.i = select i1 %i.az, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.1.v.i.i.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !105 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %.idx101 = shl nuw nsw i64 %i.bc, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx101
  %.not8992 = icmp eq i32 %i.bb, 0
  br i1 %.not8992, label %._crit_edge, label %.lr.ph94

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.be = load ptr, ptr %0, align 8, !tbaa !1017, !nonnull !71, !align !787
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 232
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !786, !nonnull !71, !align !787 ; 2 uses
  %i.bh = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bg) #26 ; 2 uses
  %i.bi = extractvalue { i64, ptr } %i.bh, 0
  %i.bj = extractvalue { i64, ptr } %i.bh, 1
  %i.bk = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.bl = load i32, ptr %i.ah, align 8, !tbaa !55
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bg, ptr noundef null, i64 %i.bi, ptr %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bo, i64 %i.bp, i1 noundef zeroext false, i1 noundef zeroext false) #26 ; 2 uses
  %i.br = load i32, ptr %i.ab, align 8, !tbaa !55 ; 2 uses
  %i.bs = load i32, ptr %i.ac, align 4, !tbaa !56
  %.not.i67 = icmp ult i32 %i.br, %i.bs
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !79

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bq)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.bt = zext i32 %i.br to i64
  %i.bu = load ptr, ptr %7, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  store ptr %i.bq, ptr %i.bv, align 1
  %i.bw = load i32, ptr %i.ab, align 8, !tbaa !55
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.ab, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.by = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ag
  br i1 %i.bz, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.by) #26
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70

.lr.ph94:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.076.093 = phi ptr [ %i.cs, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.076.093, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.076.093, align 8
  %i.ca = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #29
  %i.cd = call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %i.cc, ptr noundef %i.cb) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = lshr i32 %i.cf, 13
  %i.ch = and i32 %i.cg, 3
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = ptrtoint ptr %i.cd to i64
  %i.ck = or i64 %i.ci, %i.cj                     ; 2 uses
  %i.cl = load i32, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.cm = load i32, ptr %i.ai, align 4, !tbaa !56
  %.not.i.i = icmp ult i32 %i.cl, %i.cm
  br i1 %.not.i.i, label %bb.o, label %bb.n, !prof !79

bb.n:                                             ; preds = %.lr.ph94
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.ck)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.o:                                             ; preds = %.lr.ph94
  %i.cn = zext i32 %i.cl to i64
  %i.co = load ptr, ptr %8, align 8, !tbaa !54
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn
  store i64 %i.ck, ptr %i.cp, align 1
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !55
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.ah, align 8, !tbaa !55
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.n, %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.076.093, i64 8 ; 2 uses
  %.not89 = icmp eq ptr %i.cs, %i.bd
  br i1 %.not89, label %._crit_edge, label %.lr.ph94

bb.p:                                             ; preds = %bb.i
  %i.ct = load i32, ptr %i.ab, align 8, !tbaa !55 ; 2 uses
  %i.cu = load i32, ptr %i.ac, align 4, !tbaa !56
  %.not.i69 = icmp ult i32 %i.ct, %i.cu
  br i1 %.not.i69, label %bb.r, label %bb.q, !prof !79

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70

bb.r:                                             ; preds = %bb.p
  %i.cv = zext i32 %i.ct to i64
  %i.cw = load ptr, ptr %7, align 8, !tbaa !54
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv
  store ptr null, ptr %i.cx, align 1
  %i.cy = load i32, ptr %i.ab, align 8, !tbaa !55
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.ab, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70: ; preds = %bb.r, %bb.q, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %.04996, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.da, %12
  br i1 %.not51, label %._crit_edge99.loopexit, label %bb.i

bb.s:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.at, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !1733
  %.not.i.i71 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i71, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1734
  call void @free(ptr noundef %i.de) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.df = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.a
  br i1 %i.dg, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit72, label %bb.u

bb.u:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.df) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit72

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit72: ; preds = %.critedge, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE27TransformOMPInclusiveClauseEPNS_18OMPInclusiveClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2639 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2639
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !979
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !54
  %i.z = load i32, ptr %i.b, align 8, !tbaa !55
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !870
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !1938
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPInclusiveClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #26
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE22TransformOMPInitClauseEPNS_13OMPInitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"struct.clang::OMPInteropInfo", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %"class.llvm::SmallVector.1338", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !979
  %i.d = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !2642, !range !70, !noundef !71
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !2643, !range !70, !noundef !71
  store i8 %i.g, ptr %2, align 8, !tbaa !2650
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !2651
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.k, align 2, !tbaa !2652
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 4, ptr %i.o, align 4, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !2653, !noalias !4467 ; 2 uses
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !2654, !noalias !4467
  %i.v = add i32 %i.u, %i.q
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.w ; 2 uses
  %.not7982 = icmp eq i32 %i.r, 0
  br i1 %.not7982, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph84, %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit
  %.sroa.067.083 = phi i64 [ 0, %.lr.ph84 ], [ %i.ah, %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit ] ; 4 uses
  %i.ab = icmp eq i64 %.sroa.067.083, 0
  br i1 %i.ab, label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add nuw nsw i64 %.sroa.067.083, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !870, !noalias !4468
  br label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit

_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit: ; preds = %bb.c, %bb.d
  %i.ag = phi i32 [ %i.af, %bb.d ], [ 0, %bb.c ]  ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.067.083, 1       ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !979, !noalias !4468 ; 2 uses
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !2653, !noalias !4468
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al
  %i.an = zext i32 %i.ag to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE29TransformOMPIsDevicePtrClauseEPNS_20OMPIsDevicePtrClauseE:bb.a
  store i32 %.sroa.0.0.copyload.i25, ptr %i.aa, align 4, !tbaa !870
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.0.0.copyload.i26, ptr %i.ab, align 4, !tbaa !870
  %i.ac = load ptr, ptr %2, align 8, !tbaa !54
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ae = zext i32 %i.ad to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.af = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.af, align 8, !tbaa !1938
  %i.ag = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPIsDevicePtrClauseEN4llvm8ArrayRefIPNS_4ExprEEERKNS_15OMPVarListLocTyE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ac, i64 %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ag, %.critedge24 ], [ null, %.lr.ph ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ah) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE29TransformOMPLastprivateClauseEPNS_20OMPLastprivateClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2659 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2659
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %.critedge29, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02538 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02538, align 8, !tbaa !979
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02538, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge29, label %.lr.ph

.critedge29:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !54
  %i.z = load i32, ptr %i.b, align 8, !tbaa !55
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !2663
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.ad, align 4, !tbaa !870
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.ae, align 8, !tbaa !870
  %.sroa.0.0.copyload.i31 = load i32, ptr %1, align 8, !tbaa !870
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.af, align 4, !tbaa !870
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.ag, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.ah = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ah, align 8, !tbaa !1938
  %i.ai = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPLastprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_25OpenMPLastprivateModifierENS_14SourceLocationES7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 noundef %i.ac, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i30, i32 %.sroa.0.0.copyload.i31, i32 %.sroa.0.0.copyload.i32, i32 %.sroa.0.0.copyload.i33) #26
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge29
  %.3 = phi ptr [ %i.ai, %.critedge29 ], [ null, %.lr.ph ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.aj) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE24TransformOMPLinearClauseEPNS_15OMPLinearClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2665 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2665
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not43 = icmp eq i32 %i.h, 0
  br i1 %.not43, label %.critedge32, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02844 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02844, align 8, !tbaa !979
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02844, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge32.loopexit, label %.lr.ph

.critedge32.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.pre45 = load i32, ptr %i.d, align 4, !tbaa !2665
  %i.y = zext i32 %.pre45 to i64
  br label %.critedge32

.critedge32:                                      ; preds = %.critedge32.loopexit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.z = phi i64 [ %i.y, %.critedge32.loopexit ], [ 0, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 5 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.z
  %4 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.z
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.z
  %6 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.z
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !979
  %i.ac = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ab) ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.critedge32
  %i.ae = load ptr, ptr %2, align 8, !tbaa !54
  %i.af = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ag = zext i32 %i.af to i64
  %i.ah = and i64 %i.ac, -2
  %i.ai = inttoptr i64 %i.ah to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.aj, align 4, !tbaa !870
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2668
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i34 = load i32, ptr %i.am, align 4, !tbaa !870
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i35 = load i32, ptr %i.an, align 8, !tbaa !870
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i36 = load i32, ptr %i.ao, align 4, !tbaa !870
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.ap, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.aq = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.aq, align 8, !tbaa !1938
  %i.ar = call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPLinearClauseEN4llvm8ArrayRefIPNS_4ExprEEES4_NS_14SourceLocationES6_NS_22OpenMPLinearClauseKindES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ae, i64 %i.ag, ptr noundef %i.ai, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i33, i32 noundef %i.al, i32 %.sroa.0.0.copyload.i34, i32 %.sroa.0.0.copyload.i35, i32 %.sroa.0.0.copyload.i36, i32 %.sroa.0.0.copyload.i37) #26
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.critedge32
  %.4 = phi ptr [ null, %.critedge32 ], [ %i.ar, %bb.f ], [ null, %.lr.ph ]
  %i.as = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.as) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE27TransformOMPLoopRangeClauseEPNS_18OMPLoopRangeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1657
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1657
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.c, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = and i64 %i.g, -2
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1657
  %.not = icmp eq ptr %i.m, %i.j
  br i1 %.not, label %bb.d, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.c
  %.val20.pre = load ptr, ptr %0, align 8, !tbaa !1017
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !1657
  %.not28 = icmp eq ptr %i.n, %i.l
  %.val20.pre30 = load ptr, ptr %0, align 8, !tbaa !1017 ; 3 uses
  br i1 %.not28, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.val20.pre30, i64 13800
  %.val.val = load i32, ptr %i.o, align 4, !tbaa !1084
  %.not29 = icmp eq i32 %.val.val, 0
  br i1 %.not29, label %bb.f, label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.e, %bb.d
  %.val20 = phi ptr [ %.val20.pre, %..critedge_crit_edge ], [ %.val20.pre30, %bb.e ], [ %.val20.pre30, %bb.d ]
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.p, align 4, !tbaa !870
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.q, align 8, !tbaa !870
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.r, align 4, !tbaa !870
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.s, align 4, !tbaa !870
  %i.t = getelementptr i8, ptr %.val20, i64 832
  %.val20.val = load ptr, ptr %i.t, align 8, !tbaa !1938
  %i.u = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPLoopRangeClauseEPNS_4ExprES2_NS_14SourceLocationES3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val20.val, ptr noundef %i.j, ptr noundef %i.l, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23, i32 %.sroa.0.0.copyload.i24) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %.critedge, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.u, %.critedge ], [ %1, %bb.e ]
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE21TransformOMPMapClauseEPNS_12OMPMapClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %6 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %7 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %8 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %9 = alloca %"class.clang::CXXScopeSpec", align 8 ; 10 uses
  %10 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %11 = alloca %"class.llvm::SmallVector.2641", align 8 ; 12 uses
  %12 = alloca %"class.clang::CXXScopeSpec", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.a, align 4, !tbaa !870
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.b, align 4, !tbaa !870
  store i32 %.sroa.0.0.copyload.i, ptr %7, align 4, !tbaa !870
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.0.0.copyload.i27, ptr %i.c, align 4, !tbaa !870
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.0.0.copyload.i28, ptr %i.d, align 4, !tbaa !870
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2670 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !979  ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !2670
  %.pre100 = load i32, ptr %i.g, align 4, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre100, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.124 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 0, ptr %10, align 8, !tbaa !949
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !1118
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.w, ptr %11, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !56
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #26
  %.pre101 = load i32, ptr %i.i, align 4, !tbaa !2670
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre101, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i87 = icmp eq i32 %i.ab, 0
  br i1 %.not.i87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit55
  %.058.i88 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit55 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i88, align 8, !tbaa !979
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !4469 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !55  ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !56
  %.not.i54 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i54, label %bb.h, label %bb.g, !prof !79

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit55

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %8, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !55
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit55

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit55: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i88, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit55, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i49 = load i64, ptr %i.ar, align 8, !tbaa !75 ; 2 uses
  %.not82 = icmp eq i64 %.sroa.0.0.copyload.i49, 0
  br i1 %.not82, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i51 = load ptr, ptr %.sroa.2.0..sroa_idx.i50, align 8, !tbaa !955
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i49, ptr %.sroa.2.0.copyload.i51, i64 0, ptr noundef null), !inline_history !4469 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not83 = icmp eq i64 %i.at, 0
  br i1 %.not83, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.074.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 %.sroa.074.0, ptr %.sroa.6.0) #26, !inline_history !4469
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1119
  %.sroa.0.0.copyload.i45 = load i64, ptr %10, align 8, !tbaa !75
  %.not84 = icmp eq i64 %.sroa.0.0.copyload.i45, 0
  br i1 %.not84, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !4469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1119
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.sroa.0.0.copyload.i44 = load i64, ptr %10, align 8, !tbaa !75
  %.not85 = icmp eq i64 %.sroa.0.0.copyload.i44, 0
  br i1 %.not85, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !2670 ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx98 = shl nuw nsw i64 %i.ax, 3
  %13 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx98 ; 2 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.ax
  %.not63.i94 = icmp eq i32 %i.aw, 0
  br i1 %.not63.i94, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph97, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i95 = phi ptr [ %13, %.lr.ph97 ], [ %i.de, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.bb = load ptr, ptr %.061.i95, align 8, !tbaa !979 ; 5 uses
  %.not64.i = icmp eq ptr %i.bb, null
  br i1 %.not64.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %i.ay, ptr %6, align 8, !tbaa !54
  store i32 0, ptr %i.az, align 8, !tbaa !55
  store i32 8, ptr %i.ba, align 4, !tbaa !56
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = and i16 %i.bc, 511
  %i.be = icmp eq i16 %i.bd, 24
  %.1.v.i.i.i.i = select i1 %i.be, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !105 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %.idx99 = shl nuw nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx99
  %.not8689 = icmp eq i32 %i.bg, 0
  br i1 %.not8689, label %._crit_edge93, label %.lr.ph92

._crit_edge93:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !1017
  %i.bj = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !786, !nonnull !71, !align !787 ; 2 uses
  %i.bl = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(23904) %i.bk) #26, !inline_history !4469 ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1
  %i.bo = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.bp = load i32, ptr %i.az, align 8, !tbaa !55
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bk, ptr noundef null, i64 %i.bm, ptr %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext true, i64 %i.bs, i64 %i.bt, i1 noundef zeroext false, i1 noundef zeroext false) #26, !inline_history !4469 ; 2 uses
  %i.bv = load i32, ptr %i.x, align 8, !tbaa !55  ; 2 uses
  %i.bw = load i32, ptr %i.y, align 4, !tbaa !56
  %.not.i38 = icmp ult i32 %i.bv, %i.bw
  br i1 %.not.i38, label %bb.p, label %bb.o, !prof !79

bb.o:                                             ; preds = %._crit_edge93
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %i.bu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit39

bb.p:                                             ; preds = %._crit_edge93
  %i.bx = zext i32 %i.bv to i64
  %i.by = load ptr, ptr %11, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  store ptr %i.bu, ptr %i.bz, align 1
  %i.ca = load i32, ptr %i.x, align 8, !tbaa !55
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.x, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit39

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit39: ; preds = %bb.o, %bb.p
  %i.cc = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ay
  br i1 %i.cd, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit39
  call void @free(ptr noundef %i.cc) #26
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit39, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph92:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.063.090 = phi ptr [ %i.cw, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.063.090, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.063.090, align 8
  %i.ce = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #29, !inline_history !4469
  %i.ch = call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %i.cg, ptr noundef %i.cf), !inline_history !4469 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = lshr i32 %i.cj, 13
  %i.cl = and i32 %i.ck, 3
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = ptrtoint ptr %i.ch to i64
  %i.co = or i64 %i.cm, %i.cn                     ; 2 uses
  %i.cp = load i32, ptr %i.az, align 8, !tbaa !55 ; 2 uses
  %i.cq = load i32, ptr %i.ba, align 4, !tbaa !56
  %.not.i.i37 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not.i.i37, label %bb.s, label %bb.r, !prof !79

bb.r:                                             ; preds = %.lr.ph92
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %i.co)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.s:                                             ; preds = %.lr.ph92
  %i.cr = zext i32 %i.cp to i64
  %i.cs = load ptr, ptr %6, align 8, !tbaa !54
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cr
  store i64 %i.co, ptr %i.ct, align 1
  %i.cu = load i32, ptr %i.az, align 8, !tbaa !55
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.az, align 8, !tbaa !55
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.r, %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.063.090, i64 8 ; 2 uses
  %.not86 = icmp eq ptr %i.cw, %i.bi
  br i1 %.not86, label %._crit_edge93, label %.lr.ph92

bb.t:                                             ; preds = %bb.m
  %i.cx = load i32, ptr %i.x, align 8, !tbaa !55  ; 2 uses
  %i.cy = load i32, ptr %i.y, align 4, !tbaa !56
  %.not.i36 = icmp ult i32 %i.cx, %i.cy
  br i1 %.not.i36, label %bb.v, label %bb.u, !prof !79

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.v:                                             ; preds = %bb.t
  %i.cz = zext i32 %i.cx to i64
  %i.da = load ptr, ptr %11, align 8, !tbaa !54
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  store ptr null, ptr %i.db, align 1
  %i.dc = load i32, ptr %i.x, align 8, !tbaa !55
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.x, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.v, %bb.u, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.de = getelementptr inbounds nuw i8, ptr %.061.i95, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.de, %14
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.dh = load i64, ptr %9, align 8, !tbaa !870
  store i64 %i.dh, ptr %12, align 8, !tbaa !870
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN5clang29NestedNameSpecifierLocBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.dj) #26
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 16, i1 false), !tbaa.struct !2672
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !2676
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.dp = load i8, ptr %i.do, align 4, !tbaa !2677, !range !70, !noundef !71
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.dr, align 8, !tbaa !870
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 148
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.ds, align 4, !tbaa !870
  %i.dt = load ptr, ptr %8, align 8, !tbaa !54
  %i.du = load i32, ptr %i.f, align 8, !tbaa !55
  %i.dv = zext i32 %i.du to i64
  %i.dw = load ptr, ptr %11, align 8, !tbaa !54
  %i.dx = load i32, ptr %i.x, align 8, !tbaa !55
  %i.dy = zext i32 %i.dx to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.dz = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.dz, align 8, !tbaa !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.dw, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.dy, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.dt, ptr %3, align 8
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.dv, ptr %.sroa.259.0..sroa_idx, align 8
  %i.ea = call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPMapClauseEPNS_4ExprEN4llvm8ArrayRefINS_21OpenMPMapModifierKindEEENS4_INS_14SourceLocationEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbS7_S7_NS4_IS2_EERKNS_15OMPVarListLocTyEbSE_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %.124, ptr nonnull %i.df, i64 7, ptr nonnull %i.dg, i64 7, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.dn, i1 noundef zeroext %i.dq, i32 %.sroa.0.0.copyload.i31, i32 %.sroa.0.0.copyload.i32, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %7, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %2) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !1733
  %.not.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1734
  call void @free(ptr noundef %i.ee) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %.lr.ph, %bb.k, %bb.i, %bb.w, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.ea, %bb.w ], [ %i.ea, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.ef = load ptr, ptr %11, align 8, !tbaa !54   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.w
  br i1 %i.eg, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit
  call void @free(ptr noundef %i.ef) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !1733
  %.not.i.i33 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i33, label %_ZN5clang12CXXScopeSpecD2Ev.exit34, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1734
  call void @free(ptr noundef %i.ek) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit34

_ZN5clang12CXXScopeSpecD2Ev.exit34:               ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit34
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit34 ], [ null, %bb.b ]
  %i.el = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.e
  br i1 %i.em, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35, label %bb.z

bb.z:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.el) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35: ; preds = %.critedge, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE25TransformOMPMessageClauseEPNS_16OMPMessageClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2679
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !870
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !1938
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPMessageClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE24TransformOMPNowaitClauseEPNS_15OMPNowaitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2681 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.e = and i64 %.sroa.0.0, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.g, align 4, !tbaa !870
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.h, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !1938
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPNowaitClauseENS_14SourceLocationES1_S1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i13, i32 %.sroa.0.0.copyload.i12, ptr noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.1 = phi ptr [ %i.j, %.critedge ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE27TransformOMPNocontextClauseEPNS_18OMPNocontextClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2683
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !870
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !1938
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPNocontextClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE29TransformOMPNontemporalClauseEPNS_20OMPNontemporalClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
end_hunk_7
begin_hunk_8_@_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE25TransformOMPPrivateClauseEPNS_16OMPPrivateClauseE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2718
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !979
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !54
  %i.z = load i32, ptr %i.b, align 8, !tbaa !55
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !870
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !1938
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPPrivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #26
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE26TransformOMPProcBindClauseEPNS_17OMPProcBindClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2721
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !870
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !870
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !870
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !870
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPProcBindClauseEN4llvm3omp12ProcBindKindENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #26
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE27TransformOMPReductionClauseEPNS_18OMPReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.2641", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2723 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2723
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not95 = icmp eq i32 %i.h, 0
  br i1 %.not95, label %.critedge58, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.05096 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.05096, align 8, !tbaa !979
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.05096, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge58, label %.lr.ph

.critedge58:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !955
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1119
  %.sroa.0.0.copyload.i61 = load i64, ptr %5, align 8, !tbaa !75
  %.not92 = icmp eq i64 %.sroa.0.0.copyload.i61, 0
  br i1 %.not92, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1119
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.sroa.0.0.copyload.i62 = load i64, ptr %5, align 8, !tbaa !75
  %.not93 = icmp eq i64 %.sroa.0.0.copyload.i62, 0
  br i1 %.not93, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !56
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !2723 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 5 uses
  %.idx105.a = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx105.a
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ae
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ae ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ae
  %.not55100 = icmp eq i32 %i.ad, 0
  br i1 %.not55100, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  br label %bb.i

._crit_edge104.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit75
  %.pre107 = load ptr, ptr %7, align 8, !tbaa !54
  %.pre108 = load i32, ptr %i.ab, align 8, !tbaa !55
  %i.aj = zext i32 %.pre108 to i64
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.g
  %i.ak = phi i64 [ %i.aj, %._crit_edge104.loopexit ], [ 0, %bb.g ]
  %i.al = phi ptr [ %.pre107, %._crit_edge104.loopexit ], [ %i.aa, %bb.g ]
  %i.am = load ptr, ptr %3, align 8, !tbaa !54
  %i.an = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load i64, ptr %i.ap, align 8
  %.sroa.0.0.copyload.i65 = load i32, ptr %1, align 8, !tbaa !870
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i66 = load i32, ptr %i.ar, align 4, !tbaa !870
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i67 = load i32, ptr %i.as, align 8, !tbaa !870
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i68 = load i32, ptr %i.at, align 4, !tbaa !870
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i69 = load i32, ptr %i.au, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.av = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.av, align 8, !tbaa !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.al, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ak, ptr %.sroa.2.0..sroa_idx, align 8
  %i.aw = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS0_19OpenMPVarListDataTy30OpenMPReductionClauseModifiersENS_14SourceLocationES8_S8_S8_S8_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.am, i64 %i.ao, i64 %i.aq, i32 %.sroa.0.0.copyload.i65, i32 %.sroa.0.0.copyload.i66, i32 %.sroa.0.0.copyload.i67, i32 %.sroa.0.0.copyload.i68, i32 %.sroa.0.0.copyload.i69, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ax = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.aa
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge104
  call void @free(ptr noundef %i.ax) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge104, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.s

bb.i:                                             ; preds = %.lr.ph103, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit75
  %.053101 = phi ptr [ %11, %.lr.ph103 ], [ %i.dd, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit75 ] ; 2 uses
  %i.az = load ptr, ptr %.053101, align 8, !tbaa !979 ; 5 uses
  %.not56 = icmp eq ptr %i.az, null
  br i1 %.not56, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.ag, ptr %8, align 8, !tbaa !54
  store i32 0, ptr %i.ah, align 8, !tbaa !55
  store i32 8, ptr %i.ai, align 4, !tbaa !56
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = and i16 %i.ba, 511
  %i.bc = icmp eq i16 %i.bb, 24
  %.1.v.i.i.i.i = select i1 %i.bc, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !105 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx106 = shl nuw nsw i64 %i.bf, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx106
  %.not9497 = icmp eq i32 %i.be, 0
  br i1 %.not9497, label %._crit_edge, label %.lr.ph99

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bh = load ptr, ptr %0, align 8, !tbaa !1017, !nonnull !71, !align !787
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !786, !nonnull !71, !align !787 ; 2 uses
  %i.bk = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bj) #26 ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bk, 0
  %i.bm = extractvalue { i64, ptr } %i.bk, 1
  %i.bn = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.bo = load i32, ptr %i.ah, align 8, !tbaa !55
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bj, ptr noundef null, i64 %i.bl, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.br, i64 %i.bs, i1 noundef zeroext false, i1 noundef zeroext false) #26 ; 2 uses
  %i.bu = load i32, ptr %i.ab, align 8, !tbaa !55 ; 2 uses
  %i.bv = load i32, ptr %i.ac, align 4, !tbaa !56
  %.not.i72 = icmp ult i32 %i.bu, %i.bv
  br i1 %.not.i72, label %bb.l, label %bb.k, !prof !79

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bt)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

bb.l:                                             ; preds = %._crit_edge
  %i.bw = zext i32 %i.bu to i64
  %i.bx = load ptr, ptr %7, align 8, !tbaa !54
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  store ptr %i.bt, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.ab, align 8, !tbaa !55
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.ab, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73: ; preds = %bb.k, %bb.l
  %i.cb = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ag
  br i1 %i.cc, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73
  call void @free(ptr noundef %i.cb) #26
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit75

.lr.ph99:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.081.098 = phi ptr [ %i.cv, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.081.098, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.081.098, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #29
  %i.cg = call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %i.cf, ptr noundef %i.ce) ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = lshr i32 %i.ci, 13
  %i.ck = and i32 %i.cj, 3
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = ptrtoint ptr %i.cg to i64
  %i.cn = or i64 %i.cl, %i.cm                     ; 2 uses
  %i.co = load i32, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.cp = load i32, ptr %i.ai, align 4, !tbaa !56
  %.not.i.i = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i.i, label %bb.o, label %bb.n, !prof !79

bb.n:                                             ; preds = %.lr.ph99
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.cn)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.o:                                             ; preds = %.lr.ph99
  %i.cq = zext i32 %i.co to i64
  %i.cr = load ptr, ptr %8, align 8, !tbaa !54
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  store i64 %i.cn, ptr %i.cs, align 1
  %i.ct = load i32, ptr %i.ah, align 8, !tbaa !55
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.ah, align 8, !tbaa !55
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.n, %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.081.098, i64 8 ; 2 uses
  %.not94 = icmp eq ptr %i.cv, %i.bg
  br i1 %.not94, label %._crit_edge, label %.lr.ph99

bb.p:                                             ; preds = %bb.i
  %i.cw = load i32, ptr %i.ab, align 8, !tbaa !55 ; 2 uses
  %i.cx = load i32, ptr %i.ac, align 4, !tbaa !56
  %.not.i74 = icmp ult i32 %i.cw, %i.cx
  br i1 %.not.i74, label %bb.r, label %bb.q, !prof !79

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit75

bb.r:                                             ; preds = %bb.p
  %i.cy = zext i32 %i.cw to i64
  %i.cz = load ptr, ptr %7, align 8, !tbaa !54
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  store ptr null, ptr %i.da, align 1
  %i.db = load i32, ptr %i.ab, align 8, !tbaa !55
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.ab, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit75

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit75: ; preds = %bb.r, %bb.q, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %.053101, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.dd, %12
  br i1 %.not55, label %._crit_edge104.loopexit, label %bb.i

bb.s:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.aw, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.df = load i32, ptr %i.de, align 4, !tbaa !1733
  %.not.i.i76 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i76, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1734
  call void @free(ptr noundef %i.dh) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.di = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.a
  br i1 %i.dj, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit77, label %bb.u

bb.u:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.di) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit77

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit77: ; preds = %.critedge, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE25TransformOMPSafelenClauseEPNS_16OMPSafelenClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2725
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !870
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !1938
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPSafelenClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE26TransformOMPScheduleClauseEPNS_17OMPScheduleClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2728
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !2730
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !2730
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !2731
  %i.k = and i64 %i.c, -2
  %i.l = inttoptr i64 %i.k to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.m, align 4, !tbaa !870
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.n, align 4, !tbaa !870
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.o, align 8, !tbaa !870
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.p, align 4, !tbaa !870
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.q, align 8, !tbaa !870
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.r, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.s = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.s, align 8, !tbaa !1938
  %i.t = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPScheduleClauseENS_28OpenMPScheduleClauseModifierES1_NS_24OpenMPScheduleClauseKindEPNS_4ExprENS_14SourceLocationES5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, ptr noundef %i.l, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i19, i32 %.sroa.0.0.copyload.i20, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23, i32 %.sroa.0.0.copyload.i24) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE26TransformOMPSeverityClauseEPNS_17OMPSeverityClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2734
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !870
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !870
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !870
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !870
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPSeverityClauseENS_24OpenMPSeverityClauseKindENS_14SourceLocationES2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #26
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE24TransformOMPSharedClauseEPNS_15OMPSharedClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2736 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2736
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !979
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !54
  %i.z = load i32, ptr %i.b, align 8, !tbaa !55
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !870
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !1938
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPSharedClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #26
  br label %.critedge
end_hunk_8
begin_hunk_9_@_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE23TransformOMPSizesClauseEPNS_14OMPSizesClauseE:bb.a
  %.not.i = icmp ult i32 %i.m, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.m to i64
  %i.p = load ptr, ptr %2, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store ptr null, ptr %i.q, align 1
  %i.r = load i32, ptr %i.b, align 8, !tbaa !55
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.b, align 8, !tbaa !55
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.t = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l) ; 2 uses
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.t, -2
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %.not34 = icmp ne ptr %i.l, %i.w
  %spec.select = select i1 %.not34, i1 true, i1 %.02355 ; 2 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i36 = icmp ult i32 %i.x, %i.y
  br i1 %.not.i36, label %bb.i, label %bb.h, !prof !79

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.w)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = zext i32 %i.x to i64
  %i.aa = load ptr, ptr %2, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store ptr %i.w, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.i
  %.326.ph = phi i1 [ %spec.select, %bb.i ], [ %spec.select, %bb.h ], [ %.02355, %bb.d ], [ %.02355, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03154, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j
  br i1 %.326.ph, label %._crit_edge._crit_edge, label %.critedge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.val35.pre = load ptr, ptr %0, align 8, !tbaa !1017
  br label %bb.k

.critedge:                                        ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %._crit_edge
  %.val = load ptr, ptr %0, align 8, !tbaa !1017  ; 2 uses
  %i.af = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.af, align 4, !tbaa !1084
  %.not51 = icmp eq i32 %.val.val, 0
  br i1 %.not51, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge, %.critedge
  %.val35 = phi ptr [ %.val35.pre, %._crit_edge._crit_edge ], [ %.val, %.critedge ]
  %i.ag = load ptr, ptr %2, align 8, !tbaa !54
  %i.ah = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ai = zext i32 %i.ah to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i38 = load i32, ptr %i.aj, align 4, !tbaa !870
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i39 = load i32, ptr %i.ak, align 4, !tbaa !870
  %i.al = getelementptr i8, ptr %.val35, i64 832
  %.val35.val = load ptr, ptr %i.al, align 8, !tbaa !1938
  %i.am = call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPSizesClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val35.val, ptr %i.ag, i64 %i.ai, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i38, i32 %.sroa.0.0.copyload.i39) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %.critedge, %bb.k
  %.4 = phi ptr [ %i.am, %bb.k ], [ %1, %.critedge ], [ null, %bb.f ]
  %i.an = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.an) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE31TransformOMPTaskReductionClauseEPNS_22OMPTaskReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.2641", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2742 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2742
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not90 = icmp eq i32 %i.h, 0
  br i1 %.not90, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04691 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04691, align 8, !tbaa !979
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04691, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !955
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1119
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !75
  %.not87 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not87, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1119
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !75
  %.not88 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not88, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !56
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !2742 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 5 uses
  %.idx100.a = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx100.a
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ae
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ae ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ae
  %.not5195 = icmp eq i32 %i.ad, 0
  br i1 %.not5195, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  br label %bb.i

._crit_edge99.loopexit:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70
  %.pre102 = load ptr, ptr %7, align 8, !tbaa !54
  %.pre103 = load i32, ptr %i.ab, align 8, !tbaa !55
  %i.aj = zext i32 %.pre103 to i64
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %._crit_edge99.loopexit, %bb.g
  %i.ak = phi i64 [ %i.aj, %._crit_edge99.loopexit ], [ 0, %bb.g ]
  %i.al = phi ptr [ %.pre102, %._crit_edge99.loopexit ], [ %i.aa, %bb.g ]
  %i.am = load ptr, ptr %3, align 8, !tbaa !54
  %i.an = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ao = zext i32 %i.an to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !870
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.ap, align 4, !tbaa !870
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.aq, align 8, !tbaa !870
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.ar, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.as = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.as, align 8, !tbaa !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.al, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ak, ptr %.sroa.2.0..sroa_idx, align 8
  %i.at = call noundef ptr @_ZN5clang10SemaOpenMP30ActOnOpenMPTaskReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.am, i64 %i.ao, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.au = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aa
  br i1 %i.av, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge99
  call void @free(ptr noundef %i.au) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge99, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.s

bb.i:                                             ; preds = %.lr.ph98, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70
  %.04996 = phi ptr [ %11, %.lr.ph98 ], [ %i.da, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70 ] ; 2 uses
  %i.aw = load ptr, ptr %.04996, align 8, !tbaa !979 ; 5 uses
  %.not52 = icmp eq ptr %i.aw, null
  br i1 %.not52, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.ag, ptr %8, align 8, !tbaa !54
  store i32 0, ptr %i.ah, align 8, !tbaa !55
  store i32 8, ptr %i.ai, align 4, !tbaa !56
  %i.ax = load i16, ptr %i.aw, align 8
  %i.ay = and i16 %i.ax, 511
  %i.az = icmp eq i16 %i.ay, 24
  %.1.v.i.i.i.i = select i1 %i.az, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.1.v.i.i.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !105 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %.idx101 = shl nuw nsw i64 %i.bc, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx101
  %.not8992 = icmp eq i32 %i.bb, 0
  br i1 %.not8992, label %._crit_edge, label %.lr.ph94

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.be = load ptr, ptr %0, align 8, !tbaa !1017, !nonnull !71, !align !787
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 232
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !786, !nonnull !71, !align !787 ; 2 uses
  %i.bh = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bg) #26 ; 2 uses
  %i.bi = extractvalue { i64, ptr } %i.bh, 0
  %i.bj = extractvalue { i64, ptr } %i.bh, 1
  %i.bk = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.bl = load i32, ptr %i.ah, align 8, !tbaa !55
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bg, ptr noundef null, i64 %i.bi, ptr %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bo, i64 %i.bp, i1 noundef zeroext false, i1 noundef zeroext false) #26 ; 2 uses
  %i.br = load i32, ptr %i.ab, align 8, !tbaa !55 ; 2 uses
  %i.bs = load i32, ptr %i.ac, align 4, !tbaa !56
  %.not.i67 = icmp ult i32 %i.br, %i.bs
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !79

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bq)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.bt = zext i32 %i.br to i64
  %i.bu = load ptr, ptr %7, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  store ptr %i.bq, ptr %i.bv, align 1
  %i.bw = load i32, ptr %i.ab, align 8, !tbaa !55
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.ab, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.by = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ag
  br i1 %i.bz, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.by) #26
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70

.lr.ph94:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.076.093 = phi ptr [ %i.cs, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.076.093, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.076.093, align 8
  %i.ca = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #29
  %i.cd = call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %i.cc, ptr noundef %i.cb) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = lshr i32 %i.cf, 13
  %i.ch = and i32 %i.cg, 3
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = ptrtoint ptr %i.cd to i64
  %i.ck = or i64 %i.ci, %i.cj                     ; 2 uses
  %i.cl = load i32, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.cm = load i32, ptr %i.ai, align 4, !tbaa !56
  %.not.i.i = icmp ult i32 %i.cl, %i.cm
  br i1 %.not.i.i, label %bb.o, label %bb.n, !prof !79

bb.n:                                             ; preds = %.lr.ph94
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.ck)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.o:                                             ; preds = %.lr.ph94
  %i.cn = zext i32 %i.cl to i64
  %i.co = load ptr, ptr %8, align 8, !tbaa !54
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn
  store i64 %i.ck, ptr %i.cp, align 1
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !55
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.ah, align 8, !tbaa !55
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.n, %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.076.093, i64 8 ; 2 uses
  %.not89 = icmp eq ptr %i.cs, %i.bd
  br i1 %.not89, label %._crit_edge, label %.lr.ph94

bb.p:                                             ; preds = %bb.i
  %i.ct = load i32, ptr %i.ab, align 8, !tbaa !55 ; 2 uses
  %i.cu = load i32, ptr %i.ac, align 4, !tbaa !56
  %.not.i69 = icmp ult i32 %i.ct, %i.cu
  br i1 %.not.i69, label %bb.r, label %bb.q, !prof !79

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70

bb.r:                                             ; preds = %bb.p
  %i.cv = zext i32 %i.ct to i64
  %i.cw = load ptr, ptr %7, align 8, !tbaa !54
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv
  store ptr null, ptr %i.cx, align 1
  %i.cy = load i32, ptr %i.ab, align 8, !tbaa !55
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.ab, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit70: ; preds = %bb.r, %bb.q, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %.04996, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.da, %12
  br i1 %.not51, label %._crit_edge99.loopexit, label %bb.i

bb.s:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.at, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !1733
  %.not.i.i71 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i71, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1734
  call void @free(ptr noundef %i.de) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.df = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.a
  br i1 %i.dg, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit72, label %bb.u

bb.u:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.df) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit72

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit72: ; preds = %.critedge, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE29TransformOMPThreadLimitClauseEPNS_20OMPThreadLimitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2831", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 3, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2744 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2744
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !979
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !54
  %i.z = load i32, ptr %i.b, align 8, !tbaa !55
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !870
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !1938
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPThreadLimitClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #26
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE20TransformOMPToClauseEPNS_11OMPToClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1277", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.2641", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !870
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !870
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !870
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !870
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !870
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2746 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !979  ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !2746
  %.pre93 = load i32, ptr %i.g, align 4, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre93, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i64 0, ptr %9, align 8, !tbaa !949
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !1118
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !56
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #26
  %.pre94 = load i32, ptr %i.i, align 4, !tbaa !2746
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre94, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i80 = icmp eq i32 %i.ab, 0
  br i1 %.not.i80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit48
  %.058.i81 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit48 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i81, align 8, !tbaa !979
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !4470 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !55  ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !56
  %.not.i47 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i47, label %bb.h, label %bb.g, !prof !79

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit48

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %7, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !55
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit48

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit48: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i81, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit48, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i42 = load i64, ptr %i.ar, align 8, !tbaa !75 ; 2 uses
  %.not75 = icmp eq i64 %.sroa.0.0.copyload.i42, 0
  br i1 %.not75, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i43, align 8, !tbaa !955
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i42, ptr %.sroa.2.0.copyload.i44, i64 0, ptr noundef null), !inline_history !4470 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not76 = icmp eq i64 %i.at, 0
  br i1 %.not76, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.067.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.067.0, ptr %.sroa.6.0) #26, !inline_history !4470
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1119
  %.sroa.0.0.copyload.i38 = load i64, ptr %9, align 8, !tbaa !75
  %.not77 = icmp eq i64 %.sroa.0.0.copyload.i38, 0
  br i1 %.not77, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !4470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1119
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.sroa.0.0.copyload.i37 = load i64, ptr %9, align 8, !tbaa !75
  %.not78 = icmp eq i64 %.sroa.0.0.copyload.i37, 0
  br i1 %.not78, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !2746 ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx91 = shl nuw nsw i64 %i.ax, 3
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx91 ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ax
  %.not63.i87 = icmp eq i32 %i.aw, 0
  br i1 %.not63.i87, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph90, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i88 = phi ptr [ %11, %.lr.ph90 ], [ %i.de, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.bb = load ptr, ptr %.061.i88, align 8, !tbaa !979 ; 5 uses
  %.not64.i = icmp eq ptr %i.bb, null
  br i1 %.not64.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.ay, ptr %5, align 8, !tbaa !54
  store i32 0, ptr %i.az, align 8, !tbaa !55
  store i32 8, ptr %i.ba, align 4, !tbaa !56
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = and i16 %i.bc, 511
  %i.be = icmp eq i16 %i.bd, 24
  %.1.v.i.i.i.i = select i1 %i.be, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !105 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %.idx92 = shl nuw nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx92
  %.not7982 = icmp eq i32 %i.bg, 0
  br i1 %.not7982, label %._crit_edge86, label %.lr.ph85

._crit_edge86:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !1017
  %i.bj = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !786, !nonnull !71, !align !787 ; 2 uses
  %i.bl = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bk) #26, !inline_history !4470 ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1
  %i.bo = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.bp = load i32, ptr %i.az, align 8, !tbaa !55
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bk, ptr noundef null, i64 %i.bm, ptr %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.bs, i64 %i.bt, i1 noundef zeroext false, i1 noundef zeroext false) #26, !inline_history !4470 ; 2 uses
  %i.bv = load i32, ptr %i.x, align 8, !tbaa !55  ; 2 uses
  %i.bw = load i32, ptr %i.y, align 4, !tbaa !56
  %.not.i31 = icmp ult i32 %i.bv, %i.bw
  br i1 %.not.i31, label %bb.p, label %bb.o, !prof !79

bb.o:                                             ; preds = %._crit_edge86
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit32

bb.p:                                             ; preds = %._crit_edge86
  %i.bx = zext i32 %i.bv to i64
  %i.by = load ptr, ptr %10, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  store ptr %i.bu, ptr %i.bz, align 1
  %i.ca = load i32, ptr %i.x, align 8, !tbaa !55
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.x, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit32

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit32: ; preds = %bb.o, %bb.p
  %i.cc = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ay
  br i1 %i.cd, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit32
  call void @free(ptr noundef %i.cc) #26
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit32, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph85:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.056.083 = phi ptr [ %i.cw, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.056.083, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.056.083, align 8
  %i.ce = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #29, !inline_history !4470
  %i.ch = call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %i.cg, ptr noundef %i.cf), !inline_history !4470 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = lshr i32 %i.cj, 13
  %i.cl = and i32 %i.ck, 3
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = ptrtoint ptr %i.ch to i64
  %i.co = or i64 %i.cm, %i.cn                     ; 2 uses
  %i.cp = load i32, ptr %i.az, align 8, !tbaa !55 ; 2 uses
  %i.cq = load i32, ptr %i.ba, align 4, !tbaa !56
  %.not.i.i30 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not.i.i30, label %bb.s, label %bb.r, !prof !79

bb.r:                                             ; preds = %.lr.ph85
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.co)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.s:                                             ; preds = %.lr.ph85
  %i.cr = zext i32 %i.cp to i64
  %i.cs = load ptr, ptr %5, align 8, !tbaa !54
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cr
  store i64 %i.co, ptr %i.ct, align 1
  %i.cu = load i32, ptr %i.az, align 8, !tbaa !55
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.az, align 8, !tbaa !55
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.r, %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.056.083, i64 8 ; 2 uses
  %.not79 = icmp eq ptr %i.cw, %i.bi
  br i1 %.not79, label %._crit_edge86, label %.lr.ph85

bb.t:                                             ; preds = %bb.m
  %i.cx = load i32, ptr %i.x, align 8, !tbaa !55  ; 2 uses
  %i.cy = load i32, ptr %i.y, align 4, !tbaa !56
  %.not.i29 = icmp ult i32 %i.cx, %i.cy
  br i1 %.not.i29, label %bb.v, label %bb.u, !prof !79

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.v:                                             ; preds = %bb.t
  %i.cz = zext i32 %i.cx to i64
  %i.da = load ptr, ptr %10, align 8, !tbaa !54
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  store ptr null, ptr %i.db, align 1
  %i.dc = load i32, ptr %i.x, align 8, !tbaa !55
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.x, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.v, %bb.u, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.de = getelementptr inbounds nuw i8, ptr %.061.i88, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.de, %12
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.dh, align 8, !tbaa !870
  %i.di = load ptr, ptr %7, align 8, !tbaa !54
  %i.dj = load i32, ptr %i.f, align 8, !tbaa !55
  %i.dk = zext i32 %i.dj to i64
  %i.dl = load ptr, ptr %10, align 8, !tbaa !54
  %i.dm = load i32, ptr %i.x, align 8, !tbaa !55
  %i.dn = zext i32 %i.dm to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.do = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.do, align 8, !tbaa !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.dl, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.dn, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.di, ptr %3, align 8
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.dk, ptr %.sroa.252.0..sroa_idx, align 8
  %i.dp = call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPToClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull %i.df, i64 3, ptr nonnull %i.dg, i64 3, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 %.sroa.0.0.copyload.i27, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1277") align 8 %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread: ; preds = %.lr.ph, %bb.k, %bb.i, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.dp, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.dq = load ptr, ptr %10, align 8, !tbaa !54   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.w
  br i1 %i.dr, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread
  call void @free(ptr noundef %i.dq) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_120TemplateInstantiatorENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !1733
  %.not.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1734
  call void @free(ptr noundef %i.dv) #26
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %bb.b ]
  %i.dw = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.e
  br i1 %i.dx, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28, label %bb.y

bb.y:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.dw) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28: ; preds = %.critedge, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE29TransformOMPTransparentClauseEPNS_20OMPTransparentClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2749
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.g, align 4, !tbaa !870
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.h, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !1938
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPTransparentClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE21TransformOMPUseClauseEPNS_12OMPUseClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2751
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !870
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.g, align 4, !tbaa !870
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.h, align 8, !tbaa !870
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.i, align 4, !tbaa !870
  %.val = load ptr, ptr %0, align 8, !tbaa !1017
  %i.j = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.j, align 8, !tbaa !1938
  %i.k = tail call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPUseClauseEPNS_4ExprENS_14SourceLocationES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11, i32 %.sroa.0.0.copyload.i12) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE31TransformOMPUseDeviceAddrClauseEPNS_22OMPUseDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2641", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2753 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #26
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2753
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !979
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !870
end_hunk_9
